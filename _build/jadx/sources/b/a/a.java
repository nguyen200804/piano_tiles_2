package b.a;

import android.support.v4.os.EnvironmentCompat;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

/* compiled from: AbstractIdTracker.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public abstract class a {

    /* renamed from: a, reason: collision with root package name */
    private final int f10a = 10;

    /* renamed from: b, reason: collision with root package name */
    private final int f11b = 20;
    private final String c;
    private List<v> d;
    private w e;

    public abstract String f();

    public a(String str) {
        this.c = str;
    }

    public boolean a() {
        return g();
    }

    public String b() {
        return this.c;
    }

    public boolean c() {
        return this.e == null || this.e.d() <= 20;
    }

    private boolean g() {
        w wVar = this.e;
        String a2 = wVar == null ? null : wVar.a();
        int d = wVar == null ? 0 : wVar.d();
        String a3 = a(f());
        if (a3 == null || a3.equals(a2)) {
            return false;
        }
        if (wVar == null) {
            wVar = new w();
        }
        wVar.a(a3);
        wVar.a(System.currentTimeMillis());
        wVar.a(d + 1);
        v vVar = new v();
        vVar.a(this.c);
        vVar.c(a3);
        vVar.b(a2);
        vVar.a(wVar.b());
        if (this.d == null) {
            this.d = new ArrayList(2);
        }
        this.d.add(vVar);
        if (this.d.size() > 10) {
            this.d.remove(0);
        }
        this.e = wVar;
        return true;
    }

    public w d() {
        return this.e;
    }

    public List<v> e() {
        return this.d;
    }

    public void a(List<v> list) {
        this.d = list;
    }

    public String a(String str) {
        if (str == null) {
            return null;
        }
        String trim = str.trim();
        if (trim.length() == 0 || "0".equals(trim) || EnvironmentCompat.MEDIA_UNKNOWN.equals(trim.toLowerCase(Locale.US))) {
            return null;
        }
        return trim;
    }

    public void a(x xVar) {
        this.e = xVar.a().get(this.c);
        List<v> b2 = xVar.b();
        if (b2 != null && b2.size() > 0) {
            if (this.d == null) {
                this.d = new ArrayList();
            }
            for (v vVar : b2) {
                if (this.c.equals(vVar.f195a)) {
                    this.d.add(vVar);
                }
            }
        }
    }
}
