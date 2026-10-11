package com.duapps.ad.stats;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;

/* compiled from: ToolStatsDbHelper.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class g extends SQLiteOpenHelper {
    public g(Context context) {
        super(context, "du_ad_ts.db", (SQLiteDatabase.CursorFactory) null, 1);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS srecord(_id INTEGER primary key autoincrement,ts INTEGER,ls TEXT,child TEXT,stype TEXT,content BLOB);");
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
