package b.a;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* compiled from: MemoCache.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class cu {

    /* renamed from: a, reason: collision with root package name */
    private List<cs> f146a = new ArrayList();

    /* renamed from: b, reason: collision with root package name */
    private m f147b = null;
    private o c = null;
    private r d = null;
    private ae e = null;
    private Context f;

    public cu(Context context) {
        this.f = null;
        this.f = context;
    }

    public synchronized int a() {
        int size;
        size = this.f146a.size();
        if (this.f147b != null) {
            size++;
        }
        return size;
    }

    public synchronized void a(cs csVar) {
        this.f146a.add(csVar);
    }

    public void a(am amVar) {
        String e = db.e(this.f);
        if (e != null) {
            synchronized (this) {
                if (this.f147b != null && new b(this.f).a()) {
                    amVar.a(this.f147b);
                    this.f147b = null;
                }
                Iterator<cs> it = this.f146a.iterator();
                while (it.hasNext()) {
                    it.next().a(amVar, e);
                }
                this.f146a.clear();
            }
            amVar.a(b());
            amVar.a(c());
            amVar.a(d());
            amVar.a(g());
            amVar.a(e());
            amVar.a(f());
            amVar.a(h());
        }
    }

    public synchronized void a(m mVar) {
        this.f147b = mVar;
    }

    public synchronized o b() {
        if (this.c == null) {
            this.c = new o();
            a(this.f);
        }
        return this.c;
    }

    public synchronized r c() {
        if (this.d == null) {
            this.d = new r();
            b(this.f);
        }
        return this.d;
    }

    public synchronized ae d() {
        if (this.e == null) {
            this.e = new ae();
            c(this.f);
        }
        return this.e;
    }

    public z e() {
        try {
            return ch.a(this.f).a();
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public x f() {
        try {
            return bm.a(this.f).b();
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public p g() {
        try {
            return b.a(this.f);
        } catch (Exception e) {
            e.printStackTrace();
            return new p();
        }
    }

    public n h() {
        String[] a2 = com.b.a.h.a(this.f);
        if (a2 == null || TextUtils.isEmpty(a2[0]) || TextUtils.isEmpty(a2[1])) {
            return null;
        }
        return new n(a2[0], a2[1]);
    }

    private void a(Context context) {
        try {
            this.c.a(com.b.a.a.a(context));
            this.c.e(com.b.a.a.b(context));
            if (com.b.a.a.f599a != null && com.b.a.a.f600b != null) {
                this.c.f(com.b.a.a.f599a);
                this.c.g(com.b.a.a.f600b);
            }
            this.c.c(ao.o(context));
            this.c.a(aj.ANDROID);
            this.c.d("5.5.3");
            this.c.b(ao.b(context));
            this.c.a(Integer.parseInt(ao.a(context)));
            this.c.b(com.b.a.a.c);
            this.c.d(com.b.a.a.a());
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void b(Context context) {
        try {
            this.d.e(ao.a());
            this.d.a(ao.c(context));
            this.d.b(ao.d(context));
            this.d.c(ao.k(context));
            this.d.d(Build.MODEL);
            this.d.f("Android");
            this.d.g(Build.VERSION.RELEASE);
            int[] l = ao.l(context);
            if (l != null) {
                this.d.a(new ah(l[1], l[0]));
            }
            if (com.b.a.a.e == null || com.b.a.a.d != null) {
            }
            this.d.h(Build.BOARD);
            this.d.i(Build.BRAND);
            this.d.a(Build.TIME);
            this.d.j(Build.MANUFACTURER);
            this.d.k(Build.ID);
            this.d.l(Build.DEVICE);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void c(Context context) {
        try {
            String[] e = ao.e(context);
            if ("Wi-Fi".equals(e[0])) {
                this.e.a(l.ACCESS_TYPE_WIFI);
            } else if ("2G/3G".equals(e[0])) {
                this.e.a(l.ACCESS_TYPE_2G_3G);
            } else {
                this.e.a(l.ACCESS_TYPE_UNKNOWN);
            }
            if (!"".equals(e[1])) {
                this.e.d(e[1]);
            }
            this.e.c(ao.m(context));
            String[] i = ao.i(context);
            this.e.b(i[0]);
            this.e.a(i[1]);
            this.e.a(ao.h(context));
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }
}
