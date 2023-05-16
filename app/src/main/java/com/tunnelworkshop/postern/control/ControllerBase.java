package com.tunnelworkshop.postern.control;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.util.Base64;

import androidx.test.core.app.ApplicationProvider;
import androidx.test.platform.app.InstrumentationRegistry;
import androidx.test.uiautomator.By;
import androidx.test.uiautomator.UiDevice;
import androidx.test.uiautomator.UiObject;
import androidx.test.uiautomator.UiObjectNotFoundException;
import androidx.test.uiautomator.UiSelector;
import androidx.test.uiautomator.Until;

import com.tunnelworkshop.postern.PosternApp;
import com.tunnelworkshop.postern.PosternVpnService;
import com.tunnelworkshop.postern.db.DeviceDao;
import com.tunnelworkshop.postern.db.DevicePo;
import com.tunnelworkshop.postern.db.TaskDao;
import com.tunnelworkshop.postern.db.TaskPo;

import org.json.JSONException;
import org.json.JSONObject;
import org.junit.Test;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.concurrent.TimeUnit;

public abstract class ControllerBase {

    private static final int LAUNCH_TIMEOUT = 8000;

    private static final String BASIC_SAMPLE_PACKAGE = "com.tunnelworkshop.postern";

    public UiDevice device;

    public Context context;

    public Parameters parameters;

    public String message = "";

    public int status = 0;

    public TaskDao taskDao;

    public DeviceDao deviceDao;

    public TaskPo taskPo;

    @Test
    public void useAppContext() {
        try {
            Thread.sleep(10000);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }

        context = ApplicationProvider.getApplicationContext();
        device = UiDevice.getInstance(InstrumentationRegistry.getInstrumentation());
        taskDao = TaskDao.getInstance(context);
        deviceDao = DeviceDao.getInstance(context);
        initParameters();

        beginOperate();

        autoUiOperate();

        endOperate();


    }

    private void initParameters() {
        Bundle extras = InstrumentationRegistry.getArguments();
        parameters = new Parameters();
        parameters.setProxyName(extras.getString("proxyname"));
        parameters.setProxyPass(extras.getString("proxypass"));
        parameters.setProxyServer(extras.getString("proxyserver"));
        parameters.setProxyPort(extras.getString("proxyport"));
        parameters.setPhoneId(extras.getString("phoneid"));
        parameters.setTargetPkg(extras.getString("targetpkg"));
        String callbackUrl = new String(Base64.decode(extras.getString("callbackurl"), Base64.DEFAULT));
        callbackUrl = callbackUrl.replaceAll("=", "_");
        try {
            parameters.setCallbackUrl(URLDecoder.decode(callbackUrl, "UTF-8"));
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }

        String[] nameArray = parameters.getProxyName().split("-");
        String country = nameArray[nameArray.length - 1];
        parameters.setCountry(country);


        System.out.println(parameters.toString());
    }


    public abstract void autoUiOperate();

    public void beginOperate() {
        //获取信息 start
        String phoneData = requestPhoneData(parameters.getPhoneId());

        if (phoneData == null) {
            httpRequest(parameters.getCallbackUrl(), 2, "request phone data error");
            throw new RuntimeException("request phone data error");
        }
        //获取信息 end

        //解析数据
        taskPo = parseData(phoneData);
        if (taskPo == null) {
            httpRequest(parameters.getCallbackUrl(), 2, "request phone data error");
            throw new RuntimeException("request phone data error");
        }


        //获取数据库任务数据,并设置任务的状态

        TaskPo taskNative = taskDao.getTaskById(taskPo.getId());


        if (taskNative != null) {
            checkTaskInvalid(taskNative);
            taskPo.setState(taskNative.getState());
            taskPo.setReferrer(taskNative.getReferrer());
            taskPo.setClickTs(taskNative.getClickTs());
            taskPo.getDevicePo().setId(taskNative.getDevicePo().getId());
        }

        //储存数据
        Long[] resultIds = deviceDao.replace(taskPo.getDevicePo());
        if (resultIds == null || resultIds.length == 0) {
            httpRequest(parameters.getCallbackUrl(), 2, "insert device info to db error");
            throw new RuntimeException("insert device info to db error");
        }
        taskPo.getDevicePo().setId(resultIds[0].intValue());
        taskDao.replace(taskPo);

        //第一次激活
        if (taskPo.getDay() == 0) {
            //点击广告,激活的时候才需要点击
            ClickResult clickResult = ClickAd.clickToReferrer2(taskPo.getClickUrl(), taskPo.getDevicePo().getUserAgent(),parameters);
            saveClickState(taskPo, clickResult);
        } else if (taskPo.getDay() > 0) {
            //恢复目标app的沙盒文件
            boolean result = AppCacheManager.restoreCache(taskPo.getPkg(), taskPo.getDevicePo().getAdvertiserId(),
                    taskPo.getDay(), taskPo.getSanBox());
            if (!result) {
                throw new RuntimeException("恢复目标app的沙盒文件失败，请定位问题！！");
            }

        }

        //赋值
//        Cache.PHONE.state = Cache.PhoneData.State.READY;
//        Cache.PHONE.data = phoneData;

        //启动vpn
        startPostern();

        //启动目标App
        startTargetApp();

    }


