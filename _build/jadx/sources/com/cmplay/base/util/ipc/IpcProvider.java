package com.cmplay.base.util.ipc;

import android.annotation.SuppressLint;
import android.content.ContentProvider;
import android.content.ContentProviderClient;
import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build;
import android.text.TextUtils;
import com.cmplay.base.util.g;
import com.cmplay.base.util.q;
import com.cmplay.internalpush.ipc.IpcCloudHelper;
import java.lang.reflect.Method;
import java.util.HashMap;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class IpcProvider extends ContentProvider {

    /* renamed from: b, reason: collision with root package name */
    private static int f1248b;
    private static ContentProviderClient e;
    private static Context f;

    /* renamed from: a, reason: collision with root package name */
    private static Uri f1247a = null;
    private static Object c = new Object();
    private static boolean d = false;
    private static HashMap<String, Method> g = new HashMap<>();

    private static ContentResolver b() {
        return q.f1259a.getContentResolver();
    }

    @SuppressLint({"NewApi"})
    public static void a() {
        synchronized (c) {
            if (!d) {
                d = true;
                if (f1247a == null) {
                    f1247a = Uri.parse("content://" + (q.f1259a.getPackageName() + ".innerpush_provider"));
                    f1248b = f1247a.toString().length() + 1;
                }
                if ((Build.VERSION.SDK_INT >= 16 && Build.VERSION.SDK_INT <= 18) || (Build.VERSION.SDK_INT >= 9 && Build.VERSION.SDK_INT <= 10)) {
                    e = b().acquireContentProviderClient(f1247a);
                }
            }
        }
    }

    @Override // android.content.ContentProvider
    public boolean onCreate() {
        f = getContext();
        q.a(f);
        g.a(IpcCloudHelper.TAG, "new provider 启动");
        return true;
    }

    public static String a(ContentValues contentValues) {
        Uri uri;
        if (contentValues == null) {
            contentValues = new ContentValues();
        }
        a();
        try {
            uri = b().insert(f1247a, contentValues);
        } catch (IllegalArgumentException e2) {
            e2.printStackTrace();
            uri = null;
        } catch (IllegalStateException e3) {
            e3.printStackTrace();
            uri = null;
        } catch (Exception e4) {
            e4.printStackTrace();
            uri = null;
        }
        if (uri != null) {
            String uri2 = uri.toString();
            if (TextUtils.isEmpty(uri2) || uri2.length() <= f1248b) {
                return "";
            }
            return uri2.substring(f1248b);
        }
        return "";
    }

    @Override // android.content.ContentProvider
    public Uri insert(Uri uri, ContentValues values) {
        q.e();
        String str = "";
        if (values != null && (str = b(values)) == null) {
            str = "";
        }
        return Uri.parse(uri.toString() + "/" + str);
    }

    public String b(ContentValues contentValues) {
        a aVar;
        Method method;
        String asString = contentValues.getAsString(a.CLASS_TAG);
        if (TextUtils.isEmpty(asString)) {
            return "";
        }
        if (g == null) {
            g = new HashMap<>();
        }
        try {
            if (!g.containsKey(asString)) {
                g.a("new_zzb", "className =" + asString);
                method = Class.forName(asString).getMethod(a.FORCE_STATIC_METHOD, new Class[0]);
                g.put(asString, method);
            } else {
                method = g.get(asString);
            }
            aVar = (a) method.invoke(null, new Object[0]);
        } catch (Exception e2) {
            e2.printStackTrace();
            aVar = null;
        }
        if (aVar == null) {
            return "";
        }
        return aVar.handler(contentValues);
    }

    @Override // android.content.ContentProvider
    public String getType(Uri uri) {
        return null;
    }

    @Override // android.content.ContentProvider
    public int delete(Uri uri, String selection, String[] selectionArgs) {
        return 0;
    }

    @Override // android.content.ContentProvider
    public int update(Uri uri, ContentValues values, String selection, String[] selectionArgs) {
        return 0;
    }

    @Override // android.content.ContentProvider
    public Cursor query(Uri uri, String[] projection, String selection, String[] selectionArgs, String sortOrder) {
        return null;
    }
}
