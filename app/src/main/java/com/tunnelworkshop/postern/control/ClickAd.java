package com.tunnelworkshop.postern.control;

import static java.net.HttpURLConnection.HTTP_BAD_REQUEST;
import static java.net.HttpURLConnection.HTTP_MOVED_PERM;
import static java.net.HttpURLConnection.HTTP_MOVED_TEMP;
import static java.net.HttpURLConnection.HTTP_SEE_OTHER;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.Authenticator;
import java.net.HttpURLConnection;
import java.net.InetSocketAddress;
import java.net.PasswordAuthentication;
import java.net.Proxy;
import java.net.URL;
import java.nio.charset.Charset;
import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import java.util.Objects;
import java.util.concurrent.TimeUnit;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.zip.GZIPInputStream;

import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.X509TrustManager;

import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.Credentials;
import okhttp3.OkHttp;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.Route;

public class ClickAd {

    private final static int MAX_REDIRECTS = 10;

    private static final int SOCKET_TIMEOUT = 10000;
    private static final long REQUEST_TIMEOUT = TimeUnit.SECONDS.toMillis(60 * 10);

    static class MyAuth extends Authenticator {
        private String user;
        private String pass;

        public MyAuth(String user, String pass) {
            this.user = user;
            this.pass = pass;
        }

        @Override
        protected PasswordAuthentication getPasswordAuthentication() {
            return new PasswordAuthentication(user, pass.toCharArray());
        }
    }

    private static X509TrustManager x509TrustManager() {
        return new X509TrustManager() {
            @Override
            public void checkClientTrusted(X509Certificate[] x509Certificates, String s) throws CertificateException {
            }

            @Override
            public void checkServerTrusted(X509Certificate[] x509Certificates, String s) throws CertificateException {
            }

            @Override
            public X509Certificate[] getAcceptedIssuers() {
                return new X509Certificate[0];
            }
        };
    }


    public static ClickResult clickToReferrer2(String urlStr, String userAgent, Parameters parameters) {
        Request.Builder builder = new Request.Builder();
//        builder.header("accept", "*/*");
        builder.header("connection", "Keep-Alive");
        builder.header("User-Agent", userAgent);

        Proxy proxy = new Proxy(Proxy.Type.HTTP, new InetSocketAddress(parameters.getProxyServer(),
                Integer.parseInt(parameters.getProxyPort())));
        okhttp3.Authenticator proxyAuthenticator = (route, response1) -> {
            String credential = Credentials.basic(parameters.getProxyName(), parameters.getProxyPass());
            return response1.request().newBuilder()
                    .header("Proxy-Authorization", credential)
                    .build();
        };
        OkHttpClient client = new OkHttpClient()
                .newBuilder()
                .followRedirects(false)
                .connectTimeout(10, TimeUnit.SECONDS)//设置连接超时时间
                .writeTimeout(10, TimeUnit.SECONDS)
                .readTimeout(10, TimeUnit.SECONDS)//设置读取超时时间
                .retryOnConnectionFailure(true)
                .sslSocketFactory(SSLUtils.defaultSSLSocketFactory(), x509TrustManager())
                .hostnameVerifier(SSLUtils.defaultHostnameVerifier())
                .proxy(proxy)
                .proxyAuthenticator(proxyAuthenticator)
                .authenticator(proxyAuthenticator)
                .build();
        client.writeTimeoutMillis();

        //start
        ClickResult result = new ClickResult();
        Response response = null;


        try {
            boolean redirected;
            long startTime = System.currentTimeMillis();
            int redirectCount = 0;
            do {
                assert urlStr != null;
                Request request = builder.url(urlStr).get().build();
                response = client.newCall(request).execute();
                int code = response.code();
                if (code >= HTTP_BAD_REQUEST) {
                    result.message = "request error code : " + code;
                    result.state = ClickResult.State.FAILURE;
                }
                redirected = code == HTTP_MOVED_PERM || code == HTTP_MOVED_TEMP ||
                        code == HTTP_SEE_OTHER;
                if (redirected) {
                    urlStr = response.headers().get("Location");
                    String referrer = getFieldValue(urlStr, "referrer");
                    response.close();
                    if (!"".equals(referrer)) {
                        result.referrer = referrer;
                        result.state = ClickResult.State.SUCCESS;
                        break;
                    }

                    if (++redirectCount >= MAX_REDIRECTS) {
                        result.message = "Too many redirects: " + redirectCount;
                        result.state = ClickResult.State.FAILURE;
                        break;
                    }
                    if (System.currentTimeMillis() - startTime >= REQUEST_TIMEOUT) {
                        result.message = "request timeout.";
                        result.state = ClickResult.State.FAILURE;
                        break;
                    }
                }
            } while (redirected);
        } catch (IOException e) {
            e.printStackTrace();
            result.message = e.getMessage();
            result.state = ClickResult.State.FAILURE;
        }

        if (result.state == ClickResult.State.NONE) {
            byte[] bytes = handleSuccess(response);
            if (bytes == null) {
                result.message = "request error, bytes is null";
                result.state = ClickResult.State.FAILURE;
                return result;
            }
            String reqData = new String(bytes);
            if (reqData.contains("market://details?id=")) {
                int beginIndex = reqData.indexOf("market://details?");
                int endIndex = 0;
                for (int i = beginIndex; i < reqData.length(); i++) {
                    if (reqData.charAt(i) == '"') {
                        endIndex = i;
                        break;
                    }
                }
                if (beginIndex >= 0 && endIndex > 0) {
                    String newResult = reqData.substring(beginIndex, endIndex);
                    String referrer = getFieldValue(newResult, "referrer");
                    if (!"".equals(referrer)) {
                        System.out.println("200 ok is html,query the referrer.");
                        result.referrer = referrer;
                        result.state = ClickResult.State.SUCCESS;
                    }
                    System.out.println(newResult);
                }
            }
        }
        return result;
    }

