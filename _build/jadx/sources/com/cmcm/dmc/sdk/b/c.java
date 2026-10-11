package com.cmcm.dmc.sdk.b;

import com.applovin.sdk.AppLovinEventTypes;
import com.cmplay.base.util.webview.util.WebUtils;
import com.mopub.mobileads.VastExtensionXmlManager;
import java.util.HashMap;
import java.util.Map;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class c {

    /* renamed from: a, reason: collision with root package name */
    private static Map<String, String> f700a = new HashMap();

    static {
        f700a.put("error_code", "ec");
        f700a.put("time", "t");
        f700a.put("base_info", "bi");
        f700a.put("recovery", "re");
        f700a.put("mainboard", "mb");
        f700a.put("device_serial", "ds");
        f700a.put("cpu", "cpu");
        f700a.put("screen", WebUtils.SC);
        f700a.put("memory", "me");
        f700a.put("os_info", "os");
        f700a.put("root", "rt");
        f700a.put(VastExtensionXmlManager.TYPE, "ty");
        f700a.put("vm", "vm");
        f700a.put("lan", "la");
        f700a.put("time_zone", "tz");
        f700a.put("country", WebUtils.CO);
        f700a.put("build", "bd");
        f700a.put("kernel", "kl");
        f700a.put("aid", "ad");
        f700a.put("gid", "ga");
        f700a.put("app_info", "api");
        f700a.put("app_version", "av");
        f700a.put("app_package", "apk");
        f700a.put("app_sign", "asi");
        f700a.put("app_thread", "atr");
        f700a.put("app_uuid", "aud");
        f700a.put("sdk_uuid", "sud");
        f700a.put("uuid_state", "uist");
        f700a.put("app_chanel", "ach");
        f700a.put("sensor_info", "si");
        f700a.put("sensor_type", "st");
        f700a.put("sensor_data", "sd");
        f700a.put("x1", "x1");
        f700a.put("sim_serial", "ss");
        f700a.put("mnc", "cnm");
        f700a.put("carrier", "car");
        f700a.put("sim_state", "sst");
        f700a.put("cid", "dic");
        f700a.put("lac", "cal");
        f700a.put("base_stations", "bs");
        f700a.put(AppLovinEventTypes.USER_COMPLETED_LEVEL, "ll");
        f700a.put("wifi_info", "wfi");
        f700a.put("mac", "cam");
        f700a.put("ip", "pi");
        f700a.put("ssid", "ssd");
        f700a.put("rssi", "rsd");
        f700a.put("wifis", "wis");
        f700a.put("dns", "snd");
        f700a.put("location_info", "loi");
        f700a.put("longitude", "lon");
        f700a.put("latitude", "lat");
        f700a.put("provider", "pro");
        f700a.put("bluetooth", "bt");
        f700a.put("screen_light", "sli");
        f700a.put("battery", "bay");
        f700a.put("http_proxy", "hpxy");
        f700a.put("bootloader", "bol");
        f700a.put("hardware", "hdw");
        f700a.put("fingerprint", "fpt");
        f700a.put("os_version", "osv");
        f700a.put("started_time", "stat");
        f700a.put("web_agent", "webg");
        f700a.put("manufacturer", "maf");
    }

    public static String a(String str) {
        return f700a.containsKey(str) ? f700a.get(str) : str;
    }
}
