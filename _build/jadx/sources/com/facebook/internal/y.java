package com.facebook.internal;

import android.os.Bundle;
import com.unity3d.ads.metadata.MediationMetaData;
import java.util.Collection;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: ServerProtocol.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class y {
    private static final String c = y.class.getName();

    /* renamed from: a, reason: collision with root package name */
    public static final Collection<String> f3266a = aa.a("service_disabled", "AndroidAuthKillSwitchException");

    /* renamed from: b, reason: collision with root package name */
    public static final Collection<String> f3267b = aa.a("access_denied", "OAuthAccessDeniedException");

    public static final String a() {
        return String.format("m.%s", com.facebook.l.e());
    }

    public static final String b() {
        return String.format("https://graph.%s", com.facebook.l.e());
    }

    public static final String c() {
        return String.format("https://graph-video.%s", com.facebook.l.e());
    }

    public static final String d() {
        return "v2.5";
    }

    public static Bundle a(String str, int i, Bundle bundle) {
        JSONObject a2;
        JSONObject a3;
        String d = com.facebook.l.d(com.facebook.l.f());
        if (aa.a(d)) {
            return null;
        }
        Bundle bundle2 = new Bundle();
        bundle2.putString("android_key_hash", d);
        bundle2.putString("app_id", com.facebook.l.i());
        bundle2.putInt(MediationMetaData.KEY_VERSION, i);
        bundle2.putString("display", "touch");
        Bundle bundle3 = new Bundle();
        bundle3.putString("action_id", str);
        if (bundle == null) {
            bundle = new Bundle();
        }
        try {
            a2 = d.a(bundle3);
            a3 = d.a(bundle);
        } catch (JSONException e) {
            s.a(com.facebook.u.DEVELOPER_ERRORS, 6, c, "Error creating Url -- " + e);
            bundle2 = null;
        }
        if (a2 == null || a3 == null) {
            return null;
        }
        bundle2.putString("bridge_args", a2.toString());
        bundle2.putString("method_args", a3.toString());
        return bundle2;
    }
}