    public static ClickResult clickToReferrer(String urlStr, String userAgent) {
        ClickResult result = null;
        HttpURLConnection conn = null;
        try {
            result = new ClickResult();

            boolean redirected;
            long startTime = System.currentTimeMillis();
            int redirectCount = 0;

            do {
                Proxy proxy = new Proxy(Proxy.Type.HTTP, new InetSocketAddress("zproxy.lum-superproxy.io", 22225));
                //设置代理的用户名密码
                Authenticator.setDefault(new MyAuth("lum-customer-c_f74396a2-zone-sdk1-country-in", "0m2i5D3upmjalvg"));
//                urlStr = "https://app.appsflyer.com/com.finq.android?pid=adgloryint_int&af_siteid=6282DF67&af_channel=62858868&af_click_lookback=7d&clickid=newFenix_62858868_IN_sou_1666686230083-537843-bz615868_56e66fb6-c661-46ab-b05c-a81b0a60df1d___fenix4148545-1666686230083_38_1_60.000-0.000_Y29tLmZpbnEuYW5kcm9pZA%3D%3D_2____NjI4MkRGNjc%3D_2&android_id=&advertising_id=56e66fb6-c661-46ab-b05c-a81b0a60df1d&idfa=&af_prt=neomobileagency&aff_id=47888";
                // 设定连接的相关参数
                URL url = new URL(urlStr);

                conn = (HttpURLConnection) url.openConnection(proxy);
                if (conn instanceof HttpsURLConnection) {
                    System.out.println("handleConnection: https url connection");
                    SSLSocketFactory sslSocketFactory = SSLUtils.defaultSSLSocketFactory();
                    ((HttpsURLConnection) conn).setSSLSocketFactory(sslSocketFactory);
                    HostnameVerifier hostnameVerifier = SSLUtils.defaultHostnameVerifier();
                    if (hostnameVerifier != null) {
                        ((HttpsURLConnection) conn).setHostnameVerifier(hostnameVerifier);
                    }
                }
                conn.setConnectTimeout(SOCKET_TIMEOUT);
                conn.setReadTimeout(SOCKET_TIMEOUT);
                conn.setRequestProperty("User-Agent", userAgent);
//                conn.setRequestProperty("Connection","close");
//                conn.setRequestProperty("Accept-Encoding", "identity");

                conn.setRequestMethod("GET");
                conn.setDoInput(false);
                conn.setInstanceFollowRedirects(false);
                int code = conn.getResponseCode();
                if (code >= HTTP_BAD_REQUEST) {
                    result.message = "request error code : " + code;
                    result.state = ClickResult.State.FAILURE;
                }
                redirected = code == HTTP_MOVED_PERM || code == HTTP_MOVED_TEMP ||
                        code == HTTP_SEE_OTHER;
                if (redirected) {
                    urlStr = conn.getHeaderField("Location");
                    String referrer = getFieldValue(urlStr, "referrer");
                    conn.disconnect();
                    if (!"".equals(referrer)) {
                        result.referrer = referrer;
                        result.state = ClickResult.State.SUCCESS;
                        break;
                    }

                    if (++redirectCount >= MAX_REDIRECTS) {
                        result.message = "Too many redirects: " + redirectCount;
                        result.state = ClickResult.State.FAILURE;
                        break;
                    }
                    if (System.currentTimeMillis() - startTime >= REQUEST_TIMEOUT) {
                        result.message = "request timeout.";
                        result.state = ClickResult.State.FAILURE;
                        break;
                    }
                }

            } while (redirected);
            if (result.state == ClickResult.State.NONE) {
                byte[] bytes = handleSuccess(conn);
                if (bytes == null) {
                    result.message = "request error, bytes is null";
                    result.state = ClickResult.State.FAILURE;
                    return result;
                }
                String reqData = new String(bytes);
                if (reqData.contains("market://details?id=")) {
                    int beginIndex = reqData.indexOf("market://details?");
                    int endIndex = 0;
                    for (int i = beginIndex; i < reqData.length(); i++) {
                        if (reqData.charAt(i) == '"') {
                            endIndex = i;
                            break;
                        }
                    }
                    if (beginIndex >= 0 && endIndex > 0) {
                        String newResult = reqData.substring(beginIndex, endIndex);
                        String referrer = getFieldValue(newResult, "referrer");
                        if (!"".equals(referrer)) {
                            System.out.println("200 ok is html,query the referrer.");
                            result.referrer = referrer;
                            result.state = ClickResult.State.SUCCESS;
                        }
                        System.out.println(newResult);
                    }
                }
            }
        } catch (IOException e) {
            result.message = e.getMessage();
            result.state = ClickResult.State.FAILURE;
        }

        return result;
    }

