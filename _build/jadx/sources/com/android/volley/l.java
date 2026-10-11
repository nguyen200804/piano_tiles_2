package com.android.volley;

import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.text.TextUtils;
import com.android.volley.b;
import com.android.volley.n;
import com.android.volley.t;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.Collections;
import java.util.Map;

/* compiled from: Request.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public abstract class l<T> implements Comparable<l<T>> {

    /* renamed from: a, reason: collision with root package name */
    private final t.a f245a;

    /* renamed from: b, reason: collision with root package name */
    private final int f246b;
    private final String c;
    private final int d;
    private final n.a e;
    private Integer f;
    private m g;
    private boolean h;
    private boolean i;
    private boolean j;
    private long k;
    private p l;
    private b.a m;

    /* compiled from: Request.java */
    public enum a {
        LOW,
        NORMAL,
        HIGH,
        IMMEDIATE
    }

    protected abstract n<T> a(i iVar);

    protected abstract void a(T t);

    public l(int i, String str, n.a aVar) {
        this.f245a = t.a.f259a ? new t.a() : null;
        this.h = true;
        this.i = false;
        this.j = false;
        this.k = 0L;
        this.m = null;
        this.f246b = i;
        this.c = str;
        this.e = aVar;
        a((p) new d());
        this.d = c(str);
    }

    public int a() {
        return this.f246b;
    }

    public int b() {
        return this.d;
    }

    private static int c(String str) {
        Uri parse;
        String host;
        if (TextUtils.isEmpty(str) || (parse = Uri.parse(str)) == null || (host = parse.getHost()) == null) {
            return 0;
        }
        return host.hashCode();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public l<?> a(p pVar) {
        this.l = pVar;
        return this;
    }

    public void a(String str) {
        if (t.a.f259a) {
            this.f245a.a(str, Thread.currentThread().getId());
        } else if (this.k == 0) {
            this.k = SystemClock.elapsedRealtime();
        }
    }

    void b(final String str) {
        if (this.g != null) {
            this.g.b(this);
        }
        if (t.a.f259a) {
            final long id = Thread.currentThread().getId();
            if (Looper.myLooper() != Looper.getMainLooper()) {
                new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.android.volley.l.1
                    @Override // java.lang.Runnable
                    public void run() {
                        l.this.f245a.a(str, id);
                        l.this.f245a.a(toString());
                    }
                });
                return;
            } else {
                this.f245a.a(str, id);
                this.f245a.a(toString());
                return;
            }
        }
        long elapsedRealtime = SystemClock.elapsedRealtime() - this.k;
        if (elapsedRealtime >= 3000) {
            t.b("%d ms: %s", Long.valueOf(elapsedRealtime), toString());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public l<?> a(m mVar) {
        this.g = mVar;
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final l<?> a(int i) {
        this.f = Integer.valueOf(i);
        return this;
    }

    public String c() {
        return this.c;
    }

    public String d() {
        return c();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public l<?> a(b.a aVar) {
        this.m = aVar;
        return this;
    }

    public b.a e() {
        return this.m;
    }

    public void f() {
        this.i = true;
    }

    public boolean g() {
        return this.i;
    }

    public Map<String, String> h() throws com.android.volley.a {
        return Collections.emptyMap();
    }

    @Deprecated
    protected Map<String, String> i() throws com.android.volley.a {
        return m();
    }

    @Deprecated
    protected String j() {
        return n();
    }

    @Deprecated
    public String k() {
        return o();
    }

    @Deprecated
    public byte[] l() throws com.android.volley.a {
        Map<String, String> i = i();
        if (i == null || i.size() <= 0) {
            return null;
        }
        return a(i, j());
    }

    protected Map<String, String> m() throws com.android.volley.a {
        return null;
    }

    protected String n() {
        return "UTF-8";
    }

    public String o() {
        return "application/x-www-form-urlencoded; charset=" + n();
    }

    public byte[] p() throws com.android.volley.a {
        Map<String, String> m = m();
        if (m == null || m.size() <= 0) {
            return null;
        }
        return a(m, n());
    }

    private byte[] a(Map<String, String> map, String str) {
        StringBuilder sb = new StringBuilder();
        try {
            for (Map.Entry<String, String> entry : map.entrySet()) {
                sb.append(URLEncoder.encode(entry.getKey(), str));
                sb.append('=');
                sb.append(URLEncoder.encode(entry.getValue(), str));
                sb.append('&');
            }
            return sb.toString().getBytes(str);
        } catch (UnsupportedEncodingException e) {
            throw new RuntimeException("Encoding not supported: " + str, e);
        }
    }

    public final boolean q() {
        return this.h;
    }

    public a r() {
        return a.NORMAL;
    }

    public final int s() {
        return this.l.a();
    }

    public p t() {
        return this.l;
    }

    public void u() {
        this.j = true;
    }

    public boolean v() {
        return this.j;
    }

    protected s a(s sVar) {
        return sVar;
    }

    public void b(s sVar) {
        if (this.e != null) {
            this.e.a(sVar);
        }
    }

    @Override // java.lang.Comparable
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public int compareTo(l<T> lVar) {
        a r = r();
        a r2 = lVar.r();
        return r == r2 ? this.f.intValue() - lVar.f.intValue() : r2.ordinal() - r.ordinal();
    }

    public String toString() {
        return (this.i ? "[X] " : "[ ] ") + c() + " " + ("0x" + Integer.toHexString(b())) + " " + r() + " " + this.f;
    }
}
