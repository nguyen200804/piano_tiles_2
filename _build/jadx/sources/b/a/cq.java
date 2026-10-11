package b.a;

import android.content.Context;
import java.util.HashMap;
import java.util.Map;

/* compiled from: EventTracker.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class cq {

    /* renamed from: a, reason: collision with root package name */
    private final int f144a = 128;

    /* renamed from: b, reason: collision with root package name */
    private final int f145b = 256;
    private co c;
    private Context d;
    private cn e;

    public cq(Context context) {
        if (context == null) {
            throw new RuntimeException("Context is null, can't track event");
        }
        this.d = context.getApplicationContext();
        this.c = new co(this.d);
        this.c.a(!com.b.a.a.j);
        this.e = cn.a(this.d);
    }

    public void a(String str, Map<String, Object> map, long j) {
        try {
            if (a(str) && a(map)) {
                this.e.a(new f(str, map, j, -1));
            }
        } catch (Exception e) {
            ap.b("MobclickAgent", "Exception occurred in Mobclick.onEvent(). ", e);
        }
    }

    public void a(String str, String str2, long j, int i) {
        if (a(str) && b(str2)) {
            HashMap hashMap = new HashMap();
            if (str2 == null) {
                str2 = "";
            }
            hashMap.put(str, str2);
            this.e.a(new f(str, hashMap, j, i));
        }
    }

    public void a(String str, Map<String, Object> map) {
        try {
            if (a(str)) {
                this.e.a(new h(str, map));
            }
        } catch (Exception e) {
            ap.b("MobclickAgent", "Exception occurred in Mobclick.onEvent(). ", e);
        }
    }

    private boolean a(String str) {
        int length;
        if (str != null && (length = str.trim().getBytes().length) > 0 && length <= 128) {
            return true;
        }
        ap.b("MobclickAgent", "Event id is empty or too long in tracking Event");
        return false;
    }

    private boolean b(String str) {
        if (str == null || str.trim().getBytes().length <= 256) {
            return true;
        }
        ap.b("MobclickAgent", "Event label or value is empty or too long in tracking Event");
        return false;
    }

    private boolean a(Map<String, Object> map) {
        if (map == null || map.isEmpty()) {
            ap.b("MobclickAgent", "map is null or empty in onEvent");
            return false;
        }
        for (Map.Entry<String, Object> entry : map.entrySet()) {
            if (a(entry.getKey()) && entry.getValue() != null) {
                if ((entry.getValue() instanceof String) && !b(entry.getValue().toString())) {
                    return false;
                }
            }
            return false;
        }
        return true;
    }
}
