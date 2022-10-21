package com.tunnelworkshop.postern.db;

/**
 * Created by jiantao.tu on 2018/5/23.
 */
public class DeviceTable {

    public final static String TABLE_NAME = "device";

    public final static String ID = "device_id";

    public final static String MODEL = "model";

    public final static String BRAND = "brand";

    public final static String DEVICE_TYPE = "device_type";

    public final static String OPERATOR = "operator";

    public final static String CPU_ABI = "cpu_abi";

    public final static String BUILD_DISPLAY_ID = "build_display_id";

    public final static String BTCH = "btch";

    public final static String DIM_SIZE = "dim_size";

    public final static String DIM_YDP = "dim_ydp";

    public final static String DIM_XDP = "dim_xdp";

    public final static String DIM_Y_PX = "dim_y_px";

    public final static String DIM_X_PX = "dim_x_px";

    public final static String DIM_D_DPI = "dim_d_dpi";

    public final static String ARCH = "arch";

    public final static String CPU_ABI2 = "cpu_abi2";

    public final static String DISK = "disk";

    public final static String SDK = "sdk";

    public final static String DEVICE = "device";

    public final static String MCC = "mcc";

    public final static String MNC = "mnc";

    public final static String NETWORK = "network";

    public final static String GOOGLE_API_VER = "google_api_ver";

    public final static String GOOGLE_API_VER_NAME = "google_api_ver_name";

    public final static String LANG_CODE = "lang_code";

    public final static String LANG = "lang";

    public final static String BATTERY_LEVEL = "battery_level";

    public final static String LAST_BOOT_TIME = "last_boot_time";

    public final static String PRODUCT = "product";

    public final static String TIMEZONE = "timezone";

    public final static String CARRIER = "carrier";

    public final static String ADVERTISER_ID = "advertiser_id";

    public final static String USER_AGENT = "user_agent";

    public final static String HTTP_AGENT = "http_agent";

    public final static String PE_AA = "pe_aa";
    public final static String PE_AB = "pe_ab";
    public final static String PE_AC = "pe_ac";
    public final static String PE_AD = "pe_ad";
    public final static String PE_AE = "pe_ae";
    public final static String PE_AF = "pe_af";
    public final static String PE_AG = "pe_ag";
    public final static String PE_AH = "pe_ah";
    public final static String PE_AI = "pe_ai";
    public final static String PE_AJ = "pe_aj";
    public final static String PE_AK = "pe_ak";
    public final static String PE_AL = "pe_al";
    public final static String PE_AM = "pe_am";
    public final static String PE_AN = "pe_an";
    public final static String PE_AO = "pe_ao";
    public final static String PE_AP = "pe_ap";
    public final static String PE_AQ = "pe_aq";
    public final static String PE_AR = "pe_ar";
    public final static String PE_AS = "pe_as";
    public final static String PE_AT = "pe_at";
    public final static String PE_AU = "pe_au";
    public final static String PE_AV = "pe_av";


    public static final String CREATE_SQL = "CREATE TABLE IF NOT EXISTS "
            + TABLE_NAME
            + "("
            + ID + " integer PRIMARY KEY AUTOINCREMENT, "
            + MODEL + " TEXT, "
            + BRAND + " TEXT, "
            + DEVICE_TYPE + " TEXT, "
            + OPERATOR + " TEXT, "
            + CPU_ABI + " TEXT, "
            + BUILD_DISPLAY_ID + " TEXT, "
            + BTCH + " TEXT, "
            + DIM_SIZE + " TEXT, "
            + DIM_YDP + " TEXT, "
            + DIM_XDP + " TEXT, "
            + DIM_Y_PX + " TEXT, "
            + DIM_X_PX + " TEXT, "
            + DIM_D_DPI + " TEXT, "
            + ARCH + " TEXT, "
            + CPU_ABI2 + " TEXT, "
            + DISK + " TEXT, "
            + SDK + " TEXT, "
            + DEVICE + " TEXT, "
            + MCC + " integer, "
            + MNC + " integer, "
            + NETWORK + " TEXT, "
            + GOOGLE_API_VER + " UNSIGNED BIG INT, "
            + GOOGLE_API_VER_NAME + " TEXT, "
            + LANG_CODE + " TEXT, "
            + LANG + " TEXT, "
            + BATTERY_LEVEL + " TEXT, "
            + LAST_BOOT_TIME + " UNSIGNED BIG INT, "
            + PRODUCT + " TEXT, "
            + TIMEZONE + " TEXT, "
            + CARRIER + " TEXT, "
            + ADVERTISER_ID + " TEXT, "
            + USER_AGENT + " TEXT, "

            + PE_AA + " TEXT, "
            + PE_AB + " TEXT, "
            + PE_AC + " TEXT, "
            + PE_AD + " TEXT, "
            + PE_AE + " TEXT, "
            + PE_AF + " TEXT, "
            + PE_AG + " TEXT, "
            + PE_AH + " TEXT, "
            + PE_AI + " TEXT, "
            + PE_AJ + " TEXT, "
            + PE_AK + " TEXT, "
            + PE_AL + " TEXT, "
            + PE_AM + " TEXT, "
            + PE_AN + " TEXT, "
            + PE_AO + " TEXT, "
            + PE_AP + " TEXT, "
            + PE_AQ + " TEXT, "
            + PE_AR + " TEXT, "
            + PE_AS + " TEXT, "
            + PE_AT + " TEXT, "
            + PE_AU + " TEXT, "
            + PE_AV + " TEXT, "


            + HTTP_AGENT + " TEXT);";
}
