package com.mopub.nativesdk.a;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;

/* compiled from: SDKDBHelper.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class d {

    /* renamed from: a, reason: collision with root package name */
    public static boolean f4592a;
    private static d d;
    private static Context h;

    /* renamed from: b, reason: collision with root package name */
    private String f4593b = "SDKDBHelper";
    private e e;
    private static int c = 10708;
    private static SQLiteDatabase f = null;
    private static SQLiteDatabase g = null;

    private d(Context context) {
        h = context;
        this.e = new e(this, h, "arrkii.native.sdk.db", c);
    }

    public static synchronized d a(Context context) {
        d dVar;
        synchronized (d.class) {
            if (d == null) {
                d = new d(context);
            }
            dVar = d;
        }
        return dVar;
    }

    public final synchronized SQLiteDatabase a() {
        SQLiteDatabase sQLiteDatabase;
        if (f != null) {
            sQLiteDatabase = f;
        } else {
            try {
                if (this.e == null) {
                    this.e = new e(this, h, "arrkii.native.sdk.db", c);
                }
                f = this.e.getWritableDatabase();
            } catch (Throwable th) {
                th.printStackTrace();
            }
            sQLiteDatabase = f;
        }
        return sQLiteDatabase;
    }

    public final synchronized SQLiteDatabase b() {
        SQLiteDatabase sQLiteDatabase;
        if (g != null) {
            sQLiteDatabase = g;
        } else {
            try {
                if (this.e == null) {
                    this.e = new e(this, h, "arrkii.native.sdk.db", c);
                }
                g = this.e.getReadableDatabase();
            } catch (Throwable th) {
                th.printStackTrace();
            }
            sQLiteDatabase = g;
        }
        return sQLiteDatabase;
    }
}