    /**
     * 保存激活状态
     *
     * @param taskPo
     * @param clickResult
     */
    public void saveClickState(TaskPo taskPo, ClickResult clickResult) {
        if (clickResult.state != ClickResult.State.SUCCESS) {
            throw new RuntimeException("点击不成功，终止执行！ clickMessage=" + clickResult.message);
        }

        taskPo.setClickTs(System.currentTimeMillis());
        taskPo.setReferrer(clickResult.referrer);
        taskPo.setState(1);
        taskDao.replace(taskPo);
    }

    /**
     * 检查任务是否失效
     *
     * @param task
     */
    private void checkTaskInvalid(TaskPo task) {
        if (task.getDay() == 0 && task.getState() == 1) {
            int ctit = task.getCtit();
            Long clickTs = task.getClickTs();
            if (System.currentTimeMillis() > (clickTs + TimeUnit.SECONDS.toMillis(ctit))) {
                throw new RuntimeException("任务失效，已超时");
            }
        }
    }

    public TaskPo parseData(String data) {
        TaskPo task = new TaskPo();

        JSONObject json;
        try {
            json = new JSONObject(data);
        } catch (JSONException e) {
            e.printStackTrace();
            return null;
        }
        task.setId(json.optString("id"));
        task.setSanBox(json.optString("SandBox"));
        task.setDay(json.optInt("Day"));
        task.setPkg(json.optString("pkg"));
        task.setClickUrl(json.optString("clk_url"));

        task.setCtit(json.optInt("ctit"));
        task.setCountry(json.optString("country"));
        task.setProxyName(parameters.getProxyName());
        task.setProxyPass(parameters.getProxyPass());
        task.setProxyServer(parameters.getProxyServer());
        task.setProxyPort(parameters.getProxyPort());


        DevicePo device = new DevicePo();
        task.setDevicePo(device);
        device.setModel(json.optString("model"));
        device.setBrand(json.optString("brand"));
        device.setDeviceType(json.optString("deviceType"));
        device.setOperator(json.optString("operator"));
        device.setCpuAbi(json.optString("cpu_abi"));
        device.setBuildDisplayId(json.optString("build_display_id"));
        device.setBtch(json.optString("btch"));

        JSONObject dim = json.optJSONObject("dim");
        if (dim == null) {
            return null;
        }
        device.setDimSize(dim.optString("size"));
        device.setDimYdp(dim.optString("ydp"));
        device.setDimXdp(dim.optString("xdp"));
        device.setDimYpx(dim.optString("y_px"));
        device.setDimXpx(dim.optString("x_px"));
        device.setDimDDpi(dim.optString("d_dpi"));
        device.setArch(json.optString("arch"));
        device.setCpuAbi2(json.optString("cpu_abi2"));
        device.setDisk(json.optString("disk"));
        device.setSdk(json.optString("sdk"));
        device.setDevice(json.optString("device"));

        JSONObject cell = json.optJSONObject("cell");
        if (cell == null) {
            return null;
        }
        device.setMcc(cell.optInt("mcc"));
        device.setMnc(cell.optInt("mnc"));

        device.setNetwork(json.optString("network"));
        device.setGoogleApiVer(json.optLong("api_ver"));
        device.setGoogleApiVerName(json.optString("api_ver_name"));
        device.setLangCode(json.optString("lang_code"));
        device.setLanguage(json.optString("lang"));
        device.setBatteryLevel(json.optString("batteryLevel"));
        device.setLastBootTime(json.optLong("last_boot_time"));
        device.setProduct(json.optString("product"));
        device.setTimezone(json.optString("timezone"));
        device.setCarrier(json.optString("carrier"));
        device.setAdvertiserId(json.optString("advertiserId"));
        device.setUserAgent(json.optString("user_agent"));
        device.setHttpAgent(json.optString("http_agent"));

        JSONObject receipt = json.optJSONObject("p_receipt");
        if (receipt == null) return null;
        JSONObject pr = receipt.optJSONObject("pr");
        if (pr == null) return null;

        device.setPe_aa(pr.optString("aa"));
        device.setPe_ab(pr.optString("ab"));
        device.setPe_ac(pr.optString("ac"));
        device.setPe_ad(pr.optString("ad"));
        device.setPe_ae(pr.optString("ae"));
        device.setPe_af(pr.optString("af"));
        device.setPe_ag(pr.optString("ag"));
        device.setPe_ah(pr.optString("ah"));
        device.setPe_ai(pr.optString("ai"));
        device.setPe_aj(pr.optString("aj"));
        device.setPe_ak(pr.optString("ak"));
        device.setPe_al(pr.optString("al"));
        device.setPe_am(pr.optString("am"));
        device.setPe_an(pr.optString("an"));
        device.setPe_ao(pr.optString("ao"));
        device.setPe_ap(pr.optString("ap"));
        device.setPe_aq(pr.optString("aq"));
        device.setPe_ar(pr.optString("ar"));
        device.setPe_as(pr.optString("as"));
        device.setPe_at(pr.optString("at"));
        device.setPe_au(pr.optString("au"));
        device.setPe_av(pr.optString("av"));
        return task;
    }

