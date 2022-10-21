package com.tunnelworkshop.postern.db;

import android.content.ContentValues;
import android.database.Cursor;

public class DevicePo {

    private Integer id;

    private String model;

    private String brand;

    private String deviceType;

    private String operator;

    private String cpuAbi;

    private String buildDisplayId;

    private String btch;

    private String dimSize;

    private String dimYdp;

    private String dimXdp;

    private String dimYpx;

    private String dimXpx;

    private String dimDDpi;

    private String arch;

    private String cpuAbi2;

    private String disk;

    private String sdk;

    private String device;

    private Integer mcc;

    private Integer mnc;

    private String network;

    private Long googleApiVer;

    private String googleApiVerName;

    private String langCode;

    private String language;

    private String batteryLevel;

    private Long lastBootTime;

    private String product;

    private String timezone;

    private String carrier;

    private String advertiserId;

    private String userAgent;

    private String httpAgent;

    private String pe_aa;
    private String pe_ab;
    private String pe_ac;
    private String pe_ad;
    private String pe_ae;
    private String pe_af;
    private String pe_ag;
    private String pe_ah;
    private String pe_ai;
    private String pe_aj;
    private String pe_ak;
    private String pe_al;
    private String pe_am;
    private String pe_an;
    private String pe_ao;
    private String pe_ap;
    private String pe_aq;
    private String pe_ar;
    private String pe_as;
    private String pe_at;
    private String pe_au;
    private String pe_av;

    public DevicePo() {
    }

