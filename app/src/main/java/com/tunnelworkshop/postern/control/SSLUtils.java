package com.tunnelworkshop.postern.control;

import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLSession;
import javax.net.ssl.SSLSocketFactory;

public class SSLUtils {

    private static final HostnameVerifier HOSTNAME_VERIFIER = new HostnameVerifier() {
        public boolean verify(String hostname, SSLSession session) {
            return HttpsURLConnection.getDefaultHostnameVerifier().verify(hostname, session);
        }
    };

    public static SSLSocketFactory defaultSSLSocketFactory() {
        return new CompatSSLSocketFactory();
    }

    public static HostnameVerifier defaultHostnameVerifier() {
        return HOSTNAME_VERIFIER;
    }

}