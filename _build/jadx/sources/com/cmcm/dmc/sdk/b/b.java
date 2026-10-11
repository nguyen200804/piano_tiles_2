package com.cmcm.dmc.sdk.b;

import android.annotation.SuppressLint;
import android.app.ActivityManager;
import android.bluetooth.BluetoothAdapter;
import android.content.Context;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.content.pm.PackageInfo;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.hardware.usb.UsbDevice;
import android.hardware.usb.UsbManager;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkInfo;
import android.net.Proxy;
import android.net.wifi.ScanResult;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Process;
import android.os.SystemClock;
import android.provider.Settings;
import android.telephony.NeighboringCellInfo;
import android.telephony.TelephonyManager;
import android.telephony.cdma.CdmaCellLocation;
import android.telephony.gsm.GsmCellLocation;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import com.applovin.sdk.AppLovinEventTypes;
import com.cmcm.dmc.sdk.a.d;
import com.cmcm.dmc.sdk.a.i;
import com.cmcm.dmc.sdk.a.q;
import com.mopub.mobileads.VastExtensionXmlManager;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileFilter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.TimeZone;
import java.util.UUID;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class b {

    /* renamed from: a, reason: collision with root package name */
    private static SensorManager f698a;

    /* renamed from: b, reason: collision with root package name */
    private static Sensor f699b;
    private static Sensor c;
    private static Sensor d;
    private static a e;
    private static List<ScanResult> f = new ArrayList();
    private static final FileFilter g = new FileFilter() { // from class: com.cmcm.dmc.sdk.b.b.1
        @Override // java.io.FileFilter
        public boolean accept(File file) {
            String name = file.getName();
            if (!name.startsWith("cpu")) {
                return false;
            }
            for (int i2 = 3; i2 < name.length(); i2++) {
                if (name.charAt(i2) < '0' || name.charAt(i2) > '9') {
                    return false;
                }
            }
            return true;
        }
    };
    private static float[] h;
    private static float[] i;
    private static float[] j;

    private static class a implements SensorEventListener {
        private a() {
        }

        @Override // android.hardware.SensorEventListener
        public void onAccuracyChanged(Sensor sensor, int i) {
        }

        @Override // android.hardware.SensorEventListener
        public void onSensorChanged(SensorEvent sensorEvent) {
            switch (sensorEvent.sensor.getType()) {
                case 1:
                    float[] unused = b.i = sensorEvent.values;
                    break;
                case 4:
                    float[] unused2 = b.h = sensorEvent.values;
                    break;
                case 9:
                    float[] unused3 = b.j = sensorEvent.values;
                    break;
            }
        }
    }

    private static String a(int i2) {
        return (i2 & 255) + "." + ((i2 >> 8) & 255) + "." + ((i2 >> 16) & 255) + "." + ((i2 >> 24) & 255);
    }

    private static String a(Context context) {
        try {
            int myPid = Process.myPid();
            for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : ((ActivityManager) context.getSystemService("activity")).getRunningAppProcesses()) {
                if (runningAppProcessInfo.pid == myPid) {
                    return runningAppProcessInfo.processName;
                }
            }
            return "";
        } catch (Exception e2) {
            return "";
        }
    }

    public static String a(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        try {
            byte[] digest = MessageDigest.getInstance("MD5").digest(str.getBytes());
            int length = digest.length;
            int i2 = 0;
            String str2 = "";
            while (i2 < length) {
                String hexString = Integer.toHexString(digest[i2] & 255);
                if (hexString.length() == 1) {
                    hexString = "0" + hexString;
                }
                i2++;
                str2 = str2 + hexString;
            }
            return str2;
        } catch (NoSuchAlgorithmException e2) {
            i.a("DeviceUtils", "" + e2.getMessage());
            return "";
        }
    }

    public static JSONObject a() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(c.a("error_code"), "0");
            if (Build.VERSION.SDK_INT >= 14) {
                jSONObject.put(c.a("recovery"), Build.getRadioVersion());
            } else {
                jSONObject.put(c.a("recovery"), p());
            }
            jSONObject.put(c.a("mainboard"), TextUtils.isEmpty(Build.BOARD) ? "" : Build.BOARD);
            jSONObject.put(c.a("device_serial"), TextUtils.isEmpty(Build.SERIAL) ? "" : Build.SERIAL);
            String[] q = q();
            jSONObject.put(c.a("cpu"), q[0] + "|" + q[1] + "|" + q[2]);
            String[] d2 = d(com.cmcm.dmc.sdk.a.c.c());
            jSONObject.put(c.a("screen"), d2[0] + "|" + d2[1] + "|" + d2[2] + "|" + d2[3]);
            jSONObject.put(c.a("memory"), Long.toString(q.d(com.cmcm.dmc.sdk.a.c.c())));
        } catch (JSONException e2) {
        }
        return jSONObject;
    }

    private static String b(Context context) {
        try {
            for (PackageInfo packageInfo : context.getPackageManager().getInstalledPackages(64)) {
                if (packageInfo.packageName.equals(context.getPackageName())) {
                    return packageInfo.signatures[0].toCharsString();
                }
            }
            return "";
        } catch (Exception e2) {
            return "";
        }
    }

    public static JSONObject b() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(c.a("error_code"), "0");
            jSONObject.put(c.a("root"), Boolean.toString(q.e()));
            jSONObject.put(c.a(VastExtensionXmlManager.TYPE), "android");
            jSONObject.put(c.a("vm"), Boolean.toString(o()));
            jSONObject.put(c.a("lan"), Locale.getDefault().getLanguage());
            jSONObject.put(c.a("time_zone"), TimeZone.getDefault().getDisplayName(true, 0));
            jSONObject.put(c.a("country"), e(com.cmcm.dmc.sdk.a.c.c()));
            jSONObject.put(c.a("build"), Build.HOST + "|" + Build.USER + "|" + Build.TIME);
            jSONObject.put(c.a("kernel"), n());
            jSONObject.put(c.a("env_path"), System.getenv("USER"));
            jSONObject.put(c.a("aid"), Settings.Secure.getString(com.cmcm.dmc.sdk.a.c.c().getContentResolver(), "android_id"));
            jSONObject.put(c.a("gid"), com.cmcm.dmc.sdk.g.a.b().a());
            jSONObject.put(c.a("web_agent"), "");
            jSONObject.put(c.a("factory"), Build.BRAND + "|" + Build.PRODUCT);
            jSONObject.put(c.a("os_version"), Build.VERSION.RELEASE);
            jSONObject.put(c.a("started_time"), Long.toString(SystemClock.elapsedRealtime()));
            UsbManager usbManager = (UsbManager) com.cmcm.dmc.sdk.a.c.c().getSystemService("usb");
            if (Build.VERSION.SDK_INT >= 12) {
                HashMap<String, UsbDevice> deviceList = usbManager.getDeviceList();
                new StringBuilder();
                Iterator<UsbDevice> it = deviceList.values().iterator();
                String str = "-1";
                while (it.hasNext()) {
                    str = Integer.toString(it.next().getDeviceClass());
                }
                jSONObject.put(c.a("usb"), str);
            } else {
                jSONObject.put(c.a("usb"), "-1");
            }
            jSONObject.put(c.a("battery"), Integer.toString(com.cmcm.dmc.sdk.a.c.c().registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED")).getIntExtra(AppLovinEventTypes.USER_COMPLETED_LEVEL, 0)));
            jSONObject.put(c.a("vpn"), Boolean.toString(m()));
            jSONObject.put(c.a("http_proxy"), Boolean.toString(c(com.cmcm.dmc.sdk.a.c.c())));
            jSONObject.put(c.a("bootloader"), Build.BOOTLOADER);
            jSONObject.put(c.a("hardware"), Build.HARDWARE);
            jSONObject.put(c.a("fingerprint"), Build.FINGERPRINT);
            jSONObject.put(c.a("manufacturer"), Build.MANUFACTURER);
            jSONObject.put(c.a("screen_light"), Integer.toString(Settings.System.getInt(com.cmcm.dmc.sdk.a.c.c().getContentResolver(), "screen_brightness")));
        } catch (Exception e2) {
        }
        return jSONObject;
    }

    private static boolean b(String str) {
        try {
            return com.cmcm.dmc.sdk.a.c.c().getPackageManager().checkPermission(str, com.cmcm.dmc.sdk.a.c.c().getPackageName()) == 0;
        } catch (Exception e2) {
            return false;
        }
    }

    public static final JSONObject c() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(c.a("error_code"), "0");
            jSONObject.put(c.a("app_version"), com.cmcm.dmc.sdk.a.c.c().getPackageManager().getPackageInfo(com.cmcm.dmc.sdk.a.c.c().getPackageName(), 0).versionName);
            jSONObject.put(c.a("app_package"), com.cmcm.dmc.sdk.a.c.c().getPackageName());
            jSONObject.put(c.a("app_sign"), a(b(com.cmcm.dmc.sdk.a.c.c())));
            jSONObject.put(c.a("app_thread"), a(com.cmcm.dmc.sdk.a.c.c()));
            jSONObject.put(c.a("app_chanel"), d.a().c().b());
            jSONObject.put(c.a("app_uuid"), l());
        } catch (Exception e2) {
        }
        return jSONObject;
    }

    private static boolean c(Context context) {
        String host;
        int port;
        try {
            if (Build.VERSION.SDK_INT >= 14) {
                host = System.getProperty("http.proxyHost");
                String property = System.getProperty("http.proxyPort");
                if (property == null) {
                    property = "-1";
                }
                port = Integer.parseInt(property);
            } else {
                host = Proxy.getHost(context);
                port = Proxy.getPort(context);
            }
            return (TextUtils.isEmpty(host) || port == -1) ? false : true;
        } catch (Exception e2) {
            return false;
        }
    }

    public static final JSONArray d() {
        JSONArray jSONArray = new JSONArray();
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(c.a("sensor_type"), Integer.toString(4));
            jSONObject.put(c.a("sensor_data"), Arrays.toString(h));
        } catch (Exception e2) {
        }
        jSONArray.put(jSONObject);
        JSONObject jSONObject2 = new JSONObject();
        try {
            jSONObject2.put(c.a("sensor_type"), Integer.toString(1));
            jSONObject2.put(c.a("sensor_data"), Arrays.toString(i));
        } catch (Exception e3) {
        }
        jSONArray.put(jSONObject2);
        JSONObject jSONObject3 = new JSONObject();
        try {
            jSONObject3.put(c.a("sensor_type"), Integer.toString(9));
            jSONObject3.put(c.a("sensor_data"), Arrays.toString(j));
        } catch (JSONException e4) {
        }
        jSONArray.put(jSONObject3);
        return jSONArray;
    }

    private static final String[] d(Context context) {
        String[] strArr = new String[4];
        try {
            DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
            strArr[0] = String.valueOf(displayMetrics.widthPixels);
            strArr[1] = String.valueOf(displayMetrics.heightPixels);
            strArr[2] = String.valueOf(displayMetrics.xdpi);
            strArr[3] = String.valueOf(displayMetrics.ydpi);
        } catch (Exception e2) {
        }
        return strArr;
    }

    private static String e(Context context) {
        try {
            TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
            Locale locale = Locale.getDefault();
            return telephonyManager.getSimState() == 5 ? telephonyManager.getSimCountryIso().toLowerCase(Locale.getDefault()) : locale.getCountry().toLowerCase(locale);
        } catch (Exception e2) {
            return "";
        }
    }

    @SuppressLint({"MissingPermission"})
    public static JSONObject e() {
        JSONObject jSONObject = new JSONObject();
        if (!b("android.permission.READ_PHONE_STATE")) {
            jSONObject.put(c.a("error_code"), "3");
            return jSONObject;
        }
        if (Build.VERSION.SDK_INT >= 23 && com.cmcm.dmc.sdk.a.c.c().checkSelfPermission("android.permission.READ_PHONE_STATE") != 0) {
            jSONObject.put(c.a("error_code"), "4");
            return jSONObject;
        }
        jSONObject.put(c.a("error_code"), "0");
        TelephonyManager telephonyManager = (TelephonyManager) com.cmcm.dmc.sdk.a.c.c().getSystemService("phone");
        jSONObject.put(c.a("x1"), TextUtils.isEmpty("") ? "" : com.cmcm.dmc.sdk.g.c.a().b("".getBytes()));
        String simSerialNumber = telephonyManager.getSimSerialNumber();
        String a2 = c.a("sim_serial");
        if (TextUtils.isEmpty(simSerialNumber)) {
            simSerialNumber = "";
        }
        jSONObject.put(a2, simSerialNumber);
        String j2 = j();
        String a3 = c.a("mnc");
        if (TextUtils.isEmpty(j2)) {
            j2 = "";
        }
        jSONObject.put(a3, j2);
        String k = k();
        String a4 = c.a("carrier");
        if (TextUtils.isEmpty(k)) {
            k = "";
        }
        jSONObject.put(a4, k);
        jSONObject.put(c.a("sim_state"), Boolean.toString(telephonyManager.getSimState() == 5));
        if (telephonyManager.getPhoneType() == 2) {
            CdmaCellLocation cdmaCellLocation = (CdmaCellLocation) telephonyManager.getCellLocation();
            jSONObject.put(c.a("cid"), Integer.toString(cdmaCellLocation.getBaseStationId()));
            jSONObject.put(c.a("lac"), Integer.toString(cdmaCellLocation.getNetworkId()));
        } else {
            GsmCellLocation gsmCellLocation = (GsmCellLocation) telephonyManager.getCellLocation();
            jSONObject.put(c.a("cid"), Integer.toString(gsmCellLocation.getCid()));
            jSONObject.put(c.a("lac"), Integer.toString(gsmCellLocation.getLac()));
        }
        JSONArray jSONArray = new JSONArray();
        if (Build.VERSION.SDK_INT >= 17) {
            List neighboringCellInfo = telephonyManager.getNeighboringCellInfo();
            if (neighboringCellInfo != null) {
                int i2 = 0;
                while (true) {
                    if (i2 >= (neighboringCellInfo.size() >= 5 ? 5 : neighboringCellInfo.size())) {
                        break;
                    }
                    NeighboringCellInfo neighboringCellInfo2 = (NeighboringCellInfo) neighboringCellInfo.get(i2);
                    int rssi = neighboringCellInfo2.getRssi();
                    int cid = neighboringCellInfo2.getCid();
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put(c.a("cid"), Integer.toString(cid));
                    jSONObject2.put(c.a(AppLovinEventTypes.USER_COMPLETED_LEVEL), Integer.toString(rssi));
                    jSONArray.put(jSONObject2);
                    jSONObject.put(c.a("base_stations"), jSONArray);
                    i2++;
                }
            } else {
                jSONObject.put(c.a("base_stations"), new JSONArray());
                return jSONObject;
            }
        } else {
            JSONArray jSONArray2 = new JSONArray();
            jSONArray2.put(new JSONObject());
            jSONObject.put(c.a("base_stations"), jSONArray2);
        }
        return jSONObject;
    }

    @SuppressLint({"MissingPermission"})
    public static JSONObject f() {
        JSONObject jSONObject = new JSONObject();
        if (!q.i(com.cmcm.dmc.sdk.a.c.c())) {
            jSONObject.put(c.a("error_code"), "5");
            return jSONObject;
        }
        if (!b("android.permission.ACCESS_WIFI_STATE")) {
            jSONObject.put(c.a("error_code"), "3");
            return jSONObject;
        }
        WifiManager wifiManager = (WifiManager) com.cmcm.dmc.sdk.a.c.c().getSystemService("wifi");
        if (wifiManager == null || wifiManager.getWifiState() != 3) {
            jSONObject.put(c.a("error_code"), "5");
            return jSONObject;
        }
        String a2 = q.a();
        jSONObject.put(c.a("error_code"), "0");
        String a3 = c.a("mac");
        if (TextUtils.isEmpty(a2)) {
            a2 = "";
        }
        jSONObject.put(a3, a2);
        String a4 = a(wifiManager.getConnectionInfo().getIpAddress());
        String a5 = c.a("ip");
        if (TextUtils.isEmpty(a4)) {
            a4 = "";
        }
        jSONObject.put(a5, a4);
        jSONObject.put(c.a("ssid"), TextUtils.isEmpty(wifiManager.getConnectionInfo().getSSID()) ? "" : wifiManager.getConnectionInfo().getSSID());
        jSONObject.put(c.a("rssi"), Integer.toString(wifiManager.getConnectionInfo().getRssi()));
        jSONObject.put(c.a("wifis"), new JSONArray());
        ConnectivityManager connectivityManager = (ConnectivityManager) com.cmcm.dmc.sdk.a.c.c().getSystemService("connectivity");
        NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
        JSONArray jSONArray = new JSONArray();
        if (Build.VERSION.SDK_INT >= 21) {
            for (Network network : connectivityManager.getAllNetworks()) {
                if (connectivityManager.getNetworkInfo(network).getType() == activeNetworkInfo.getType()) {
                    Iterator<InetAddress> it = connectivityManager.getLinkProperties(network).getDnsServers().iterator();
                    while (it.hasNext()) {
                        jSONArray.put(it.next());
                    }
                }
            }
        }
        jSONObject.put(c.a("dns"), jSONArray);
        return jSONObject;
    }

    @SuppressLint({"MissingPermission"})
    public static JSONObject g() {
        JSONObject jSONObject = new JSONObject();
        try {
            if (b("android.permission.BLUETOOTH")) {
                BluetoothAdapter defaultAdapter = BluetoothAdapter.getDefaultAdapter();
                if (defaultAdapter == null) {
                    jSONObject.put(c.a("error_code"), "5");
                } else if (defaultAdapter.getState() != 12) {
                    jSONObject.put(c.a("error_code"), "5");
                } else {
                    String address = defaultAdapter.getAddress();
                    if (TextUtils.isEmpty(address)) {
                        jSONObject.put(c.a("error_code"), "2");
                    } else {
                        jSONObject.put(c.a("error_code"), "0");
                        jSONObject.put(c.a("mac"), address);
                    }
                }
            } else {
                jSONObject.put(c.a("error_code"), "3");
            }
        } catch (Exception e2) {
        }
        return jSONObject;
    }

    public static synchronized void h() {
        synchronized (b.class) {
            try {
                e = new a();
                f698a = (SensorManager) com.cmcm.dmc.sdk.a.c.c().getSystemService("sensor");
                f699b = f698a.getDefaultSensor(4);
                c = f698a.getDefaultSensor(1);
                d = f698a.getDefaultSensor(9);
                f698a.registerListener(e, f699b, 3);
                f698a.registerListener(e, c, 3);
                f698a.registerListener(e, d, 3);
            } catch (Exception e2) {
            }
        }
    }

    public static void i() {
        try {
            if (f698a != null) {
                f698a.unregisterListener(e, f699b);
                f698a.unregisterListener(e, d);
                f698a.unregisterListener(e, c);
            }
        } catch (Exception e2) {
        }
    }

    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    private static String j() {
        try {
            TelephonyManager telephonyManager = (TelephonyManager) com.cmcm.dmc.sdk.a.c.c().getSystemService("phone");
            if (telephonyManager.getSimState() != 5) {
                return "";
            }
            String simOperator = telephonyManager.getSimOperator();
            return simOperator == null ? "" : simOperator;
        } catch (Exception e2) {
            return "";
        }
    }

    private static String k() {
        try {
            return ((TelephonyManager) com.cmcm.dmc.sdk.a.c.c().getSystemService("phone")).getNetworkOperatorName().toLowerCase(Locale.getDefault());
        } catch (Exception e2) {
            return "";
        }
    }

    private static String l() {
        SharedPreferences sharedPreferences = com.cmcm.dmc.sdk.a.c.c().getSharedPreferences("sdk_device_id", 0);
        String string = sharedPreferences.getString("app_uuid", "");
        if (!TextUtils.isEmpty(string)) {
            return string;
        }
        String upperCase = UUID.randomUUID().toString().toUpperCase();
        sharedPreferences.edit().putString("app_uuid", upperCase).commit();
        return upperCase;
    }

    private static boolean m() {
        try {
            Enumeration<NetworkInterface> networkInterfaces = NetworkInterface.getNetworkInterfaces();
            if (networkInterfaces != null) {
                Iterator it = Collections.list(networkInterfaces).iterator();
                while (it.hasNext()) {
                    NetworkInterface networkInterface = (NetworkInterface) it.next();
                    if (networkInterface.isUp() && networkInterface.getInterfaceAddresses().size() != 0 && ("tun0".equals(networkInterface.getName()) || "ppp0".equals(networkInterface.getName()))) {
                        return true;
                    }
                }
            }
        } catch (Throwable th) {
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static String n() {
        Process process;
        try {
            try {
                process = Runtime.getRuntime().exec("cat /proc/version");
            } catch (IOException e2) {
                i.a("DeviceUtils", "" + e2.getMessage());
                process = null;
            }
            InputStreamReader inputStreamReader = new InputStreamReader(process.getInputStream());
            BufferedReader bufferedReader = new BufferedReader(inputStreamReader, 8192);
            String str = "";
            String str2 = inputStreamReader;
            while (true) {
                try {
                    str2 = str;
                    String readLine = bufferedReader.readLine();
                    if (readLine == null) {
                        break;
                    }
                    str = str2 + readLine;
                    str2 = str2;
                } catch (IOException e3) {
                    i.a("DeviceUtils", "" + e3.getMessage());
                }
            }
            if (str2 == "") {
                return "";
            }
            try {
                String substring = str2.substring("version ".length() + str2.indexOf("version "));
                return substring.substring(0, substring.indexOf(" "));
            } catch (IndexOutOfBoundsException e4) {
                i.a("DeviceUtils", "" + e4.getMessage());
                return "";
            }
        } catch (Exception e5) {
            return "";
        }
    }

    private static boolean o() {
        return Build.MODEL.equals("sdk") || Build.MODEL.equals("google_sdk");
    }

    private static final String p() {
        try {
            Class<?> cls = Class.forName("android.os.SystemProperties");
            return (String) cls.getMethod("get", String.class, String.class).invoke(cls.newInstance(), "gsm.version.baseband", "no message");
        } catch (Exception e2) {
            return "";
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x002b, code lost:
    
        r0[1] = r1[1];
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static final java.lang.String[] q() {
        /*
            r5 = 0
            r0 = 4
            java.lang.String[] r0 = new java.lang.String[r0]
            java.io.FileReader r1 = new java.io.FileReader     // Catch: java.lang.Exception -> L43
            java.lang.String r2 = "/proc/cpuinfo"
            r1.<init>(r2)     // Catch: java.lang.Exception -> L43
            java.io.BufferedReader r2 = new java.io.BufferedReader     // Catch: java.lang.Exception -> L43
            r2.<init>(r1)     // Catch: java.lang.Exception -> L43
        L10:
            java.lang.String r1 = r2.readLine()     // Catch: java.lang.Exception -> L43
            if (r1 == 0) goto L31
            java.lang.String r3 = ":"
            java.lang.String[] r1 = r1.split(r3)     // Catch: java.lang.Exception -> L43
            r3 = 0
            r3 = r1[r3]     // Catch: java.lang.Exception -> L43
            java.lang.String r3 = r3.trim()     // Catch: java.lang.Exception -> L43
            java.lang.String r4 = "Hardware"
            boolean r3 = r3.equals(r4)     // Catch: java.lang.Exception -> L43
            if (r3 == 0) goto L10
            r2 = 1
            r3 = 1
            r1 = r1[r3]     // Catch: java.lang.Exception -> L43
            r0[r2] = r1     // Catch: java.lang.Exception -> L43
        L31:
            int r1 = s()
            java.lang.String r1 = java.lang.String.valueOf(r1)
            r0[r5] = r1
            r1 = 2
            java.lang.String r2 = r()
            r0[r1] = r2
            return r0
        L43:
            r1 = move-exception
            goto L31
        */
        throw new UnsupportedOperationException("Method not decompiled: com.cmcm.dmc.sdk.b.b.q():java.lang.String[]");
    }

    private static final String r() {
        String[] strArr = new String[0];
        try {
            String[] strArr2 = Build.VERSION.SDK_INT >= 21 ? Build.SUPPORTED_ABIS : new String[]{Build.CPU_ABI, Build.CPU_ABI2};
            StringBuilder sb = new StringBuilder();
            for (String str : strArr2) {
                sb.append(str);
                sb.append(',');
            }
            return sb.toString();
        } catch (Exception e2) {
            return "";
        }
    }

    private static int s() {
        if (Build.VERSION.SDK_INT <= 10) {
            return 1;
        }
        try {
            return new File("/sys/devices/system/cpu/").listFiles(g).length;
        } catch (Exception e2) {
            return -1;
        }
    }
}
