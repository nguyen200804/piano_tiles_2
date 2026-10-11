package com.tencent.wxop.stat;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.DatabaseUtils;
import android.database.sqlite.SQLiteDatabase;
import com.applovin.sdk.AppLovinEventTypes;
import com.mopub.common.Constants;
import com.mopub.mobileads.VastExtensionXmlManager;
import com.unity3d.ads.metadata.MediationMetaData;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class t {
    private static com.tencent.wxop.stat.b.b bZ = com.tencent.wxop.stat.b.l.av();
    private static Context ca = null;
    private static t cb = null;
    private String ab;
    private ac bW;
    private ac bX;
    private com.tencent.wxop.stat.b.f be;
    private String bq;
    private ConcurrentHashMap<com.tencent.wxop.stat.a.d, String> cd;
    volatile int aI = 0;
    com.tencent.wxop.stat.b.c bY = null;
    private int cc = 0;
    private boolean ce = false;
    private HashMap<String, String> cf = new HashMap<>();

    private t(Context context) {
        this.bW = null;
        this.bX = null;
        this.be = null;
        this.ab = "";
        this.bq = "";
        this.cd = null;
        try {
            this.be = new com.tencent.wxop.stat.b.f();
            ca = context.getApplicationContext();
            this.cd = new ConcurrentHashMap<>();
            this.ab = com.tencent.wxop.stat.b.l.J(context);
            this.bq = "pri_" + com.tencent.wxop.stat.b.l.J(context);
            this.bW = new ac(ca, this.ab);
            this.bX = new ac(ca, this.bq);
            b(true);
            b(false);
            aj();
            t(ca);
            I();
            an();
        } catch (Throwable th) {
            bZ.b(th);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x005b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void I() {
        /*
            r9 = this;
            r8 = 0
            com.tencent.wxop.stat.ac r0 = r9.bW     // Catch: java.lang.Throwable -> L57 java.lang.Throwable -> L61
            android.database.sqlite.SQLiteDatabase r0 = r0.getReadableDatabase()     // Catch: java.lang.Throwable -> L57 java.lang.Throwable -> L61
            java.lang.String r1 = "config"
            r2 = 0
            r3 = 0
            r4 = 0
            r5 = 0
            r6 = 0
            r7 = 0
            android.database.Cursor r1 = r0.query(r1, r2, r3, r4, r5, r6, r7)     // Catch: java.lang.Throwable -> L57 java.lang.Throwable -> L61
        L13:
            boolean r0 = r1.moveToNext()     // Catch: java.lang.Throwable -> L45 java.lang.Throwable -> L5f
            if (r0 == 0) goto L51
            r0 = 0
            int r0 = r1.getInt(r0)     // Catch: java.lang.Throwable -> L45 java.lang.Throwable -> L5f
            r2 = 1
            java.lang.String r2 = r1.getString(r2)     // Catch: java.lang.Throwable -> L45 java.lang.Throwable -> L5f
            r3 = 2
            java.lang.String r3 = r1.getString(r3)     // Catch: java.lang.Throwable -> L45 java.lang.Throwable -> L5f
            r4 = 3
            int r4 = r1.getInt(r4)     // Catch: java.lang.Throwable -> L45 java.lang.Throwable -> L5f
            com.tencent.wxop.stat.ah r5 = new com.tencent.wxop.stat.ah     // Catch: java.lang.Throwable -> L45 java.lang.Throwable -> L5f
            r5.<init>(r0)     // Catch: java.lang.Throwable -> L45 java.lang.Throwable -> L5f
            r5.aI = r0     // Catch: java.lang.Throwable -> L45 java.lang.Throwable -> L5f
            org.json.JSONObject r0 = new org.json.JSONObject     // Catch: java.lang.Throwable -> L45 java.lang.Throwable -> L5f
            r0.<init>(r2)     // Catch: java.lang.Throwable -> L45 java.lang.Throwable -> L5f
            r5.df = r0     // Catch: java.lang.Throwable -> L45 java.lang.Throwable -> L5f
            r5.c = r3     // Catch: java.lang.Throwable -> L45 java.lang.Throwable -> L5f
            r5.L = r4     // Catch: java.lang.Throwable -> L45 java.lang.Throwable -> L5f
            android.content.Context r0 = com.tencent.wxop.stat.t.ca     // Catch: java.lang.Throwable -> L45 java.lang.Throwable -> L5f
            com.tencent.wxop.stat.c.a(r0, r5)     // Catch: java.lang.Throwable -> L45 java.lang.Throwable -> L5f
            goto L13
        L45:
            r0 = move-exception
        L46:
            com.tencent.wxop.stat.b.b r2 = com.tencent.wxop.stat.t.bZ     // Catch: java.lang.Throwable -> L5f
            r2.b(r0)     // Catch: java.lang.Throwable -> L5f
            if (r1 == 0) goto L50
            r1.close()
        L50:
            return
        L51:
            if (r1 == 0) goto L50
            r1.close()
            goto L50
        L57:
            r0 = move-exception
            r1 = r8
        L59:
            if (r1 == 0) goto L5e
            r1.close()
        L5e:
            throw r0
        L5f:
            r0 = move-exception
            goto L59
        L61:
            r0 = move-exception
            r1 = r8
            goto L46
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.wxop.stat.t.I():void");
    }

    private synchronized void a(int i, boolean z) {
        try {
            if (this.aI > 0 && i > 0 && !e.a()) {
                if (c.k()) {
                    bZ.b("Load " + this.aI + " unsent events");
                }
                ArrayList arrayList = new ArrayList(i);
                b(arrayList, i, z);
                if (arrayList.size() > 0) {
                    if (c.k()) {
                        bZ.b("Peek " + arrayList.size() + " unsent events.");
                    }
                    a(arrayList, 2, z);
                    ak.Z(ca).b(arrayList, new aa(this, arrayList, z));
                }
            }
        } catch (Throwable th) {
            bZ.b(th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:37:0x009c A[Catch: all -> 0x00ed, TRY_ENTER, TryCatch #5 {, blocks: (B:4:0x0002, B:6:0x0008, B:10:0x0110, B:12:0x0114, B:14:0x011a, B:15:0x0164, B:17:0x0175, B:19:0x017a, B:21:0x0182, B:22:0x0185, B:44:0x0092, B:37:0x009c, B:39:0x00a8, B:41:0x00c2, B:42:0x00f7, B:48:0x00c8, B:56:0x00d9, B:60:0x00df, B:68:0x00e9, B:65:0x00ec, B:71:0x00f1, B:24:0x0010, B:26:0x0019, B:28:0x0021, B:29:0x003c, B:31:0x004b, B:32:0x005f, B:53:0x00d2), top: B:3:0x0002, inners: #1, #2, #3, #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00f7 A[Catch: all -> 0x00ed, TryCatch #5 {, blocks: (B:4:0x0002, B:6:0x0008, B:10:0x0110, B:12:0x0114, B:14:0x011a, B:15:0x0164, B:17:0x0175, B:19:0x017a, B:21:0x0182, B:22:0x0185, B:44:0x0092, B:37:0x009c, B:39:0x00a8, B:41:0x00c2, B:42:0x00f7, B:48:0x00c8, B:56:0x00d9, B:60:0x00df, B:68:0x00e9, B:65:0x00ec, B:71:0x00f1, B:24:0x0010, B:26:0x0019, B:28:0x0021, B:29:0x003c, B:31:0x004b, B:32:0x005f, B:53:0x00d2), top: B:3:0x0002, inners: #1, #2, #3, #4 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public synchronized void a(com.tencent.wxop.stat.a.d r7, com.tencent.wxop.stat.aj r8, boolean r9, boolean r10) {
        /*
            Method dump skipped, instructions count: 397
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.wxop.stat.t.a(com.tencent.wxop.stat.a.d, com.tencent.wxop.stat.aj, boolean, boolean):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void a(ah ahVar) {
        Cursor cursor;
        boolean z;
        long insert;
        Cursor cursor2 = null;
        synchronized (this) {
            try {
            } catch (Throwable th) {
                th = th;
            }
            try {
                String jSONObject = ahVar.df.toString();
                String t = com.tencent.wxop.stat.b.l.t(jSONObject);
                ContentValues contentValues = new ContentValues();
                contentValues.put(AppLovinEventTypes.USER_VIEWED_CONTENT, ahVar.df.toString());
                contentValues.put("md5sum", t);
                ahVar.c = t;
                contentValues.put(MediationMetaData.KEY_VERSION, Integer.valueOf(ahVar.L));
                cursor = this.bW.getReadableDatabase().query("config", null, null, null, null, null, null);
                while (true) {
                    try {
                        if (!cursor.moveToNext()) {
                            z = false;
                            break;
                        } else if (cursor.getInt(0) == ahVar.aI) {
                            z = true;
                            break;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        bZ.b(th);
                        if (cursor != null) {
                            cursor.close();
                        }
                        try {
                            this.bW.getWritableDatabase().endTransaction();
                        } catch (Exception e) {
                        }
                    }
                }
                this.bW.getWritableDatabase().beginTransaction();
                if (true == z) {
                    insert = this.bW.getWritableDatabase().update("config", contentValues, "type=?", new String[]{Integer.toString(ahVar.aI)});
                } else {
                    contentValues.put(VastExtensionXmlManager.TYPE, Integer.valueOf(ahVar.aI));
                    insert = this.bW.getWritableDatabase().insert("config", null, contentValues);
                }
                if (insert == -1) {
                    bZ.d("Failed to store cfg:" + jSONObject);
                } else {
                    bZ.e("Sucessed to store cfg:" + jSONObject);
                }
                this.bW.getWritableDatabase().setTransactionSuccessful();
                if (cursor != null) {
                    cursor.close();
                }
                try {
                    this.bW.getWritableDatabase().endTransaction();
                } catch (Exception e2) {
                }
            } catch (Throwable th3) {
                th = th3;
                cursor = null;
            }
        }
    }

    static /* synthetic */ void a(t tVar, int i, boolean z) {
        int ak = i == -1 ? !z ? tVar.ak() : tVar.al() : i;
        if (ak > 0) {
            int u = c.u() * 60 * c.q();
            if (ak > u && u > 0) {
                ak = u;
            }
            int r = c.r();
            int i2 = ak / r;
            int i3 = ak % r;
            if (c.k()) {
                bZ.b("sentStoreEventsByDb sendNumbers=" + ak + ",important=" + z + ",maxSendNumPerFor1Period=" + u + ",maxCount=" + i2 + ",restNumbers=" + i3);
            }
            for (int i4 = 0; i4 < i2; i4++) {
                tVar.a(r, z);
            }
            if (i3 > 0) {
                tVar.a(i3, z);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00dd A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public synchronized void a(java.util.List<com.tencent.wxop.stat.ad> r7, int r8, boolean r9) {
        /*
            r6 = this;
            r2 = 0
            monitor-enter(r6)
            int r0 = r7.size()     // Catch: java.lang.Throwable -> L80
            if (r0 != 0) goto La
        L8:
            monitor-exit(r6)
            return
        La:
            if (r9 != 0) goto L83
            int r0 = com.tencent.wxop.stat.c.p()     // Catch: java.lang.Throwable -> L80
        L10:
            android.database.sqlite.SQLiteDatabase r1 = r6.c(r9)     // Catch: java.lang.Throwable -> Lc3 java.lang.Throwable -> Ld9
            r3 = 2
            if (r8 != r3) goto L88
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> Le8 java.lang.Throwable -> Lea
            java.lang.String r3 = "update events set status="
            r0.<init>(r3)     // Catch: java.lang.Throwable -> Le8 java.lang.Throwable -> Lea
            java.lang.StringBuilder r0 = r0.append(r8)     // Catch: java.lang.Throwable -> Le8 java.lang.Throwable -> Lea
            java.lang.String r3 = ", send_count=send_count+1  where "
            java.lang.StringBuilder r0 = r0.append(r3)     // Catch: java.lang.Throwable -> Le8 java.lang.Throwable -> Lea
            java.lang.String r3 = b(r7)     // Catch: java.lang.Throwable -> Le8 java.lang.Throwable -> Lea
            java.lang.StringBuilder r0 = r0.append(r3)     // Catch: java.lang.Throwable -> Le8 java.lang.Throwable -> Lea
            java.lang.String r0 = r0.toString()     // Catch: java.lang.Throwable -> Le8 java.lang.Throwable -> Lea
        L34:
            boolean r3 = com.tencent.wxop.stat.c.k()     // Catch: java.lang.Throwable -> Le8 java.lang.Throwable -> Lea
            if (r3 == 0) goto L4e
            com.tencent.wxop.stat.b.b r3 = com.tencent.wxop.stat.t.bZ     // Catch: java.lang.Throwable -> Le8 java.lang.Throwable -> Lea
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> Le8 java.lang.Throwable -> Lea
            java.lang.String r5 = "update sql:"
            r4.<init>(r5)     // Catch: java.lang.Throwable -> Le8 java.lang.Throwable -> Lea
            java.lang.StringBuilder r4 = r4.append(r0)     // Catch: java.lang.Throwable -> Le8 java.lang.Throwable -> Lea
            java.lang.String r4 = r4.toString()     // Catch: java.lang.Throwable -> Le8 java.lang.Throwable -> Lea
            r3.b(r4)     // Catch: java.lang.Throwable -> Le8 java.lang.Throwable -> Lea
        L4e:
            r1.beginTransaction()     // Catch: java.lang.Throwable -> Le8 java.lang.Throwable -> Lea
            r1.execSQL(r0)     // Catch: java.lang.Throwable -> Le8 java.lang.Throwable -> Lea
            if (r2 == 0) goto L70
            com.tencent.wxop.stat.b.b r0 = com.tencent.wxop.stat.t.bZ     // Catch: java.lang.Throwable -> Le8 java.lang.Throwable -> Lea
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> Le8 java.lang.Throwable -> Lea
            java.lang.String r4 = "update for delete sql:"
            r3.<init>(r4)     // Catch: java.lang.Throwable -> Le8 java.lang.Throwable -> Lea
            java.lang.StringBuilder r3 = r3.append(r2)     // Catch: java.lang.Throwable -> Le8 java.lang.Throwable -> Lea
            java.lang.String r3 = r3.toString()     // Catch: java.lang.Throwable -> Le8 java.lang.Throwable -> Lea
            r0.b(r3)     // Catch: java.lang.Throwable -> Le8 java.lang.Throwable -> Lea
            r1.execSQL(r2)     // Catch: java.lang.Throwable -> Le8 java.lang.Throwable -> Lea
            r6.aj()     // Catch: java.lang.Throwable -> Le8 java.lang.Throwable -> Lea
        L70:
            r1.setTransactionSuccessful()     // Catch: java.lang.Throwable -> Le8 java.lang.Throwable -> Lea
            if (r1 == 0) goto L8
            r1.endTransaction()     // Catch: java.lang.Throwable -> L79 java.lang.Throwable -> L80
            goto L8
        L79:
            r0 = move-exception
            com.tencent.wxop.stat.b.b r1 = com.tencent.wxop.stat.t.bZ     // Catch: java.lang.Throwable -> L80
            r1.b(r0)     // Catch: java.lang.Throwable -> L80
            goto L8
        L80:
            r0 = move-exception
            monitor-exit(r6)
            throw r0
        L83:
            int r0 = com.tencent.wxop.stat.c.n()     // Catch: java.lang.Throwable -> L80
            goto L10
        L88:
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> Le8 java.lang.Throwable -> Lea
            java.lang.String r4 = "update events set status="
            r3.<init>(r4)     // Catch: java.lang.Throwable -> Le8 java.lang.Throwable -> Lea
            java.lang.StringBuilder r3 = r3.append(r8)     // Catch: java.lang.Throwable -> Le8 java.lang.Throwable -> Lea
            java.lang.String r4 = " where "
            java.lang.StringBuilder r3 = r3.append(r4)     // Catch: java.lang.Throwable -> Le8 java.lang.Throwable -> Lea
            java.lang.String r4 = b(r7)     // Catch: java.lang.Throwable -> Le8 java.lang.Throwable -> Lea
            java.lang.StringBuilder r3 = r3.append(r4)     // Catch: java.lang.Throwable -> Le8 java.lang.Throwable -> Lea
            java.lang.String r3 = r3.toString()     // Catch: java.lang.Throwable -> Le8 java.lang.Throwable -> Lea
            int r4 = r6.cc     // Catch: java.lang.Throwable -> Le8 java.lang.Throwable -> Lea
            int r4 = r4 % 3
            if (r4 != 0) goto Lba
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> Le8 java.lang.Throwable -> Lea
            java.lang.String r4 = "delete from events where send_count>"
            r2.<init>(r4)     // Catch: java.lang.Throwable -> Le8 java.lang.Throwable -> Lea
            java.lang.StringBuilder r0 = r2.append(r0)     // Catch: java.lang.Throwable -> Le8 java.lang.Throwable -> Lea
            java.lang.String r2 = r0.toString()     // Catch: java.lang.Throwable -> Le8 java.lang.Throwable -> Lea
        Lba:
            int r0 = r6.cc     // Catch: java.lang.Throwable -> Le8 java.lang.Throwable -> Lea
            int r0 = r0 + 1
            r6.cc = r0     // Catch: java.lang.Throwable -> Le8 java.lang.Throwable -> Lea
            r0 = r3
            goto L34
        Lc3:
            r0 = move-exception
            r1 = r2
        Lc5:
            com.tencent.wxop.stat.b.b r2 = com.tencent.wxop.stat.t.bZ     // Catch: java.lang.Throwable -> Le8
            r2.b(r0)     // Catch: java.lang.Throwable -> Le8
            if (r1 == 0) goto L8
            r1.endTransaction()     // Catch: java.lang.Throwable -> L80 java.lang.Throwable -> Ld1
            goto L8
        Ld1:
            r0 = move-exception
            com.tencent.wxop.stat.b.b r1 = com.tencent.wxop.stat.t.bZ     // Catch: java.lang.Throwable -> L80
            r1.b(r0)     // Catch: java.lang.Throwable -> L80
            goto L8
        Ld9:
            r0 = move-exception
            r1 = r2
        Ldb:
            if (r1 == 0) goto Le0
            r1.endTransaction()     // Catch: java.lang.Throwable -> L80 java.lang.Throwable -> Le1
        Le0:
            throw r0     // Catch: java.lang.Throwable -> L80
        Le1:
            r1 = move-exception
            com.tencent.wxop.stat.b.b r2 = com.tencent.wxop.stat.t.bZ     // Catch: java.lang.Throwable -> L80
            r2.b(r1)     // Catch: java.lang.Throwable -> L80
            goto Le0
        Le8:
            r0 = move-exception
            goto Ldb
        Lea:
            r0 = move-exception
            goto Lc5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.wxop.stat.t.a(java.util.List, int, boolean):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void a(List<ad> list, boolean z) {
        SQLiteDatabase sQLiteDatabase = null;
        synchronized (this) {
            if (list.size() != 0) {
                if (c.k()) {
                    bZ.b("Delete " + list.size() + " events, important:" + z);
                }
                StringBuilder sb = new StringBuilder(list.size() * 3);
                sb.append("event_id in (");
                int size = list.size();
                Iterator<ad> it = list.iterator();
                int i = 0;
                while (it.hasNext()) {
                    sb.append(it.next().K);
                    if (i != size - 1) {
                        sb.append(",");
                    }
                    i++;
                }
                sb.append(")");
                try {
                    try {
                        sQLiteDatabase = c(z);
                        sQLiteDatabase.beginTransaction();
                        int delete = sQLiteDatabase.delete(Constants.VIDEO_TRACKING_EVENTS_KEY, sb.toString(), null);
                        if (c.k()) {
                            bZ.b("delete " + size + " event " + sb.toString() + ", success delete:" + delete);
                        }
                        this.aI -= delete;
                        sQLiteDatabase.setTransactionSuccessful();
                        aj();
                        if (sQLiteDatabase != null) {
                            try {
                                sQLiteDatabase.endTransaction();
                            } catch (Throwable th) {
                                bZ.b(th);
                            }
                        }
                    } catch (Throwable th2) {
                        bZ.b(th2);
                        if (sQLiteDatabase != null) {
                            try {
                                sQLiteDatabase.endTransaction();
                            } catch (Throwable th3) {
                                bZ.b(th3);
                            }
                        }
                    }
                } catch (Throwable th4) {
                    if (sQLiteDatabase != null) {
                        try {
                            sQLiteDatabase.endTransaction();
                        } catch (Throwable th5) {
                            bZ.b(th5);
                        }
                    }
                    throw th4;
                }
            }
        }
    }

    public static t ai() {
        return cb;
    }

    private void aj() {
        this.aI = ak() + al();
    }

    private int ak() {
        return (int) DatabaseUtils.queryNumEntries(this.bW.getReadableDatabase(), Constants.VIDEO_TRACKING_EVENTS_KEY);
    }

    private int al() {
        return (int) DatabaseUtils.queryNumEntries(this.bX.getReadableDatabase(), Constants.VIDEO_TRACKING_EVENTS_KEY);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void am() {
        SQLiteDatabase sQLiteDatabase = null;
        if (this.ce) {
            return;
        }
        synchronized (this.cd) {
            if (this.cd.size() == 0) {
                return;
            }
            this.ce = true;
            if (c.k()) {
                bZ.b("insert " + this.cd.size() + " events ,numEventsCachedInMemory:" + c.ay + ",numStoredEvents:" + this.aI);
            }
            try {
                try {
                    sQLiteDatabase = this.bW.getWritableDatabase();
                    sQLiteDatabase.beginTransaction();
                    Iterator<Map.Entry<com.tencent.wxop.stat.a.d, String>> it = this.cd.entrySet().iterator();
                    while (it.hasNext()) {
                        com.tencent.wxop.stat.a.d key = it.next().getKey();
                        ContentValues contentValues = new ContentValues();
                        String af = key.af();
                        if (c.k()) {
                            bZ.b("insert content:" + af);
                        }
                        contentValues.put(AppLovinEventTypes.USER_VIEWED_CONTENT, com.tencent.wxop.stat.b.r.q(af));
                        contentValues.put("send_count", "0");
                        contentValues.put("status", Integer.toString(1));
                        contentValues.put("timestamp", Long.valueOf(key.ad()));
                        sQLiteDatabase.insert(Constants.VIDEO_TRACKING_EVENTS_KEY, null, contentValues);
                        it.remove();
                    }
                    sQLiteDatabase.setTransactionSuccessful();
                    if (sQLiteDatabase != null) {
                        try {
                            sQLiteDatabase.endTransaction();
                            aj();
                        } catch (Throwable th) {
                            bZ.b(th);
                        }
                    }
                } catch (Throwable th2) {
                    if (sQLiteDatabase != null) {
                        try {
                            sQLiteDatabase.endTransaction();
                            aj();
                        } catch (Throwable th3) {
                            bZ.b(th3);
                        }
                    }
                    throw th2;
                }
            } catch (Throwable th4) {
                bZ.b(th4);
                if (sQLiteDatabase != null) {
                    try {
                        sQLiteDatabase.endTransaction();
                        aj();
                    } catch (Throwable th5) {
                        bZ.b(th5);
                    }
                }
            }
            this.ce = false;
            if (c.k()) {
                bZ.b("after insert, cacheEventsInMemory.size():" + this.cd.size() + ",numEventsCachedInMemory:" + c.ay + ",numStoredEvents:" + this.aI);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x003f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void an() {
        /*
            r9 = this;
            r8 = 0
            com.tencent.wxop.stat.ac r0 = r9.bW     // Catch: java.lang.Throwable -> L3b java.lang.Throwable -> L45
            android.database.sqlite.SQLiteDatabase r0 = r0.getReadableDatabase()     // Catch: java.lang.Throwable -> L3b java.lang.Throwable -> L45
            java.lang.String r1 = "keyvalues"
            r2 = 0
            r3 = 0
            r4 = 0
            r5 = 0
            r6 = 0
            r7 = 0
            android.database.Cursor r1 = r0.query(r1, r2, r3, r4, r5, r6, r7)     // Catch: java.lang.Throwable -> L3b java.lang.Throwable -> L45
        L13:
            boolean r0 = r1.moveToNext()     // Catch: java.lang.Throwable -> L29 java.lang.Throwable -> L43
            if (r0 == 0) goto L35
            java.util.HashMap<java.lang.String, java.lang.String> r0 = r9.cf     // Catch: java.lang.Throwable -> L29 java.lang.Throwable -> L43
            r2 = 0
            java.lang.String r2 = r1.getString(r2)     // Catch: java.lang.Throwable -> L29 java.lang.Throwable -> L43
            r3 = 1
            java.lang.String r3 = r1.getString(r3)     // Catch: java.lang.Throwable -> L29 java.lang.Throwable -> L43
            r0.put(r2, r3)     // Catch: java.lang.Throwable -> L29 java.lang.Throwable -> L43
            goto L13
        L29:
            r0 = move-exception
        L2a:
            com.tencent.wxop.stat.b.b r2 = com.tencent.wxop.stat.t.bZ     // Catch: java.lang.Throwable -> L43
            r2.b(r0)     // Catch: java.lang.Throwable -> L43
            if (r1 == 0) goto L34
            r1.close()
        L34:
            return
        L35:
            if (r1 == 0) goto L34
            r1.close()
            goto L34
        L3b:
            r0 = move-exception
            r1 = r8
        L3d:
            if (r1 == 0) goto L42
            r1.close()
        L42:
            throw r0
        L43:
            r0 = move-exception
            goto L3d
        L45:
            r0 = move-exception
            r1 = r8
            goto L2a
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.wxop.stat.t.an():void");
    }

    private static String b(List<ad> list) {
        StringBuilder sb = new StringBuilder(list.size() * 3);
        sb.append("event_id in (");
        int i = 0;
        int size = list.size();
        Iterator<ad> it = list.iterator();
        while (true) {
            int i2 = i;
            if (!it.hasNext()) {
                sb.append(")");
                return sb.toString();
            }
            sb.append(it.next().K);
            if (i2 != size - 1) {
                sb.append(",");
            }
            i = i2 + 1;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x00a1  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void b(java.util.List<com.tencent.wxop.stat.ad> r11, int r12, boolean r13) {
        /*
            r10 = this;
            r9 = 0
            if (r13 != 0) goto L8f
            com.tencent.wxop.stat.ac r0 = r10.bW     // Catch: java.lang.Throwable -> L9d java.lang.Throwable -> Laa
            android.database.sqlite.SQLiteDatabase r0 = r0.getReadableDatabase()     // Catch: java.lang.Throwable -> L9d java.lang.Throwable -> Laa
        L9:
            java.lang.String r1 = "events"
            r2 = 0
            java.lang.String r3 = "status=?"
            r4 = 1
            java.lang.String[] r4 = new java.lang.String[r4]     // Catch: java.lang.Throwable -> L9d java.lang.Throwable -> Laa
            r5 = 0
            r6 = 1
            java.lang.String r6 = java.lang.Integer.toString(r6)     // Catch: java.lang.Throwable -> L9d java.lang.Throwable -> Laa
            r4[r5] = r6     // Catch: java.lang.Throwable -> L9d java.lang.Throwable -> Laa
            r5 = 0
            r6 = 0
            r7 = 0
            java.lang.String r8 = java.lang.Integer.toString(r12)     // Catch: java.lang.Throwable -> L9d java.lang.Throwable -> Laa
            android.database.Cursor r7 = r0.query(r1, r2, r3, r4, r5, r6, r7, r8)     // Catch: java.lang.Throwable -> L9d java.lang.Throwable -> Laa
        L24:
            boolean r0 = r7.moveToNext()     // Catch: java.lang.Throwable -> L82 java.lang.Throwable -> La5
            if (r0 == 0) goto L97
            r0 = 0
            long r2 = r7.getLong(r0)     // Catch: java.lang.Throwable -> L82 java.lang.Throwable -> La5
            r0 = 1
            java.lang.String r4 = r7.getString(r0)     // Catch: java.lang.Throwable -> L82 java.lang.Throwable -> La5
            boolean r0 = com.tencent.wxop.stat.c.ad     // Catch: java.lang.Throwable -> L82 java.lang.Throwable -> La5
            if (r0 != 0) goto L3c
            java.lang.String r4 = com.tencent.wxop.stat.b.r.t(r4)     // Catch: java.lang.Throwable -> L82 java.lang.Throwable -> La5
        L3c:
            r0 = 2
            int r5 = r7.getInt(r0)     // Catch: java.lang.Throwable -> L82 java.lang.Throwable -> La5
            r0 = 3
            int r6 = r7.getInt(r0)     // Catch: java.lang.Throwable -> L82 java.lang.Throwable -> La5
            com.tencent.wxop.stat.ad r1 = new com.tencent.wxop.stat.ad     // Catch: java.lang.Throwable -> L82 java.lang.Throwable -> La5
            r1.<init>(r2, r4, r5, r6)     // Catch: java.lang.Throwable -> L82 java.lang.Throwable -> La5
            boolean r0 = com.tencent.wxop.stat.c.k()     // Catch: java.lang.Throwable -> L82 java.lang.Throwable -> La5
            if (r0 == 0) goto L7e
            com.tencent.wxop.stat.b.b r0 = com.tencent.wxop.stat.t.bZ     // Catch: java.lang.Throwable -> L82 java.lang.Throwable -> La5
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L82 java.lang.Throwable -> La5
            java.lang.String r5 = "peek event, id="
            r4.<init>(r5)     // Catch: java.lang.Throwable -> L82 java.lang.Throwable -> La5
            java.lang.StringBuilder r2 = r4.append(r2)     // Catch: java.lang.Throwable -> L82 java.lang.Throwable -> La5
            java.lang.String r3 = ",send_count="
            java.lang.StringBuilder r2 = r2.append(r3)     // Catch: java.lang.Throwable -> L82 java.lang.Throwable -> La5
            java.lang.StringBuilder r2 = r2.append(r6)     // Catch: java.lang.Throwable -> L82 java.lang.Throwable -> La5
            java.lang.String r3 = ",timestamp="
            java.lang.StringBuilder r2 = r2.append(r3)     // Catch: java.lang.Throwable -> L82 java.lang.Throwable -> La5
            r3 = 4
            long r4 = r7.getLong(r3)     // Catch: java.lang.Throwable -> L82 java.lang.Throwable -> La5
            java.lang.StringBuilder r2 = r2.append(r4)     // Catch: java.lang.Throwable -> L82 java.lang.Throwable -> La5
            java.lang.String r2 = r2.toString()     // Catch: java.lang.Throwable -> L82 java.lang.Throwable -> La5
            r0.b(r2)     // Catch: java.lang.Throwable -> L82 java.lang.Throwable -> La5
        L7e:
            r11.add(r1)     // Catch: java.lang.Throwable -> L82 java.lang.Throwable -> La5
            goto L24
        L82:
            r0 = move-exception
            r1 = r7
        L84:
            com.tencent.wxop.stat.b.b r2 = com.tencent.wxop.stat.t.bZ     // Catch: java.lang.Throwable -> La7
            r2.b(r0)     // Catch: java.lang.Throwable -> La7
            if (r1 == 0) goto L8e
            r1.close()
        L8e:
            return
        L8f:
            com.tencent.wxop.stat.ac r0 = r10.bX     // Catch: java.lang.Throwable -> L9d java.lang.Throwable -> Laa
            android.database.sqlite.SQLiteDatabase r0 = r0.getReadableDatabase()     // Catch: java.lang.Throwable -> L9d java.lang.Throwable -> Laa
            goto L9
        L97:
            if (r7 == 0) goto L8e
            r7.close()
            goto L8e
        L9d:
            r0 = move-exception
            r7 = r9
        L9f:
            if (r7 == 0) goto La4
            r7.close()
        La4:
            throw r0
        La5:
            r0 = move-exception
            goto L9f
        La7:
            r0 = move-exception
            r7 = r1
            goto L9f
        Laa:
            r0 = move-exception
            r1 = r9
            goto L84
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.wxop.stat.t.b(java.util.List, int, boolean):void");
    }

    private void b(boolean z) {
        SQLiteDatabase sQLiteDatabase = null;
        try {
            try {
                sQLiteDatabase = c(z);
                sQLiteDatabase.beginTransaction();
                ContentValues contentValues = new ContentValues();
                contentValues.put("status", (Integer) 1);
                int update = sQLiteDatabase.update(Constants.VIDEO_TRACKING_EVENTS_KEY, contentValues, "status=?", new String[]{Long.toString(2L)});
                if (c.k()) {
                    bZ.b("update " + update + " unsent events.");
                }
                sQLiteDatabase.setTransactionSuccessful();
                if (sQLiteDatabase != null) {
                    try {
                        sQLiteDatabase.endTransaction();
                    } catch (Throwable th) {
                        bZ.b(th);
                    }
                }
            } catch (Throwable th2) {
                bZ.b(th2);
                if (sQLiteDatabase != null) {
                    try {
                        sQLiteDatabase.endTransaction();
                    } catch (Throwable th3) {
                        bZ.b(th3);
                    }
                }
            }
        } catch (Throwable th4) {
            if (sQLiteDatabase != null) {
                try {
                    sQLiteDatabase.endTransaction();
                } catch (Throwable th5) {
                    bZ.b(th5);
                }
            }
            throw th4;
        }
    }

    private SQLiteDatabase c(boolean z) {
        return !z ? this.bW.getWritableDatabase() : this.bX.getWritableDatabase();
    }

    public static t s(Context context) {
        if (cb == null) {
            synchronized (t.class) {
                if (cb == null) {
                    cb = new t(context);
                }
            }
        }
        return cb;
    }

    final void H() {
        if (c.l()) {
            try {
                this.be.a(new w(this));
            } catch (Throwable th) {
                bZ.b(th);
            }
        }
    }

    final void b(int i) {
        this.be.a(new ab(this, i));
    }

    final void b(com.tencent.wxop.stat.a.d dVar, aj ajVar, boolean z, boolean z2) {
        if (this.be != null) {
            this.be.a(new x(this, dVar, ajVar, z, z2));
        }
    }

    final void b(ah ahVar) {
        if (ahVar == null) {
            return;
        }
        this.be.a(new y(this, ahVar));
    }

    final void b(List<ad> list, boolean z) {
        if (this.be != null) {
            this.be.a(new u(this, list, z));
        }
    }

    final void c(List<ad> list, boolean z) {
        if (this.be != null) {
            this.be.a(new v(this, list, z));
        }
    }

    public final int r() {
        return this.aI;
    }

    /* JADX WARN: Removed duplicated region for block: B:87:0x021b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final synchronized com.tencent.wxop.stat.b.c t(android.content.Context r20) {
        /*
            Method dump skipped, instructions count: 588
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.wxop.stat.t.t(android.content.Context):com.tencent.wxop.stat.b.c");
    }
}