    public DevicePo(Integer id, String model, String brand, String deviceType, String operator, String cpuAbi, String buildDisplayId, String btch, String dimSize, String dimYdp, String dimXdp, String dimYpx, String dimXpx, String dimDDpi, String arch, String cpuAbi2, String disk, String sdk, String device, Integer mcc, Integer mnc, String network, Long googleApiVer, String googleApiVerName, String langCode, String language, String batteryLevel, Long lastBootTime, String product, String timezone, String carrier, String advertiserId, String userAgent, String httpAgent, String pe_aa, String pe_ab, String pe_ac, String pe_ad, String pe_ae, String pe_af, String pe_ag, String pe_ah, String pe_ai, String pe_aj, String pe_ak, String pe_al, String pe_am, String pe_an, String pe_ao, String pe_ap, String pe_aq, String pe_ar, String pe_as, String pe_at, String pe_au, String pe_av) {
        this.id = id;
        this.model = model;
        this.brand = brand;
        this.deviceType = deviceType;
        this.operator = operator;
        this.cpuAbi = cpuAbi;
        this.buildDisplayId = buildDisplayId;
        this.btch = btch;
        this.dimSize = dimSize;
        this.dimYdp = dimYdp;
        this.dimXdp = dimXdp;
        this.dimYpx = dimYpx;
        this.dimXpx = dimXpx;
        this.dimDDpi = dimDDpi;
        this.arch = arch;
        this.cpuAbi2 = cpuAbi2;
        this.disk = disk;
        this.sdk = sdk;
        this.device = device;
        this.mcc = mcc;
        this.mnc = mnc;
        this.network = network;
        this.googleApiVer = googleApiVer;
        this.googleApiVerName = googleApiVerName;
        this.langCode = langCode;
        this.language = language;
        this.batteryLevel = batteryLevel;
        this.lastBootTime = lastBootTime;
        this.product = product;
        this.timezone = timezone;
        this.carrier = carrier;
        this.advertiserId = advertiserId;
        this.userAgent = userAgent;
        this.httpAgent = httpAgent;
        this.pe_aa = pe_aa;
        this.pe_ab = pe_ab;
        this.pe_ac = pe_ac;
        this.pe_ad = pe_ad;
        this.pe_ae = pe_ae;
        this.pe_af = pe_af;
        this.pe_ag = pe_ag;
        this.pe_ah = pe_ah;
        this.pe_ai = pe_ai;
        this.pe_aj = pe_aj;
        this.pe_ak = pe_ak;
        this.pe_al = pe_al;
        this.pe_am = pe_am;
        this.pe_an = pe_an;
        this.pe_ao = pe_ao;
        this.pe_ap = pe_ap;
        this.pe_aq = pe_aq;
        this.pe_ar = pe_ar;
        this.pe_as = pe_as;
        this.pe_at = pe_at;
        this.pe_au = pe_au;
        this.pe_av = pe_av;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getModel() {
        return model;
    }

    public void setModel(String model) {
        this.model = model;
    }

    public String getBrand() {
        return brand;
    }

    public void setBrand(String brand) {
        this.brand = brand;
    }

    public String getDeviceType() {
        return deviceType;
    }

    public void setDeviceType(String deviceType) {
        this.deviceType = deviceType;
    }

    public String getOperator() {
        return operator;
    }

    public void setOperator(String operator) {
        this.operator = operator;
    }

    public String getCpuAbi() {
        return cpuAbi;
    }

    public void setCpuAbi(String cpuAbi) {
        this.cpuAbi = cpuAbi;
    }

    public String getBuildDisplayId() {
        return buildDisplayId;
    }

    public void setBuildDisplayId(String buildDisplayId) {
        this.buildDisplayId = buildDisplayId;
    }

    public String getBtch() {
        return btch;
    }

    public void setBtch(String btch) {
        this.btch = btch;
    }

    public String getDimSize() {
        return dimSize;
    }

    public void setDimSize(String dimSize) {
        this.dimSize = dimSize;
    }

    public String getDimYdp() {
        return dimYdp;
    }

    public void setDimYdp(String dimYdp) {
        this.dimYdp = dimYdp;
    }

    public String getDimXdp() {
        return dimXdp;
    }

    public void setDimXdp(String dimXdp) {
        this.dimXdp = dimXdp;
    }

    public String getDimYpx() {
        return dimYpx;
    }

    public void setDimYpx(String dimYpx) {
        this.dimYpx = dimYpx;
    }

    public String getDimXpx() {
        return dimXpx;
    }

    public void setDimXpx(String dimXpx) {
        this.dimXpx = dimXpx;
    }

    public String getDimDDpi() {
        return dimDDpi;
    }

    public void setDimDDpi(String dimDDpi) {
        this.dimDDpi = dimDDpi;
    }

    public String getArch() {
        return arch;
    }

    public void setArch(String arch) {
        this.arch = arch;
    }

    public String getCpuAbi2() {
        return cpuAbi2;
    }

    public void setCpuAbi2(String cpuAbi2) {
        this.cpuAbi2 = cpuAbi2;
    }

    public String getDisk() {
        return disk;
    }

    public void setDisk(String disk) {
        this.disk = disk;
    }

    public String getSdk() {
        return sdk;
    }

    public void setSdk(String sdk) {
        this.sdk = sdk;
    }

    public String getDevice() {
        return device;
    }

    public void setDevice(String device) {
        this.device = device;
    }

    public Integer getMcc() {
        return mcc;
    }

    public void setMcc(Integer mcc) {
        this.mcc = mcc;
    }

    public Integer getMnc() {
        return mnc;
    }

    public void setMnc(Integer mnc) {
        this.mnc = mnc;
    }

    public String getNetwork() {
        return network;
    }

    public void setNetwork(String network) {
        this.network = network;
    }

    public Long getGoogleApiVer() {
        return googleApiVer;
    }

    public void setGoogleApiVer(Long googleApiVer) {
        this.googleApiVer = googleApiVer;
    }

    public String getGoogleApiVerName() {
        return googleApiVerName;
    }

    public void setGoogleApiVerName(String googleApiVerName) {
        this.googleApiVerName = googleApiVerName;
    }

    public String getLangCode() {
        return langCode;
    }

    public void setLangCode(String langCode) {
        this.langCode = langCode;
    }

    public String getLanguage() {
        return language;
    }

    public void setLanguage(String language) {
        this.language = language;
    }

    public String getBatteryLevel() {
        return batteryLevel;
    }

    public void setBatteryLevel(String batteryLevel) {
        this.batteryLevel = batteryLevel;
    }

    public Long getLastBootTime() {
        return lastBootTime;
    }

    public void setLastBootTime(Long lastBootTime) {
        this.lastBootTime = lastBootTime;
    }

    public String getProduct() {
        return product;
    }

    public void setProduct(String product) {
        this.product = product;
    }

    public String getTimezone() {
        return timezone;
    }

    public void setTimezone(String timezone) {
        this.timezone = timezone;
    }

    public String getCarrier() {
        return carrier;
    }

    public void setCarrier(String carrier) {
        this.carrier = carrier;
    }

    public String getAdvertiserId() {
        return advertiserId;
    }

    public void setAdvertiserId(String advertiserId) {
        this.advertiserId = advertiserId;
    }

    public String getUserAgent() {
        return userAgent;
    }

    public void setUserAgent(String userAgent) {
        this.userAgent = userAgent;
    }

    public String getHttpAgent() {
        return httpAgent;
    }

    public void setHttpAgent(String httpAgent) {
        this.httpAgent = httpAgent;
    }

    public String getPe_aa() {
        return pe_aa;
    }

    public void setPe_aa(String pe_aa) {
        this.pe_aa = pe_aa;
    }

    public String getPe_ab() {
        return pe_ab;
    }

    public void setPe_ab(String pe_ab) {
        this.pe_ab = pe_ab;
    }

    public String getPe_ac() {
        return pe_ac;
    }

    public void setPe_ac(String pe_ac) {
        this.pe_ac = pe_ac;
    }

    public String getPe_ad() {
        return pe_ad;
    }

    public void setPe_ad(String pe_ad) {
        this.pe_ad = pe_ad;
    }

    public String getPe_ae() {
        return pe_ae;
    }

    public void setPe_ae(String pe_ae) {
        this.pe_ae = pe_ae;
    }

    public String getPe_af() {
        return pe_af;
    }

    public void setPe_af(String pe_af) {
        this.pe_af = pe_af;
    }

    public String getPe_ag() {
        return pe_ag;
    }

    public void setPe_ag(String pe_ag) {
        this.pe_ag = pe_ag;
    }

    public String getPe_ah() {
        return pe_ah;
    }

    public void setPe_ah(String pe_ah) {
        this.pe_ah = pe_ah;
    }

    public String getPe_ai() {
        return pe_ai;
    }

    public void setPe_ai(String pe_ai) {
        this.pe_ai = pe_ai;
    }

    public String getPe_aj() {
        return pe_aj;
    }

    public void setPe_aj(String pe_aj) {
        this.pe_aj = pe_aj;
    }

    public String getPe_ak() {
        return pe_ak;
    }

    public void setPe_ak(String pe_ak) {
        this.pe_ak = pe_ak;
    }

    public String getPe_al() {
        return pe_al;
    }

    public void setPe_al(String pe_al) {
        this.pe_al = pe_al;
    }

    public String getPe_am() {
        return pe_am;
    }

    public void setPe_am(String pe_am) {
        this.pe_am = pe_am;
    }

    public String getPe_an() {
        return pe_an;
    }

    public void setPe_an(String pe_an) {
        this.pe_an = pe_an;
    }

    public String getPe_ao() {
        return pe_ao;
    }

    public void setPe_ao(String pe_ao) {
        this.pe_ao = pe_ao;
    }

    public String getPe_ap() {
        return pe_ap;
    }

    public void setPe_ap(String pe_ap) {
        this.pe_ap = pe_ap;
    }

    public String getPe_aq() {
        return pe_aq;
    }

    public void setPe_aq(String pe_aq) {
        this.pe_aq = pe_aq;
    }

    public String getPe_ar() {
        return pe_ar;
    }

    public void setPe_ar(String pe_ar) {
        this.pe_ar = pe_ar;
    }

    public String getPe_as() {
        return pe_as;
    }

    public void setPe_as(String pe_as) {
        this.pe_as = pe_as;
    }

    public String getPe_at() {
        return pe_at;
    }

    public void setPe_at(String pe_at) {
        this.pe_at = pe_at;
    }

    public String getPe_au() {
        return pe_au;
    }

    public void setPe_au(String pe_au) {
        this.pe_au = pe_au;
    }

    public String getPe_av() {
        return pe_av;
    }

    public void setPe_av(String pe_av) {
        this.pe_av = pe_av;
    }

    public static ContentValues getCVForDevice(DevicePo devicePo) {
        ContentValues contentValues = new ContentValues();
        if (devicePo.getId() != null) {
            contentValues.put(DeviceTable.ID, devicePo.getId());
        }
        contentValues.put(DeviceTable.MODEL, devicePo.getModel());
        contentValues.put(DeviceTable.BRAND, devicePo.getBrand());
        contentValues.put(DeviceTable.DEVICE_TYPE, devicePo.getDeviceType());
        contentValues.put(DeviceTable.OPERATOR, devicePo.getOperator());
        contentValues.put(DeviceTable.CPU_ABI, devicePo.getCpuAbi());
        contentValues.put(DeviceTable.BUILD_DISPLAY_ID, devicePo.getBuildDisplayId());
        contentValues.put(DeviceTable.BTCH, devicePo.getBtch());
        contentValues.put(DeviceTable.DIM_SIZE, devicePo.getDimSize());
        contentValues.put(DeviceTable.DIM_YDP, devicePo.getDimYdp());
        contentValues.put(DeviceTable.DIM_XDP, devicePo.getDimXdp());
        contentValues.put(DeviceTable.DIM_Y_PX, devicePo.getDimYpx());
        contentValues.put(DeviceTable.DIM_X_PX, devicePo.getDimXpx());
        contentValues.put(DeviceTable.DIM_D_DPI, devicePo.getDimDDpi());
        contentValues.put(DeviceTable.ARCH, devicePo.getArch());
        contentValues.put(DeviceTable.CPU_ABI2, devicePo.getCpuAbi2());
        contentValues.put(DeviceTable.DISK, devicePo.getDisk());
        contentValues.put(DeviceTable.SDK, devicePo.getSdk());
        contentValues.put(DeviceTable.DEVICE, devicePo.getDevice());
        contentValues.put(DeviceTable.MCC, devicePo.getMcc());
        contentValues.put(DeviceTable.MNC, devicePo.getMnc());
        contentValues.put(DeviceTable.NETWORK, devicePo.getNetwork());
        contentValues.put(DeviceTable.GOOGLE_API_VER, devicePo.getGoogleApiVer());
        contentValues.put(DeviceTable.GOOGLE_API_VER_NAME, devicePo.getGoogleApiVerName());
        contentValues.put(DeviceTable.LANG_CODE, devicePo.getLangCode());
        contentValues.put(DeviceTable.LANG, devicePo.getLanguage());
        contentValues.put(DeviceTable.BATTERY_LEVEL, devicePo.getBatteryLevel());
        contentValues.put(DeviceTable.LAST_BOOT_TIME, devicePo.getLastBootTime());
        contentValues.put(DeviceTable.PRODUCT, devicePo.getProduct());
        contentValues.put(DeviceTable.TIMEZONE, devicePo.getTimezone());
        contentValues.put(DeviceTable.CARRIER, devicePo.getCarrier());
        contentValues.put(DeviceTable.ADVERTISER_ID, devicePo.getAdvertiserId());
        contentValues.put(DeviceTable.USER_AGENT, devicePo.getUserAgent());
        contentValues.put(DeviceTable.HTTP_AGENT, devicePo.getHttpAgent());

        contentValues.put(DeviceTable.PE_AA, devicePo.getPe_aa());
        contentValues.put(DeviceTable.PE_AB, devicePo.getPe_ab());
        contentValues.put(DeviceTable.PE_AC, devicePo.getPe_ac());
        contentValues.put(DeviceTable.PE_AD, devicePo.getPe_ad());
        contentValues.put(DeviceTable.PE_AE, devicePo.getPe_ae());
        contentValues.put(DeviceTable.PE_AF, devicePo.getPe_af());
        contentValues.put(DeviceTable.PE_AG, devicePo.getPe_ag());
        contentValues.put(DeviceTable.PE_AH, devicePo.getPe_ah());
        contentValues.put(DeviceTable.PE_AI, devicePo.getPe_ai());
        contentValues.put(DeviceTable.PE_AJ, devicePo.getPe_aj());
        contentValues.put(DeviceTable.PE_AK, devicePo.getPe_ak());
        contentValues.put(DeviceTable.PE_AL, devicePo.getPe_al());
        contentValues.put(DeviceTable.PE_AM, devicePo.getPe_am());
        contentValues.put(DeviceTable.PE_AN, devicePo.getPe_an());
        contentValues.put(DeviceTable.PE_AO, devicePo.getPe_ao());
        contentValues.put(DeviceTable.PE_AP, devicePo.getPe_ap());
        contentValues.put(DeviceTable.PE_AQ, devicePo.getPe_aq());
        contentValues.put(DeviceTable.PE_AR, devicePo.getPe_ar());
        contentValues.put(DeviceTable.PE_AS, devicePo.getPe_as());
        contentValues.put(DeviceTable.PE_AT, devicePo.getPe_at());
        contentValues.put(DeviceTable.PE_AU, devicePo.getPe_au());
        contentValues.put(DeviceTable.PE_AV, devicePo.getPe_av());
        return contentValues;
    }

    public static DevicePo getDevice(Cursor cursor) {
        DevicePo device = new DevicePo();
        device.setId(cursor.getInt(cursor.getColumnIndex(DeviceTable.ID)));
        device.setModel(cursor.getString(cursor.getColumnIndex(DeviceTable.MODEL)));
        device.setBrand(cursor.getString(cursor.getColumnIndex(DeviceTable.BRAND)));
        device.setDeviceType(cursor.getString(cursor.getColumnIndex(DeviceTable.DEVICE_TYPE)));
        device.setOperator(cursor.getString(cursor.getColumnIndex(DeviceTable.OPERATOR)));
        device.setCpuAbi(cursor.getString(cursor.getColumnIndex(DeviceTable.CPU_ABI)));
        device.setBuildDisplayId(cursor.getString(cursor.getColumnIndex(DeviceTable.BUILD_DISPLAY_ID)));
        device.setBtch(cursor.getString(cursor.getColumnIndex(DeviceTable.BTCH)));
        device.setDimSize(cursor.getString(cursor.getColumnIndex(DeviceTable.DIM_SIZE)));
        device.setDimYdp(cursor.getString(cursor.getColumnIndex(DeviceTable.DIM_YDP)));
        device.setDimXdp(cursor.getString(cursor.getColumnIndex(DeviceTable.DIM_XDP)));
        device.setDimYpx(cursor.getString(cursor.getColumnIndex(DeviceTable.DIM_Y_PX)));
        device.setDimXpx(cursor.getString(cursor.getColumnIndex(DeviceTable.DIM_X_PX)));
        device.setDimDDpi(cursor.getString(cursor.getColumnIndex(DeviceTable.DIM_D_DPI)));
        device.setArch(cursor.getString(cursor.getColumnIndex(DeviceTable.ARCH)));
        device.setCpuAbi2(cursor.getString(cursor.getColumnIndex(DeviceTable.CPU_ABI2)));
        device.setDisk(cursor.getString(cursor.getColumnIndex(DeviceTable.DISK)));
        device.setSdk(cursor.getString(cursor.getColumnIndex(DeviceTable.SDK)));
        device.setDevice(cursor.getString(cursor.getColumnIndex(DeviceTable.DEVICE)));
        device.setMcc(cursor.getInt(cursor.getColumnIndex(DeviceTable.MCC)));
        device.setMnc(cursor.getInt(cursor.getColumnIndex(DeviceTable.MNC)));
        device.setNetwork(cursor.getString(cursor.getColumnIndex(DeviceTable.NETWORK)));
        device.setGoogleApiVer(cursor.getLong(cursor.getColumnIndex(DeviceTable.GOOGLE_API_VER)));
        device.setGoogleApiVerName(cursor.getString(cursor.getColumnIndex(DeviceTable.GOOGLE_API_VER_NAME)));
        device.setLangCode(cursor.getString(cursor.getColumnIndex(DeviceTable.LANG_CODE)));
        device.setLanguage(cursor.getString(cursor.getColumnIndex(DeviceTable.LANG)));
        device.setBatteryLevel(cursor.getString(cursor.getColumnIndex(DeviceTable.BATTERY_LEVEL)));
        device.setLastBootTime(cursor.getLong(cursor.getColumnIndex(DeviceTable.LAST_BOOT_TIME)));
        device.setProduct(cursor.getString(cursor.getColumnIndex(DeviceTable.PRODUCT)));
        device.setTimezone(cursor.getString(cursor.getColumnIndex(DeviceTable.TIMEZONE)));
        device.setCarrier(cursor.getString(cursor.getColumnIndex(DeviceTable.CARRIER)));
        device.setAdvertiserId(cursor.getString(cursor.getColumnIndex(DeviceTable.ADVERTISER_ID)));
        device.setUserAgent(cursor.getString(cursor.getColumnIndex(DeviceTable.USER_AGENT)));
        device.setHttpAgent(cursor.getString(cursor.getColumnIndex(DeviceTable.HTTP_AGENT)));

        device.setPe_aa(cursor.getString(cursor.getColumnIndex(DeviceTable.PE_AA)));
        device.setPe_ab(cursor.getString(cursor.getColumnIndex(DeviceTable.PE_AB)));
        device.setPe_ac(cursor.getString(cursor.getColumnIndex(DeviceTable.PE_AC)));
        device.setPe_ad(cursor.getString(cursor.getColumnIndex(DeviceTable.PE_AD)));
        device.setPe_ae(cursor.getString(cursor.getColumnIndex(DeviceTable.PE_AE)));
        device.setPe_af(cursor.getString(cursor.getColumnIndex(DeviceTable.PE_AF)));
        device.setPe_ag(cursor.getString(cursor.getColumnIndex(DeviceTable.PE_AG)));
        device.setPe_ah(cursor.getString(cursor.getColumnIndex(DeviceTable.PE_AH)));
        device.setPe_ai(cursor.getString(cursor.getColumnIndex(DeviceTable.PE_AI)));
        device.setPe_aj(cursor.getString(cursor.getColumnIndex(DeviceTable.PE_AJ)));
        device.setPe_ak(cursor.getString(cursor.getColumnIndex(DeviceTable.PE_AK)));
        device.setPe_al(cursor.getString(cursor.getColumnIndex(DeviceTable.PE_AL)));
        device.setPe_am(cursor.getString(cursor.getColumnIndex(DeviceTable.PE_AM)));
        device.setPe_an(cursor.getString(cursor.getColumnIndex(DeviceTable.PE_AN)));
        device.setPe_ao(cursor.getString(cursor.getColumnIndex(DeviceTable.PE_AO)));
        device.setPe_ap(cursor.getString(cursor.getColumnIndex(DeviceTable.PE_AP)));
        device.setPe_aq(cursor.getString(cursor.getColumnIndex(DeviceTable.PE_AQ)));
        device.setPe_ar(cursor.getString(cursor.getColumnIndex(DeviceTable.PE_AR)));
        device.setPe_as(cursor.getString(cursor.getColumnIndex(DeviceTable.PE_AS)));
        device.setPe_at(cursor.getString(cursor.getColumnIndex(DeviceTable.PE_AT)));
        device.setPe_au(cursor.getString(cursor.getColumnIndex(DeviceTable.PE_AU)));
        device.setPe_av(cursor.getString(cursor.getColumnIndex(DeviceTable.PE_AV)));
        return device;
    }

    @Override
    public String toString() {
        return "DevicePo{" +
                "id=" + id +
                ", model='" + model + '\'' +
                ", brand='" + brand + '\'' +
                ", deviceType='" + deviceType + '\'' +
                ", operator='" + operator + '\'' +
                ", cpuAbi='" + cpuAbi + '\'' +
                ", buildDisplayId='" + buildDisplayId + '\'' +
                ", btch='" + btch + '\'' +
                ", dimSize='" + dimSize + '\'' +
                ", dimYdp='" + dimYdp + '\'' +
                ", dimXdp='" + dimXdp + '\'' +
                ", dimYpx='" + dimYpx + '\'' +
                ", dimXpx='" + dimXpx + '\'' +
                ", dimDDpi='" + dimDDpi + '\'' +
                ", arch='" + arch + '\'' +
                ", cpuAbi2='" + cpuAbi2 + '\'' +
                ", disk='" + disk + '\'' +
                ", sdk='" + sdk + '\'' +
                ", device='" + device + '\'' +
                ", mcc='" + mcc + '\'' +
                ", mnc='" + mnc + '\'' +
                ", network='" + network + '\'' +
                ", googleApiVer='" + googleApiVer + '\'' +
                ", googleApiVerName='" + googleApiVerName + '\'' +
                ", langCode='" + langCode + '\'' +
                ", language='" + language + '\'' +
                ", batteryLevel='" + batteryLevel + '\'' +
                ", lastBootTime='" + lastBootTime + '\'' +
                ", product='" + product + '\'' +
                ", timezone='" + timezone + '\'' +
                ", carrier='" + carrier + '\'' +
                ", advertiserId='" + advertiserId + '\'' +
                ", userAgent='" + userAgent + '\'' +
                ", httpAgent='" + httpAgent + '\'' +
                ", pe_aa='" + pe_aa + '\'' +
                ", pe_ab='" + pe_ab + '\'' +
                ", pe_ac='" + pe_ac + '\'' +
                ", pe_ad='" + pe_ad + '\'' +
                ", pe_ae='" + pe_ae + '\'' +
                ", pe_af='" + pe_af + '\'' +
                ", pe_ag='" + pe_ag + '\'' +
                ", pe_ah='" + pe_ah + '\'' +
                ", pe_ai='" + pe_ai + '\'' +
                ", pe_aj='" + pe_aj + '\'' +
                ", pe_ak='" + pe_ak + '\'' +
                ", pe_al='" + pe_al + '\'' +
                ", pe_am='" + pe_am + '\'' +
                ", pe_an='" + pe_an + '\'' +
                ", pe_ao='" + pe_ao + '\'' +
                ", pe_ap='" + pe_ap + '\'' +
                ", pe_aq='" + pe_aq + '\'' +
                ", pe_ar='" + pe_ar + '\'' +
                ", pe_as='" + pe_as + '\'' +
                ", pe_at='" + pe_at + '\'' +
                ", pe_au='" + pe_au + '\'' +
                ", pe_av='" + pe_av + '\'' +
                '}';
    }
}
