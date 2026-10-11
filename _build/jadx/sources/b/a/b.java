package b.a;

import android.content.Context;
import android.content.SharedPreferences;

/* compiled from: StatTracer.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class b implements ct {

    /* renamed from: a, reason: collision with root package name */
    public int f78a;

    /* renamed from: b, reason: collision with root package name */
    public int f79b;
    public long c;
    private int e;
    private Context h;
    private final int d = 3600000;
    private long f = 0;
    private long g = 0;

    public b(Context context) {
        b(context);
    }

    private void b(Context context) {
        this.h = context.getApplicationContext();
        SharedPreferences a2 = cz.a(context);
        this.f78a = a2.getInt("successful_request", 0);
        this.f79b = a2.getInt("failed_requests ", 0);
        this.e = a2.getInt("last_request_spent_ms", 0);
        this.c = a2.getLong("last_request_time", 0L);
        this.f = a2.getLong("last_req", 0L);
    }

    public boolean a() {
        return ((this.c > 0L ? 1 : (this.c == 0L ? 0 : -1)) == 0) && (!com.b.a.k.a(this.h).g());
    }

    public void b() {
        this.f78a++;
        this.c = this.f;
    }

    public void c() {
        this.f79b++;
    }

    public void d() {
        this.f = System.currentTimeMillis();
    }

    public void e() {
        this.e = (int) (System.currentTimeMillis() - this.f);
    }

    public void f() {
        cz.a(this.h).edit().putInt("successful_request", this.f78a).putInt("failed_requests ", this.f79b).putInt("last_request_spent_ms", this.e).putLong("last_request_time", this.c).putLong("last_req", this.f).commit();
    }

    public void g() {
        cz.a(this.h).edit().putLong("first_activate_time", System.currentTimeMillis()).commit();
    }

    public boolean h() {
        if (this.g == 0) {
            this.g = cz.a(this.h).getLong("first_activate_time", 0L);
        }
        return this.g == 0;
    }

    public long i() {
        return h() ? System.currentTimeMillis() : this.g;
    }

    public long j() {
        return this.f;
    }

    public static p a(Context context) {
        SharedPreferences a2 = cz.a(context);
        p pVar = new p();
        pVar.b(a2.getInt("failed_requests ", 0));
        pVar.c(a2.getInt("last_request_spent_ms", 0));
        pVar.a(a2.getInt("successful_request", 0));
        return pVar;
    }

    @Override // b.a.ct
    public void k() {
        d();
    }

    @Override // b.a.ct
    public void l() {
        e();
    }

    @Override // b.a.ct
    public void m() {
        b();
    }

    @Override // b.a.ct
    public void n() {
        c();
    }
}
