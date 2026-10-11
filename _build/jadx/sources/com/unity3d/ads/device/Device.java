package com.unity3d.ads.device;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.app.ActivityManager;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ConfigurationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.hardware.Sensor;
import android.hardware.SensorManager;
import android.media.AudioManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.provider.Settings;
import android.support.v4.view.MotionEventCompat;
import android.telephony.TelephonyManager;
import com.applovin.sdk.AppLovinEventTypes;
import com.unity3d.ads.log.DeviceLog;
import com.unity3d.ads.metadata.MediationMetaData;
import com.unity3d.ads.misc.Utilities;
import com.unity3d.ads.properties.ClientProperties;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class Device {

    public enum MemoryInfoType {
        TOTAL_MEMORY,
        FREE_MEMORY
    }

    public static int getApiLevel() {
        return Build.VERSION.SDK_INT;
    }

    public static String getOsVersion() {
        return Build.VERSION.RELEASE;
    }

    public static String getManufacturer() {
        return Build.MANUFACTURER;
    }

    public static String getModel() {
        return Build.MODEL;
    }

    public static int getScreenLayout() {
        if (ClientProperties.getApplicationContext() != null) {
            return ClientProperties.getApplicationContext().getResources().getConfiguration().screenLayout;
        }
        return -1;
    }

    @SuppressLint({"DefaultLocale"})
    public static String getAndroidId() {
        try {
            return Settings.Secure.getString(ClientProperties.getApplicationContext().getContentResolver(), "android_id");
        } catch (Exception e) {
            DeviceLog.exception("Problems fetching androidId", e);
            return null;
        }
    }

    public static String getAdvertisingTrackingId() {
        return AdvertisingId.getAdvertisingTrackingId();
    }

    public static boolean isLimitAdTrackingEnabled() {
        return AdvertisingId.getLimitedAdTracking();
    }

    public static boolean isUsingWifi() {
        ConnectivityManager connectivityManager;
        if (ClientProperties.getApplicationContext() == null || (connectivityManager = (ConnectivityManager) ClientProperties.getApplicationContext().getSystemService("connectivity")) == null) {
            return false;
        }
        TelephonyManager telephonyManager = (TelephonyManager) ClientProperties.getApplicationContext().getSystemService("phone");
        connectivityManager.getActiveNetworkInfo();
        NetworkInfo networkInfo = null;
        if (0 == 0 || !connectivityManager.getBackgroundDataSetting() || !connectivityManager.getActiveNetworkInfo().isConnected() || telephonyManager == null) {
            return false;
        }
        return networkInfo.getType() == 1 && networkInfo.isConnected();
    }

    public static int getNetworkType() {
        if (ClientProperties.getApplicationContext() != null) {
            return ((TelephonyManager) ClientProperties.getApplicationContext().getSystemService("phone")).getNetworkType();
        }
        return -1;
    }

    public static String getNetworkOperator() {
        return ClientProperties.getApplicationContext() != null ? ((TelephonyManager) ClientProperties.getApplicationContext().getSystemService("phone")).getNetworkOperator() : "";
    }

    public static String getNetworkOperatorName() {
        return ClientProperties.getApplicationContext() != null ? ((TelephonyManager) ClientProperties.getApplicationContext().getSystemService("phone")).getNetworkOperatorName() : "";
    }

    public static int getScreenDensity() {
        if (ClientProperties.getApplicationContext() != null) {
            return ClientProperties.getApplicationContext().getResources().getDisplayMetrics().densityDpi;
        }
        return -1;
    }

    public static int getScreenWidth() {
        if (ClientProperties.getApplicationContext() != null) {
            return ClientProperties.getApplicationContext().getResources().getDisplayMetrics().widthPixels;
        }
        return -1;
    }

    public static int getScreenHeight() {
        if (ClientProperties.getApplicationContext() != null) {
            return ClientProperties.getApplicationContext().getResources().getDisplayMetrics().heightPixels;
        }
        return -1;
    }

    public static boolean isActiveNetworkConnected() {
        ConnectivityManager connectivityManager;
        if (ClientProperties.getApplicationContext() == null || (connectivityManager = (ConnectivityManager) ClientProperties.getApplicationContext().getSystemService("connectivity")) == null) {
            return false;
        }
        NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
        return activeNetworkInfo != null && activeNetworkInfo.isConnected();
    }

    public static boolean isAppInstalled(String pkgname) {
        if (ClientProperties.getApplicationContext() == null) {
            return false;
        }
        try {
            PackageInfo packageInfo = ClientProperties.getApplicationContext().getPackageManager().getPackageInfo(pkgname, 0);
            if (packageInfo == null || packageInfo.packageName == null) {
                return false;
            }
            return pkgname.equals(packageInfo.packageName);
        } catch (PackageManager.NameNotFoundException e) {
            return false;
        }
    }

    public static List<Map<String, Object>> getInstalledPackages(boolean hash) {
        ArrayList arrayList = new ArrayList();
        if (ClientProperties.getApplicationContext() != null) {
            PackageManager packageManager = ClientProperties.getApplicationContext().getPackageManager();
            for (PackageInfo packageInfo : packageManager.getInstalledPackages(0)) {
                HashMap hashMap = new HashMap();
                if (hash) {
                    hashMap.put(MediationMetaData.KEY_NAME, Utilities.Sha256(packageInfo.packageName));
                } else {
                    hashMap.put(MediationMetaData.KEY_NAME, packageInfo.packageName);
                }
                if (packageInfo.firstInstallTime > 0) {
                    hashMap.put("time", Long.valueOf(packageInfo.firstInstallTime));
                }
                String installerPackageName = packageManager.getInstallerPackageName(packageInfo.packageName);
                if (installerPackageName != null && !installerPackageName.isEmpty()) {
                    hashMap.put("installer", installerPackageName);
                }
                arrayList.add(hashMap);
            }
        }
        return arrayList;
    }

    public static String getUniqueEventId() {
        return UUID.randomUUID().toString();
    }

    public static boolean isWiredHeadsetOn() {
        if (ClientProperties.getApplicationContext() != null) {
            return ((AudioManager) ClientProperties.getApplicationContext().getSystemService("audio")).isWiredHeadsetOn();
        }
        return false;
    }

    public static String getSystemProperty(String propertyName, String defaultValue) {
        return defaultValue != null ? System.getProperty(propertyName, defaultValue) : System.getProperty(propertyName);
    }

    public static int getRingerMode() {
        if (ClientProperties.getApplicationContext() != null) {
            AudioManager audioManager = (AudioManager) ClientProperties.getApplicationContext().getSystemService("audio");
            if (audioManager != null) {
                return audioManager.getRingerMode();
            }
            return -2;
        }
        return -1;
    }

    public static int getStreamVolume(int streamType) {
        if (ClientProperties.getApplicationContext() != null) {
            AudioManager audioManager = (AudioManager) ClientProperties.getApplicationContext().getSystemService("audio");
            if (audioManager != null) {
                return audioManager.getStreamVolume(streamType);
            }
            return -2;
        }
        return -1;
    }

    public static int getStreamMaxVolume(int streamType) {
        if (ClientProperties.getApplicationContext() != null) {
            AudioManager audioManager = (AudioManager) ClientProperties.getApplicationContext().getSystemService("audio");
            if (audioManager != null) {
                return audioManager.getStreamMaxVolume(streamType);
            }
            return -2;
        }
        return -1;
    }

    public static int getScreenBrightness() {
        if (ClientProperties.getApplicationContext() != null) {
            return Settings.System.getInt(ClientProperties.getApplicationContext().getContentResolver(), "screen_brightness", -1);
        }
        return -1;
    }

    public static long getFreeSpace(File file) {
        if (file == null || !file.exists()) {
            return -1L;
        }
        return Math.round(file.getFreeSpace() / 1024);
    }

    public static long getTotalSpace(File file) {
        if (file == null || !file.exists()) {
            return -1L;
        }
        return Math.round(file.getTotalSpace() / 1024);
    }

    public static float getBatteryLevel() {
        Intent registerReceiver;
        if (ClientProperties.getApplicationContext() == null || (registerReceiver = ClientProperties.getApplicationContext().registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"))) == null) {
            return -1.0f;
        }
        return registerReceiver.getIntExtra(AppLovinEventTypes.USER_COMPLETED_LEVEL, -1) / registerReceiver.getIntExtra("scale", -1);
    }

    public static int getBatteryStatus() {
        Intent registerReceiver;
        if (ClientProperties.getApplicationContext() == null || (registerReceiver = ClientProperties.getApplicationContext().registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"))) == null) {
            return -1;
        }
        return registerReceiver.getIntExtra("status", -1);
    }

    public static long getTotalMemory() {
        return getMemoryInfo(MemoryInfoType.TOTAL_MEMORY);
    }

    public static long getFreeMemory() {
        return getMemoryInfo(MemoryInfoType.FREE_MEMORY);
    }

    private static long getMemoryInfo(MemoryInfoType infoType) {
        RandomAccessFile randomAccessFile = null;
        int i = -1;
        switch (infoType) {
            case TOTAL_MEMORY:
                i = 1;
                break;
            case FREE_MEMORY:
                i = 2;
                break;
        }
        try {
            try {
                RandomAccessFile randomAccessFile2 = new RandomAccessFile("/proc/meminfo", "r");
                String str = null;
                for (int i2 = 0; i2 < i; i2++) {
                    try {
                        str = randomAccessFile2.readLine();
                    } catch (IOException e) {
                        e = e;
                        randomAccessFile = randomAccessFile2;
                        DeviceLog.exception("Error while reading memory info: " + infoType, e);
                        try {
                            randomAccessFile.close();
                        } catch (IOException e2) {
                            DeviceLog.exception("Error closing RandomAccessFile", e2);
                        }
                        return -1L;
                    } catch (Throwable th) {
                        th = th;
                        randomAccessFile = randomAccessFile2;
                        try {
                            randomAccessFile.close();
                        } catch (IOException e3) {
                            DeviceLog.exception("Error closing RandomAccessFile", e3);
                        }
                        throw th;
                    }
                }
                long memoryValueFromString = getMemoryValueFromString(str);
                try {
                    randomAccessFile2.close();
                    return memoryValueFromString;
                } catch (IOException e4) {
                    DeviceLog.exception("Error closing RandomAccessFile", e4);
                    return memoryValueFromString;
                }
            } catch (IOException e5) {
                e = e5;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    private static long getMemoryValueFromString(String memVal) {
        if (memVal == null) {
            return -1L;
        }
        Matcher matcher = Pattern.compile("(\\d+)").matcher(memVal);
        String str = "";
        while (matcher.find()) {
            str = matcher.group(1);
        }
        return Long.parseLong(str);
    }

    public static boolean isRooted() {
        try {
            return searchPathForBinary("su");
        } catch (Exception e) {
            DeviceLog.exception("Rooted check failed", e);
            return false;
        }
    }

    private static boolean searchPathForBinary(String binary) {
        File[] listFiles;
        for (String str : System.getenv("PATH").split(":")) {
            File file = new File(str);
            if (file.exists() && file.isDirectory() && (listFiles = file.listFiles()) != null) {
                for (File file2 : listFiles) {
                    if (file2.getName().equals(binary)) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public static String getGLVersion() {
        ActivityManager activityManager;
        ConfigurationInfo deviceConfigurationInfo;
        if (ClientProperties.getApplicationContext() == null || (activityManager = (ActivityManager) ClientProperties.getApplicationContext().getSystemService("activity")) == null || (deviceConfigurationInfo = activityManager.getDeviceConfigurationInfo()) == null) {
            return null;
        }
        return deviceConfigurationInfo.getGlEsVersion();
    }

    public static String getBoard() {
        return Build.BOARD;
    }

    public static String getBootloader() {
        return Build.BOOTLOADER;
    }

    public static String getBrand() {
        return Build.BRAND;
    }

    public static String getDevice() {
        return Build.DEVICE;
    }

    public static String getHardware() {
        return Build.HARDWARE;
    }

    public static String getHost() {
        return Build.HOST;
    }

    public static String getProduct() {
        return Build.PRODUCT;
    }

    public static ArrayList<String> getSupportedAbis() {
        return getApiLevel() < 21 ? getOldAbiList() : getNewAbiList();
    }

    public static List<Sensor> getSensorList() {
        if (ClientProperties.getApplicationContext() != null) {
            return ((SensorManager) ClientProperties.getApplicationContext().getSystemService("sensor")).getSensorList(-1);
        }
        return null;
    }

    private static ArrayList<String> getOldAbiList() {
        ArrayList<String> arrayList = new ArrayList<>();
        arrayList.add(Build.CPU_ABI);
        arrayList.add(Build.CPU_ABI2);
        return arrayList;
    }

    @TargetApi(MotionEventCompat.AXIS_WHEEL)
    private static ArrayList<String> getNewAbiList() {
        ArrayList<String> arrayList = new ArrayList<>();
        arrayList.addAll(Arrays.asList(Build.SUPPORTED_ABIS));
        return arrayList;
    }
}
