package com.cmplay.webview.ipc;

import android.content.ContentProvider;
import android.content.ContentProviderClient;
import android.content.ContentResolver;
import android.content.ContentValues;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build;
import android.text.TextUtils;
import com.cmplay.base.util.webview.ipc.IWebIpcProviderInvoker;
import com.cmplay.i.c;
import com.cmplay.ipc.b;
import com.cmplay.ipc.d;
import com.cmplay.tile2.GameApp;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class WebIpcProvider extends ContentProvider {

    /* renamed from: b, reason: collision with root package name */
    private static String f1966b;
    private static Uri c;
    private static int d;
    private static Object e = new Object();
    private static boolean f = false;

    /* renamed from: a, reason: collision with root package name */
    public static ContentProviderClient f1965a = null;

    private static ContentResolver c() {
        return GameApp.f1598a.getContentResolver();
    }

    @Override // android.content.ContentProvider
    public boolean onCreate() {
        c.a(getContext());
        return true;
    }

    @Override // android.content.ContentProvider
    public Cursor query(Uri uri, String[] projection, String selection, String[] selectionArgs, String sortOrder) {
        return null;
    }

    @Override // android.content.ContentProvider
    public String getType(Uri uri) {
        return null;
    }

    @Override // android.content.ContentProvider
    public Uri insert(Uri uri, ContentValues values) {
        c.e();
        String str = "";
        if (values != null && (str = a(2, values)) == null) {
            str = "";
        }
        StringBuilder append = new StringBuilder(uri.toString()).append("/").append(str);
        com.cmplay.util.c.b("ly", "webipc provider insert = " + append.toString());
        return Uri.parse(append.toString());
    }

    @Override // android.content.ContentProvider
    public int delete(Uri uri, String selection, String[] selectionArgs) {
        return 0;
    }

    @Override // android.content.ContentProvider
    public int update(Uri uri, ContentValues values, String selection, String[] selectionArgs) {
        return 0;
    }

    private String a(int i, ContentValues contentValues) {
        b a2 = d.a(i);
        if (a2 == null) {
            return "";
        }
        a2.a(getContext());
        return a2.a(contentValues);
    }

    public static String a(ContentValues contentValues, a aVar) {
        if (aVar == null) {
            return "";
        }
        if (contentValues == null) {
            contentValues = new ContentValues();
        }
        contentValues.put(IWebIpcProviderInvoker.IPC_ID, Integer.valueOf(aVar.a()));
        a();
        Uri uri = null;
        try {
            uri = c().insert(c, contentValues);
        } catch (IllegalArgumentException e2) {
        } catch (IllegalStateException e3) {
            e3.printStackTrace();
        } catch (NullPointerException e4) {
        }
        com.cmplay.util.c.b("ly", "web ipc invoke = " + uri);
        if (uri != null) {
            String uri2 = uri.toString();
            if (TextUtils.isEmpty(uri2) || uri2.length() <= d) {
                return "";
            }
            return uri2.substring(d);
        }
        return "";
    }

    public static void a() {
        synchronized (e) {
            f1966b = GameApp.f1598a.getPackageName() + ".ipc.web";
            if (!f) {
                f = true;
                if (c == null) {
                    c = Uri.parse("content://" + f1966b);
                    d = c.toString().length() + 1;
                }
                if ((Build.VERSION.SDK_INT >= 16 && Build.VERSION.SDK_INT <= 18) || (Build.VERSION.SDK_INT >= 9 && Build.VERSION.SDK_INT <= 10)) {
                    f1965a = c().acquireContentProviderClient(c);
                    com.cmplay.util.c.b("ly", "sContentUri = " + c + " s_cpClientFixer = " + f1965a);
                }
            }
        }
    }

    public static void b() {
        try {
            if (f1965a != null) {
                f1965a.release();
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        f1965a = null;
        c = null;
        f = false;
    }
}
