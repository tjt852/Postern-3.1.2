package com.tunnelworkshop.postern.control;

public class Parameters {

    private String proxyName;

    private String proxyPass;

    private String proxyServer;

    private String proxyPort;

    private String phoneId;

    private String targetPkg;

    private String country;

    private String callbackUrl;

    public String getProxyName() {
        return proxyName;
    }

    public void setProxyName(String proxyName) {
        this.proxyName = proxyName;
    }

    public String getProxyPass() {
        return proxyPass;
    }

    public void setProxyPass(String proxyPass) {
        this.proxyPass = proxyPass;
    }

    public String getProxyServer() {
        return proxyServer;
    }

    public void setProxyServer(String proxyServer) {
        this.proxyServer = proxyServer;
    }

    public String getProxyPort() {
        return proxyPort;
    }

    public void setProxyPort(String proxyPort) {
        this.proxyPort = proxyPort;
    }

    public String getPhoneId() {
        return phoneId;
    }

    public void setPhoneId(String phoneId) {
        this.phoneId = phoneId;
    }

    public String getTargetPkg() {
        return targetPkg;
    }

    public void setTargetPkg(String targetPkg) {
        this.targetPkg = targetPkg;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public String getCallbackUrl() {
        return callbackUrl;
    }

    public void setCallbackUrl(String callbackUrl) {
        this.callbackUrl = callbackUrl;
    }

    @Override
    public String toString() {
        return "Parameters{" +
                "proxyName='" + proxyName + '\'' +
                ", proxyPass='" + proxyPass + '\'' +
                ", proxyServer='" + proxyServer + '\'' +
                ", proxyPort='" + proxyPort + '\'' +
                ", phoneId='" + phoneId + '\'' +
                ", targetPkg='" + targetPkg + '\'' +
                ", country='" + country + '\'' +
                ", callbackUrl='" + callbackUrl + '\'' +
                '}';
    }
}
