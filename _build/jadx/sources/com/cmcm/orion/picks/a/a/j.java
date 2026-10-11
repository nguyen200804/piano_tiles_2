package com.cmcm.orion.picks.a.a;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* compiled from: MarketStorage.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class j {

    /* renamed from: a, reason: collision with root package name */
    private static j f843a = new j();

    /* renamed from: b, reason: collision with root package name */
    private a f844b = new a(com.cmcm.orion.adsdk.e.a());

    private j() {
    }

    public static j a() {
        return f843a;
    }

    /* compiled from: MarketStorage.java */
    static class a extends SQLiteOpenHelper {
        public a(Context context) {
            super(context, "market.db", (SQLiteDatabase.CursorFactory) null, b.f822a);
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public final void onCreate(SQLiteDatabase db) {
            b.a(db, "tbl_41");
        }

        private static List<String> a(SQLiteDatabase sQLiteDatabase) {
            ArrayList arrayList = new ArrayList();
            Cursor rawQuery = sQLiteDatabase.rawQuery("SELECT * FROM sqlite_master WHERE type='table';", null);
            try {
                rawQuery.moveToFirst();
                while (!rawQuery.isAfterLast()) {
                    String string = rawQuery.getString(1);
                    if (!string.equals("android_metadata") && !string.equals("sqlite_sequence")) {
                        arrayList.add(string);
                    }
                    rawQuery.moveToNext();
                }
                return arrayList;
            } finally {
                if (rawQuery != null) {
                    rawQuery.close();
                }
            }
        }

        public static void a(SQLiteDatabase sQLiteDatabase, String str) {
            sQLiteDatabase.execSQL("DROP TABLE IF EXISTS " + str);
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public final void onUpgrade(SQLiteDatabase db, int oldVersion, int currentVersion) {
            Iterator<String> it = a(db).iterator();
            while (it.hasNext()) {
                db.execSQL("DROP TABLE IF EXISTS " + it.next());
            }
            onCreate(db);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x001a, code lost:
    
        if (r2.getCount() > 0) goto L7;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static boolean a(android.database.sqlite.SQLiteDatabase r6, java.lang.String r7) {
        /*
            r2 = 0
            r0 = 1
            r1 = 0
            java.lang.String r3 = "SELECT * FROM sqlite_master WHERE type='table' AND name='%s';"
            r4 = 1
            java.lang.Object[] r4 = new java.lang.Object[r4]     // Catch: java.lang.Exception -> L24 java.lang.Throwable -> L2d
            r5 = 0
            r4[r5] = r7     // Catch: java.lang.Exception -> L24 java.lang.Throwable -> L2d
            java.lang.String r3 = java.lang.String.format(r3, r4)     // Catch: java.lang.Exception -> L24 java.lang.Throwable -> L2d
            r4 = 0
            android.database.Cursor r2 = r6.rawQuery(r3, r4)     // Catch: java.lang.Exception -> L24 java.lang.Throwable -> L2d
            if (r2 == 0) goto L22
            int r3 = r2.getCount()     // Catch: java.lang.Throwable -> L2d java.lang.Exception -> L34
            if (r3 <= 0) goto L22
        L1c:
            if (r2 == 0) goto L21
            r2.close()
        L21:
            return r0
        L22:
            r0 = r1
            goto L1c
        L24:
            r0 = move-exception
            r0 = r2
        L26:
            if (r0 == 0) goto L2b
            r0.close()
        L2b:
            r0 = r1
            goto L21
        L2d:
            r0 = move-exception
            if (r2 == 0) goto L33
            r2.close()
        L33:
            throw r0
        L34:
            r0 = move-exception
            r0 = r2
            goto L26
        */
        throw new UnsupportedOperationException("Method not decompiled: com.cmcm.orion.picks.a.a.j.a(android.database.sqlite.SQLiteDatabase, java.lang.String):boolean");
    }

    public final synchronized int a(String str, List<com.cmcm.orion.picks.a.a.a> list) {
        int i;
        SQLiteDatabase b2 = b();
        if (b2 == null) {
            i = -1;
        } else {
            String str2 = "tbl_" + str;
            i = 0;
            try {
                b2.beginTransaction();
                a.a(b2, str2);
                b.a(b2, str2);
                Iterator<com.cmcm.orion.picks.a.a.a> it = list.iterator();
                while (it.hasNext()) {
                    i = b2.insert(str2, "", b.a(it.next(), str)) > 0 ? i + 1 : i;
                }
                b2.setTransactionSuccessful();
                try {
                    b2.endTransaction();
                } catch (Exception e) {
                }
            } catch (Exception e2) {
                try {
                    b2.endTransaction();
                } catch (Exception e3) {
                }
            } catch (Throwable th) {
                try {
                    b2.endTransaction();
                } catch (Exception e4) {
                }
                throw th;
            }
        }
        return i;
    }

    public final synchronized int b(String str, List<com.cmcm.orion.picks.a.a.a> list) {
        int i;
        SQLiteDatabase b2 = b();
        if (b2 == null) {
            i = -1;
        } else {
            String str2 = "tbl_" + str;
            i = 0;
            try {
                b2.beginTransaction();
                a.a(b2, str2);
                b.a(b2, str2);
                Iterator<com.cmcm.orion.picks.a.a.a> it = list.iterator();
                while (it.hasNext()) {
                    i = b2.insert(str2, "", b.a(it.next(), str)) > 0 ? i + 1 : i;
                }
                b2.setTransactionSuccessful();
                try {
                    b2.endTransaction();
                } catch (Exception e) {
                }
            } catch (Exception e2) {
                try {
                    b2.endTransaction();
                } catch (Exception e3) {
                }
            } catch (Throwable th) {
                try {
                    b2.endTransaction();
                } catch (Exception e4) {
                }
                throw th;
            }
        }
        return i;
    }

    public final synchronized void a(String str, com.cmcm.orion.picks.a.a.a aVar) {
        String l;
        String str2;
        SQLiteDatabase b2 = b();
        if (b2 != null) {
            try {
                String str3 = "tbl_" + str;
                b2.beginTransaction();
                if (aVar.n() == null || aVar.n().isEmpty()) {
                    l = aVar.l();
                    str2 = "pkg";
                } else {
                    l = aVar.n();
                    str2 = "des";
                }
                if (l != null && !l.isEmpty()) {
                    b2.update(str3, b.a(aVar, str), str2 + " = ?", new String[]{l});
                    b2.setTransactionSuccessful();
                    if (b2 != null) {
                        try {
                            b2.endTransaction();
                        } catch (Exception e) {
                        }
                    }
                } else if (b2 != null) {
                    try {
                        b2.endTransaction();
                    } catch (Exception e2) {
                    }
                }
            } catch (Exception e3) {
                if (b2 != null) {
                    try {
                        b2.endTransaction();
                    } catch (Exception e4) {
                    }
                }
            } catch (Throwable th) {
                if (b2 != null) {
                    try {
                        b2.endTransaction();
                    } catch (Exception e5) {
                    }
                }
                throw th;
            }
        } else if (b2 != null) {
            try {
                b2.endTransaction();
            } catch (Exception e6) {
            }
        }
    }

    public final synchronized void b(String str, com.cmcm.orion.picks.a.a.a aVar) {
        SQLiteDatabase b2 = b();
        if (b2 != null) {
            try {
                aVar.a(true);
                b2.beginTransaction();
                new StringBuilder("db end to delete cpm, title:").append(aVar.i()).append("num:").append(b2.delete("tbl_" + str, "pkg = ?", new String[]{aVar.l()}));
                b2.setTransactionSuccessful();
                if (b2 != null) {
                    try {
                        b2.endTransaction();
                    } catch (Exception e) {
                    }
                }
            } catch (Exception e2) {
                if (b2 != null) {
                    try {
                        b2.endTransaction();
                    } catch (Exception e3) {
                    }
                }
            } catch (Throwable th) {
                if (b2 != null) {
                    try {
                        b2.endTransaction();
                    } catch (Exception e4) {
                    }
                }
                throw th;
            }
        } else if (b2 != null) {
            try {
                b2.endTransaction();
            } catch (Exception e5) {
            }
        }
    }

    public final synchronized void a(String str) {
        String str2 = "tbl_" + str;
        SQLiteDatabase b2 = b();
        if (b2 != null) {
            a.a(b2, str2);
        }
    }

    public final synchronized int b(String str) {
        Cursor cursor;
        Cursor cursor2;
        int i;
        SQLiteDatabase b2 = b();
        if (b2 == null) {
            i = 0;
        } else {
            String str2 = "tbl_" + str;
            if (a(b2, str2)) {
                try {
                    cursor = b2.query(str2, new String[]{"_id"}, "_id", null, null, null, null);
                    if (cursor != null) {
                        try {
                            if (cursor.getCount() > 0) {
                                i = cursor.getCount();
                                if (cursor != null) {
                                    cursor.close();
                                }
                            }
                        } catch (Exception e) {
                            cursor2 = cursor;
                            if (cursor2 != null) {
                                cursor2.close();
                            }
                            i = 0;
                            return i;
                        } catch (Throwable th) {
                            th = th;
                            if (cursor != null) {
                                cursor.close();
                            }
                            throw th;
                        }
                    }
                    if (cursor != null) {
                        cursor.close();
                    }
                } catch (Exception e2) {
                    cursor2 = null;
                } catch (Throwable th2) {
                    th = th2;
                    cursor = null;
                }
                i = 0;
            } else {
                i = 0;
            }
        }
        return i;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:40:0x006d A[Catch: all -> 0x0067, TRY_ENTER, TryCatch #2 {, blocks: (B:4:0x0002, B:6:0x000d, B:11:0x0015, B:13:0x002a, B:20:0x0055, B:40:0x006d, B:41:0x0070, B:35:0x0063), top: B:3:0x0002 }] */
    /* JADX WARN: Type inference failed for: r9v0 */
    /* JADX WARN: Type inference failed for: r9v1, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r9v2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final synchronized java.util.List<com.cmcm.orion.picks.a.a.a> a(java.lang.String r11, com.cmcm.orion.picks.a.a.m r12) {
        /*
            r10 = this;
            r9 = 0
            monitor-enter(r10)
            java.util.ArrayList r8 = new java.util.ArrayList     // Catch: java.lang.Throwable -> L67
            r8.<init>()     // Catch: java.lang.Throwable -> L67
            android.database.sqlite.SQLiteDatabase r0 = r10.b()     // Catch: java.lang.Throwable -> L67
            if (r0 != 0) goto L15
            r0 = 109(0x6d, float:1.53E-43)
            com.cmcm.orion.picks.a.a.m.a(r12, r0)     // Catch: java.lang.Throwable -> L67
            r0 = r8
        L13:
            monitor-exit(r10)
            return r0
        L15:
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L67
            java.lang.String r2 = "tbl_"
            r1.<init>(r2)     // Catch: java.lang.Throwable -> L67
            java.lang.StringBuilder r1 = r1.append(r11)     // Catch: java.lang.Throwable -> L67
            java.lang.String r1 = r1.toString()     // Catch: java.lang.Throwable -> L67
            boolean r2 = a(r0, r1)     // Catch: java.lang.Throwable -> L67
            if (r2 != 0) goto L31
            r0 = 110(0x6e, float:1.54E-43)
            com.cmcm.orion.picks.a.a.m.a(r12, r0)     // Catch: java.lang.Throwable -> L67
            r0 = r8
            goto L13
        L31:
            r2 = 0
            r3 = 0
            r4 = 0
            r5 = 0
            r6 = 0
            r7 = 0
            android.database.Cursor r0 = r0.query(r1, r2, r3, r4, r5, r6, r7)     // Catch: java.lang.Exception -> L5a java.lang.Throwable -> L6a
            if (r0 == 0) goto L53
            int r1 = r0.getCount()     // Catch: java.lang.Throwable -> L71 java.lang.Exception -> L75
            if (r1 <= 0) goto L53
            r0.moveToFirst()     // Catch: java.lang.Throwable -> L71 java.lang.Exception -> L75
        L46:
            com.cmcm.orion.picks.a.a.a r1 = com.cmcm.orion.picks.a.a.b.a(r0)     // Catch: java.lang.Throwable -> L71 java.lang.Exception -> L75
            r8.add(r1)     // Catch: java.lang.Throwable -> L71 java.lang.Exception -> L75
            boolean r1 = r0.moveToNext()     // Catch: java.lang.Throwable -> L71 java.lang.Exception -> L75
            if (r1 != 0) goto L46
        L53:
            if (r0 == 0) goto L58
            r0.close()     // Catch: java.lang.Throwable -> L67
        L58:
            r0 = r8
            goto L13
        L5a:
            r0 = move-exception
            r0 = r9
        L5c:
            r1 = 111(0x6f, float:1.56E-43)
            com.cmcm.orion.picks.a.a.m.a(r12, r1)     // Catch: java.lang.Throwable -> L71
            if (r0 == 0) goto L58
            r0.close()     // Catch: java.lang.Throwable -> L67
            goto L58
        L67:
            r0 = move-exception
            monitor-exit(r10)
            throw r0
        L6a:
            r0 = move-exception
        L6b:
            if (r9 == 0) goto L70
            r9.close()     // Catch: java.lang.Throwable -> L67
        L70:
            throw r0     // Catch: java.lang.Throwable -> L67
        L71:
            r1 = move-exception
            r9 = r0
            r0 = r1
            goto L6b
        L75:
            r1 = move-exception
            goto L5c
        */
        throw new UnsupportedOperationException("Method not decompiled: com.cmcm.orion.picks.a.a.j.a(java.lang.String, com.cmcm.orion.picks.a.a.m):java.util.List");
    }

    private SQLiteDatabase b() {
        try {
            return this.f844b.getWritableDatabase();
        } catch (Exception e) {
            return null;
        }
    }
}
