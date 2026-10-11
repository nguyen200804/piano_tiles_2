package com.cmcm.orion.picks.a.a;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.text.TextUtils;
import com.mopub.common.AdType;
import com.mopub.mobileads.VastIconXmlManager;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: AdUtil.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class b {

    /* renamed from: a, reason: collision with root package name */
    public static int f822a = 57;

    public static a a(String str, JSONObject jSONObject, String str2) {
        int i = 0;
        a aVar = new a();
        if (jSONObject == null) {
            return aVar;
        }
        aVar.f(jSONObject.optString("title", ""));
        aVar.g(jSONObject.optString("desc", ""));
        aVar.h(jSONObject.optString("pic_url", ""));
        aVar.i(jSONObject.optString("pkg", ""));
        aVar.j(jSONObject.optString("pkg_url", ""));
        aVar.k(jSONObject.optString("des", ""));
        aVar.l(jSONObject.optString("download_num", ""));
        aVar.a(jSONObject.optDouble("rating", 0.0d));
        aVar.m(jSONObject.optString("pkg_size", ""));
        aVar.c(jSONObject.optInt("res_type", 0));
        aVar.d(jSONObject.optInt("mt_type", 0));
        aVar.e(jSONObject.optInt("app_show_type", 0));
        aVar.o(jSONObject.optString("background", ""));
        aVar.p(jSONObject.optString("button_txt", ""));
        aVar.r(jSONObject.optString(AdType.HTML, ""));
        aVar.q(jSONObject.optString("extension", ""));
        aVar.e(jSONObject.optString("deeplink", ""));
        aVar.b(jSONObject.optInt("priority", 0));
        aVar.a(jSONObject.optString("click_tracking_url", ""));
        aVar.b(jSONObject.optString("third_imp_url", ""));
        aVar.v(jSONObject.optString("install_tracking_url", ""));
        aVar.a(jSONObject.optLong("create_time", System.currentTimeMillis()));
        if (!TextUtils.isEmpty(str)) {
            aVar.c(str);
        } else {
            aVar.c(jSONObject.optString("posid"));
        }
        aVar.a(jSONObject.optInt("is_show", 0) == 1);
        aVar.d(jSONObject.optString("ext_pics", ""));
        aVar.n(jSONObject.optString("source", ""));
        aVar.f(jSONObject.optInt("app_id", 0));
        aVar.g(jSONObject.optInt("brand_type", 0));
        aVar.t(str2);
        aVar.u(jSONObject.optString("news_ad", ""));
        aVar.a(jSONObject.optInt("ad_status", 0));
        if (!jSONObject.isNull("mpa")) {
            try {
                String jSONArray = jSONObject.getJSONArray("mpa").toString();
                aVar.s(jSONArray);
                ArrayList arrayList = new ArrayList();
                try {
                    JSONArray jSONArray2 = new JSONArray(jSONArray);
                    while (true) {
                        int i2 = i;
                        if (i2 >= jSONArray2.length()) {
                            break;
                        }
                        JSONObject jSONObject2 = (JSONObject) jSONArray2.get(i2);
                        arrayList.add(new k(jSONObject2.getString("mpa_id"), jSONObject2.getString("ac"), jSONObject2.getString("title"), jSONObject2.getString("pic_url"), jSONObject2.getString("pkg_url")));
                        i = i2 + 1;
                    }
                } catch (JSONException e) {
                }
                l lVar = new l();
                lVar.a(arrayList);
                aVar.a(lVar);
            } catch (JSONException e2) {
            }
        }
        aVar.h(jSONObject.optInt(VastIconXmlManager.WIDTH));
        aVar.i(jSONObject.optInt(VastIconXmlManager.HEIGHT));
        aVar.b(jSONObject.optLong("report_interval", 0L));
        aVar.j(jSONObject.optInt("report_ratio", 100));
        return aVar;
    }

    private static ContentValues a(a aVar) {
        ContentValues contentValues = new ContentValues();
        try {
            contentValues.put("title", a(aVar.i()));
            contentValues.put("pic_url", a(aVar.k()));
            contentValues.put("pkg", a(aVar.l()));
            contentValues.put("pkg_url", a(aVar.m()));
            contentValues.put("desc", a(aVar.j()));
            contentValues.put("des", a(aVar.n()));
            contentValues.put("download_num", a(aVar.o()));
            contentValues.put("rating", Double.valueOf(aVar.r()));
            contentValues.put("pkg_size", a(aVar.p()));
            contentValues.put("res_type", Integer.valueOf(aVar.q()));
            contentValues.put("mt_type", Integer.valueOf(aVar.s()));
            contentValues.put("app_show_type", Integer.valueOf(aVar.t()));
            contentValues.put("background", aVar.B());
            contentValues.put("button_txt", aVar.C());
            contentValues.put(AdType.HTML, aVar.E());
            contentValues.put("extension", aVar.D());
            contentValues.put("deeplink", aVar.h());
            contentValues.put("priority", Integer.valueOf(aVar.g()));
            contentValues.put("click_tracking_url", aVar.b());
            contentValues.put("third_imp_url", aVar.c());
            contentValues.put("create_time", Long.valueOf(aVar.f()));
            contentValues.put("posid", aVar.d());
            contentValues.put("is_show", Integer.valueOf(aVar.z() ? 1 : 0));
            contentValues.put("ext_pics", aVar.e());
            contentValues.put("mpa", aVar.G());
            contentValues.put("source", aVar.w());
            contentValues.put("app_id", Integer.valueOf(aVar.x()));
            contentValues.put("brand_type", Integer.valueOf(aVar.J()));
            contentValues.put("tabid", aVar.H());
            contentValues.put("news_ad", aVar.I());
            contentValues.put("ad_status", Integer.valueOf(aVar.a()));
            contentValues.put(VastIconXmlManager.WIDTH, Integer.valueOf(aVar.M()));
            contentValues.put(VastIconXmlManager.HEIGHT, Integer.valueOf(aVar.N()));
            contentValues.put("report_interval", Long.valueOf(aVar.L()));
            contentValues.put("report_ratio", Integer.valueOf(aVar.O()));
        } catch (Exception e) {
        }
        return contentValues;
    }

    public static ContentValues a(a aVar, String str) {
        if (!TextUtils.isEmpty(str)) {
            aVar.c(str.split("_")[0]);
        }
        return a(aVar);
    }

    private static String a(String str) {
        return str == null ? "" : str;
    }

    public static a a(Cursor cursor) {
        if (cursor == null) {
            return null;
        }
        a aVar = new a();
        aVar.f(cursor.getString(cursor.getColumnIndex("title")));
        aVar.h(cursor.getString(cursor.getColumnIndex("pic_url")));
        aVar.i(cursor.getString(cursor.getColumnIndex("pkg")));
        aVar.j(cursor.getString(cursor.getColumnIndex("pkg_url")));
        aVar.k(cursor.getString(cursor.getColumnIndex("des")));
        aVar.g(cursor.getString(cursor.getColumnIndex("desc")));
        aVar.l(cursor.getString(cursor.getColumnIndex("download_num")));
        aVar.a(cursor.getDouble(cursor.getColumnIndex("rating")));
        aVar.m(cursor.getString(cursor.getColumnIndex("pkg_size")));
        aVar.c(cursor.getInt(cursor.getColumnIndex("res_type")));
        aVar.d(cursor.getInt(cursor.getColumnIndex("mt_type")));
        aVar.e(cursor.getInt(cursor.getColumnIndex("app_show_type")));
        aVar.o(cursor.getString(cursor.getColumnIndex("background")));
        aVar.p(cursor.getString(cursor.getColumnIndex("button_txt")));
        aVar.r(cursor.getString(cursor.getColumnIndex(AdType.HTML)));
        aVar.q(cursor.getString(cursor.getColumnIndex("extension")));
        aVar.e(cursor.getString(cursor.getColumnIndex("deeplink")));
        aVar.b(cursor.getInt(cursor.getColumnIndex("priority")));
        aVar.a(cursor.getString(cursor.getColumnIndex("click_tracking_url")));
        aVar.b(cursor.getString(cursor.getColumnIndex("third_imp_url")));
        aVar.a(cursor.getLong(cursor.getColumnIndex("create_time")));
        aVar.c(cursor.getString(cursor.getColumnIndex("posid")));
        aVar.a(cursor.getInt(cursor.getColumnIndex("is_show")) == 1);
        aVar.d(cursor.getString(cursor.getColumnIndex("ext_pics")));
        aVar.s(cursor.getString(cursor.getColumnIndex("mpa")));
        aVar.n(cursor.getString(cursor.getColumnIndex("source")));
        aVar.f(cursor.getInt(cursor.getColumnIndex("app_id")));
        aVar.g(cursor.getInt(cursor.getColumnIndex("brand_type")));
        aVar.t(cursor.getString(cursor.getColumnIndex("tabid")));
        aVar.u(cursor.getString(cursor.getColumnIndex("news_ad")));
        aVar.a(cursor.getInt(cursor.getColumnIndex("ad_status")));
        aVar.h(cursor.getInt(cursor.getColumnIndex(VastIconXmlManager.WIDTH)));
        aVar.i(cursor.getInt(cursor.getColumnIndex(VastIconXmlManager.HEIGHT)));
        aVar.b(cursor.getLong(cursor.getColumnIndex("report_interval")));
        aVar.j(cursor.getInt(cursor.getColumnIndex("report_ratio")));
        return aVar;
    }

    public static void a(SQLiteDatabase sQLiteDatabase, String str) {
        sQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS " + str + "(_id INTEGER PRIMARY KEY,title TEXT,desc TEXT,pic_url TEXT,pkg TEXT,pkg_url TEXT,des TEXT,download_num TEXT,rating DOUBLE,pkg_size TEXT,res_type INTEGER,app_show_type INTEGER,mt_type INTEGER,background TEXT,button_txt TEXT,font INTEGER,html TEXT,extension TEXT,deeplink TEXT,priority INTEGER,click_tracking_url TEXT,third_imp_url TEXT,create_time INTEGER,posid TEXT,is_show INTEGER,mpa TEXT,ext_pics TEXT,source TEXT,app_id INTEGER,brand_type INTEGER,tabid TEXT,news_ad TEXT,ad_status INTEGER,width INTEGER,height INTEGER,report_interval INTEGER,report_ratio INTEGER);");
    }
}
