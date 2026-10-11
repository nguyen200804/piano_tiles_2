package com.mopub.dg.a;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.database.sqlite.SQLiteStatement;
import com.mopub.dg.adapi.AdData;
import com.mopub.dg.c.g;
import com.mopub.dg.d.n;
import java.util.ArrayList;
import java.util.List;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class a extends SQLiteOpenHelper {

    /* renamed from: a, reason: collision with root package name */
    private Context f4246a;

    /* renamed from: b, reason: collision with root package name */
    private String f4247b;

    public a(Context context, String str, String str2) {
        super(context, "dgadsdb" + str + str2, (SQLiteDatabase.CursorFactory) null, 6);
        this.f4247b = "dgadsdata";
        this.f4246a = context;
        this.f4247b = "dgadsdata";
    }

    public a(Context context, String str, String str2, String str3) {
        super(context, "dgadsdb" + str + str2, (SQLiteDatabase.CursorFactory) null, 6);
        this.f4247b = "dgadsdata";
        this.f4246a = context;
        this.f4247b = "dgadsdata" + str3;
    }

    private void a(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("create table if not exists " + this.f4247b + "(id integer primary key,ad_id varchar(30),ad_title varchar(100),icon_url text,ad_des text,image_url text,pkpath text,click_record_url text,click_track_url text,click_count integer,create_time long,state integer default 0)");
    }

    private AdData c(String str) {
        AdData adData;
        Exception e;
        try {
            try {
                Cursor rawQuery = getWritableDatabase().rawQuery("select ad_id,pkpath,click_record_url,ad_title,icon_url,image_url,ad_des,click_track_url from " + this.f4247b + " where ad_id='" + str + "'", null);
                if (rawQuery == null || !rawQuery.moveToNext()) {
                    adData = null;
                } else {
                    adData = new AdData();
                    try {
                        adData.setAdID(rawQuery.getString(0));
                        adData.setPackageName(rawQuery.getString(1));
                        adData.setClickRecordUrl(rawQuery.getString(2));
                        adData.setTitle(rawQuery.getString(3));
                        adData.setIconUrl(rawQuery.getString(4));
                        adData.setImageUrl(rawQuery.getString(5));
                        adData.setContent(rawQuery.getString(6));
                        adData.setClickTrackUrl(rawQuery.getString(7));
                        rawQuery.close();
                    } catch (Exception e2) {
                        e = e2;
                        n.a(e);
                        return adData;
                    }
                }
            } catch (Exception e3) {
                adData = null;
                e = e3;
            }
            return adData;
        } finally {
            c();
        }
    }

    private void c() {
        try {
            getWritableDatabase().close();
        } catch (Exception e) {
            n.a("", e);
        }
    }

    public final List a() {
        ArrayList arrayList = new ArrayList();
        try {
            String str = " where create_time <= " + Math.abs(System.currentTimeMillis() - 43200000);
            StringBuffer stringBuffer = new StringBuffer("select ad_id,pkpath,click_record_url,ad_title,icon_url,image_url,ad_des,click_track_url from ");
            stringBuffer.append(this.f4247b);
            stringBuffer.append(str);
            stringBuffer.append(" order by click_count,state,id asc limit " + (g.l / 2));
            Cursor rawQuery = getReadableDatabase().rawQuery(stringBuffer.toString(), null);
            if (rawQuery != null) {
                while (rawQuery.moveToNext()) {
                    AdData adData = new AdData();
                    adData.setAdID(rawQuery.getString(0));
                    adData.setPackageName(rawQuery.getString(1));
                    adData.setClickRecordUrl(rawQuery.getString(2));
                    adData.setTitle(rawQuery.getString(3));
                    adData.setIconUrl(rawQuery.getString(4));
                    adData.setImageUrl(rawQuery.getString(5));
                    adData.setContent(rawQuery.getString(6));
                    adData.setClickTrackUrl(rawQuery.getString(7));
                    if (!com.mopub.dg.d.a.a(this.f4246a, adData.getPackageName())) {
                        arrayList.add(adData);
                    }
                }
                rawQuery.close();
            }
        } catch (Exception e) {
            n.a(e);
        } finally {
            c();
        }
        return arrayList;
    }

    public final void a(AdData adData) {
        try {
            if (c(adData.getAdID()) != null) {
                return;
            }
            ContentValues contentValues = new ContentValues();
            contentValues.put("ad_id", adData.getAdID());
            contentValues.put("pkpath", adData.getPackageName());
            contentValues.put("click_record_url", adData.getClickRecordUrl());
            contentValues.put("click_track_url", adData.getClickTrackUrl());
            contentValues.put("click_count", (Integer) 0);
            contentValues.put("create_time", (Integer) 0);
            contentValues.put("ad_title", adData.getTitle());
            contentValues.put("icon_url", adData.getIconUrl());
            contentValues.put("image_url", adData.getImageUrl());
            contentValues.put("ad_des", adData.getContent());
            getWritableDatabase().insert(this.f4247b, null, contentValues);
        } catch (Exception e) {
            n.a(e);
        } finally {
            c();
        }
    }

    public final void a(String str) {
        try {
            StringBuffer stringBuffer = new StringBuffer("update ");
            stringBuffer.append(this.f4247b);
            stringBuffer.append(" set state = state + 1 where ad_id=?");
            SQLiteStatement compileStatement = getWritableDatabase().compileStatement(stringBuffer.toString());
            compileStatement.bindString(1, str);
            compileStatement.execute();
            compileStatement.close();
        } catch (Exception e) {
            n.a(e);
        } finally {
            c();
        }
    }

    public final void b() {
        try {
            getWritableDatabase().execSQL("delete from " + this.f4247b);
        } catch (Exception e) {
            n.a("", e);
        } finally {
            c();
        }
    }

    public final void b(String str) {
        try {
            StringBuffer stringBuffer = new StringBuffer("delete from ");
            stringBuffer.append(this.f4247b);
            stringBuffer.append(" where ad_id=?");
            SQLiteStatement compileStatement = getWritableDatabase().compileStatement(stringBuffer.toString());
            compileStatement.bindString(1, str);
            compileStatement.execute();
            compileStatement.close();
        } catch (Exception e) {
            n.a(e);
        } finally {
            c();
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onCreate(SQLiteDatabase sQLiteDatabase) {
        a(sQLiteDatabase);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        if (i != i2) {
            sQLiteDatabase.execSQL("drop table if exists " + this.f4247b);
            a(sQLiteDatabase);
        }
    }
}
