package com.mnt.impl.i.b;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import com.mnt.impl.e;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class c extends SQLiteOpenHelper {
    private static final String A = e.bN;

    /* renamed from: a, reason: collision with root package name */
    public static final String f4063a = e.bO;

    /* renamed from: b, reason: collision with root package name */
    static final String f4064b = e.bP;
    public static final String c = e.bQ;
    public static final String d = e.bR;
    public static final String e = e.bS;
    public static final String f = e.bT;
    public static final String g = e.bU;
    public static final String h = e.bV;
    public static final String i = e.bW;
    public static final String j = e.bX;
    public static final String k = e.bY;
    public static final String l = e.bZ;
    public static final String m = e.ca;
    public static final String n = e.cb;
    public static final String o = e.cc;
    public static final String p = e.cd;
    public static final String q = e.ce;
    public static final String r = e.cf;
    public static final String s = e.cg;
    public static final String t = e.ch;
    public static final String u = e.ci;
    public static final String v = e.cj;
    public static final String w = e.ck;
    public static final String x = e.cl;
    public static final String y = e.cm;
    public static final String z = e.cn;
    private static final String B = e.co + f4063a + e.cp + f4064b + e.cq + e + e.cr + c + e.cs + d + e.ct + f + e.cu + k + e.cv + l + e.cw + g + e.cx + h + e.cy + j + e.cz + i + e.cA + p + e.cB + m + e.cC + o + e.cD + r + e.cE + n + e.cF + q + e.cG + s + e.cH + t + e.cI + u + e.cJ + v + e.cK + w + e.cL + x + e.cM + y + e.cN + z + e.cO;

    c(Context context) {
        super(context, A, (SQLiteDatabase.CursorFactory) null, 2);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onCreate(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL(B);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onUpgrade(SQLiteDatabase sQLiteDatabase, int i2, int i3) {
        switch (i2) {
            case 1:
                sQLiteDatabase.execSQL(e.cP + f4063a + e.cQ + x + e.cR);
                sQLiteDatabase.execSQL(e.cS + f4063a + e.cT + y + e.cU);
                break;
        }
    }
}
