package com.facebook.ads.internal.e;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.SQLException;
import android.support.annotation.WorkerThread;
import android.text.TextUtils;
import com.mopub.common.Constants;
import java.util.UUID;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class h extends g {

    /* renamed from: a, reason: collision with root package name */
    public static final b f2697a = new b(0, "token_id", "TEXT PRIMARY KEY");

    /* renamed from: b, reason: collision with root package name */
    public static final b f2698b = new b(1, "token", "TEXT");
    public static final b[] c = {f2697a, f2698b};
    private static final String d = h.class.getSimpleName();
    private static final String e = a("tokens", c);
    private static final String f = a("tokens", c, f2698b);
    private static final String g = "DELETE FROM tokens WHERE NOT EXISTS (SELECT 1 FROM events WHERE tokens." + f2697a.f2683b + " = " + Constants.VIDEO_TRACKING_EVENTS_KEY + "." + c.f2685b.f2683b + ")";

    public h(d dVar) {
        super(dVar);
    }

    @Override // com.facebook.ads.internal.e.g
    public String a() {
        return "tokens";
    }

    @WorkerThread
    String a(String str) {
        Cursor cursor;
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("Invalid token.");
        }
        try {
            cursor = f().rawQuery(f, new String[]{str});
        } catch (Throwable th) {
            th = th;
            cursor = null;
        }
        try {
            String string = cursor.moveToNext() ? cursor.getString(f2697a.f2682a) : null;
            if (TextUtils.isEmpty(string)) {
                string = UUID.randomUUID().toString();
                ContentValues contentValues = new ContentValues(2);
                contentValues.put(f2697a.f2683b, string);
                contentValues.put(f2698b.f2683b, str);
                f().insertOrThrow("tokens", null, contentValues);
                if (cursor != null) {
                    cursor.close();
                }
            } else if (cursor != null) {
                cursor.close();
            }
            return string;
        } catch (Throwable th2) {
            th = th2;
            if (cursor != null) {
                cursor.close();
            }
            throw th;
        }
    }

    @Override // com.facebook.ads.internal.e.g
    public b[] b() {
        return c;
    }

    @WorkerThread
    Cursor c() {
        return f().rawQuery(e, null);
    }

    @WorkerThread
    public void d() {
        try {
            f().execSQL(g);
        } catch (SQLException e2) {
        }
    }
}
