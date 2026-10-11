package com.mopub.nativesdk.a;

import android.content.ContentValues;
import android.database.Cursor;
import com.mopub.nativesdk.core.x;
import java.util.ArrayList;
import java.util.List;

/* compiled from: RRDao.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class b extends a {

    /* renamed from: b, reason: collision with root package name */
    private static b f4591b;

    private b(d dVar) {
        super(dVar);
    }

    public static b a(d dVar) {
        if (f4591b == null) {
            f4591b = new b(dVar);
        }
        return f4591b;
    }

    public final synchronized x a(String str) {
        Cursor cursor;
        Throwable th;
        x xVar = null;
        synchronized (this) {
            try {
                cursor = this.f4589a.rawQuery("SELECT * FROM rushrefer WHERE packagename = '" + str + "'", null);
                try {
                    if (cursor.moveToNext()) {
                        xVar = a(cursor);
                        if (cursor != null) {
                            cursor.close();
                        }
                    } else {
                        cursor.close();
                        if (cursor != null) {
                            cursor.close();
                        }
                    }
                } catch (Exception e) {
                    if (cursor != null) {
                        cursor.close();
                    }
                    return xVar;
                } catch (Throwable th2) {
                    th = th2;
                    if (cursor != null) {
                        cursor.close();
                    }
                    throw th;
                }
            } catch (Exception e2) {
                cursor = null;
            } catch (Throwable th3) {
                cursor = null;
                th = th3;
            }
        }
        return xVar;
    }

    public final synchronized List<x> a() {
        ArrayList arrayList;
        Cursor cursor;
        Throwable th;
        Cursor cursor2 = null;
        synchronized (this) {
            arrayList = new ArrayList();
            try {
                try {
                    Cursor rawQuery = this.f4589a.rawQuery("SELECT * FROM rushrefer", null);
                    while (rawQuery.moveToNext()) {
                        try {
                            arrayList.add(a(rawQuery));
                        } catch (Throwable th2) {
                            cursor = rawQuery;
                            th = th2;
                            if (cursor == null) {
                                throw th;
                            }
                            cursor.close();
                            throw th;
                        }
                    }
                    rawQuery.close();
                    if (rawQuery != null) {
                        rawQuery.close();
                    }
                } catch (Throwable th3) {
                    cursor = null;
                    th = th3;
                }
            } catch (Exception e) {
                if (0 != 0) {
                    cursor2.close();
                }
            }
        }
        return arrayList;
    }

    public final synchronized void b(String str) {
        try {
            this.f4589a.delete("rushrefer", "packagename='" + str + "'", null);
        } catch (Exception e) {
        }
    }

    public final synchronized String a(x xVar) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("packagename", xVar.a());
        contentValues.put("refer", xVar.b());
        contentValues.put("starttime", Long.valueOf(xVar.c()));
        contentValues.put("campaignid", Long.valueOf(xVar.d()));
        if (c(xVar.a())) {
            this.f4589a.update("rushrefer", contentValues, "packagename = '" + xVar.a() + "'", null);
        } else {
            this.f4589a.insert("rushrefer", null, contentValues);
        }
        return xVar.a();
    }

    private synchronized boolean c(String str) {
        Cursor cursor = null;
        boolean z = false;
        synchronized (this) {
            try {
                cursor = this.f4589a.rawQuery("SELECT packagename FROM rushrefer WHERE packagename='" + str + "'", null);
                if (cursor.getCount() > 0) {
                    cursor.close();
                    if (cursor != null) {
                        cursor.close();
                    }
                    z = true;
                } else {
                    cursor.close();
                    if (cursor != null) {
                        cursor.close();
                    }
                }
            } catch (Exception e) {
                if (cursor != null) {
                    cursor.close();
                }
            } catch (Throwable th) {
                if (cursor != null) {
                    cursor.close();
                }
                throw th;
            }
        }
        return z;
    }

    private synchronized x a(Cursor cursor) {
        x xVar;
        xVar = new x();
        xVar.a(cursor.getString(cursor.getColumnIndex("packagename")));
        xVar.b(cursor.getString(cursor.getColumnIndex("refer")));
        xVar.a(cursor.getLong(cursor.getColumnIndex("starttime")));
        xVar.b(cursor.getLong(cursor.getColumnIndex("campaignid")));
        return xVar;
    }
}
