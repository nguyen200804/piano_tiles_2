package com.duapps.ad.stats;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;

/* compiled from: ToolboxSQLiteHelper.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class k extends SQLiteOpenHelper {
    public k(Context context) {
        super(context, "du_ad_parse.db", (SQLiteDatabase.CursorFactory) null, 2);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS ad_parse(_id INTEGER primary key autoincrement,_url TEXT,pkg TEXT,p_url TEXT,type INTEGER,ts INTEGER);");
        sQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS preparse_cache(_id INTEGER primary key autoincrement,_url TEXT,pkg TEXT,p_url TEXT,type INTEGER,ts INTEGER);");
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        onCreate(sQLiteDatabase);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onDowngrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        onCreate(sQLiteDatabase);
    }
}
