package com.unity3d.ads.api;

import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.hardware.Sensor;
import android.util.SparseArray;
import com.mopub.mobileads.VastExtensionXmlManager;
import com.unity3d.ads.device.Device;
import com.unity3d.ads.device.DeviceError;
import com.unity3d.ads.device.IVolumeChangeListener;
import com.unity3d.ads.device.VolumeChange;
import com.unity3d.ads.log.DeviceLog;
import com.unity3d.ads.metadata.MediationMetaData;
import com.unity3d.ads.properties.ClientProperties;
import com.unity3d.ads.webview.WebViewApp;
import com.unity3d.ads.webview.WebViewEventCategory;
import com.unity3d.ads.webview.bridge.WebViewCallback;
import com.unity3d.ads.webview.bridge.WebViewExposed;
import java.io.File;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.TimeZone;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class DeviceInfo {
    private static SparseArray<IVolumeChangeListener> _volumeChangeListeners;

    public enum DeviceInfoEvent {
        VOLUME_CHANGED
    }

    public enum StorageType {
        EXTERNAL,
        INTERNAL
    }

    @WebViewExposed
    public static void getAndroidId(WebViewCallback callback) {
        callback.invoke(Device.getAndroidId());
    }

    @WebViewExposed
    public static void getAdvertisingTrackingId(WebViewCallback callback) {
        callback.invoke(Device.getAdvertisingTrackingId());
    }

    @WebViewExposed
    public static void getLimitAdTrackingFlag(WebViewCallback callback) {
        callback.invoke(Boolean.valueOf(Device.isLimitAdTrackingEnabled()));
    }

    @WebViewExposed
    public static void getApiLevel(WebViewCallback callback) {
        callback.invoke(Integer.valueOf(Device.getApiLevel()));
    }

    @WebViewExposed
    public static void getOsVersion(WebViewCallback callback) {
        callback.invoke(Device.getOsVersion());
    }

    @WebViewExposed
    public static void getManufacturer(WebViewCallback callback) {
        callback.invoke(Device.getManufacturer());
    }

    @WebViewExposed
    public static void getModel(WebViewCallback callback) {
        callback.invoke(Device.getModel());
    }

    @WebViewExposed
    public static void getScreenLayout(WebViewCallback callback) {
        callback.invoke(Integer.valueOf(Device.getScreenLayout()));
    }

    @WebViewExposed
    public static void getScreenDensity(WebViewCallback callback) {
        callback.invoke(Integer.valueOf(Device.getScreenDensity()));
    }

    @WebViewExposed
    public static void getScreenWidth(WebViewCallback callback) {
        callback.invoke(Integer.valueOf(Device.getScreenWidth()));
    }

    @WebViewExposed
    public static void getScreenHeight(WebViewCallback callback) {
        callback.invoke(Integer.valueOf(Device.getScreenHeight()));
    }

    @WebViewExposed
    public static void getTimeZone(Boolean dst, WebViewCallback callback) {
        callback.invoke(TimeZone.getDefault().getDisplayName(dst.booleanValue(), 0, Locale.US));
    }

    @WebViewExposed
    public static void getConnectionType(WebViewCallback callback) {
        String str;
        if (Device.isUsingWifi()) {
            str = "wifi";
        } else if (Device.isActiveNetworkConnected()) {
            str = "cellular";
        } else {
            str = "none";
        }
        callback.invoke(str);
    }

    @WebViewExposed
    public static void getNetworkType(WebViewCallback callback) {
        callback.invoke(Integer.valueOf(Device.getNetworkType()));
    }

    @WebViewExposed
    public static void getNetworkOperator(WebViewCallback callback) {
        callback.invoke(Device.getNetworkOperator());
    }

    @WebViewExposed
    public static void getNetworkOperatorName(WebViewCallback callback) {
        callback.invoke(Device.getNetworkOperatorName());
    }

    @WebViewExposed
    public static void isAppInstalled(String pkgname, WebViewCallback callback) {
        callback.invoke(Boolean.valueOf(Device.isAppInstalled(pkgname)));
    }

    @WebViewExposed
    public static void isRooted(WebViewCallback callback) {
        callback.invoke(Boolean.valueOf(Device.isRooted()));
    }

    @WebViewExposed
    public static void getInstalledPackages(boolean md5, WebViewCallback callback) {
        callback.invoke(new JSONArray((Collection) Device.getInstalledPackages(md5)));
    }

    @WebViewExposed
    public static void getPackageInfo(String packageName, WebViewCallback callback) {
        if (ClientProperties.getApplicationContext() != null) {
            PackageManager packageManager = ClientProperties.getApplicationContext().getPackageManager();
            try {
                PackageInfo packageInfo = packageManager.getPackageInfo(packageName, 0);
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("installer", packageManager.getInstallerPackageName(packageName));
                    jSONObject.put("firstInstallTime", packageInfo.firstInstallTime);
                    jSONObject.put("lastUpdateTime", packageInfo.lastUpdateTime);
                    jSONObject.put("versionCode", packageInfo.versionCode);
                    jSONObject.put("versionName", packageInfo.versionName);
                    jSONObject.put("packageName", packageInfo.packageName);
                    callback.invoke(jSONObject);
                    return;
                } catch (JSONException e) {
                    callback.error(DeviceError.JSON_ERROR, e.getMessage());
                    return;
                }
            } catch (PackageManager.NameNotFoundException e2) {
                callback.error(DeviceError.APPLICATION_INFO_NOT_AVAILABLE, packageName);
                return;
            }
        }
        callback.error(DeviceError.APPLICATION_CONTEXT_NULL, new Object[0]);
    }

    @WebViewExposed
    public static void getUniqueEventId(WebViewCallback callback) {
        callback.invoke(Device.getUniqueEventId());
    }

    @WebViewExposed
    public static void getHeadset(WebViewCallback callback) {
        callback.invoke(Boolean.valueOf(Device.isWiredHeadsetOn()));
    }

    @WebViewExposed
    public static void getSystemProperty(String propertyName, String defaultValue, WebViewCallback callback) {
        callback.invoke(Device.getSystemProperty(propertyName, defaultValue));
    }

    @WebViewExposed
    public static void getRingerMode(WebViewCallback callback) {
        int ringerMode = Device.getRingerMode();
        if (ringerMode > -1) {
            callback.invoke(Integer.valueOf(ringerMode));
        }
        switch (ringerMode) {
            case -2:
                callback.error(DeviceError.AUDIOMANAGER_NULL, Integer.valueOf(ringerMode));
                break;
            case -1:
                callback.error(DeviceError.APPLICATION_CONTEXT_NULL, Integer.valueOf(ringerMode));
                break;
            default:
                DeviceLog.error("Unhandled ringerMode error: " + ringerMode);
                break;
        }
    }

    @WebViewExposed
    public static void getSystemLanguage(WebViewCallback callback) {
        callback.invoke(Locale.getDefault().toString());
    }

    @WebViewExposed
    public static void getDeviceVolume(Integer streamType, WebViewCallback callback) {
        int streamVolume = Device.getStreamVolume(streamType.intValue());
        if (streamVolume > -1) {
            callback.invoke(Integer.valueOf(streamVolume));
        }
        switch (streamVolume) {
            case -2:
                callback.error(DeviceError.AUDIOMANAGER_NULL, Integer.valueOf(streamVolume));
                break;
            case -1:
                callback.error(DeviceError.APPLICATION_CONTEXT_NULL, Integer.valueOf(streamVolume));
                break;
            default:
                DeviceLog.error("Unhandled deviceVolume error: " + streamVolume);
                break;
        }
    }

    @WebViewExposed
    public static void getDeviceMaxVolume(Integer streamType, WebViewCallback callback) {
        int streamMaxVolume = Device.getStreamMaxVolume(streamType.intValue());
        if (streamMaxVolume > -1) {
            callback.invoke(Integer.valueOf(streamMaxVolume));
        }
        switch (streamMaxVolume) {
            case -2:
                callback.error(DeviceError.AUDIOMANAGER_NULL, Integer.valueOf(streamMaxVolume));
                break;
            case -1:
                callback.error(DeviceError.APPLICATION_CONTEXT_NULL, Integer.valueOf(streamMaxVolume));
                break;
            default:
                DeviceLog.error("Unhandled deviceMaxVolume error: " + streamMaxVolume);
                break;
        }
    }

    @WebViewExposed
    public static void registerVolumeChangeListener(final Integer streamType, WebViewCallback callback) {
        if (_volumeChangeListeners == null) {
            _volumeChangeListeners = new SparseArray<>();
        }
        if (_volumeChangeListeners.get(streamType.intValue()) == null) {
            IVolumeChangeListener iVolumeChangeListener = new IVolumeChangeListener() { // from class: com.unity3d.ads.api.DeviceInfo.1
                private int _streamType;

                {
                    this._streamType = streamType.intValue();
                }

                @Override // com.unity3d.ads.device.IVolumeChangeListener
                public void onVolumeChanged(int volume) {
                    WebViewApp.getCurrentApp().sendEvent(WebViewEventCategory.DEVICEINFO, DeviceInfoEvent.VOLUME_CHANGED, Integer.valueOf(getStreamType()), Integer.valueOf(volume), Integer.valueOf(Device.getStreamMaxVolume(this._streamType)));
                }

                @Override // com.unity3d.ads.device.IVolumeChangeListener
                public int getStreamType() {
                    return this._streamType;
                }
            };
            _volumeChangeListeners.append(streamType.intValue(), iVolumeChangeListener);
            VolumeChange.registerListener(iVolumeChangeListener);
        }
        callback.invoke(new Object[0]);
    }

    @WebViewExposed
    public static void unregisterVolumeChangeListener(Integer streamType, WebViewCallback callback) {
        if (_volumeChangeListeners != null && _volumeChangeListeners.get(streamType.intValue()) != null) {
            VolumeChange.unregisterListener(_volumeChangeListeners.get(streamType.intValue()));
            _volumeChangeListeners.remove(streamType.intValue());
        }
        callback.invoke(new Object[0]);
    }

    @WebViewExposed
    public static void getScreenBrightness(WebViewCallback callback) {
        int screenBrightness = Device.getScreenBrightness();
        if (screenBrightness > -1) {
            callback.invoke(Integer.valueOf(screenBrightness));
        }
        switch (screenBrightness) {
            case -1:
                callback.error(DeviceError.APPLICATION_CONTEXT_NULL, Integer.valueOf(screenBrightness));
                break;
            default:
                DeviceLog.error("Unhandled screenBrightness error: " + screenBrightness);
                break;
        }
    }

    private static StorageType getStorageTypeFromString(String storageType) {
        try {
            return StorageType.valueOf(storageType);
        } catch (IllegalArgumentException e) {
            DeviceLog.exception("Illegal argument: " + storageType, e);
            return null;
        }
    }

    private static File getFileForStorageType(StorageType storageType) {
        switch (storageType) {
            case INTERNAL:
                return ClientProperties.getApplicationContext().getCacheDir();
            case EXTERNAL:
                return ClientProperties.getApplicationContext().getExternalCacheDir();
            default:
                DeviceLog.error("Unhandled storagetype: " + storageType);
                return null;
        }
    }

    @WebViewExposed
    public static void getFreeSpace(String storageType, WebViewCallback callback) {
        StorageType storageTypeFromString = getStorageTypeFromString(storageType);
        if (storageTypeFromString == null) {
            callback.error(DeviceError.INVALID_STORAGETYPE, storageType);
            return;
        }
        long freeSpace = Device.getFreeSpace(getFileForStorageType(storageTypeFromString));
        if (freeSpace > -1) {
            callback.invoke(Long.valueOf(freeSpace));
        } else {
            callback.error(DeviceError.COULDNT_GET_STORAGE_LOCATION, Long.valueOf(freeSpace));
        }
    }

    @WebViewExposed
    public static void getTotalSpace(String storageType, WebViewCallback callback) {
        StorageType storageTypeFromString = getStorageTypeFromString(storageType);
        if (storageTypeFromString == null) {
            callback.error(DeviceError.INVALID_STORAGETYPE, storageType);
            return;
        }
        long totalSpace = Device.getTotalSpace(getFileForStorageType(storageTypeFromString));
        if (totalSpace > -1) {
            callback.invoke(Long.valueOf(totalSpace));
        } else {
            callback.error(DeviceError.COULDNT_GET_STORAGE_LOCATION, Long.valueOf(totalSpace));
        }
    }

    @WebViewExposed
    public static void getBatteryLevel(WebViewCallback callback) {
        callback.invoke(Float.valueOf(Device.getBatteryLevel()));
    }

    @WebViewExposed
    public static void getBatteryStatus(WebViewCallback callback) {
        callback.invoke(Integer.valueOf(Device.getBatteryStatus()));
    }

    @WebViewExposed
    public static void getFreeMemory(WebViewCallback callback) {
        callback.invoke(Long.valueOf(Device.getFreeMemory()));
    }

    @WebViewExposed
    public static void getTotalMemory(WebViewCallback callback) {
        callback.invoke(Long.valueOf(Device.getTotalMemory()));
    }

    @WebViewExposed
    public static void getGLVersion(WebViewCallback callback) {
        String gLVersion = Device.getGLVersion();
        if (gLVersion != null) {
            callback.invoke(gLVersion);
        } else {
            callback.error(DeviceError.COULDNT_GET_GL_VERSION, new Object[0]);
        }
    }

    @WebViewExposed
    public static void getBoard(WebViewCallback callback) {
        callback.invoke(Device.getBoard());
    }

    @WebViewExposed
    public static void getBootloader(WebViewCallback callback) {
        callback.invoke(Device.getBootloader());
    }

    @WebViewExposed
    public static void getBrand(WebViewCallback callback) {
        callback.invoke(Device.getBrand());
    }

    @WebViewExposed
    public static void getDevice(WebViewCallback callback) {
        callback.invoke(Device.getDevice());
    }

    @WebViewExposed
    public static void getHardware(WebViewCallback callback) {
        callback.invoke(Device.getHardware());
    }

    @WebViewExposed
    public static void getHost(WebViewCallback callback) {
        callback.invoke(Device.getHost());
    }

    @WebViewExposed
    public static void getProduct(WebViewCallback callback) {
        callback.invoke(Device.getProduct());
    }

    @WebViewExposed
    public static void getSupportedAbis(WebViewCallback callback) {
        JSONArray jSONArray = new JSONArray();
        Iterator<String> it = Device.getSupportedAbis().iterator();
        while (it.hasNext()) {
            jSONArray.put(it.next());
        }
        callback.invoke(jSONArray);
    }

    @WebViewExposed
    public static void getSensorList(WebViewCallback webViewCallback) {
        JSONArray jSONArray = new JSONArray();
        List<Sensor> sensorList = Device.getSensorList();
        if (sensorList != null) {
            for (Sensor sensor : sensorList) {
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put(MediationMetaData.KEY_NAME, sensor.getName());
                    jSONObject.put(VastExtensionXmlManager.TYPE, sensor.getType());
                    jSONObject.put("vendor", sensor.getVendor());
                    jSONObject.put("maximumRange", sensor.getMaximumRange());
                    jSONObject.put("power", sensor.getPower());
                    jSONObject.put(MediationMetaData.KEY_VERSION, sensor.getVersion());
                    jSONObject.put("resolution", sensor.getResolution());
                    jSONObject.put("minDelay", sensor.getMinDelay());
                    jSONArray.put(jSONObject);
                } catch (JSONException e) {
                    webViewCallback.error(DeviceError.JSON_ERROR, e.getMessage());
                    return;
                }
            }
        }
        webViewCallback.invoke(jSONArray);
    }
}
