package com.cmcm.dmc.sdk.a;

import android.content.SharedPreferences;
import android.os.Build;
import java.util.HashMap;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class k {

    /* renamed from: a, reason: collision with root package name */
    private static HashMap<String, k> f680a = new HashMap<>();

    /* renamed from: b, reason: collision with root package name */
    private static HashMap<String, Object> f681b = new HashMap<>();
    private SharedPreferences c;

    static {
        f681b.put("report_timestamp", 0L);
        f681b.put("config_version", null);
        f681b.put("config_verion_timestamp", 0L);
        f681b.put("config_update_timestamp", 0L);
        f681b.put("receiver_priority_version", -1);
        f681b.put("report_heartbeat", 0L);
        f681b.put("report_heartbeat_day", "");
        f681b.put("report_sequence", 0);
        f681b.put("config_music_last_added_time", 0L);
        f681b.put("config_photo_last_added_time", 0L);
        f681b.put("last_app_install_list_time", 0L);
    }

    private k(String str) {
        this.c = c.a(str);
    }

    public static k a() {
        return a("default");
    }

    public static synchronized k a(String str) {
        k kVar;
        synchronized (k.class) {
            kVar = f680a.get(str);
            if (kVar == null) {
                kVar = new k(str);
                f680a.put(str, kVar);
            }
        }
        return kVar;
    }

    public static void a(SharedPreferences.Editor editor) {
        if (editor != null) {
            if (Build.VERSION.SDK_INT >= 9) {
                editor.apply();
            } else {
                editor.commit();
            }
        }
    }

    public int b(String str) {
        Integer num = (Integer) f681b.get(str);
        return this.c.getInt(str, num == null ? 0 : num.intValue());
    }

    public SharedPreferences b() {
        return this.c;
    }

    public long c(String str) {
        Long l = (Long) f681b.get(str);
        return this.c.getLong(str, l == null ? 0L : l.longValue());
    }

    public SharedPreferences.Editor c() {
        return this.c.edit();
    }

    public String d(String str) {
        return this.c.getString(str, (String) f681b.get(str));
    }
}
