package com.mopub.nativesdk;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import com.mopub.nativesdk.core.C0219a;
import com.mopub.nativesdk.d.q;
import java.util.Map;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class SDK {

    /* renamed from: a, reason: collision with root package name */
    private static SDK f4587a;

    /* renamed from: b, reason: collision with root package name */
    private static Context f4588b;
    public static int CLICKED_TYPE_GOOGLE_PLAY = 1;
    public static int CLICKED_TYPE_BROWSER = 2;
    public static int CLICKED_TYPE_DOWNLOAD = 3;

    private SDK() {
    }

    public static void init(Context context, String str, String str2, String str3) {
        f4588b = context;
        C0219a.a(context, str, str2, str3, true, false);
    }

    public static void init(Context context, String str, String str2, String str3, boolean z) {
        f4588b = context;
        C0219a.a(context, str, str2, str3, true, z);
    }

    public static void release() {
        C0219a.a();
    }

    public static SDK getInstance(Context context) {
        if (f4587a == null) {
            f4587a = new SDK();
        }
        if (context == null) {
            Log.w("Arrkii SDK", "Parameter Error: Context Null.");
            return null;
        }
        f4588b = context;
        C0219a.b();
        C0219a.a(f4588b);
        return f4587a;
    }

    public void setGAID(String str) {
        q.a(f4588b, "ak.native.sdk", "GAID", str);
    }

    public void setDevInfo(Map<String, String> map) {
        C0219a.b();
        C0219a.a(map);
    }

    public void loadAd(String str, String str2, String str3, int i, int i2, AdListener adListener) {
        C0219a.b().a(str + "-" + str2, str3, i, i2, adListener);
    }

    public void preLoadAd(String str, String str2, String str3, AdListener adListener) {
        C0219a.b().a(str + "-" + str2, str3, adListener);
    }

    public void showAd(Campaign campaign) {
        if (campaign == null) {
            Log.w("Arrkii SDK", "showAd() called but param campaign is null.");
        } else {
            C0219a.b();
            C0219a.b(campaign);
        }
    }

    public void clickAd(Campaign campaign, boolean z, ClickListener clickListener) {
        if (campaign == null) {
            Log.w("Arrkii SDK", "clickAd() called but param campaign is null.");
        } else {
            C0219a.b().a(campaign, z, clickListener);
        }
    }

    public boolean installed(Campaign campaign) {
        if (campaign == null) {
            Log.w("Arrkii SDK", "install() called but param campaign is null.");
            return false;
        }
        C0219a.b();
        return C0219a.b(campaign.getPackageName());
    }

    public boolean installed(String str) {
        if (TextUtils.isEmpty(str)) {
            Log.w("Arrkii SDK", "install() called but param packageName is empty.");
            return false;
        }
        C0219a.b();
        return C0219a.b(str);
    }

    public void startMarketApp(Campaign campaign, ClickListener clickListener) {
        if (campaign == null) {
            Log.w("Arrkii SDK", "clickAd() called but param campaign is null.");
        } else {
            C0219a.b().c(campaign);
        }
    }
}
