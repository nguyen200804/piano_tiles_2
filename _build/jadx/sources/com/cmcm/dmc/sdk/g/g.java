package com.cmcm.dmc.sdk.g;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import java.util.Iterator;
import java.util.List;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class g extends SQLiteOpenHelper {
    public g(Context context) {
        super(context, "dmc_report", (SQLiteDatabase.CursorFactory) null, 1);
    }

    public Cursor a(int i) {
        try {
            return getWritableDatabase().rawQuery(String.format("SELECT * FROM %s WHERE %s != 1 AND %s >= %s ORDER BY %s DESC, %s DESC LIMIT 100", "report_list", "report", "mode", Integer.valueOf(i), "mode", "timestamp"), null);
        } catch (Exception e) {
            com.cmcm.dmc.sdk.a.i.a("ReportDatabase", "" + e.getMessage());
            return null;
        }
    }

    public void a() {
        try {
            getWritableDatabase().execSQL("UPDATE report_list SET report = ? WHERE report = ?", new Object[]{false, true});
        } catch (Exception e) {
            com.cmcm.dmc.sdk.a.i.a("ReportDatabase", "" + e.getMessage());
        }
    }

    public void a(h hVar) {
        try {
            ContentValues contentValues = new ContentValues();
            hVar.a(contentValues);
            getWritableDatabase().insert("report_list", null, contentValues);
        } catch (Exception e) {
            com.cmcm.dmc.sdk.a.i.a("ReportDatabase", "" + e.getMessage());
        }
    }

    public void a(List<String> list) {
        try {
            SQLiteDatabase writableDatabase = getWritableDatabase();
            Iterator<String> it = list.iterator();
            while (it.hasNext()) {
                writableDatabase.execSQL("DELETE FROM report_list WHERE guid = ?", new Object[]{it.next()});
            }
        } catch (Exception e) {
            com.cmcm.dmc.sdk.a.i.a("ReportDatabase", "" + e.getMessage());
        }
    }

    public void a(List<String> list, boolean z) {
        try {
            SQLiteDatabase writableDatabase = getWritableDatabase();
            Iterator<String> it = list.iterator();
            while (it.hasNext()) {
                writableDatabase.execSQL("UPDATE report_list SET report = ? WHERE guid = ?", new Object[]{Boolean.valueOf(z), it.next()});
            }
        } catch (Exception e) {
            com.cmcm.dmc.sdk.a.i.a("ReportDatabase", "" + e.getMessage());
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        try {
            sQLiteDatabase.execSQL("create table report_list(guid varchar primary key,ver integer,proto integer,mode integer,timestamp integer,type varchar,data varchar,report tinyint default 0)");
        } catch (Exception e) {
            com.cmcm.dmc.sdk.a.i.a("ReportDatabase", "" + e.getMessage());
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
    }
}
