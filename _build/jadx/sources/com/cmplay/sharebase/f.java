package com.cmplay.sharebase;

import android.content.Context;
import android.content.SharedPreferences;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: TokenKeeper.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class f {

    /* compiled from: TokenKeeper.java */
    static final class b {

        /* renamed from: a, reason: collision with root package name */
        static final f f1595a = new f();
    }

    public static f a() {
        return b.f1595a;
    }

    public String a(Context context) {
        return context.getSharedPreferences("user_info_name.xml", 0).getString("user_info_json_content", null);
    }

    public void a(Context context, String str) {
        SharedPreferences.Editor edit = context.getSharedPreferences("user_info_name.xml", 0).edit();
        edit.putString("user_info_json_content", str);
        edit.commit();
    }

    public long b(Context context) {
        return context.getSharedPreferences("user_info_name.xml", 0).getLong("user_info_last_request_time", 0L);
    }

    public void a(Context context, long j) {
        SharedPreferences.Editor edit = context.getSharedPreferences("user_info_name.xml", 0).edit();
        edit.putLong("user_info_last_request_time", j);
        edit.commit();
    }

    public a a(Context context, String str, String str2) {
        a a2 = a(str2);
        if (a2 != null) {
            a2.f = System.currentTimeMillis();
        }
        a(context, str, a2);
        return a2;
    }

    public void a(Context context, String str, a aVar) {
        if (aVar != null) {
            SharedPreferences.Editor edit = context.getSharedPreferences("wechat_token_" + str, 0).edit();
            edit.putString("key_access_token", aVar.f1593a);
            edit.putString("key_refresh_token", aVar.c);
            edit.putLong("key_expires", aVar.f1594b);
            edit.putString("key_open_id", aVar.d);
            edit.putString("key_union_id", aVar.e);
            edit.putLong("key_request_access_token_time", aVar.f);
            edit.commit();
        }
    }

    public void b(Context context, String str) {
        SharedPreferences.Editor edit = context.getSharedPreferences("wechat_token_" + str, 0).edit();
        edit.putLong("key_refresh_token_endtime", (2592000000L + System.currentTimeMillis()) - 5000);
        edit.commit();
    }

    public a c(Context context, String str) {
        SharedPreferences sharedPreferences = context.getSharedPreferences("wechat_token_" + str, 0);
        String string = sharedPreferences.getString("key_access_token", null);
        if (string == null) {
            return null;
        }
        a aVar = new a();
        aVar.f1594b = sharedPreferences.getLong("key_expires", System.currentTimeMillis());
        aVar.f1593a = string;
        aVar.c = sharedPreferences.getString("key_refresh_token", null);
        aVar.d = sharedPreferences.getString("key_open_id", null);
        aVar.e = sharedPreferences.getString("key_union_id", null);
        aVar.f = sharedPreferences.getLong("key_request_access_token_time", System.currentTimeMillis());
        aVar.g = sharedPreferences.getLong("key_refresh_token_endtime", -1L);
        return aVar;
    }

    private a a(String str) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            a aVar = new a();
            aVar.f1593a = jSONObject.optString("access_token", null);
            aVar.f1594b = System.currentTimeMillis() + (jSONObject.optInt("expires_in", 0) * 1000);
            aVar.c = jSONObject.optString("refresh_token", null);
            aVar.d = jSONObject.optString("openid", null);
            aVar.e = jSONObject.optString("unionid", null);
            return aVar;
        } catch (JSONException e) {
            e.printStackTrace();
            return null;
        }
    }

    public void d(Context context, String str) {
        SharedPreferences.Editor edit = context.getSharedPreferences("wechat_token_" + str, 0).edit();
        edit.clear();
        edit.commit();
    }

    /* compiled from: TokenKeeper.java */
    public class a {

        /* renamed from: a, reason: collision with root package name */
        public String f1593a;

        /* renamed from: b, reason: collision with root package name */
        public long f1594b;
        public String c;
        public String d;
        public String e;
        public long f;
        public long g;

        public a() {
        }
    }
}