    private void startPostern() {
        device.pressHome();
        // Wait for launcher
        final String launcherPackage = device.getLauncherPackageName();
        device.wait(Until.hasObject(By.pkg(launcherPackage).depth(0)),
                LAUNCH_TIMEOUT);

        Intent intent = context.getPackageManager().getLaunchIntentForPackage(BASIC_SAMPLE_PACKAGE);
        intent.setPackage(null);
        intent.putExtra("proxyname", parameters.getProxyName());
        intent.putExtra("proxypass", parameters.getProxyPass());
        intent.putExtra("proxyserver", parameters.getProxyServer());
        intent.putExtra("proxyport", Integer.parseInt(parameters.getProxyPort()));
        context.startActivity(intent);
        // Wait for the app to appear
        device.wait(Until.hasObject(By.pkg(BASIC_SAMPLE_PACKAGE).depth(0)),
                LAUNCH_TIMEOUT);
        try {
            Thread.sleep(5000);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
        UiObject okButton = device.findObject(new UiSelector()
                .textMatches("OK|确定")
                .className("android.widget.Button"));

        // Simulate a user-click on the OK button, if found.
        try {
            if (okButton.exists() && okButton.isEnabled()) {
                okButton.click();
            }
        } catch (UiObjectNotFoundException e) {
            e.printStackTrace();
        }

        device.pressHome();
        device.wait(Until.hasObject(By.pkg(launcherPackage).depth(0)),
                LAUNCH_TIMEOUT);
    }

    private void startTargetApp() {
        Intent intent = context.getPackageManager().getLaunchIntentForPackage(parameters.getTargetPkg());
        if (intent == null) {
            httpRequest(parameters.getCallbackUrl(), 2, "targetpkg " + parameters.getTargetPkg() + " is not install");
            return;
        }
        intent.setPackage(null);
        context.startActivity(intent);
        device.wait(Until.hasObject(By.pkg(parameters.getTargetPkg()).depth(0)),
                15000);
        try {
            Thread.sleep(4000);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
    }

    public void endOperate() {
        //关闭目标app
        if (parameters.getTargetPkg() != null) {
            try {
                device.executeShellCommand("am force-stop " + parameters.getTargetPkg());
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        //关闭vpn
        PosternApp var7 = (PosternApp) ApplicationProvider.getApplicationContext();
        PosternVpnService var8 = var7.getVpnService();
        var8.revertPosternVpnService();

        //上传目标app的沙盒文件
        AppCacheManager.saveCache(taskPo.getPkg(), taskPo.getDevicePo().getAdvertiserId(),
                taskPo.getDay(), taskPo.getSanBox());


        //通知远程服务任务完成
        httpRequest(parameters.getCallbackUrl(), status, message);

    }


    //向下滑动
    public void swipeDown(int time) {
        int x = device.getDisplayWidth();//获取屏幕的宽
        int y = device.getDisplayHeight();//获取屏幕的高
        device.swipe(x / 2, (int) (y / 2), x / 2, y / 6, time);//上滑
    }


    //向上滑动
    public void swipeUp(int time) {
        int x = device.getDisplayWidth();//获取屏幕的宽
        int y = device.getDisplayHeight();//获取屏幕的高
        device.swipe(x / 2, y / 2, x / 2, (int) (y / 1.2), time);//下滑
    }

    public static void httpRequest(String callbackUrl, int status, String message) {
        HttpURLConnection var9 = null;
        try {
            URL var23 = new URL(callbackUrl + "&status=" + status + "&msg=" + URLEncoder.encode(message, "UTF-8"));
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


    public String requestPhoneData(String phoneId) {
        return "{\n" +
                "    \"id\": \"968ff4f4ce397c2a7bcb457bcfe1c988\",\n" +
                "    \"model\": \"TECNO ID5a\",\n" +
                "    \"brand\": \"TECNO\",\n" +
                "    \"deviceType\": \"user\",\n" +
                "    \"operator\": \"Airtel\",\n" +
                "    \"cpu_abi\": \"arm64-v8a\",\n" +
                "    \"build_display_id\": \"ID5a-H612F-O-200328V200\",\n" +
                "    \"btch\": \"no\",\n" +
                "    \"dim\": {\n" +
                "        \"size\": \"2\",\n" +
                "        \"ydp\": \"268.309\",\n" +
                "        \"xdp\": \"268.941\",\n" +
                "        \"y_px\": \"720\",\n" +
                "        \"x_px\": \"1404\",\n" +
                "        \"d_dpi\": \"320\"\n" +
                "    },\n" +
                "    \"arch\": \"\",\n" +
                "    \"btl\": \"68.0\",\n" +
                "    \"cpu_abi2\": \"\",\n" +
                "    \"disk\": \"15739/24425\",\n" +
                "    \"sdk\": \"27\",\n" +
                "    \"device\": \"TECNO-ID5a\",\n" +
                "    \"rfr\": {\n" +
                "        \"val\": \"Mozilla/5.0 (Linux; Android 11; M2007J22C Build/RP1A.200720.011; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/92.0.4515.131 Mobile Safari/537.36\",\n" +
                "        \"code\": \"0\",\n" +
                "        \"clk\": \"1666170374\",\n" +
                "        \"install\": \"1666170388\",\n" +
                "        \"instant\": false\n" +
                "    },\n" +
                "    \"cell\": {\n" +
                "        \"mnc\": 45,\n" +
                "        \"mcc\": 404\n" +
                "    },\n" +
                "    \"network\": \"MOBILE\",\n" +
                "    \"lang_code\": \"en\",\n" +
                "    \"country\": \"IN\",\n" +
                "    \"api_ver\": 82982310,\n" +
                "    \"api_ver_name\": \"29.8.23-21 [0] [PR] 438919558\",\n" +
                "    \"source\": \"google\",\n" +
                "    \"referrer\": \"Mozilla/5.0 (Linux; Android 11; M2007J22C Build/RP1A.200720.011; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/92.0.4515.131 Mobile Safari/537.36\",\n" +
                "    \"ctit\": 126,\n" +
                "    \"lang\": \"English\",\n" +
                "    \"batteryLevel\": \"68.0\",\n" +
                "    \"last_boot_time\": 1664075174847,\n" +
                "    \"product\": \"id5a_h612\",\n" +
                "    \"timezone\": \"+0530\",\n" +
                "    \"carrier\": \"Bharti Airtel Ltd (North East)\",\n" +
                "    \"clk_url\": \"http://track.adsforward.com/api/track?offer=6019277\\u0026mid=62858868\\u0026pub_id=6282DF67\\u0026gaid=56e66fb6-c661-46ab-b05c-a81b0a60df1d\\u0026click_id=1666170374850699\",\n" +
                "    \"advertiserId\": \"56e66fb6-c661-46ab-b05c-a81b0a60df1d\",\n" +
                "    \"Property\": null,\n" +
                "    \"SandBox\": \"Apk/data/\",\n" +
                "    \"Day\": 0,\n" +
                "    \"pkg\": \"in.mohalla.video\",\n" +
                "    \"user_agent\": \"Mozilla/5.0 (Linux; Android 8.1.0; TECNO ID5a Build/O11019; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/87.0.4280.101 Mobile Safari/537.36\",\n" +
                "    \"http_agent\": \"Dalvik/2.1.0 (Linux; U; Android 8.1.0; TECNO ID5a Build/O11019)\",\n" +
                "    \"p_receipt\": {\n" +
                "        \"pr\": {\n" +
                "            \"ac\": \"0\",\n" +
                "            \"ah\": \"zygote64_32\",\n" +
                "            \"ai\": \"0\",\n" +
                "            \"ak\": \"default\",\n" +
                "            \"al\": \"cortex-a53\",\n" +
                "            \"am\": \"default\",\n" +
                "            \"an\": \"cortex-a53\",\n" +
                "            \"ap\": \"rlk-buildsrv33\",\n" +
                "            \"ar\": \"mt6761\",\n" +
                "            \"as\": \"arm64-v8a\",\n" +
                "            \"at\": \"arm64-v8a,armeabi-v7a,armeabi\",\n" +
                "            \"au\": \"armeabi-v7a,armeabi\",\n" +
                "            \"av\": \"arm64-v8a\"\n" +
                "        },\n" +
                "        \"an\": {\n" +
                "            \"hk\": \";\",\n" +
                "            \"dbg\": false\n" +
                "        }\n" +
                "    }\n" +
                "}";
//        HttpURLConnection var9 = null;
//        try {
//            URL var23 = new URL("http://18.141.10.168:54321/get-job?phone-id=" + phoneId);
//            (var9 = (HttpURLConnection) var23.openConnection()).setReadTimeout(30000);
//            var9.setConnectTimeout(30000);
//            var9.setRequestMethod("GET");
//            var9.setDoInput(true);
//            var9.setDoOutput(true);
////            var9.setRequestProperty("Content-Type", "application/octet-stream");
//            int var22 = var9.getResponseCode();
//
//            if (var22 == 200) {
//                byte[] bytes = getBytes(var9.getInputStream());
//                return new String(bytes);
//            } else {
//                System.out.println("request error code=" + var22);
//            }
//        } catch (Exception e) {
//            e.printStackTrace();
//        } finally {
//            if (var9 != null) {
//                var9.disconnect();
//            }
//        }
//        return null;
    }

    private static boolean installNotify(String phoneId) {
        HttpURLConnection var9 = null;
        try {
            URL var23 = new URL("http://18.141.10.168:54321/install-apk?phone-id==" + phoneId);
            (var9 = (HttpURLConnection) var23.openConnection()).setReadTimeout(30000);
            var9.setConnectTimeout(30000);
            var9.setRequestMethod("GET");
            var9.setDoInput(true);
            var9.setDoOutput(true);
            int var22 = var9.getResponseCode();

            if (var22 == 200) {
                byte[] bytes = getBytes(var9.getInputStream());
                String json = new String(bytes);
                System.out.println("Status 200 ok json=" + json);
                return true;
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
        return false;
    }


    private static byte[] getBytes(InputStream is) throws Exception {
        ByteArrayOutputStream bao = new ByteArrayOutputStream();
        byte[] b = new byte[1024];
        int len;
        while ((len = is.read(b, 0, 1024)) != -1) {
            bao.write(b, 0, len);
            bao.flush();
        }
        return bao.toByteArray();
    }
}
