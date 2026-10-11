package com.duapps.ad.base;

import android.content.Context;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.List;
import org.apache.http.NameValuePair;
import org.apache.http.message.BasicNameValuePair;

/* compiled from: HttpParamsHelper.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class g {

    /* renamed from: a, reason: collision with root package name */
    private static final List<NameValuePair> f2035a = new ArrayList();

    /* renamed from: b, reason: collision with root package name */
    private static boolean f2036b = false;

    private g() {
    }

    public static void a(Context context) {
        synchronized (g.class) {
            if (!f2036b) {
                f2035a.add(new BasicNameValuePair("h", b.b(context)));
                f2035a.add(new BasicNameValuePair("w", b.c(context)));
                f2035a.add(new BasicNameValuePair("model", b.b()));
                f2035a.add(new BasicNameValuePair("vendor", b.a()));
                f2035a.add(new BasicNameValuePair("sdk", b.c()));
                f2035a.add(new BasicNameValuePair("dpi", b.g(context)));
                f2035a.add(new BasicNameValuePair("sv", "1.0.9.7"));
                f2035a.add(new BasicNameValuePair("svn", "CW-1.0.9.7"));
                f2035a.add(new BasicNameValuePair("pkg", b.a(context)));
                f2035a.add(new BasicNameValuePair("v", String.valueOf(b.e(context))));
                f2035a.add(new BasicNameValuePair("vn", b.d(context)));
                f2036b = true;
            }
        }
    }

    public static List<NameValuePair> a(Context context, String str, boolean z) {
        a(context);
        ArrayList arrayList = new ArrayList(f2035a);
        String f = b.f(context);
        if (!TextUtils.isEmpty(f)) {
            arrayList.add(new BasicNameValuePair("op", f));
        }
        String a2 = f.a(context);
        if (!TextUtils.isEmpty(a2)) {
            arrayList.add(new BasicNameValuePair("goid", "RSB_" + com.duapps.ad.c.b.c.a(a2)));
        }
        arrayList.add(new BasicNameValuePair("locale", b.h(context)));
        arrayList.add(new BasicNameValuePair("ntt", b.i(context)));
        arrayList.add(new BasicNameValuePair("ls", str));
        String c = com.duapps.ad.c.b.c.c(context);
        if (!TextUtils.isEmpty(c)) {
            arrayList.add(new BasicNameValuePair("aid", c));
        }
        if (z) {
            arrayList.add(new BasicNameValuePair("pk", m.y(context)));
        }
        String a3 = a.a();
        if (!TextUtils.isEmpty(a3)) {
            arrayList.add(new BasicNameValuePair("lc", a3));
        }
        return arrayList;
    }
}
