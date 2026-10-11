package com.facebook.login;

import android.content.Intent;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Base64;
import android.util.Log;
import com.facebook.AccessToken;
import com.facebook.i;
import com.facebook.internal.aa;
import com.facebook.login.LoginClient;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
abstract class LoginMethodHandler implements Parcelable {

    /* renamed from: a, reason: collision with root package name */
    Map<String, String> f3309a;

    /* renamed from: b, reason: collision with root package name */
    protected LoginClient f3310b;

    abstract boolean a(LoginClient.Request request);

    abstract String c();

    LoginMethodHandler(LoginClient loginClient) {
        this.f3310b = loginClient;
    }

    LoginMethodHandler(Parcel source) {
        this.f3309a = aa.a(source);
    }

    void a(LoginClient loginClient) {
        if (this.f3310b != null) {
            throw new i("Can't set LoginClient if it is already set.");
        }
        this.f3310b = loginClient;
    }

    boolean a(int i, int i2, Intent intent) {
        return false;
    }

    boolean d() {
        return false;
    }

    void a() {
    }

    protected String a(String str) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("0_auth_logger_id", str);
            jSONObject.put("3_method", c());
        } catch (JSONException e) {
            Log.w("LoginMethodHandler", "Error creating client state json: " + e.getMessage());
        }
        return jSONObject.toString();
    }

    protected void a(String str, Object obj) {
        if (this.f3309a == null) {
            this.f3309a = new HashMap();
        }
        this.f3309a.put(str, obj == null ? null : obj.toString());
    }

    protected void b(String str) {
        String d = this.f3310b.c().d();
        com.facebook.appevents.a c = com.facebook.appevents.a.c(this.f3310b.b(), d);
        Bundle bundle = new Bundle();
        bundle.putString("fb_web_login_e2e", str);
        bundle.putLong("fb_web_login_switchback_time", System.currentTimeMillis());
        bundle.putString("app_id", d);
        c.a("fb_dialogs_web_login_dialog_complete", (Double) null, bundle);
    }

    static AccessToken a(Bundle bundle, com.facebook.c cVar, String str) {
        Date a2 = aa.a(bundle, "com.facebook.platform.extra.EXPIRES_SECONDS_SINCE_EPOCH", new Date(0L));
        ArrayList<String> stringArrayList = bundle.getStringArrayList("com.facebook.platform.extra.PERMISSIONS");
        String string = bundle.getString("com.facebook.platform.extra.ACCESS_TOKEN");
        if (aa.a(string)) {
            return null;
        }
        return new AccessToken(string, str, bundle.getString("com.facebook.platform.extra.USER_ID"), stringArrayList, null, cVar, a2, new Date());
    }

    public static AccessToken a(Collection<String> collection, Bundle bundle, com.facebook.c cVar, String str) throws i {
        Date a2 = aa.a(bundle, "expires_in", new Date());
        String string = bundle.getString("access_token");
        String string2 = bundle.getString("granted_scopes");
        Collection<String> arrayList = !aa.a(string2) ? new ArrayList<>(Arrays.asList(string2.split(","))) : collection;
        String string3 = bundle.getString("denied_scopes");
        ArrayList arrayList2 = !aa.a(string3) ? new ArrayList(Arrays.asList(string3.split(","))) : null;
        if (aa.a(string)) {
            return null;
        }
        return new AccessToken(string, str, c(bundle.getString("signed_request")), arrayList, arrayList2, cVar, a2, new Date());
    }

    private static String c(String str) throws i {
        if (str == null || str.isEmpty()) {
            throw new i("Authorization response does not contain the signed_request");
        }
        try {
            String[] split = str.split("\\.");
            if (split.length == 2) {
                return new JSONObject(new String(Base64.decode(split[1], 0), "UTF-8")).getString("user_id");
            }
        } catch (UnsupportedEncodingException e) {
        } catch (JSONException e2) {
        }
        throw new i("Failed to retrieve user_id from signed_request");
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        aa.a(dest, this.f3309a);
    }
}
