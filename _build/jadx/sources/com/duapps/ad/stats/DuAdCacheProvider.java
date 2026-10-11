package com.duapps.ad.stats;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.Context;
import android.content.UriMatcher;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.net.Uri;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class DuAdCacheProvider extends ContentProvider {

    /* renamed from: b, reason: collision with root package name */
    private static Uri f2248b;
    private static Uri c;
    private static Uri d;
    private static Uri e;
    private static Uri f;
    private static Uri g;
    private static Uri h;
    private static Uri i;
    private static final Object j = new Object();
    private static final Object l = new Object();
    private static final Object n = new Object();
    private static UriMatcher p;

    /* renamed from: a, reason: collision with root package name */
    private String f2249a = DuAdCacheProvider.class.getSimpleName();
    private j k;
    private k m;
    private g o;
    private Context q;

    @Override // android.content.ContentProvider
    public boolean onCreate() {
        this.q = getContext();
        a(this.q);
        return true;
    }

    private void a(Context context) {
        p = a(context.getPackageName() + ".DuAdCacheProvider");
    }

    private static UriMatcher a(String str) {
        f2248b = Uri.parse("content://" + str);
        c = Uri.withAppendedPath(f2248b, "parse");
        d = Uri.withAppendedPath(f2248b, "click");
        e = Uri.withAppendedPath(f2248b, "cache");
        f = Uri.withAppendedPath(f2248b, "record");
        g = Uri.withAppendedPath(f2248b, "preparse");
        h = Uri.withAppendedPath(f2248b, "searchRecord");
        i = Uri.withAppendedPath(f2248b, "preparsecache");
        UriMatcher uriMatcher = new UriMatcher(-1);
        uriMatcher.addURI(str, "parse", 1);
        uriMatcher.addURI(str, "click", 2);
        uriMatcher.addURI(str, "cache", 3);
        uriMatcher.addURI(str, "record", 4);
        uriMatcher.addURI(str, "preparse", 5);
        uriMatcher.addURI(str, "searchRecord", 6);
        uriMatcher.addURI(str, "preparsecache", 7);
        return uriMatcher;
    }

    @Override // android.content.ContentProvider
    public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        Cursor cursor = null;
        int a2 = a(uri);
        if (a2 > 0 && a2 <= 7) {
            synchronized (b(a2)) {
                cursor = b(getContext(), a2).query(a(a2), strArr, str, strArr2, null, null, str2);
            }
        }
        return cursor;
    }

    @Override // android.content.ContentProvider
    public String getType(Uri uri) {
        switch (p.match(uri)) {
            case 1:
                return "vnd.android.cursor.dir/parse";
            case 2:
                return "vnd.android.cursor.dir/click";
            case 3:
                return "vnd.android.cursor.dir/cache";
            case 4:
                return "vnd.android.cursor.dir/record";
            case 5:
                return "vnd.android.cursor.dir/preparse";
            case 6:
                return "vnd.android.cursor.dir/searchRecord";
            case 7:
                return "vnd.android.cursor.dir/preparseCache";
            default:
                return "vnd.android.cursor.dir/unkown";
        }
    }

    @Override // android.content.ContentProvider
    public Uri insert(Uri uri, ContentValues contentValues) {
        int a2 = a(uri);
        if (a2 <= 0 || a2 > 7) {
            return null;
        }
        synchronized (b(a2)) {
            b(getContext(), a2).insert(a(a2), null, contentValues);
        }
        return uri;
    }

    @Override // android.content.ContentProvider
    public int delete(Uri uri, String str, String[] strArr) {
        com.duapps.ad.base.h.c(this.f2249a, new StringBuilder().append("del selcetion  = ").append(str).append(" , selectionArgs = ").append(str).toString() != null ? str.toString() : null);
        int a2 = a(uri);
        int i2 = -1;
        if (a2 > 0 && a2 <= 7) {
            synchronized (b(a2)) {
                i2 = b(getContext(), a2).delete(a(a2), str, strArr);
            }
        }
        return i2;
    }

    @Override // android.content.ContentProvider
    public int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        int a2 = a(uri);
        int i2 = -1;
        if (a2 > 0 && a2 <= 7) {
            synchronized (b(a2)) {
                i2 = b(getContext(), a2).update(a(a2), contentValues, str, strArr);
            }
        }
        return i2;
    }

    private int a(Uri uri) {
        if (uri == null || Uri.EMPTY == uri) {
            return -1;
        }
        int match = p.match(uri);
        com.duapps.ad.base.h.c(this.f2249a, "match code = " + match);
        return match;
    }

    private SQLiteDatabase b(Context context, int i2) {
        switch (i2) {
            case 1:
            case 7:
                if (this.m == null) {
                    this.m = new k(context);
                }
                return this.m.getWritableDatabase();
            case 2:
            case 3:
            case 5:
                if (this.k == null) {
                    this.k = new j(context);
                }
                return this.k.getWritableDatabase();
            case 4:
                if (this.o == null) {
                    this.o = new g(context);
                }
                return this.o.getWritableDatabase();
            case 6:
            default:
                return null;
        }
    }

    private String a(int i2) {
        switch (i2) {
            case 1:
                return "ad_parse";
            case 2:
                return "tbvc";
            case 3:
                return "cache";
            case 4:
                return "srecord";
            case 5:
                return "appcache";
            case 6:
            default:
                return null;
            case 7:
                return "preparse_cache";
        }
    }

    private Object b(int i2) {
        switch (i2) {
            case 1:
            case 7:
                return l;
            case 2:
            case 3:
            case 5:
                return j;
            case 4:
                return n;
            case 6:
            default:
                return null;
        }
    }

    public static Uri a(Context context, int i2) {
        Uri uri = Uri.EMPTY;
        if (f2248b == null) {
            f2248b = Uri.parse("content://" + (context.getPackageName() + ".DuAdCacheProvider"));
        }
        if (c == null) {
            c = Uri.withAppendedPath(f2248b, "parse");
        }
        if (d == null) {
            d = Uri.withAppendedPath(f2248b, "click");
        }
        if (e == null) {
            e = Uri.withAppendedPath(f2248b, "cache");
        }
        if (f == null) {
            f = Uri.withAppendedPath(f2248b, "record");
        }
        if (g == null) {
            g = Uri.withAppendedPath(f2248b, "preparse");
        }
        if (h == null) {
            h = Uri.withAppendedPath(f2248b, "searchRecord");
        }
        if (i == null) {
            i = Uri.withAppendedPath(f2248b, "preparsecache");
        }
        switch (i2) {
            case 1:
                return c;
            case 2:
                return d;
            case 3:
                return e;
            case 4:
                return f;
            case 5:
                return g;
            case 6:
                return h;
            case 7:
                return i;
            default:
                return uri;
        }
    }
}
