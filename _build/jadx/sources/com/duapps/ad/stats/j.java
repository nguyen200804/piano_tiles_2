package com.duapps.ad.stats;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;

/* compiled from: ToolboxCacheSQLite.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class j extends SQLiteOpenHelper {
    public j(Context context) {
        super(context, "du_ad_cache.db", (SQLiteDatabase.CursorFactory) null, 2);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS cache(_id INTEGER  primary key autoincrement,key TEXT,data TEXT,log TEXT,ts INTEGER);");
        sQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS tbvc(_id INTEGER  primary key autoincrement,pkgName TEXT,cdata TEXT,ctime INTEGER,status INTEGER);");
        sQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS appcache(_id INTEGER  primary key autoincrement,ad_id INTEGER,pkgName TEXT,data TEXT,ctime INTEGER);");
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
