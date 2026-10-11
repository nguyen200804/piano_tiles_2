package com.mnt.impl.f;

import android.content.ContentValues;
import android.content.Context;
import android.content.SharedPreferences;
import android.net.Uri;
import android.text.TextUtils;
import com.mnt.impl.f.o;
import java.net.URL;
import java.net.URLDecoder;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.apache.http.Header;
import org.apache.http.HttpResponse;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.util.EntityUtils;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class h extends com.mnt.impl.b.e<String> implements o.a.InterfaceC0208a {
    private static final Pattern c;
    private static final Pattern d;
    private static final Pattern e;
    private static final Pattern f;
    private static final Pattern g;
    private static String h;
    private static final String i;
    private static final Map<String, com.mnt.impl.e.b> r;
    private static boolean s;

    /* renamed from: a, reason: collision with root package name */
    public boolean f4013a;

    /* renamed from: b, reason: collision with root package name */
    public int f4014b;
    private int j;
    private com.mnt.impl.e.b k;
    private a l;
    private Context m;
    private boolean n;
    private String o;
    private boolean p;
    private boolean q;
    private boolean t;
    private String u;
    private com.mnt.impl.j.b v;
    private ContentValues w;

    public interface a {
        void a(com.mnt.impl.e.b bVar);
    }

    static /* synthetic */ boolean f() {
        s = false;
        return false;
    }

    static {
        String str = com.mnt.impl.e.df;
        c = Pattern.compile(com.mnt.impl.e.dg, 2);
        d = Pattern.compile(com.mnt.impl.e.dh, 2);
        e = Pattern.compile(com.mnt.impl.e.di, 2);
        f = Pattern.compile(com.mnt.impl.e.dj, 2);
        g = Pattern.compile(com.mnt.impl.e.dk);
        h = com.mnt.impl.e.dl;
        i = com.mnt.impl.e.dm;
        r = new ConcurrentHashMap();
        s = false;
    }

    public h(Context context, com.mnt.impl.e.b bVar, a aVar, boolean z) {
        this.j = 30;
        this.o = System.getProperty(com.mnt.impl.e.dn);
        this.p = false;
        this.q = true;
        this.t = false;
        this.f4013a = false;
        this.f4014b = 1;
        this.k = bVar;
        this.l = aVar;
        this.n = z;
        this.m = context;
        this.v = com.mnt.impl.j.d.b(context).a();
        if (this.v.f4072a) {
            this.f4014b = this.v.i;
        }
    }

    public h(Context context, String str) {
        this.j = 30;
        this.o = System.getProperty(com.mnt.impl.e.dn);
        this.p = false;
        this.q = true;
        this.t = false;
        this.f4013a = false;
        this.f4014b = 1;
        this.u = str;
        this.m = context;
        this.t = true;
        this.k = new com.mnt.impl.e.b(null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.mnt.impl.b.e
    /* renamed from: g, reason: merged with bridge method [inline-methods] */
    public String a() {
        if (this.t) {
            try {
                String j = j(this.u);
                if (this.l != null) {
                    this.l.a(null);
                    return j;
                }
                return j;
            } catch (Exception e2) {
                if (this.l == null) {
                    return null;
                }
                this.l.a(null);
                return null;
            } catch (Throwable th) {
                if (this.l != null) {
                    this.l.a(null);
                }
                throw th;
            }
        }
        return h();
    }

    private String h() {
        String str;
        synchronized (this.k.f3983a.intern()) {
            com.mnt.impl.e.b a2 = a(this.m, this.k);
            String str2 = this.k.d;
            if (a(a2, this.n, this.k.f) || this.f4013a) {
                String b2 = b(str2, this.k.f3984b);
                this.w = new ContentValues();
                try {
                    this.w.put(com.mnt.impl.i.b.c.m, com.mnt.impl.e.f0do);
                    this.w.put(com.mnt.impl.i.b.c.c, this.k.f3984b);
                    this.w.put(com.mnt.impl.i.b.c.k, Long.valueOf(System.currentTimeMillis()));
                    this.w.put(com.mnt.impl.i.b.c.s, (Integer) 21);
                    this.w.put(com.mnt.impl.i.b.c.t, Integer.valueOf(this.v.f4073b));
                    this.w.put(com.mnt.impl.i.b.c.u, Integer.valueOf(this.v.c));
                    switch (this.f4014b) {
                        case 1:
                            d(b2);
                            break;
                        case 2:
                            e(b2);
                            break;
                        case 3:
                            this.p = true;
                            e(b2);
                            break;
                        case 4:
                            try {
                                d(b2);
                                break;
                            } catch (Exception e2) {
                                e(b2);
                                break;
                            }
                        default:
                            d(b2);
                            break;
                    }
                    this.w.put(com.mnt.impl.i.b.c.l, Long.valueOf(System.currentTimeMillis()));
                    this.w.put(com.mnt.impl.i.b.c.y, String.valueOf((30 - this.j) - 1));
                    if (!TextUtils.isEmpty(this.k.c) && com.mnt.impl.b.k.a(this.k.c)) {
                        this.w.put(com.mnt.impl.i.b.c.n, TextUtils.isEmpty(b(this.k.c)) ? com.mnt.impl.e.dp : com.mnt.impl.e.dq);
                        this.w.put(com.mnt.impl.i.b.c.m, com.mnt.impl.e.dr);
                    }
                } catch (Throwable th) {
                    this.w.put(com.mnt.impl.i.b.c.y, String.valueOf((30 - this.j) - 1));
                    this.w.put(com.mnt.impl.i.b.c.l, Long.valueOf(System.currentTimeMillis()));
                    f(null);
                    if (!h.equals(th.getMessage())) {
                        this.w.put(com.mnt.impl.i.b.c.m, com.mnt.impl.e.ds);
                        this.w.put(com.mnt.impl.i.b.c.o, com.mnt.impl.b.k.a(th));
                    }
                }
                com.mnt.impl.i.b.a.a(this.m).a(this.w);
            } else {
                this.k.c = a2.c;
            }
            str = this.k.c;
        }
        return str;
    }

    private void d(String str) {
        String j = j(str);
        if (TextUtils.isEmpty(j)) {
            throw new Exception(h);
        }
        f(j);
    }

    private void e(String str) {
        o.a(this.m, new o.a(str, this));
        while (this.q) {
            try {
                Thread.sleep(300L);
            } catch (InterruptedException e2) {
                e2.printStackTrace();
            }
        }
        if (this.p && TextUtils.isEmpty(this.k.c)) {
            d(str);
        }
    }

    @Override // com.mnt.impl.f.o.a.InterfaceC0208a
    /* renamed from: a, reason: avoid collision after fix types in other method */
    public final void a2(String str) {
        f(str);
        this.q = false;
    }

    @Override // com.mnt.impl.f.o.a.InterfaceC0208a
    public final void d() {
        if (!this.p) {
            f(null);
        }
        this.q = false;
    }

    private void f(String str) {
        int indexOf;
        com.mnt.impl.e.b bVar = this.k;
        if (!TextUtils.isEmpty(str)) {
            String str2 = com.mnt.impl.e.dM;
            String str3 = com.mnt.impl.e.dN;
            if (str.indexOf(str2) >= 0 && (indexOf = str.indexOf(str3)) >= 0) {
                String substring = str.substring(indexOf + 1);
                int indexOf2 = substring.indexOf(com.mnt.impl.e.dO);
                if (indexOf2 >= 0) {
                    substring = substring.substring(0, indexOf2);
                }
                str = str.replace(com.mnt.impl.e.dP + substring, "").replace(str2, str2 + substring + com.mnt.impl.e.dP);
            }
        }
        bVar.c = str;
        this.k.e += System.currentTimeMillis();
        if (this.k.e > 0) {
            r.put(this.k.f3983a, this.k);
            SharedPreferences.Editor edit = com.mnt.impl.b.h.a(this.m).edit();
            edit.putString(this.k.f3983a, this.k.b());
            com.mnt.impl.b.h.a(edit);
        }
    }

    private String b(String str, String str2) {
        if (this.m != null && !TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
            try {
                return Uri.parse(str).buildUpon().appendQueryParameter(com.mnt.impl.e.dt, String.valueOf(com.mnt.impl.b.k.a(this.m, str2))).toString();
            } catch (Exception e2) {
                return str;
            }
        }
        return str;
    }

    public static String b(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        String[] split = str.split(com.mnt.impl.e.du);
        if (split.length < 2 || split[1] == null) {
            return null;
        }
        return split[1].replace(com.mnt.impl.e.dv, com.mnt.impl.e.dw).replace(com.mnt.impl.e.dx, com.mnt.impl.e.dy);
    }

    private static HttpGet g(String str) {
        try {
            return new HttpGet(str);
        } catch (Exception e2) {
            return new HttpGet(h(str));
        }
    }

    private static String h(String str) {
        String[] split;
        int indexOf = str.indexOf(com.mnt.impl.e.dz);
        if (indexOf > 0 && (split = str.substring(indexOf + 1).split(com.mnt.impl.e.dA)) != null && split.length != 0) {
            Uri.Builder buildUpon = Uri.parse(str.substring(0, indexOf)).buildUpon();
            for (String str2 : split) {
                int indexOf2 = str2.indexOf(com.mnt.impl.e.dB);
                if (indexOf2 > 0) {
                    String substring = str2.substring(0, indexOf2);
                    String substring2 = str2.substring(indexOf2 + 1);
                    try {
                        substring2 = URLDecoder.decode(substring2, com.mnt.impl.e.dC);
                    } catch (Exception e2) {
                    }
                    buildUpon.appendQueryParameter(substring, substring2);
                }
            }
            return g.matcher(buildUpon.toString()).replaceAll("");
        }
        return str;
    }

    private static boolean i(String str) {
        int indexOf = str.indexOf(i);
        return indexOf >= 0 && indexOf < 3;
    }

    private String j(String str) {
        String str2;
        while (this.j > 0) {
            this.j--;
            String str3 = com.mnt.impl.e.dD;
            String str4 = com.mnt.impl.e.dE;
            if (i(str)) {
                return str.substring(str.indexOf(i));
            }
            URL url = new URL(str);
            if (!url.getHost().contains(str3) && !url.getPath().endsWith(str4)) {
                BasicHttpParams basicHttpParams = new BasicHttpParams();
                HttpConnectionParams.setConnectionTimeout(basicHttpParams, 600000);
                HttpConnectionParams.setSoTimeout(basicHttpParams, 600000);
                DefaultHttpClient defaultHttpClient = new DefaultHttpClient(basicHttpParams);
                defaultHttpClient.getParams().setParameter("http.protocol.handle-redirects", false);
                HttpGet g2 = g(str);
                if (this.o != null && this.o.length() > 0) {
                    g2.setHeader(com.mnt.impl.e.dF, this.o);
                }
                HttpResponse execute = defaultHttpClient.execute(g2);
                int statusCode = execute.getStatusLine().getStatusCode();
                if (this.k != null) {
                    String str5 = this.k.f3983a;
                }
                if (300 < statusCode && statusCode < 400) {
                    Header[] allHeaders = execute.getAllHeaders();
                    for (Header header : allHeaders) {
                        if (header.getName().equalsIgnoreCase(com.mnt.impl.e.dG)) {
                            str = header.getValue();
                            if (this.j == 29) {
                                if (this.w == null) {
                                    this.w = new ContentValues();
                                }
                                this.w.put(com.mnt.impl.i.b.c.x, Long.valueOf(System.currentTimeMillis()));
                            }
                            if (!i(str) && !str.startsWith(com.mnt.impl.e.dH)) {
                                int i2 = -1;
                                if (url.getPort() > 0) {
                                    i2 = url.getPort();
                                }
                                if (i2 > 0) {
                                    str2 = url.getProtocol() + com.mnt.impl.e.dI + url.getHost() + com.mnt.impl.e.dJ + i2 + str;
                                } else {
                                    str2 = url.getProtocol() + com.mnt.impl.e.dK + url.getHost() + str;
                                }
                                str = str2;
                            }
                        }
                    }
                    return null;
                }
                String entityUtils = EntityUtils.toString(execute.getEntity(), com.mnt.impl.e.dL);
                if (statusCode == 200) {
                    Matcher matcher = c.matcher(entityUtils);
                    if (matcher.find()) {
                        str = matcher.group(1);
                    } else {
                        Matcher matcher2 = d.matcher(entityUtils);
                        if (matcher2.find()) {
                            str = matcher2.group(1);
                        } else {
                            Matcher matcher3 = e.matcher(entityUtils);
                            if (matcher3.find()) {
                                str = matcher3.group(1);
                            } else {
                                Matcher matcher4 = f.matcher(entityUtils);
                                if (matcher4.find()) {
                                    str = matcher4.group(1);
                                }
                            }
                        }
                    }
                }
                return null;
            }
            return str;
        }
        return null;
    }

    public static void a(Context context, com.mnt.impl.e.b bVar, a aVar, boolean z) {
        a(context, bVar, aVar, z, null);
    }

    public static void a(Context context, com.mnt.impl.e.b bVar, a aVar, boolean z, String str) {
        if ((bVar == null || context == null || !com.mnt.a.a.d(context)) && aVar != null) {
            aVar.a(bVar);
        }
        com.mnt.impl.e.b a2 = a(context, bVar);
        if (a(a2, z, bVar.f)) {
            h hVar = new h(context, bVar, aVar, z);
            if (!TextUtils.isEmpty(str)) {
                hVar.o = str;
            }
            if (bVar.f) {
                hVar.f4014b = 4;
            }
            hVar.c();
            return;
        }
        if (aVar != null) {
            aVar.a(a2);
        }
    }

    public static com.mnt.impl.e.b a(Context context, com.mnt.impl.e.b bVar) {
        if (bVar != null) {
            com.mnt.impl.e.b bVar2 = r.get(bVar.f3983a);
            if (bVar2 == null) {
                String string = com.mnt.impl.b.h.a(context).getString(bVar.f3983a, null);
                if (!TextUtils.isEmpty(string)) {
                    com.mnt.impl.e.b bVar3 = new com.mnt.impl.e.b(string);
                    bVar3.g = bVar.g;
                    r.put(bVar3.f3983a, bVar3);
                    return bVar3;
                }
            }
            return bVar2;
        }
        return bVar;
    }

    public static com.mnt.impl.e.b c(String str) {
        if (str == null) {
            return null;
        }
        for (com.mnt.impl.e.b bVar : r.values()) {
            if (str.equals(bVar.f3984b) && !bVar.a()) {
                return bVar;
            }
        }
        return null;
    }

    private static boolean a(com.mnt.impl.e.b bVar, boolean z, boolean z2) {
        return z2 || bVar == null || bVar.a() || (z && TextUtils.isEmpty(bVar.c));
    }

    public static boolean a(String str, String str2) {
        if (TextUtils.isEmpty(str2) || TextUtils.isEmpty(str)) {
            return false;
        }
        return str.contains(str2);
    }

    public static final synchronized void a(Context context) {
        synchronized (h.class) {
            if (!s) {
                s = true;
                new Thread(new i(context)).start();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.mnt.impl.b.e
    public final /* bridge */ /* synthetic */ void a(String str) {
        if (this.l == null) {
            return;
        }
        this.l.a(this.k);
    }
}
