package com.cmplay.ipc;

import android.content.ContentProvider;
import android.content.ContentProviderClient;
import android.content.ContentResolver;
import android.content.ContentValues;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build;
import android.text.TextUtils;
import com.cmplay.base.util.webview.ipc.IWebIpcProviderInvoker;
import com.cmplay.tile2.GameApp;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class IpcProvider extends ContentProvider {

    /* renamed from: a, reason: collision with root package name */
    private static Uri f1548a = Uri.parse("content://com.cmplay.tiles4.ipc_provider");

    /* renamed from: b, reason: collision with root package name */
    private static int f1549b = f1548a.toString().length() + 1;
    private static Object c = new Object();
    private static boolean d = false;
    private static ContentProviderClient e = null;

    private static ContentResolver b() {
        return GameApp.f1598a.getContentResolver();
    }

    public static void a() {
        synchronized (c) {
            if (!d) {
                d = true;
                if ((Build.VERSION.SDK_INT >= 16 && Build.VERSION.SDK_INT <= 18) || (Build.VERSION.SDK_INT >= 9 && Build.VERSION.SDK_INT <= 10)) {
                    e = b().acquireContentProviderClient(f1548a);
                }
            }
        }
    }

    @Override // android.content.ContentProvider
    public boolean onCreate() {
        com.cmplay.i.c.a(getContext());
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
        com.cmplay.i.c.d();
        String str = "";
        if (values != null && (str = a(values.getAsInteger(IWebIpcProviderInvoker.IPC_ID).intValue(), values)) == null) {
            str = "";
        }
        return Uri.parse(uri.toString() + "/" + str);
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
        a2.a(getContext());
        if (a2 == null) {
            return "";
        }
        return a2.a(contentValues);
    }

    public static String a(ContentValues contentValues, c cVar) {
        if (cVar == null) {
            return "";
        }
        if (contentValues == null) {
            contentValues = new ContentValues();
        }
        contentValues.put(IWebIpcProviderInvoker.IPC_ID, Integer.valueOf(cVar.a()));
        a();
        Uri uri = null;
        try {
            uri = b().insert(f1548a, contentValues);
        } catch (IllegalArgumentException e2) {
        } catch (IllegalStateException e3) {
        }
        if (uri != null) {
            String uri2 = uri.toString();
            if (TextUtils.isEmpty(uri2) || uri2.length() <= f1549b) {
                return "";
            }
            return uri2.substring(f1549b);
        }
        return "";
    }
}
