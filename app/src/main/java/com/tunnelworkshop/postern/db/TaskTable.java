package com.tunnelworkshop.postern.db;

public class TaskTable {
    public final static String TABLE_NAME = "task";

    public final static String ID = "task_id";

    /**
     * 沙盒目录
     */
    public final static String SAN_BOX = "san_box";
    public final static String DAY = "day";
    public final static String PKG = "pkg";
    public final static String CLICK_URL = "click_url";
    public final static String CT_IT = "ct_it";
    public final static String COUNTRY = "country";

    /**
     * 点击时间，完整时间戳
     */
    public final static String CLICK_TS = "click_ts";

    public final static String PROXY_NAME = "proxy_name";

    public final static String PROXY_PASS = "proxy_pass";

    public final static String PROXY_SERVER = "proxy_server";

    public final static String PROXY_PORT = "proxy_port";

    /**
     * 点击后的referrer
     */
    public final static String REFERRER = "referrer";

    /**
     * 任务状态
     */
    public final static String STATE = "state";

    /**
     * device表数据的id，逻辑外键
     */
    public final static String DEVICE_ID = "device_id";

    public final static String BUILD_NUMBER = "build_number";

    public final static String CREATE_DATE = "create_date";

    public static final String CREATE_SQL = "CREATE TABLE IF NOT EXISTS "
            + TABLE_NAME
            + "("
            + ID + " TEXT PRIMARY KEY, "
            + SAN_BOX + " TEXT, "
            + DAY + " integer, "
            + PKG + " TEXT, "
            + CLICK_URL + " CLICK_URL, "
            + CT_IT + " integer, "
            + COUNTRY + " TEXT, "
            + CLICK_TS + " UNSIGNED BIG INT, "
            + PROXY_NAME + " TEXT, "
            + PROXY_PASS + " TEXT, "
            + PROXY_SERVER + " TEXT, "
            + PROXY_PORT + " TEXT, "
            + REFERRER + " TEXT, "
            + STATE + " integer, "
            + DEVICE_ID + " integer, "
            + BUILD_NUMBER + " TEXT, "
            + CREATE_DATE + " UNSIGNED BIG INT);";
}
