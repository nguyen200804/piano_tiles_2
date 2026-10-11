package com.cmplay.base.util.webview.ui;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.ClipboardManager;
import android.text.TextUtils;
import android.webkit.JavascriptInterface;
import android.widget.Toast;
import com.cmplay.base.util.d;
import com.cmplay.base.util.g;
import com.cmplay.base.util.h;
import com.cmplay.base.util.k;
import com.cmplay.base.util.m;
import com.cmplay.base.util.n;
import com.cmplay.base.util.webview.broadcast.GameBroadcast;
import com.cmplay.base.util.webview.callback.JsActivityCallBack;
import com.cmplay.base.util.webview.encode.UrlEncoder;
import com.cmplay.base.util.webview.util.WebUtils;
import java.lang.ref.WeakReference;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class WebJsInterface {
    public static final String API_VERSION = "api_version";
    public static final String APP_VERSION = "app_version";
    public static final String DEVICE_ID = "did";
    public static final String DEVICE_TYPE = "device_type";
    public static final String IMEI = "imei";
    private JsActivityCallBack mCallBack;
    private Context mContext;
    private WeakReference<Activity> refActivity;

    public WebJsInterface(Activity activity) {
        this(activity, null);
    }

    public WebJsInterface(Activity activity, JsActivityCallBack callBack) {
        if (this.refActivity == null) {
            this.refActivity = new WeakReference<>(activity);
        }
        this.mContext = activity.getApplicationContext();
        this.mCallBack = callBack;
    }

    @JavascriptInterface
    public void registerLoginCallback(final String callback) {
        Activity activity;
        if (this.refActivity != null && (activity = this.refActivity.get()) != null) {
            activity.runOnUiThread(new Runnable() { // from class: com.cmplay.base.util.webview.ui.WebJsInterface.1
                @Override // java.lang.Runnable
                public void run() {
                    if (WebJsInterface.this.mCallBack != null) {
                        WebJsInterface.this.mCallBack.loginCallBack(callback);
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
        return WebUtils.getDeviceInfo(this.mContext);
    }

    @JavascriptInterface
    public String get_device_info() {
        Context context = this.mContext;
        JSONObject jSONObject = new JSONObject();
        String valueOf = String.valueOf(h.b(context));
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
        return n.a(this.mContext, packageName);
    }

    @JavascriptInterface
    public void go2Google(String url) {
        Activity activity = this.refActivity.get();
        String url2 = url.trim();
        if (activity != null) {
            k.c(this.mContext, url2);
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
        d.a(new Runnable() { // from class: com.cmplay.base.util.webview.ui.WebJsInterface.2
            @Override // java.lang.Runnable
            public void run() {
                if (((Activity) WebJsInterface.this.refActivity.get()) != null && !TextUtils.isEmpty(packageName)) {
                    n.d(WebJsInterface.this.mContext, packageName);
                }
            }
        });
    }

    @JavascriptInterface
    public boolean isWifiAvailable() {
        return m.e(this.mContext);
    }

    @JavascriptInterface
    public boolean isClickLike(int msgId) {
        return false;
    }

    @JavascriptInterface
    public void hideWaitingView() {
        Activity activity = this.refActivity.get();
        if (activity != null) {
            activity.runOnUiThread(new Runnable() { // from class: com.cmplay.base.util.webview.ui.WebJsInterface.3
                @Override // java.lang.Runnable
                public void run() {
                    if (WebJsInterface.this.mCallBack != null) {
                        WebJsInterface.this.mCallBack.showWebView();
                    }
                }
            });
        }
    }

    @JavascriptInterface
    public int isNewUser() {
        return 2;
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
            return UrlEncoder.getSign(activity, url);
        }
        return "";
    }

    @JavascriptInterface
    public void saveGameLicenseFile(String gamePkg) {
        WebUtils.createGameLicenseFile(this.mContext, gamePkg);
    }

    @JavascriptInterface
    public String getActDeviceInfo() {
        return WebUtils.createActDeviceInfo(this.mContext);
    }

    @JavascriptInterface
    public String getActSign(String url) {
        Activity activity = this.refActivity.get();
        return activity != null ? UrlEncoder.getSign(activity, url) : "";
    }

    @JavascriptInterface
    public void closeWebView() {
        if (this.refActivity != null) {
            Activity activity = this.refActivity.get();
            if (activity != null && !activity.isFinishing()) {
                activity.finish();
            }
            g.c("ly", "webjs closeWebView");
        }
    }

    @JavascriptInterface
    public void shareToFacebook(String data) {
    }

    @JavascriptInterface
    public void registerShareCallback(final String callback) {
        Activity activity;
        if (this.refActivity != null && (activity = this.refActivity.get()) != null) {
            activity.runOnUiThread(new Runnable() { // from class: com.cmplay.base.util.webview.ui.WebJsInterface.4
                @Override // java.lang.Runnable
                public void run() {
                    if (WebJsInterface.this.mCallBack != null) {
                        WebJsInterface.this.mCallBack.shareCallBack(callback);
                    }
                }
            });
        }
    }

    @JavascriptInterface
    public void reportLoginBtnPV() {
    }

    @JavascriptInterface
    public void reportLoginBtnClick() {
    }

    @JavascriptInterface
    public boolean isInstallApp(String appName) {
        return n.a(this.mContext, appName);
    }

    @JavascriptInterface
    public void copyToClipboard(String exchangeCode) {
        if (!TextUtils.isEmpty(exchangeCode)) {
            ((ClipboardManager) this.mContext.getSystemService("clipboard")).setText(exchangeCode);
        }
    }

    @JavascriptInterface
    public void postFeedbackData(String json) {
        WebViewActivity webViewActivity = (WebViewActivity) this.refActivity.get();
        if (webViewActivity != null) {
            g.c("WebJsInterface", "postFeedbackData = " + json);
            GameBroadcast.PostFeedbackData(webViewActivity, json);
        }
    }

    @JavascriptInterface
    public String getFeedbackDeviceinfo() {
        return WebUtils.getFeedbackDeviceinfo(this.mContext);
    }

    @JavascriptInterface
    public void closeLoading() {
        final WebViewActivity webViewActivity = (WebViewActivity) this.refActivity.get();
        webViewActivity.runOnUiThread(new Runnable() { // from class: com.cmplay.base.util.webview.ui.WebJsInterface.5
            @Override // java.lang.Runnable
            public void run() {
                WebViewLayout layout;
                if (webViewActivity != null && (layout = webViewActivity.getLayout()) != null) {
                    layout.hideLoadingView();
                }
            }
        });
    }

    @JavascriptInterface
    public void showToast(final String toast) {
        final Activity activity = this.refActivity.get();
        if (activity != null) {
            activity.runOnUiThread(new Runnable() { // from class: com.cmplay.base.util.webview.ui.WebJsInterface.6
                @Override // java.lang.Runnable
                public void run() {
                    Toast.makeText(activity, toast, 0).show();
                }
            });
        }
    }

    @JavascriptInterface
    public void openFacebook(String url) {
        k.a(this.mContext, url);
    }

    @JavascriptInterface
    public void jumpToLevel(int index) {
        g.c("WebJsInterface", "jumpToLevel = " + index);
        Activity activity = this.refActivity.get();
        if (activity != null) {
            GameBroadcast.jumpToLevel(activity, index);
        }
    }

    @JavascriptInterface
    public void sendPrize(int sence, int id, int count) {
        g.c("WebJsInterface", "sence = " + sence + "sendPrize id= " + id + " count = " + count);
        Activity activity = this.refActivity.get();
        if (activity != null) {
            GameBroadcast.sendPrize(activity, sence, id, count);
        }
    }

    @JavascriptInterface
    public void JumpToYoutube(String url) {
        Activity activity = this.refActivity.get();
        if (activity != null) {
            activity.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(url)));
        }
    }

    @JavascriptInterface
    public void registerStatusCallback(final String backgroundCallback) {
        Activity activity;
        g.a("playable", "WebJsInterface.registerCloseCallback   js返回的回调应用为:" + backgroundCallback);
        if (this.refActivity != null && (activity = this.refActivity.get()) != null) {
            activity.runOnUiThread(new Runnable() { // from class: com.cmplay.base.util.webview.ui.WebJsInterface.7
                @Override // java.lang.Runnable
                public void run() {
                    if (WebJsInterface.this.mCallBack != null) {
                        WebJsInterface.this.mCallBack.playAbleCallBack(backgroundCallback);
                    }
                }
            });
        }
    }
}
