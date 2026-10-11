package com.cmplay.base.util.webview.util;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import com.applovin.sdk.AppLovinEventTypes;
import com.cmplay.base.util.h;
import com.cmplay.base.util.q;
import com.cmplay.base.util.webview.ui.WebViewActivity;
import com.mopub.mobileads.VastExtensionXmlManager;
import com.unity3d.ads.metadata.MediationMetaData;
import java.util.HashMap;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class FeedbackUtil {
    public static final int CN = 1;
    public static final int OU = 2;
    public static final String URL_CN = "https://tuc.ijinshan.com/report";
    public static final String URL_OU = "https://tuc.ksmobile.net/report";

    public static String getFeedbackUrl(int productId) {
        switch (productId) {
            case 1:
                return URL_CN;
            case 2:
                return URL_OU;
            default:
                return URL_OU;
        }
    }

    public static void postFeedback(Context ctx, String json) {
        String str;
        int i;
        JSONException e;
        Context applicationContext = ctx.getApplicationContext();
        if (!TextUtils.isEmpty(json)) {
            int i2 = WebViewActivity.mFeedbackAppId;
            String str2 = "";
            try {
                JSONObject jSONObject = new JSONObject(json);
                str = jSONObject.optString("contact", "");
                try {
                    i = jSONObject.optInt("feedback_id", WebViewActivity.mFeedbackAppId);
                } catch (JSONException e2) {
                    i = i2;
                    e = e2;
                }
                try {
                    str2 = jSONObject.optString("feedback_msg", "");
                } catch (JSONException e3) {
                    e = e3;
                    e.printStackTrace();
                    HashMap<String, String> hashMap = new HashMap<>();
                    hashMap.put("app_id", String.valueOf(i));
                    hashMap.put("chanel", "0");
                    hashMap.put(VastExtensionXmlManager.TYPE, "feedback");
                    hashMap.put("model", Build.MODEL);
                    hashMap.put("sysversion", String.valueOf(Build.VERSION.SDK_INT));
                    hashMap.put("uuid", q.c(applicationContext));
                    hashMap.put(MediationMetaData.KEY_VERSION, h.a(applicationContext));
                    hashMap.put("contact", str);
                    hashMap.put("syslang", h.c(applicationContext));
                    hashMap.put(AppLovinEventTypes.USER_VIEWED_CONTENT, str2 + "\n 包名：" + applicationContext.getPackageName());
                    NetworkUtil.getInstance().post(getFeedbackUrl(WebViewActivity.mFeedbackProductId), hashMap);
                }
            } catch (JSONException e4) {
                str = "";
                i = i2;
                e = e4;
            }
            HashMap<String, String> hashMap2 = new HashMap<>();
            hashMap2.put("app_id", String.valueOf(i));
            hashMap2.put("chanel", "0");
            hashMap2.put(VastExtensionXmlManager.TYPE, "feedback");
            hashMap2.put("model", Build.MODEL);
            hashMap2.put("sysversion", String.valueOf(Build.VERSION.SDK_INT));
            hashMap2.put("uuid", q.c(applicationContext));
            hashMap2.put(MediationMetaData.KEY_VERSION, h.a(applicationContext));
            hashMap2.put("contact", str);
            hashMap2.put("syslang", h.c(applicationContext));
            hashMap2.put(AppLovinEventTypes.USER_VIEWED_CONTENT, str2 + "\n 包名：" + applicationContext.getPackageName());
            NetworkUtil.getInstance().post(getFeedbackUrl(WebViewActivity.mFeedbackProductId), hashMap2);
        }
    }
}
