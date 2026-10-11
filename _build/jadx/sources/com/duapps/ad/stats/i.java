package com.duapps.ad.stats;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import com.duapps.ad.base.m;
import com.mopub.mobileads.VastExtensionXmlManager;

/* compiled from: ToolboxCacheManager.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class i {

    /* renamed from: b, reason: collision with root package name */
    private static i f2273b;

    /* renamed from: a, reason: collision with root package name */
    private Context f2274a;

    public static synchronized i a(Context context) {
        i iVar;
        synchronized (i.class) {
            if (f2273b == null) {
                f2273b = new i(context.getApplicationContext());
            }
            iVar = f2273b;
        }
        return iVar;
    }

    private i(Context context) {
        this.f2274a = context;
    }

    public void a(com.duapps.ad.base.j jVar) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("_url", jVar.f2043a);
        contentValues.put("pkg", jVar.f2044b);
        contentValues.put("p_url", jVar.d);
        contentValues.put(VastExtensionXmlManager.TYPE, Integer.valueOf(jVar.c));
        contentValues.put("ts", Long.valueOf(jVar.e));
        try {
            if (this.f2274a.getContentResolver().update(DuAdCacheProvider.a(this.f2274a, 1), contentValues, "_url = ?", new String[]{jVar.f2043a}) < 1) {
                this.f2274a.getContentResolver().insert(DuAdCacheProvider.a(this.f2274a, 1), contentValues);
            }
            b();
        } catch (Exception e) {
            com.duapps.ad.base.h.b("ToolboxCacheMgr", "saveParseResult() exception: ", e);
        }
    }

    public com.duapps.ad.base.j a(String str) {
        Cursor cursor;
        com.duapps.ad.base.j jVar = new com.duapps.ad.base.j();
        jVar.f2043a = str;
        jVar.c = 0;
        try {
            cursor = this.f2274a.getContentResolver().query(DuAdCacheProvider.a(this.f2274a, 1), new String[]{"_url", "pkg", "p_url", VastExtensionXmlManager.TYPE}, "_url=? AND ts >?", new String[]{str, String.valueOf(System.currentTimeMillis() - 86400000)}, "ts DESC");
            if (cursor != null) {
                try {
                    try {
                        if (cursor.moveToFirst()) {
                            jVar.f2043a = cursor.getString(0);
                            jVar.f2044b = cursor.getString(1);
                            jVar.d = cursor.getString(2);
                            jVar.c = cursor.getInt(3);
                        }
                    } catch (Exception e) {
                        e = e;
                        com.duapps.ad.base.h.b("ToolboxCacheMgr", "getParseResult() Exception: ", e);
                        if (cursor != null && !cursor.isClosed()) {
                            cursor.close();
                        }
                        return jVar;
                    }
                } catch (Throwable th) {
                    th = th;
                    if (cursor != null && !cursor.isClosed()) {
                        cursor.close();
                    }
                    throw th;
                }
            }
            if (cursor != null && !cursor.isClosed()) {
                cursor.close();
            }
        } catch (Exception e2) {
            e = e2;
            cursor = null;
        } catch (Throwable th2) {
            th = th2;
            cursor = null;
            if (cursor != null) {
                cursor.close();
            }
            throw th;
        }
        return jVar;
    }

    private void b() {
        try {
            this.f2274a.getContentResolver().delete(DuAdCacheProvider.a(this.f2274a, 1), "ts<?", new String[]{String.valueOf(System.currentTimeMillis() - 86400000)});
        } catch (Exception e) {
            com.duapps.ad.base.h.b("ToolboxCacheMgr", "dumpTimeOutDatas() exception: ", e);
        }
    }

    public int b(String str) {
        Cursor cursor;
        int i;
        try {
            cursor = this.f2274a.getContentResolver().query(DuAdCacheProvider.a(this.f2274a, 1), new String[]{VastExtensionXmlManager.TYPE}, "_url=? AND ts >?", new String[]{str, String.valueOf(System.currentTimeMillis() - 86400000)}, "ts DESC");
            if (cursor != null) {
                try {
                    try {
                        if (cursor.moveToFirst()) {
                            i = cursor.getInt(0);
                            if (cursor == null && !cursor.isClosed()) {
                                cursor.close();
                                return i;
                            }
                        }
                    } catch (Exception e) {
                        e = e;
                        com.duapps.ad.base.h.b("ToolboxCacheMgr", "getParseResultType() exception: ", e);
                        if (cursor == null || cursor.isClosed()) {
                            return 0;
                        }
                        cursor.close();
                        return 0;
                    }
                } catch (Throwable th) {
                    th = th;
                    if (cursor != null && !cursor.isClosed()) {
                        cursor.close();
                    }
                    throw th;
                }
            }
            i = 0;
            return cursor == null ? i : i;
        } catch (Exception e2) {
            e = e2;
            cursor = null;
        } catch (Throwable th2) {
            th = th2;
            cursor = null;
            if (cursor != null) {
                cursor.close();
            }
            throw th;
        }
    }

    public int c(String str) {
        Cursor cursor;
        int i;
        Cursor cursor2 = null;
        try {
            try {
                cursor = this.f2274a.getContentResolver().query(DuAdCacheProvider.a(this.f2274a, 7), new String[]{VastExtensionXmlManager.TYPE}, "pkg=? AND ts >?", new String[]{str, String.valueOf(System.currentTimeMillis() - m.i(this.f2274a))}, "ts DESC");
                if (cursor != null) {
                    try {
                        if (cursor.moveToFirst()) {
                            i = cursor.getInt(0);
                            if (cursor == null && !cursor.isClosed()) {
                                cursor.close();
                                return i;
                            }
                        }
                    } catch (Exception e) {
                        e = e;
                        com.duapps.ad.base.h.b("ToolboxCacheMgr", "getParseResultType() exception: ", e);
                        if (cursor == null || cursor.isClosed()) {
                            return 0;
                        }
                        cursor.close();
                        return 0;
                    }
                }
                i = 0;
                return cursor == null ? i : i;
            } catch (Throwable th) {
                th = th;
                if (0 != 0 && !cursor2.isClosed()) {
                    cursor2.close();
                }
                throw th;
            }
        } catch (Exception e2) {
            e = e2;
            cursor = null;
        } catch (Throwable th2) {
            th = th2;
            if (0 != 0) {
                cursor2.close();
            }
            throw th;
        }
    }

    public void a() {
        try {
            this.f2274a.getContentResolver().delete(DuAdCacheProvider.a(this.f2274a, 7), "ts<?", new String[]{String.valueOf(System.currentTimeMillis() - m.i(this.f2274a))});
        } catch (Exception e) {
            com.duapps.ad.base.h.b("ToolboxCacheMgr", "removePreparseCacheTimeOutDatas exception: ", e);
        } catch (Throwable th) {
            com.duapps.ad.base.h.b("ToolboxCacheMgr", "removePreparseCacheTimeOutDatas del exception: ", th);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0049  */
    /* JADX WARN: Removed duplicated region for block: B:58:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void b(android.content.Context r10) {
        /*
            Method dump skipped, instructions count: 319
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.duapps.ad.stats.i.b(android.content.Context):void");
    }

    public com.duapps.ad.base.j d(String str) {
        Cursor cursor;
        com.duapps.ad.base.j jVar = new com.duapps.ad.base.j();
        jVar.f2044b = str;
        jVar.c = 0;
        try {
            cursor = this.f2274a.getContentResolver().query(DuAdCacheProvider.a(this.f2274a, 7), new String[]{"_url", "pkg", "p_url", VastExtensionXmlManager.TYPE}, "pkg=? AND ts >?", new String[]{str, String.valueOf(System.currentTimeMillis() - m.i(this.f2274a))}, "ts DESC");
            if (cursor != null) {
                try {
                    try {
                        if (cursor.moveToFirst()) {
                            jVar.f2043a = cursor.getString(0);
                            jVar.f2044b = cursor.getString(1);
                            jVar.d = cursor.getString(2);
                            jVar.c = cursor.getInt(3);
                        }
                    } catch (Exception e) {
                        e = e;
                        com.duapps.ad.base.h.b("ToolboxCacheMgr", "getParseResult() Exception: ", e);
                        if (cursor != null && !cursor.isClosed()) {
                            cursor.close();
                        }
                        return jVar;
                    }
                } catch (Throwable th) {
                    th = th;
                    if (cursor != null && !cursor.isClosed()) {
                        cursor.close();
                    }
                    throw th;
                }
            }
            if (cursor != null && !cursor.isClosed()) {
                cursor.close();
            }
        } catch (Exception e2) {
            e = e2;
            cursor = null;
        } catch (Throwable th2) {
            th = th2;
            cursor = null;
            if (cursor != null) {
                cursor.close();
            }
            throw th;
        }
        return jVar;
    }

    public void b(com.duapps.ad.base.j jVar) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("_url", jVar.f2043a);
        contentValues.put("pkg", jVar.f2044b);
        contentValues.put("p_url", jVar.d);
        contentValues.put(VastExtensionXmlManager.TYPE, Integer.valueOf(jVar.c));
        contentValues.put("ts", Long.valueOf(jVar.e));
        try {
            if (this.f2274a.getContentResolver().update(DuAdCacheProvider.a(this.f2274a, 7), contentValues, "_url = ?", new String[]{jVar.f2043a}) < 1) {
                this.f2274a.getContentResolver().insert(DuAdCacheProvider.a(this.f2274a, 7), contentValues);
            }
        } catch (Exception e) {
            com.duapps.ad.base.h.b("ToolboxCacheMgr", "saveParseResult() exception: ", e);
        }
    }
}
