package com.facebook.ads.internal.e;

import android.content.ContentValues;
import android.database.Cursor;
import android.support.annotation.WorkerThread;
import com.mopub.common.Constants;
import com.mopub.mobileads.VastExtensionXmlManager;
import java.util.Map;
import java.util.UUID;
import org.json.JSONObject;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class c extends g {

    /* renamed from: a, reason: collision with root package name */
    public static final b f2684a = new b(0, "event_id", "TEXT PRIMARY KEY");

    /* renamed from: b, reason: collision with root package name */
    public static final b f2685b = new b(1, "token_id", "TEXT REFERENCES tokens ON UPDATE CASCADE ON DELETE RESTRICT");
    public static final b c = new b(2, "priority", "INTEGER");
    public static final b d = new b(3, VastExtensionXmlManager.TYPE, "TEXT");
    public static final b e = new b(4, "time", "REAL");
    public static final b f = new b(5, "session_time", "REAL");
    public static final b g = new b(6, "session_id", "TEXT");
    public static final b h = new b(7, "data", "TEXT");
    public static final b[] i = {f2684a, f2685b, c, d, e, f, g, h};
    private static final String k = a(Constants.VIDEO_TRACKING_EVENTS_KEY, i);

    public c(d dVar) {
        super(dVar);
    }

    @Override // com.facebook.ads.internal.e.g
    public String a() {
        return Constants.VIDEO_TRACKING_EVENTS_KEY;
    }

    @WorkerThread
    String a(String str, int i2, String str2, double d2, double d3, String str3, Map<String, String> map) {
        String uuid = UUID.randomUUID().toString();
        ContentValues contentValues = new ContentValues(7);
        contentValues.put(f2684a.f2683b, uuid);
        contentValues.put(f2685b.f2683b, str);
        contentValues.put(c.f2683b, Integer.valueOf(i2));
        contentValues.put(d.f2683b, str2);
        contentValues.put(e.f2683b, Double.valueOf(d2));
        contentValues.put(f.f2683b, Double.valueOf(d3));
        contentValues.put(g.f2683b, str3);
        contentValues.put(h.f2683b, map != null ? new JSONObject(map).toString() : null);
        f().insertOrThrow(Constants.VIDEO_TRACKING_EVENTS_KEY, null, contentValues);
        return uuid;
    }

    boolean a(String str) {
        return f().delete(Constants.VIDEO_TRACKING_EVENTS_KEY, new StringBuilder().append(f2684a.f2683b).append(" = ?").toString(), new String[]{str}) > 0;
    }

    @Override // com.facebook.ads.internal.e.g
    public b[] b() {
        return i;
    }

    @WorkerThread
    Cursor c() {
        return f().rawQuery("SELECT count(*) FROM events", null);
    }

    @WorkerThread
    Cursor d() {
        return f().rawQuery(k, null);
    }
}
