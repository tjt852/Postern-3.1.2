package com.tunnelworkshop.postern.control;

import static java.net.HttpURLConnection.HTTP_BAD_REQUEST;
import static java.net.HttpURLConnection.HTTP_MOVED_PERM;
import static java.net.HttpURLConnection.HTTP_MOVED_TEMP;
import static java.net.HttpURLConnection.HTTP_SEE_OTHER;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.nio.charset.Charset;
import java.util.concurrent.TimeUnit;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.zip.GZIPInputStream;

import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLSocketFactory;

public class ClickAd {

    private final static int MAX_REDIRECTS = 10;

    private static final int SOCKET_TIMEOUT = 10000;
    private static final long REQUEST_TIMEOUT = TimeUnit.SECONDS.toMillis(20);


    public static ClickResult clickToReferrer(String urlStr, String userAgent) {
        ClickResult result = null;
        try {
            result = new ClickResult();
            HttpURLConnection conn;
            boolean redirected;
            long startTime = System.currentTimeMillis();
            int redirectCount = 0;

            do {
                URL url = new URL(urlStr);
                conn = (HttpURLConnection) url.openConnection();
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
                conn.setRequestMethod("GET");
                conn.setDoInput(true);
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
