package com.cmplay.tile2;

import android.content.ContentProvider;
import android.content.ContentProviderClient;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class NullProvider extends ContentProvider {

    /* renamed from: a, reason: collision with root package name */
    private static Uri f1603a = Uri.parse("content://com.cmplay.tiles4.null_provider");

    /* renamed from: b, reason: collision with root package name */
    private static ContentProviderClient f1604b = null;
    private static Object c = new Object();
    private static boolean d = false;

    private static void c(Context context) {
        synchronized (c) {
            if (!d) {
                d = true;
                if ((Build.VERSION.SDK_INT >= 16 && Build.VERSION.SDK_INT <= 18) || (Build.VERSION.SDK_INT >= 9 && Build.VERSION.SDK_INT <= 10)) {
                    f1604b = context.getContentResolver().acquireContentProviderClient(f1603a);
                }
            }
        }
    }

    public static void a(Context context) {
        c(context);
        try {
            context.getContentResolver().insert(f1603a, new ContentValues());
        } catch (Exception e) {
        }
    }

    public static void b(Context context) {
        synchronized (c) {
            try {
                if (f1604b != null) {
                    f1604b.release();
                    f1604b = null;
                    d = false;
                }
            } catch (Exception e) {
            }
        }
    }

    @Override // android.content.ContentProvider
    public boolean onCreate() {
        return false;
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
}
