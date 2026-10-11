package com.cmplay.webview.interfaces;

import android.app.Activity;
import android.content.Context;
import android.content.pm.PackageManager;
import android.hardware.SensorEvent;
import android.os.Vibrator;
import android.text.ClipboardManager;
import android.text.TextUtils;
import android.util.Log;
import android.webkit.JavascriptInterface;
import android.widget.Toast;
import com.cmplay.h.f;
import com.cmplay.tile2.GameApp;
import com.cmplay.tiles4.R;
import com.cmplay.util.NativeUtil;
import com.cmplay.util.c;
import com.cmplay.util.n;
import com.cmplay.util.q;
import com.cmplay.util.t;
import com.cmplay.util.v;
import com.cmplay.webview.a.a;
import com.cmplay.webview.b.e;
import com.cmplay.webview.broadcast.GameBroadcast;
import com.cmplay.webview.c.a;
import com.cmplay.webview.d.d;
import com.cmplay.webview.ipc.a.b;
import com.cmplay.webview.ui.WebViewActivity;
import com.cmplay.webview.ui.WebViewLayout;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class WebJsInterface {
    public static final String API_VERSION = "api_version";
    public static final String APP_VERSION = "app_version";
    public static final String DEVICE_ID = "did";
    public static final String DEVICE_TYPE = "device_type";
    public static final String IMEI = "imei";
    private static final int TYPE_COIN = 1;
    private static final int TYPE_DIAMOND = 3;
    private static final int TYPE_LIFE = 2;
    private a mCallBack;
    private WeakReference<Activity> refActivity;
    Vibrator vibrator;

    public WebJsInterface(Activity activity) {
        this(activity, null);
    }

    public WebJsInterface(Activity activity, a callBack) {
        if (this.refActivity == null) {
            this.refActivity = new WeakReference<>(activity);
        }
        this.mCallBack = callBack;
        this.vibrator = (Vibrator) activity.getSystemService("vibrator");
    }

    @JavascriptInterface
    public boolean isLoginGameCenter(String str) {
        if (this.refActivity == null) {
            return false;
        }
        return b.a(GameApp.f1598a).a();
    }

    @JavascriptInterface
    public String getUserInfo() {
        return b.a(GameApp.f1598a).c();
    }

    @JavascriptInterface
    public void registerReturnKeyCallback(final String callback) {
        if (this.refActivity != null) {
            Log.e("ymymym", "registerReturnKeyCallback  " + callback);
            Activity activity = this.refActivity.get();
            if (activity != null) {
                activity.runOnUiThread(new Runnable() { // from class: com.cmplay.webview.interfaces.WebJsInterface.1
                    @Override // java.lang.Runnable
                    public void run() {
                        if (WebJsInterface.this.mCallBack != null) {
                            WebJsInterface.this.mCallBack.e(callback);
                        }
                    }
                });
            }
        }
    }

    @JavascriptInterface
    public void registerLoginCallback(final String callback) {
        Activity activity;
        if (this.refActivity != null && (activity = this.refActivity.get()) != null) {
            activity.runOnUiThread(new Runnable() { // from class: com.cmplay.webview.interfaces.WebJsInterface.5
                @Override // java.lang.Runnable
                public void run() {
                    if (WebJsInterface.this.mCallBack != null) {
                        WebJsInterface.this.mCallBack.a(callback);
                    }
                }
            });
        }
    }

    @JavascriptInterface
    public void login() {
    }

    @JavascriptInterface
    public String getDeviceinfo() {
        return d.a();
    }

    @JavascriptInterface
    public String get_device_info() {
        Context context = GameApp.f1598a;
        JSONObject jSONObject = new JSONObject();
        String valueOf = String.valueOf(v.d(context, context.getPackageName()));
        if (valueOf == null) {
            valueOf = "";
        }
        try {
            jSONObject.put("app_version", valueOf);
            jSONObject.put("api_version", 1);
            jSONObject.put("did", "");
            jSONObject.put("device_type", 2);
            jSONObject.put("imei", "");
        } catch (JSONException e) {
        }
        return jSONObject.toString();
    }

    @JavascriptInterface
    public boolean isPkInstall(String packageName) {
        return v.a(GameApp.f1598a, packageName);
    }

    @JavascriptInterface
    public void go2Google(String url) {
        Activity activity = this.refActivity.get();
        String url2 = url.trim();
        if (activity != null) {
            n.a(GameApp.f1598a, url2);
        }
    }

    @JavascriptInterface
    public void saveEmailKey(String email) {
    }

    @JavascriptInterface
    public String getEmailKey() {
        return "";
    }

    @JavascriptInterface
    public void openApp(final String packageName) {
        com.cmplay.util.a.a.a(new Runnable() { // from class: com.cmplay.webview.interfaces.WebJsInterface.6
            @Override // java.lang.Runnable
            public void run() {
                Activity activity = (Activity) WebJsInterface.this.refActivity.get();
                if (activity != null && !TextUtils.isEmpty(packageName)) {
                    v.e(GameApp.f1598a, packageName);
                    activity.runOnUiThread(new Runnable() { // from class: com.cmplay.webview.interfaces.WebJsInterface.6.1
                        @Override // java.lang.Runnable
                        public void run() {
                            if (WebJsInterface.this.mCallBack != null) {
                                WebJsInterface.this.mCallBack.a(0);
                            }
                        }
                    });
                }
            }
        });
    }

    @JavascriptInterface
    public boolean isWifiAvailable() {
        return t.e(GameApp.f1598a);
    }

    @JavascriptInterface
    public boolean isClickLike(int msgId) {
        return false;
    }

    @JavascriptInterface
    public void hideWaitingView() {
        Activity activity = this.refActivity.get();
        if (activity != null) {
            activity.runOnUiThread(new Runnable() { // from class: com.cmplay.webview.interfaces.WebJsInterface.7
                @Override // java.lang.Runnable
                public void run() {
                    if (WebJsInterface.this.mCallBack != null) {
                        WebJsInterface.this.mCallBack.a();
                    }
                }
            });
        }
    }

    @JavascriptInterface
    public String getPublicData() {
        return "";
    }

    @JavascriptInterface
    public int isNewUser() {
        return 2;
    }

    @JavascriptInterface
    public void copyExchangeCode(String exchangeCode) {
        if (!TextUtils.isEmpty(exchangeCode)) {
            ((ClipboardManager) GameApp.f1598a.getSystemService("clipboard")).setText(exchangeCode);
            final Activity activity = this.refActivity.get();
            if (activity != null) {
                activity.runOnUiThread(new Runnable() { // from class: com.cmplay.webview.interfaces.WebJsInterface.8
                    @Override // java.lang.Runnable
                    public void run() {
                        Toast.makeText(activity, R.string.message_tag_card_exchange_code_copy, 1).show();
                    }
                });
            }
        }
    }

    @JavascriptInterface
    public void isGetExchangeCode(boolean isGetCode) {
        if (this.refActivity.get() == null || !isGetCode) {
        }
    }

    @JavascriptInterface
    public void doH5Report(int actionCode) {
    }

    @JavascriptInterface
    public String createSecret(String url) {
        Activity activity;
        if (this.refActivity != null && (activity = this.refActivity.get()) != null) {
            return e.a(activity, url);
        }
        return "";
    }

    @JavascriptInterface
    public void saveGameLicenseFile(String gamePkg) {
        d.a(gamePkg);
    }

    @JavascriptInterface
    public String getActDeviceInfo() {
        return d.c();
    }

    @JavascriptInterface
    public String getActSign(String url) {
        Activity activity = this.refActivity.get();
        return activity != null ? e.a(activity, url) : "";
    }

    @JavascriptInterface
    public void closeWebView() {
        Activity activity;
        if (this.refActivity != null && (activity = this.refActivity.get()) != null && !activity.isFinishing()) {
            activity.finish();
        }
    }

    @JavascriptInterface
    public void sendPrize(String prize) {
        Activity activity = this.refActivity.get();
        if (activity != null && !activity.isFinishing()) {
            GameBroadcast.a(activity, prize);
        }
    }

    @JavascriptInterface
    public void shareToFacebook(final String data) {
        if (this.refActivity != null && !TextUtils.isEmpty(data)) {
            final Activity activity = this.refActivity.get();
            activity.runOnUiThread(new Runnable() { // from class: com.cmplay.webview.interfaces.WebJsInterface.9
                @Override // java.lang.Runnable
                public void run() {
                    if (activity != null && !activity.isFinishing()) {
                        String str = "";
                        String str2 = "";
                        String str3 = "";
                        String str4 = "";
                        try {
                            JSONObject jSONObject = new JSONObject(data);
                            if (jSONObject.optInt("action") == 0) {
                                str = jSONObject.optString("title");
                                str2 = jSONObject.optString("description");
                                str3 = jSONObject.optString("img_url");
                            } else {
                                str = NativeUtil.getLanguageTextByKey("title_halloween");
                                str2 = NativeUtil.getLanguageTextByKey("text_halloween");
                                str3 = NativeUtil.getLanguageTextByKey("url_halloween");
                            }
                            str4 = "https://fb.me/1651596795087685";
                        } catch (JSONException e) {
                            e.printStackTrace();
                        }
                        f.b().a(11, str, str2, str3, str4);
                    }
                }
            });
            c.b("ly", "shareToFacebook = " + data);
        }
    }

    @JavascriptInterface
    public void registerShareCallback(final String callback) {
        Activity activity;
        if (this.refActivity != null && (activity = this.refActivity.get()) != null) {
            activity.runOnUiThread(new Runnable() { // from class: com.cmplay.webview.interfaces.WebJsInterface.10
                @Override // java.lang.Runnable
                public void run() {
                    if (WebJsInterface.this.mCallBack != null) {
                        WebJsInterface.this.mCallBack.b(callback);
                    }
                }
            });
        }
    }

    @JavascriptInterface
    public void reportLoginBtnPV() {
        Activity activity;
        if (this.refActivity != null && (activity = this.refActivity.get()) != null && !activity.isFinishing()) {
            GameBroadcast.b(activity);
        }
    }

    @JavascriptInterface
    public void reportLoginBtnClick() {
        Activity activity;
        if (this.refActivity != null && (activity = this.refActivity.get()) != null && !activity.isFinishing()) {
            GameBroadcast.a(activity);
        }
    }

    @JavascriptInterface
    public boolean isInstallApp(String appName) {
        return com.cmplay.util.e.b(appName);
    }

    @JavascriptInterface
    public void copyToClipboard(String exchangeCode) {
        if (!TextUtils.isEmpty(exchangeCode)) {
            ((ClipboardManager) GameApp.f1598a.getSystemService("clipboard")).setText(exchangeCode);
        }
    }

    @JavascriptInterface
    public void postFeedbackData(String json) {
        b.a(GameApp.f1598a).b("feed_back_json", json);
        GameBroadcast.c(GameApp.f1598a);
    }

    @JavascriptInterface
    public String getFeedbackDeviceinfo() {
        return b.a(GameApp.f1598a).a("feed_back_device_json", "");
    }

    @JavascriptInterface
    public int getDiamonds() {
        return b.a(GameApp.f1598a).a("diamond_count", 0);
    }

    @JavascriptInterface
    public void closeLoading() {
        final WebViewActivity webViewActivity = (WebViewActivity) this.refActivity.get();
        webViewActivity.runOnUiThread(new Runnable() { // from class: com.cmplay.webview.interfaces.WebJsInterface.11
            @Override // java.lang.Runnable
            public void run() {
                WebViewLayout b2;
                if (webViewActivity != null && (b2 = webViewActivity.b()) != null) {
                    b2.b();
                }
            }
        });
    }

    @JavascriptInterface
    public void webJumpSongPage(int songId, int moneyType, int moneyNum) {
        GameBroadcast.a(GameApp.f1598a, songId, moneyNum, moneyType);
    }

    @JavascriptInterface
    public String isSongUnlock(String songIds, final String callback) {
        Activity activity;
        GameBroadcast.c(GameApp.f1598a, songIds);
        if (this.refActivity != null && (activity = this.refActivity.get()) != null) {
            activity.runOnUiThread(new Runnable() { // from class: com.cmplay.webview.interfaces.WebJsInterface.12
                @Override // java.lang.Runnable
                public void run() {
                    if (WebJsInterface.this.mCallBack != null) {
                        WebJsInterface.this.mCallBack.d(callback);
                    }
                }
            });
            return "";
        }
        return "";
    }

    @JavascriptInterface
    public void unlockSong(String data, final String callback) {
        Activity activity;
        GameBroadcast.b(GameApp.f1598a, data);
        if (this.refActivity != null && (activity = this.refActivity.get()) != null) {
            activity.runOnUiThread(new Runnable() { // from class: com.cmplay.webview.interfaces.WebJsInterface.2
                @Override // java.lang.Runnable
                public void run() {
                    if (WebJsInterface.this.mCallBack != null) {
                        WebJsInterface.this.mCallBack.c(callback);
                    }
                }
            });
        }
    }

    @JavascriptInterface
    public void jumpToSongPage(String songId) {
        if (!TextUtils.isEmpty(songId)) {
            try {
                GameBroadcast.b(GameApp.f1598a, Integer.parseInt(songId));
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    @JavascriptInterface
    public void showToast(final String toast) {
        final Activity activity = this.refActivity.get();
        if (activity != null) {
            activity.runOnUiThread(new Runnable() { // from class: com.cmplay.webview.interfaces.WebJsInterface.3
                @Override // java.lang.Runnable
                public void run() {
                    Toast.makeText(activity, toast, 0).show();
                }
            });
        }
    }

    @JavascriptInterface
    public void initGameSound(String soundData, final String callbackName) {
        String[] strArr;
        String[] strArr2 = null;
        if (!TextUtils.isEmpty(soundData)) {
            try {
                ArrayList arrayList = new ArrayList();
                JSONObject jSONObject = new JSONObject(soundData);
                Iterator<String> keys = jSONObject.keys();
                while (keys.hasNext()) {
                    String next = keys.next();
                    JSONArray optJSONArray = jSONObject.optJSONArray(next);
                    int length = optJSONArray.length();
                    for (int i = 0; i < length; i++) {
                        String optString = optJSONArray.optString(i, "");
                        if (!TextUtils.isEmpty(optString)) {
                            arrayList.add(com.cmplay.webview.c.a.b(next, optString));
                        }
                    }
                }
                if (arrayList.size() <= 0) {
                    strArr = null;
                } else {
                    strArr = (String[]) arrayList.toArray(new String[arrayList.size()]);
                }
                strArr2 = strArr;
            } catch (JSONException e) {
            }
        }
        com.cmplay.webview.c.a.a().a(GameApp.f1598a, strArr2, new a.InterfaceC0055a() { // from class: com.cmplay.webview.interfaces.WebJsInterface.4
            @Override // com.cmplay.webview.c.a.InterfaceC0055a
            public void a(int i2) {
                if (!TextUtils.isEmpty(callbackName) && WebJsInterface.this.mCallBack != null) {
                    WebJsInterface.this.mCallBack.a(callbackName, null);
                }
            }
        });
    }

    @JavascriptInterface
    public boolean playSound(String instrument, String soundName, float volume, int duration) {
        Log.d("mys", "play sound " + instrument + " " + soundName + ", volume = " + volume);
        com.cmplay.webview.c.a a2 = com.cmplay.webview.c.a.a();
        if (a2.a(instrument, soundName)) {
            return a2.a(instrument, soundName, volume, duration);
        }
        return false;
    }

    @JavascriptInterface
    public boolean hasAccelerometerSensor() {
        PackageManager packageManager = GameApp.f1598a.getPackageManager();
        if (packageManager != null) {
            return packageManager.hasSystemFeature("android.hardware.sensor.accelerometer");
        }
        return false;
    }

    @JavascriptInterface
    public String getAccelerometerSensorValues() {
        SensorEvent c;
        if (this.refActivity == null) {
            return "";
        }
        Activity activity = this.refActivity.get();
        if (!(activity instanceof WebViewActivity) || activity.isFinishing() || (c = ((WebViewActivity) activity).c()) == null) {
            return "";
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("x", c.values[0]);
            jSONObject.put("y", c.values[1]);
            jSONObject.put("z", c.values[2]);
            return jSONObject.toString();
        } catch (JSONException e) {
            return "";
        }
    }

    @JavascriptInterface
    public String queryMoney() {
        if (this.refActivity == null) {
            return "";
        }
        Activity activity = this.refActivity.get();
        if (!(activity instanceof WebViewActivity) || activity.isFinishing()) {
            return "";
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("m", b.a(GameApp.f1598a).a("coin_count", 0));
            jSONObject.put("l", b.a(GameApp.f1598a).a("life_count", 0));
            jSONObject.put("d", b.a(GameApp.f1598a).a("diamond_count", 0));
        } catch (JSONException e) {
        }
        Log.e("ymymym", "queryMoney : " + jSONObject.toString());
        return jSONObject.toString();
    }

    @JavascriptInterface
    public void vibrate(String data) {
        if (this.vibrator != null) {
            Log.e("ymymym", "vibrate  " + data);
            String substring = data.substring(1, data.length() - 1);
            Log.e("ymymym", "Number  " + substring);
            String[] split = substring.split(",");
            int length = split.length;
            long[] jArr = new long[length];
            for (int i = 0; i < length; i++) {
                jArr[i] = Long.valueOf(split[i]).longValue();
            }
            this.vibrator.vibrate(jArr, -1);
        }
    }

    @JavascriptInterface
    public boolean hasVibrator() {
        if (this.vibrator != null) {
            return this.vibrator.hasVibrator();
        }
        return false;
    }

    @JavascriptInterface
    public String getBestScore(int mid) {
        if (mid <= 0) {
            return "0";
        }
        Iterator<com.cmplay.util.b.c> it = com.cmplay.util.b.b.b().iterator();
        while (it.hasNext()) {
            com.cmplay.util.b.c next = it.next();
            if (next.f1719b == mid) {
                return String.valueOf(next.c);
            }
        }
        return "0";
    }

    @JavascriptInterface
    public boolean songHasBeenPlayed(int mid) {
        boolean b2 = q.b(mid);
        Log.d("JsInterface", "songHasBeenPlayed = " + b2);
        return b2;
    }

    @JavascriptInterface
    public int getTodayPlayTimes(int mid) {
        int todayPlayTimes = NativeUtil.getTodayPlayTimes(mid);
        Log.d("JsInterface", "getTodayPlayTimes " + mid + " = " + todayPlayTimes);
        return todayPlayTimes;
    }

    @JavascriptInterface
    public void gotoPage(int pageId, String data) {
        GameBroadcast.b(GameApp.f1598a, pageId, data);
    }
}
