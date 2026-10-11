package com.facebook.ads.internal;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import android.support.annotation.Nullable;
import java.util.Iterator;
import org.json.JSONObject;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class j {

    /* renamed from: a, reason: collision with root package name */
    private static j f2800a;

    /* renamed from: b, reason: collision with root package name */
    private final SharedPreferences f2801b;

    public j(Context context) {
        this.f2801b = context.getApplicationContext().getSharedPreferences("com.facebook.ads.FEATURE_CONFIG", 0);
    }

    public static boolean a(Context context) {
        return Build.VERSION.SDK_INT >= 14 && com.facebook.ads.internal.util.g.a("com.google.android.exoplayer2", "ExoPlayer") && r(context).a("adnw_enable_exoplayer", false);
    }

    public static boolean b(Context context) {
        return Build.VERSION.SDK_INT >= 18 && r(context).a("adnw_enable_debug_overlay", false);
    }

    public static boolean c(Context context) {
        return r(context).a("adnw_block_lockscreen", false);
    }

    public static boolean d(Context context) {
        return r(context).a("show_metadata_rewarded_video", false);
    }

    public static boolean e(Context context) {
        return Build.VERSION.SDK_INT >= 19 && r(context).a("adnw_enable_iab", false);
    }

    public static boolean f(Context context) {
        return r(context).a("adnw_debug_logging", false);
    }

    public static long g(Context context) {
        return r(context).a("unified_logging_immediate_delay_ms", 500L);
    }

    public static long h(Context context) {
        return r(context).a("unified_logging_dispatch_interval_seconds", 300) * 1000;
    }

    public static int i(Context context) {
        return r(context).a("unified_logging_event_limit", -1);
    }

    public static boolean j(Context context) {
        return r(context).a("video_and_endcard_autorotate", "autorotate_disabled").equals("autorotate_enabled");
    }

    public static boolean k(Context context) {
        return r(context).a("show_play_pause_rewarded_video", false);
    }

    public static int l(Context context) {
        return r(context).a("minimum_elapsed_time_after_impression", -1);
    }

    public static boolean m(Context context) {
        return r(context).a("visible_area_check_enabled", false);
    }

    public static int n(Context context) {
        return r(context).a("visible_area_percentage", 50);
    }

    public static boolean o(Context context) {
        return r(context).a("adnw_enable_app_store_interstitial_no_cta", false);
    }

    public static boolean p(Context context) {
        return r(context).a("adnw_enable_interstitial_cache", false);
    }

    public static boolean q(Context context) {
        return r(context).a("adnw_measurement_method", false);
    }

    private static j r(Context context) {
        if (f2800a == null) {
            synchronized (j.class) {
                if (f2800a == null) {
                    f2800a = new j(context);
                }
            }
        }
        return f2800a;
    }

    public int a(String str, int i) {
        String string = this.f2801b.getString(str, String.valueOf(i));
        return (string == null || string.equals("null")) ? i : Integer.valueOf(string).intValue();
    }

    public long a(String str, long j) {
        String string = this.f2801b.getString(str, String.valueOf(j));
        return (string == null || string.equals("null")) ? j : Long.valueOf(string).longValue();
    }

    @Nullable
    public String a(String str, String str2) {
        String string = this.f2801b.getString(str, str2);
        return (string == null || string.equals("null")) ? str2 : string;
    }

    public void a(@Nullable String str) {
        if (str == null || str.isEmpty() || str.equals("[]")) {
            return;
        }
        SharedPreferences.Editor edit = this.f2801b.edit();
        JSONObject jSONObject = new JSONObject(str);
        Iterator<String> keys = jSONObject.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            edit.putString(next, jSONObject.getString(next));
        }
        edit.commit();
    }

    public boolean a(String str, boolean z) {
        String string = this.f2801b.getString(str, String.valueOf(z));
        return (string == null || string.equals("null")) ? z : Boolean.valueOf(string).booleanValue();
    }
}
