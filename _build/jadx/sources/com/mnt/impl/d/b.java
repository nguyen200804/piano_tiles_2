package com.mnt.impl.d;

import android.content.Context;
import android.database.ContentObserver;
import android.database.Cursor;
import android.net.Uri;
import android.os.Handler;
import android.text.TextUtils;
import java.util.Iterator;
import java.util.List;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class b extends ContentObserver {

    /* renamed from: a, reason: collision with root package name */
    private Context f3960a;

    public b(Context context, Handler handler) {
        super(handler);
        this.f3960a = context;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v2, types: [java.lang.Object, java.lang.String] */
    /* JADX WARN: Type inference failed for: r1v3, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r1v5 */
    /* JADX WARN: Type inference failed for: r2v3, types: [java.lang.StringBuilder] */
    @Override // android.database.ContentObserver
    public final void onChange(boolean z, Uri uri) {
        Cursor cursor;
        super.onChange(z, uri);
        e a2 = e.a(this.f3960a);
        boolean z2 = a2.h;
        List<String> pathSegments = uri.getPathSegments();
        if (pathSegments == null || pathSegments.size() <= 1) {
            return;
        }
        String str = pathSegments.get(1);
        synchronized (a2.d) {
            if (!a2.d.contains(str)) {
                a2.d.add(str);
                try {
                } catch (Throwable th) {
                    th = th;
                }
                try {
                    cursor = a2.f3965b.getContentResolver().query(Uri.parse(com.mnt.impl.e.pu + str), null, null, null, null);
                    if (cursor == null) {
                        e.a(cursor);
                    } else {
                        try {
                            cursor.moveToNext();
                            String string = cursor.getString(9);
                            String string2 = cursor.getString(15);
                            if (!TextUtils.isEmpty(string2)) {
                                String queryParameter = Uri.parse(string2).getQueryParameter(com.mnt.impl.e.pt);
                                if (!TextUtils.isEmpty(queryParameter)) {
                                    synchronized (a2.c) {
                                        if (a2.c.contains(queryParameter)) {
                                            e.a(cursor);
                                        } else {
                                            a2.e.put(queryParameter, string);
                                            a2.c.add(queryParameter);
                                            synchronized (a2.f) {
                                                Iterator<g> it = a2.f.iterator();
                                                while (it.hasNext()) {
                                                    it.next().a(string, queryParameter);
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                            e.a(cursor);
                        } catch (Throwable th2) {
                            th = th2;
                            th.printStackTrace();
                            e.a(cursor);
                        }
                    }
                } catch (Throwable th3) {
                    th = th3;
                    cursor = null;
                }
            }
        }
    }
}
