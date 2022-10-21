package com.tunnelworkshop.postern;

import static java.net.HttpURLConnection.HTTP_BAD_REQUEST;
import static java.net.HttpURLConnection.HTTP_MOVED_PERM;
import static java.net.HttpURLConnection.HTTP_MOVED_TEMP;
import static java.net.HttpURLConnection.HTTP_SEE_OTHER;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.nio.charset.Charset;
import java.util.concurrent.TimeUnit;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.zip.GZIPInputStream;

import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLSocketFactory;

public class Test {


    @org.junit.Test
    public void test() {
//        httpRequest("2324", 1, "success");
        String ua = "Mozilla/5.0 (Linux; Android 11; M2007J22C Build/RP1A.200720.011; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/92.0.4515.131 Mobile Safari/537.36";
        String url = "http://track.adsforward.com/api/track?offer=6019278&mid=62858868&pub_id={siteid}&gaid={gaid}&idfa={idfa}&click_id={clickid}&ip={ip}&ua={ua}&osv={osv}&lang={lang}";
//        String result = "";
//        try {
//            result = handleConnection(url, ua);
//        } catch (Exception e) {
//            e.printStackTrace();
//        }
//        System.out.println(result);
    }


    public static void httpRequest(String phoneId, int status, String message) {
        HttpURLConnection var9 = null;
        try {
            URL var23 = new URL("http://159.138.154.119:7001/addListenerTJT?phoneid=" + phoneId + "&status=" + status + "&msg=" + URLEncoder.encode(message, "UTF-8"));
            (var9 = (HttpURLConnection) var23.openConnection()).setReadTimeout(30000);
            var9.setConnectTimeout(30000);
            var9.setRequestMethod("GET");
            var9.setDoInput(true);
            var9.setDoOutput(true);
//            var9.setRequestProperty("Content-Type", "application/octet-stream");
            int var22 = var9.getResponseCode();

            if (var22 == 200) {
//                byte[] bytes = getBytes(var9.getInputStream());
//                String json = new String(bytes);
                System.out.println("Status 200 ok");
            } else {
                System.out.println("request error code=" + var22);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (var9 != null) {
                var9.disconnect();
            }
        }
    }
}