    private static String getFieldValue(String urlStr, String field) {
        StringBuilder result = new StringBuilder();
        Pattern pXM = Pattern.compile(field + "=([^&]*)");
        Matcher mXM = pXM.matcher(urlStr);
        while (mXM.find()) {
            result.append(mXM.group(1)).append("\t\t");
        }
        return result.toString();
    }

    public static byte[] handleSuccess(HttpURLConnection conn) {
        byte[] dataBytes = new byte[0];
        InputStream is = null;
        try {
            is = conn.getInputStream();
            if ("gzip".equals(conn.getContentEncoding())) {
                is = new GZIPInputStream(is);
            }
            dataBytes = getBytes(is);
        } catch (Throwable e) {
            e.printStackTrace();
        } finally {
            if (is != null) {
                try {
                    is.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
        return dataBytes;
    }

    public static byte[] handleSuccess(Response response) {
        byte[] dataBytes = new byte[0];
        InputStream is = null;
        try {
            is = Objects.requireNonNull(response.body()).byteStream();
            if ("gzip".equals(response.headers().get("Content-Encoding"))) {
                is = new GZIPInputStream(is);
            }
            dataBytes = getBytes(is);
        } catch (Throwable e) {
            e.printStackTrace();
        } finally {
            if (is != null) {
                try {
                    is.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
        return dataBytes;
    }


    public static byte[] getBytes(InputStream is) throws Throwable {
        try (ByteArrayOutputStream baos = new ByteArrayOutputStream()) {

            byte[] preBytes = new byte[128];
            int len;
            if ((len = is.read(preBytes, 0, 128)) == -1) {
                return null;
            }

            String data = new String(preBytes, Charset.forName("UTF-8"));
            if (!(data.startsWith("<script") || data.contains("<html"))) {
                System.out.println("NativeTaskManager The data returned is not a web page, unable to load");
                return null;
            }
            baos.write(preBytes, 0, len);
            baos.flush();
            final int byteSize = 1024;
            final int maxSize = 8192;
            byte[] b = new byte[byteSize];
            while ((len = is.read(b, 0, byteSize)) != -1) {
                baos.write(b, 0, len);
                if (baos.size() > maxSize) {
                    System.out.println("NativeTaskManager HTML load size exceeds 6144, stop loading");
                    return null;
                }
                baos.flush();
            }
            return baos.toByteArray();
        }
    }
}
