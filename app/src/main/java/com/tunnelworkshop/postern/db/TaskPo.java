package com.tunnelworkshop.postern.db;

import android.content.ContentValues;
import android.database.Cursor;

public class TaskPo {


    private String id;


    /**
     * 沙盒目录
     */
    private String sanBox;
    private Integer day;
    private String pkg;

    private String clickUrl;

    private Integer ctit;

    private String country;

    private String proxyName;

    private String proxyPass;

    private String proxyServer;

    private String proxyPort;

    private String referrer;

    private Long clickTs;

    private String buildNumber;

    /**
     * 任务状态 0初始状态 ，1为点击后，需要记录referrer 【（2为激活 3，为留存）暂无】
     */
    private Integer state = 0;

    /**
     * device表数据的id，逻辑外键
     */
    private DevicePo devicePo;

    private Long createDate = System.currentTimeMillis();

    public TaskPo() {
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getSanBox() {
        return sanBox;
    }

    public void setSanBox(String sanBox) {
        this.sanBox = sanBox;
    }

    public Integer getDay() {
        return day;
    }

    public void setDay(Integer day) {
        this.day = day;
    }

    public String getPkg() {
        return pkg;
    }

    public void setPkg(String pkg) {
        this.pkg = pkg;
    }

    public Integer getCtit() {
        return ctit;
    }

    public void setCtit(Integer ctit) {
        this.ctit = ctit;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

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

    public String getReferrer() {
        return referrer;
    }

    public void setReferrer(String referrer) {
        this.referrer = referrer;
    }

    public Long getClickTs() {
        return clickTs;
    }

    public void setClickTs(Long clickTs) {
        this.clickTs = clickTs;
    }

    public Integer getState() {
        return state;
    }

    public void setState(Integer state) {
        this.state = state;
    }

    public DevicePo getDevicePo() {
        return devicePo;
    }

    public void setDevicePo(DevicePo devicePo) {
        this.devicePo = devicePo;
    }

    public Long getCreateDate() {
        return createDate;
    }

    public void setCreateDate(Long createDate) {
        this.createDate = createDate;
    }

    public String getClickUrl() {
        return clickUrl;
    }

    public void setClickUrl(String clickUrl) {
        this.clickUrl = clickUrl;
    }

    public String getBuildNumber() {
        return buildNumber;
    }

    public void setBuildNumber(String buildNumber) {
        this.buildNumber = buildNumber;
    }

    public static ContentValues getCVForTask(TaskPo task) {
        ContentValues contentValues = new ContentValues();
        contentValues.put(TaskTable.ID, task.getId());
        contentValues.put(TaskTable.SAN_BOX, task.getSanBox());
        contentValues.put(TaskTable.DAY, task.getDay());
        contentValues.put(TaskTable.PKG, task.getPkg());
        contentValues.put(TaskTable.CLICK_URL, task.getClickUrl());
        contentValues.put(TaskTable.CT_IT, task.getCtit());
        contentValues.put(TaskTable.COUNTRY, task.getCountry());
        contentValues.put(TaskTable.PROXY_NAME, task.getProxyName());
        contentValues.put(TaskTable.PROXY_PASS, task.getProxyPass());
        contentValues.put(TaskTable.PROXY_SERVER, task.getProxyServer());
        contentValues.put(TaskTable.PROXY_PORT, task.getProxyPort());
        contentValues.put(TaskTable.REFERRER, task.getReferrer());
        contentValues.put(TaskTable.CLICK_TS, task.getClickTs());
        contentValues.put(TaskTable.STATE, task.getState());
        contentValues.put(TaskTable.STATE, task.getBuildNumber());
        contentValues.put(TaskTable.CREATE_DATE, task.getCreateDate());
        if (task.getDevicePo() != null) {
            contentValues.put(TaskTable.DEVICE_ID, task.getDevicePo().getId());

        }
        return contentValues;
    }

    public static TaskPo getTask(Cursor cursor) {
        TaskPo task = new TaskPo();
        task.setId(cursor.getString(cursor.getColumnIndex(TaskTable.ID)));
        task.setSanBox(cursor.getString(cursor.getColumnIndex(TaskTable.SAN_BOX)));
        task.setDay(cursor.getInt(cursor.getColumnIndex(TaskTable.DAY)));
        task.setPkg(cursor.getString(cursor.getColumnIndex(TaskTable.PKG)));
        task.setClickUrl(cursor.getString(cursor.getColumnIndex(TaskTable.CLICK_URL)));
        task.setCtit(cursor.getInt(cursor.getColumnIndex(TaskTable.CT_IT)));
        task.setCountry(cursor.getString(cursor.getColumnIndex(TaskTable.COUNTRY)));
        task.setProxyName(cursor.getString(cursor.getColumnIndex(TaskTable.PROXY_NAME)));
        task.setProxyPass(cursor.getString(cursor.getColumnIndex(TaskTable.PROXY_PASS)));
        task.setProxyServer(cursor.getString(cursor.getColumnIndex(TaskTable.PROXY_SERVER)));
        task.setProxyPort(cursor.getString(cursor.getColumnIndex(TaskTable.PROXY_PORT)));
        task.setReferrer(cursor.getString(cursor.getColumnIndex(TaskTable.REFERRER)));
        task.setClickTs(cursor.getLong(cursor.getColumnIndex(TaskTable.CLICK_TS)));
        task.setState(cursor.getInt(cursor.getColumnIndex(TaskTable.STATE)));
        task.setBuildNumber(cursor.getString(cursor.getColumnIndex(TaskTable.BUILD_NUMBER)));
        task.setCreateDate(cursor.getLong(cursor.getColumnIndex(TaskTable.CREATE_DATE)));
        DevicePo device = DevicePo.getDevice(cursor);
        task.setDevicePo(device);
        return task;
    }

    @Override
    public String toString() {
        return "TaskPo{" +
                "id=" + id +
                ", sanBox='" + sanBox + '\'' +
                ", day=" + day +
                ", pkg='" + pkg + '\'' +
                ", clickUrl='" + clickUrl + '\'' +
                ", ctit=" + ctit +
                ", country='" + country + '\'' +
                ", proxyName='" + proxyName + '\'' +
                ", proxyPass='" + proxyPass + '\'' +
                ", proxyServer='" + proxyServer + '\'' +
                ", proxyPort='" + proxyPort + '\'' +
                ", referrer='" + referrer + '\'' +
                ", clickTs=" + clickTs +
                ", state=" + state +
                ", devicePo=" + devicePo +
                ", createDate=" + createDate +
                '}';
    }
}
