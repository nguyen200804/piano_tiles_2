package org.cocos2dx.lib;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.res.AssetManager;
import android.net.Uri;
import android.os.Build;
import android.os.Process;
import android.preference.PreferenceManager;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.Display;
import android.view.WindowManager;
import com.chukong.cocosplay.client.CocosPlayClient;
import com.cmplay.util.k;
import java.io.File;
import java.io.FilenameFilter;
import java.io.UnsupportedEncodingException;
import java.util.LinkedHashSet;
import java.util.Locale;
import java.util.Set;
import java.util.regex.Pattern;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class Cocos2dxHelper {
    private static final String PREFS_NAME = "Cocos2dxPrefsFile";
    private static final int RUNNABLES_PER_FRAME = 5;
    private static boolean sAccelerometerEnabled;
    private static boolean sActivityVisible;
    private static AssetManager sAssetManager;
    private static Cocos2dxMusic sCocos2dMusic;
    private static Cocos2dxSound sCocos2dSound;
    private static Cocos2dxAccelerometer sCocos2dxAccelerometer;
    private static Cocos2dxHelperListener sCocos2dxHelperListener;
    private static Context sContext;
    private static String sFileDirectory;
    private static String sPackageName;
    private static Activity sActivity = null;
    private static Set<PreferenceManager.OnActivityResultListener> onActivityResultListeners = new LinkedHashSet();
    private static ICloudConfigGetter sCloudCfgGetter = null;
    public static boolean sInited = false;
    public static boolean sInited_service = false;
    private static k sSharedPreferenceImpl = null;
    private static int mCpuNum = 0;

    public interface Cocos2dxHelperListener {
        void runOnGLThread(Runnable runnable);

        void showDialog(String str, String str2);

        void showEditTextDialog(String str, String str2, int i, int i2, int i3, int i4);
    }

    private static native void nativeSetApkPath(String str);

    public static native void nativeSetContext(Context context, AssetManager assetManager);

    /* JADX INFO: Access modifiers changed from: private */
    public static native void nativeSetEditTextDialogResult(byte[] bArr);

    public static native void registerExceptionHandler();

    public static void runOnGLThread(Runnable r) {
        ((Cocos2dxActivity) sActivity).runOnGLThread(r);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void init(Activity activity) {
        if (!sInited) {
            ApplicationInfo applicationInfo = activity.getApplicationInfo();
            sCocos2dxHelperListener = (Cocos2dxHelperListener) activity;
            sPackageName = applicationInfo.packageName;
            if (CocosPlayClient.isEnabled() && !CocosPlayClient.isDemo()) {
                sFileDirectory = CocosPlayClient.getGameRoot();
            } else if (activity.getFilesDir() != null) {
                sFileDirectory = activity.getFilesDir().getAbsolutePath();
            } else {
                sFileDirectory = "";
            }
            nativeSetApkPath(applicationInfo.sourceDir);
            sCocos2dxAccelerometer = new Cocos2dxAccelerometer(activity);
            sCocos2dMusic = new Cocos2dxMusic(activity);
            sCocos2dSound = new Cocos2dxSound(activity);
            sAssetManager = activity.getAssets();
            nativeSetContext(activity, sAssetManager);
            Cocos2dxBitmap.setContext(activity);
            sActivity = activity;
            sContext = activity.getApplicationContext();
            sInited = true;
        }
    }

    public static void initByService(Context context) {
        Context applicationContext = context.getApplicationContext();
        if (!sInited_service) {
            ApplicationInfo applicationInfo = applicationContext.getApplicationInfo();
            sPackageName = applicationInfo.packageName;
            if (CocosPlayClient.isEnabled() && !CocosPlayClient.isDemo()) {
                sFileDirectory = CocosPlayClient.getGameRoot();
            } else if (applicationContext.getFilesDir() != null) {
                sFileDirectory = applicationContext.getFilesDir().getAbsolutePath();
            } else {
                sFileDirectory = "";
            }
            nativeSetApkPath(applicationInfo.sourceDir);
            sCocos2dxAccelerometer = new Cocos2dxAccelerometer(applicationContext);
            sCocos2dMusic = new Cocos2dxMusic(applicationContext);
            sCocos2dSound = new Cocos2dxSound(applicationContext);
            sAssetManager = applicationContext.getAssets();
            nativeSetContext(applicationContext, sAssetManager);
            Cocos2dxBitmap.setContext(applicationContext);
            sContext = applicationContext;
            sInited_service = true;
        }
    }

    public static void setSharedPreferenceImpl(k impl) {
        sSharedPreferenceImpl = impl;
    }

    public static String getSharedPreferenceName() {
        return PREFS_NAME;
    }

    public static Activity getActivity() {
        return sActivity;
    }

    public static void addOnActivityResultListener(PreferenceManager.OnActivityResultListener listener) {
        onActivityResultListeners.add(listener);
    }

    public static Set<PreferenceManager.OnActivityResultListener> getOnActivityResultListeners() {
        return onActivityResultListeners;
    }

    public static boolean isActivityVisible() {
        return sActivityVisible;
    }

    public static String getCocos2dxPackageName() {
        return sPackageName;
    }

    public static String getCocos2dxWritablePath() {
        return sFileDirectory;
    }

    public static String getCurrentLanguage() {
        return Locale.getDefault().getLanguage();
    }

    public static String getDeviceModel() {
        return Build.MODEL;
    }

    public static AssetManager getAssetManager() {
        return sAssetManager;
    }

    public static void enableAccelerometer() {
        sAccelerometerEnabled = true;
        sCocos2dxAccelerometer.enable();
    }

    public static void setAccelerometerInterval(float interval) {
        sCocos2dxAccelerometer.setInterval(interval);
    }

    public static void disableAccelerometer() {
        sAccelerometerEnabled = false;
        sCocos2dxAccelerometer.disable();
    }

    public static void setKeepScreenOn(boolean value) {
        ((Cocos2dxActivity) sActivity).setKeepScreenOn(value);
    }

    public static boolean openURL(String url) {
        try {
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setData(Uri.parse(url));
            sContext.startActivity(intent);
            return true;
        } catch (Exception e) {
            return false;
        }
    }

    public static void preloadBackgroundMusic(String pPath) {
        sCocos2dMusic.preloadBackgroundMusic(pPath);
    }

    public static void playBackgroundMusic(String pPath, boolean isLoop) {
        sCocos2dMusic.playBackgroundMusic(pPath, isLoop);
    }

    public static void resumeBackgroundMusic() {
        sCocos2dMusic.resumeBackgroundMusic();
    }

    public static void pauseBackgroundMusic() {
        sCocos2dMusic.pauseBackgroundMusic();
    }

    public static void stopBackgroundMusic() {
        sCocos2dMusic.stopBackgroundMusic();
    }

    public static void rewindBackgroundMusic() {
        sCocos2dMusic.rewindBackgroundMusic();
    }

    public static boolean isBackgroundMusicPlaying() {
        return sCocos2dMusic.isBackgroundMusicPlaying();
    }

    public static float getBackgroundMusicVolume() {
        return sCocos2dMusic.getBackgroundVolume();
    }

    public static void setBackgroundMusicVolume(float volume) {
        sCocos2dMusic.setBackgroundVolume(volume);
    }

    public static void preloadEffect(String path) {
        sCocos2dSound.preloadEffect(path);
    }

    public static int playEffect(String path, boolean isLoop, float pitch, float pan, float gain, float fPlayTime) {
        Log.d("shengmingplayeffect", "shengmingplayeffect1 =" + fPlayTime);
        return sCocos2dSound.playEffect(path, isLoop, pitch, pan, gain, fPlayTime);
    }

    public static void resumeEffect(int soundId) {
        sCocos2dSound.resumeEffect(soundId);
    }

    public static void pauseEffect(int soundId) {
        sCocos2dSound.pauseEffect(soundId);
    }

    public static void stopEffect(int soundId) {
        sCocos2dSound.stopEffect(soundId);
    }

    public static float getEffectsVolume() {
        return sCocos2dSound.getEffectsVolume();
    }

    public static void setEffectsVolume(float volume) {
        sCocos2dSound.setEffectsVolume(volume);
    }

    public static void unloadEffect(String path) {
        sCocos2dSound.unloadEffect(path);
    }

    public static void pauseAllEffects() {
        sCocos2dSound.pauseAllEffects();
    }

    public static void resumeAllEffects() {
        sCocos2dSound.resumeAllEffects();
    }

    public static void stopAllEffects() {
        sCocos2dSound.stopAllEffects();
    }

    public static void end() {
        sCocos2dMusic.end();
        sCocos2dSound.end();
    }

    public static void onResume() {
        sActivityVisible = true;
        if (sAccelerometerEnabled) {
            sCocos2dxAccelerometer.enable();
        }
    }

    public static void onPause() {
        sActivityVisible = false;
        if (sAccelerometerEnabled) {
            sCocos2dxAccelerometer.disable();
        }
    }

    public static void onEnterBackground() {
        sCocos2dSound.onEnterBackground();
        sCocos2dMusic.onEnterBackground();
    }

    public static void onEnterForeground() {
        sCocos2dSound.onEnterForeground();
        sCocos2dMusic.onEnterForeground();
    }

    public static void terminateProcess() {
        Process.killProcess(Process.myPid());
    }

    private static void showDialog(String pTitle, String pMessage) {
        sCocos2dxHelperListener.showDialog(pTitle, pMessage);
    }

    private static void showEditTextDialog(String pTitle, String pMessage, int pInputMode, int pInputFlag, int pReturnType, int pMaxLength) {
        sCocos2dxHelperListener.showEditTextDialog(pTitle, pMessage, pInputMode, pInputFlag, pReturnType, pMaxLength);
    }

    public static void setEditTextDialogResult(String pResult) {
        try {
            final byte[] bytes = pResult.getBytes("UTF8");
            sCocos2dxHelperListener.runOnGLThread(new Runnable() { // from class: org.cocos2dx.lib.Cocos2dxHelper.1
                @Override // java.lang.Runnable
                public void run() {
                    Cocos2dxHelper.nativeSetEditTextDialogResult(bytes);
                }
            });
        } catch (UnsupportedEncodingException e) {
        }
    }

    public static int getDPI() {
        Display defaultDisplay;
        if (sActivity != null) {
            DisplayMetrics displayMetrics = new DisplayMetrics();
            WindowManager windowManager = sActivity.getWindowManager();
            if (windowManager != null && (defaultDisplay = windowManager.getDefaultDisplay()) != null) {
                defaultDisplay.getMetrics(displayMetrics);
                return (int) (displayMetrics.density * 160.0f);
            }
        }
        return -1;
    }

    public static boolean getBoolForKey(String key, boolean defaultValue) {
        return sSharedPreferenceImpl.a(key, defaultValue);
    }

    public static int getIntegerForKey(String key, int defaultValue) {
        return sSharedPreferenceImpl.a(key, defaultValue);
    }

    public static float getFloatForKey(String key, float defaultValue) {
        return sSharedPreferenceImpl.a(key, defaultValue);
    }

    public static double getDoubleForKey(String key, double defaultValue) {
        return sSharedPreferenceImpl.a(key, (float) defaultValue);
    }

    public static String getStringForKey(String key, String defaultValue) {
        return sSharedPreferenceImpl.a(key, defaultValue);
    }

    public static void setBoolForKey(String key, boolean value) {
        sSharedPreferenceImpl.b(key, value);
    }

    public static void setIntegerForKey(String key, int value) {
        sSharedPreferenceImpl.b(key, value);
    }

    public static void setFloatForKey(String key, float value) {
        sSharedPreferenceImpl.b(key, value);
    }

    public static void setDoubleForKey(String key, double value) {
        sSharedPreferenceImpl.b(key, (float) value);
    }

    public static void setStringForKey(String key, String value) {
        sSharedPreferenceImpl.b(key, value);
    }

    public static long getLongForKey(String key, long defaultValue) {
        String a2 = sSharedPreferenceImpl.a(key, "");
        if (!TextUtils.isEmpty(a2)) {
            try {
                return Long.parseLong(a2);
            } catch (NumberFormatException e) {
                return defaultValue;
            }
        }
        return defaultValue;
    }

    public static void setLongForKey(String key, long value) {
        sSharedPreferenceImpl.b(key, Long.toString(value));
    }

    public static int getCpuNum() {
        if (mCpuNum > 0) {
            return mCpuNum;
        }
        File file = new File("/sys/devices/system/cpu");
        if (!file.exists() || !file.isDirectory()) {
            mCpuNum = 1;
            return mCpuNum;
        }
        String[] list = file.list(new FilenameFilter() { // from class: org.cocos2dx.lib.Cocos2dxHelper.2
            @Override // java.io.FilenameFilter
            public boolean accept(File dir, String filename) {
                if (TextUtils.isEmpty(filename)) {
                    return false;
                }
                return Pattern.matches("cpu\\d+", filename);
            }
        });
        if (list == null || list.length == 0) {
            mCpuNum = 1;
            return mCpuNum;
        }
        mCpuNum = list.length;
        return mCpuNum;
    }

    public static void setCloudConfigGetter(ICloudConfigGetter cloudConfigGetter) {
        sCloudCfgGetter = cloudConfigGetter;
    }

    public static ICloudConfigGetter getCloudConfigGetter() {
        return sCloudCfgGetter;
    }
}
