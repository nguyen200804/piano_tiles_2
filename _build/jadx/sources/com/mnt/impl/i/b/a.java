package com.mnt.impl.i.b;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.text.TextUtils;
import com.mnt.impl.b.k;
import com.mnt.impl.e;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.UUID;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class a {

    /* renamed from: a, reason: collision with root package name */
    private static final String f4059a;

    /* renamed from: b, reason: collision with root package name */
    private static a f4060b;
    private c c;
    private Context d;

    static {
        String str = e.bz;
        f4059a = e.bA;
    }

    private a(Context context) {
        if (context != null) {
            this.d = context.getApplicationContext();
            this.c = new c(context);
        }
    }

    public static a a(Context context) {
        if (f4060b == null) {
            synchronized (a.class) {
                if (f4060b == null) {
                    f4060b = new a(context);
                }
            }
        }
        return f4060b;
    }

    public final void a(ContentValues contentValues) {
        try {
        } catch (Throwable th) {
            th.printStackTrace();
        }
        if (com.mnt.impl.j.d.b(this.d).a().m.a(3) && contentValues != null) {
            String asString = contentValues.getAsString(c.c);
            if (!TextUtils.isEmpty(asString)) {
                Cursor query = this.c.getReadableDatabase().query(c.f4063a, new String[]{e.bB}, e.bC, new String[]{asString}, null, null, null);
                if (query != null && query.moveToNext()) {
                    query.close();
                    try {
                        this.c.getReadableDatabase().update(c.f4063a, contentValues, e.bD, new String[]{asString});
                    } catch (Throwable th2) {
                        th2.printStackTrace();
                    }
                } else {
                    try {
                        SQLiteDatabase readableDatabase = this.c.getReadableDatabase();
                        contentValues.put(e.bE, UUID.randomUUID().toString());
                        contentValues.put(e.bF, Long.valueOf(System.currentTimeMillis()));
                        com.mnt.impl.j.b a2 = com.mnt.impl.j.d.b(this.d).a();
                        contentValues.put(c.s, (Integer) 21);
                        contentValues.put(c.t, Integer.valueOf(a2.f4073b));
                        contentValues.put(c.u, Integer.valueOf(a2.c));
                        readableDatabase.insert(c.f4063a, null, contentValues);
                    } catch (Throwable th3) {
                        th3.printStackTrace();
                    }
                }
                th.printStackTrace();
            }
        }
    }

    public final void a(String str) {
        com.mnt.impl.l.c.a(new b(this, str));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean b(String str) {
        Cursor cursor;
        Cursor cursor2;
        try {
            SQLiteDatabase readableDatabase = this.c.getReadableDatabase();
            cursor = !TextUtils.isEmpty(str) ? readableDatabase.query(c.f4063a, null, e.bG, new String[]{str}, null, null, null) : readableDatabase.query(c.f4063a, null, e.bH, new String[]{String.valueOf(System.currentTimeMillis() - 3600000)}, null, null, null, e.bI);
            if (cursor != null) {
                try {
                    try {
                        if (cursor.getCount() > 0) {
                            StringBuilder sb = new StringBuilder();
                            ArrayList arrayList = new ArrayList();
                            while (cursor.moveToNext()) {
                                d dVar = new d();
                                TextUtils.isEmpty(cursor.getString(cursor.getColumnIndex(c.z)));
                                String string = cursor.getString(cursor.getColumnIndex(c.f4064b));
                                if (TextUtils.isEmpty(string)) {
                                    string = "";
                                }
                                dVar.f4065a = string;
                                String string2 = cursor.getString(cursor.getColumnIndex(c.c));
                                if (TextUtils.isEmpty(string2)) {
                                    string2 = "";
                                }
                                dVar.f4066b = string2;
                                String string3 = cursor.getString(cursor.getColumnIndex(c.d));
                                if (TextUtils.isEmpty(string3)) {
                                    string3 = "";
                                }
                                dVar.c = string3;
                                String string4 = cursor.getString(cursor.getColumnIndex(c.e));
                                if (TextUtils.isEmpty(string4)) {
                                    string4 = "";
                                }
                                dVar.d = string4;
                                String string5 = cursor.getString(cursor.getColumnIndex(c.f));
                                if (TextUtils.isEmpty(string5)) {
                                    string5 = "";
                                }
                                dVar.e = string5;
                                String string6 = cursor.getString(cursor.getColumnIndex(c.g));
                                if (TextUtils.isEmpty(string6)) {
                                    string6 = "";
                                }
                                dVar.f = string6;
                                String string7 = cursor.getString(cursor.getColumnIndex(c.h));
                                if (TextUtils.isEmpty(string7)) {
                                    string7 = "";
                                }
                                dVar.g = string7;
                                String string8 = cursor.getString(cursor.getColumnIndex(c.i));
                                if (TextUtils.isEmpty(string8)) {
                                    string8 = "";
                                }
                                dVar.h = string8;
                                String string9 = cursor.getString(cursor.getColumnIndex(c.j));
                                if (TextUtils.isEmpty(string9)) {
                                    string9 = e.ba;
                                }
                                dVar.i = string9;
                                String string10 = cursor.getString(cursor.getColumnIndex(c.k));
                                if (TextUtils.isEmpty(string10)) {
                                    string10 = "";
                                }
                                dVar.j = string10;
                                String string11 = cursor.getString(cursor.getColumnIndex(c.l));
                                if (TextUtils.isEmpty(string11)) {
                                    string11 = "";
                                }
                                dVar.k = string11;
                                String string12 = cursor.getString(cursor.getColumnIndex(c.m));
                                if (TextUtils.isEmpty(string12)) {
                                    string12 = "";
                                }
                                dVar.l = string12;
                                String string13 = cursor.getString(cursor.getColumnIndex(c.n));
                                if (TextUtils.isEmpty(string13)) {
                                    string13 = e.bb;
                                }
                                dVar.m = string13;
                                String string14 = cursor.getString(cursor.getColumnIndex(c.o));
                                if (TextUtils.isEmpty(string14)) {
                                    string14 = "";
                                }
                                dVar.n = string14;
                                String string15 = cursor.getString(cursor.getColumnIndex(c.p));
                                if (TextUtils.isEmpty(string15)) {
                                    string15 = "";
                                }
                                dVar.o = string15;
                                String string16 = cursor.getString(cursor.getColumnIndex(c.q));
                                if (TextUtils.isEmpty(string16)) {
                                    string16 = "";
                                }
                                dVar.p = string16;
                                String string17 = cursor.getString(cursor.getColumnIndex(c.r));
                                if (TextUtils.isEmpty(string17)) {
                                    string17 = "";
                                }
                                dVar.q = string17;
                                String string18 = cursor.getString(cursor.getColumnIndex(c.s));
                                if (TextUtils.isEmpty(string18)) {
                                    string18 = "21";
                                }
                                dVar.r = string18;
                                String string19 = cursor.getString(cursor.getColumnIndex(c.t));
                                if (TextUtils.isEmpty(string19)) {
                                    string19 = "";
                                }
                                dVar.s = string19;
                                String string20 = cursor.getString(cursor.getColumnIndex(c.u));
                                if (TextUtils.isEmpty(string20)) {
                                    string20 = "";
                                }
                                dVar.t = string20;
                                String string21 = cursor.getString(cursor.getColumnIndex(c.v));
                                if (TextUtils.isEmpty(string21)) {
                                    string21 = "";
                                }
                                dVar.u = string21;
                                String string22 = cursor.getString(cursor.getColumnIndex(c.w));
                                if (TextUtils.isEmpty(string22)) {
                                    string22 = "";
                                }
                                dVar.v = string22;
                                String string23 = cursor.getString(cursor.getColumnIndex(c.x));
                                if (TextUtils.isEmpty(string23)) {
                                    string23 = "";
                                }
                                dVar.w = string23;
                                String string24 = cursor.getString(cursor.getColumnIndex(c.y));
                                if (TextUtils.isEmpty(string24)) {
                                    string24 = "";
                                }
                                dVar.x = string24;
                                String dVar2 = dVar.toString();
                                StringBuffer stringBuffer = new StringBuffer();
                                com.mnt.impl.i.d.a(stringBuffer, 3);
                                com.mnt.impl.i.d.a(this.d, stringBuffer);
                                stringBuffer.append(dVar2);
                                sb.append(stringBuffer.toString()).append('\r');
                                arrayList.add(dVar.f4066b);
                            }
                            cursor.close();
                            if (!TextUtils.isEmpty(sb.toString())) {
                                sb.deleteCharAt(sb.length() - 1);
                            }
                            if (!com.mnt.a.a.d(this.d)) {
                                if (cursor == null || cursor.isClosed()) {
                                    return true;
                                }
                                cursor.close();
                                return true;
                            }
                            String str2 = e.bJ;
                            try {
                                if (!TextUtils.isEmpty(sb.toString())) {
                                    String sb2 = sb.toString();
                                    if (com.mnt.impl.j.d.b(this.d).a().m.a(3)) {
                                        String a2 = com.mnt.impl.i.a.b.a(URLEncoder.encode(sb2, e.bM), e.bL);
                                        if (a2 != null) {
                                            a2 = k.a(a2.getBytes());
                                        }
                                        new com.mnt.impl.f.e().a(f4059a, a2);
                                    }
                                }
                                int i = 0;
                                boolean z = true;
                                while (i < arrayList.size()) {
                                    boolean z2 = readableDatabase.delete(c.f4063a, e.bK, new String[]{(String) arrayList.get(i)}) <= 0 ? false : z;
                                    i++;
                                    z = z2;
                                }
                                boolean z3 = (!TextUtils.isEmpty(sb.toString()) && z && TextUtils.isEmpty(str)) ? false : true;
                                if (cursor != null && !cursor.isClosed()) {
                                    cursor.close();
                                }
                                return z3;
                            } catch (Throwable th) {
                                th.printStackTrace();
                                if (cursor == null || cursor.isClosed()) {
                                    return true;
                                }
                                cursor.close();
                                return true;
                            }
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        if (cursor != null && !cursor.isClosed()) {
                            cursor.close();
                        }
                        throw th;
                    }
                } catch (Throwable th3) {
                    th = th3;
                    cursor2 = cursor;
                    try {
                        th.printStackTrace();
                        if (cursor2 == null || cursor2.isClosed()) {
                            return true;
                        }
                        cursor2.close();
                        return true;
                    } catch (Throwable th4) {
                        th = th4;
                        cursor = cursor2;
                        if (cursor != null) {
                            cursor.close();
                        }
                        throw th;
                    }
                }
            }
            if (cursor == null || cursor.isClosed()) {
                return true;
            }
            cursor.close();
            return true;
        } catch (Throwable th5) {
            th = th5;
            cursor = null;
        }
    }
}
