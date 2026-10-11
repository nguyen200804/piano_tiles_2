package com.cmplay.crashreport;

import android.content.Context;
import android.text.TextUtils;
import java.io.InputStream;
import java.util.Properties;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class b {

    /* renamed from: a, reason: collision with root package name */
    private static String f1293a = null;

    /* renamed from: b, reason: collision with root package name */
    private static String f1294b = null;
    private static boolean c = false;
    private static String d = "";

    static String a() {
        return f1293a;
    }

    public static void a(Context context, a aVar) {
        Properties properties;
        InputStream open;
        String str = TextUtils.equals("InternalVersion", "CnVersion") ? "crash_report_cn.config" : "crash_report_en.config";
        try {
            properties = new Properties();
            open = context.getAssets().open(str);
        } catch (Exception e) {
            e.printStackTrace();
        }
        try {
            properties.load(open);
            open.close();
            f1293a = properties.getProperty("crash_log_url");
            f1294b = properties.getProperty("anr_dump_url");
            d = properties.getProperty("product_id");
            String property = properties.getProperty("is_cn_version");
            try {
                if (!TextUtils.isEmpty(property)) {
                    c = Boolean.valueOf(property).booleanValue();
                }
            } catch (NumberFormatException e2) {
            }
            m.a().a(context, aVar);
        } catch (Throwable th) {
            open.close();
            throw th;
        }
    }

    static String b() {
        return f1294b;
    }

    static String c() {
        return d;
    }

    static boolean d() {
        return c;
    }
}
