package com.duapps.ad.c;

import android.content.Context;
import android.database.ContentObserver;
import android.database.Cursor;
import android.net.Uri;
import android.os.Handler;
import android.text.TextUtils;
import java.io.Closeable;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class a {

    /* renamed from: a, reason: collision with root package name */
    private static final Uri f2092a = Uri.parse("content://downloads");

    /* renamed from: b, reason: collision with root package name */
    private static final String f2093b = a.class.getSimpleName();
    private static a d;
    private Context c;
    private List e = new ArrayList();
    private List f = new ArrayList();
    private ArrayList g = new ArrayList();
    private final Handler h = new Handler(new c(this));
    private final ContentObserver i = new d(this, this.h);

    private a(Context context) {
        this.c = context;
    }

    public static a a(Context context) {
        if (d == null) {
            synchronized (a.class) {
                if (d == null) {
                    d = new a(context.getApplicationContext());
                }
            }
        }
        return d;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Uri uri) {
        List<String> pathSegments = uri.getPathSegments();
        if (pathSegments == null || pathSegments.size() <= 1) {
            return;
        }
        String str = pathSegments.get(1);
        synchronized (this.f) {
            if (!this.f.contains(str)) {
                this.f.add(str);
                a(str);
            }
        }
    }

    private static void a(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException e) {
            }
        }
    }

    private void a(String str) {
        Cursor cursor;
        Throwable th;
        Cursor cursor2 = null;
        try {
            cursor = b(str);
            if (cursor == null) {
                a(cursor);
                return;
            }
            try {
                System.currentTimeMillis();
                cursor.moveToNext();
                String string = cursor.getString(9);
                String string2 = cursor.getString(15);
                if (!TextUtils.isEmpty(string2)) {
                    String queryParameter = Uri.parse(string2).getQueryParameter("packageName");
                    if (!TextUtils.isEmpty(queryParameter)) {
                        synchronized (this.e) {
                            if (this.e.contains(queryParameter)) {
                                a(cursor);
                                return;
                            }
                            this.e.add(queryParameter);
                            synchronized (this.g) {
                                Iterator it = this.g.iterator();
                                while (it.hasNext()) {
                                    ((b) it.next()).a(queryParameter, string);
                                }
                            }
                        }
                    }
                }
                a(cursor);
            } catch (Throwable th2) {
                th = th2;
                a(cursor);
                throw th;
            }
        } catch (Throwable th3) {
            cursor = null;
            th = th3;
        }
    }

    private Cursor b(String str) {
        return this.c.getContentResolver().query(Uri.parse("content://downloads/public_downloads/" + str), null, null, null, null);
    }

    public void a() {
        this.c.getContentResolver().registerContentObserver(f2092a, true, this.i);
    }

    public void a(b bVar) {
        if (this.g.contains(bVar)) {
            return;
        }
        synchronized (this.g) {
            this.g.add(bVar);
        }
    }
}
