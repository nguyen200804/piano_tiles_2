package b.a;

import android.content.Context;

/* compiled from: CacheService.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class cn implements cr {
    private static cn c;

    /* renamed from: a, reason: collision with root package name */
    private cr f135a;

    /* renamed from: b, reason: collision with root package name */
    private Context f136b;

    private cn(Context context) {
        this.f136b = context.getApplicationContext();
        this.f135a = new cm(this.f136b);
    }

    public static synchronized cn a(Context context) {
        cn cnVar;
        synchronized (cn.class) {
            if (c == null && context != null) {
                c = new cn(context);
            }
            cnVar = c;
        }
        return cnVar;
    }

    public void a(com.b.a.b.b bVar) {
        if (bVar != null && this.f135a != null) {
            bVar.a((com.b.a.b.d) this.f135a);
        }
    }

    @Override // b.a.cr
    public void a(final cs csVar) {
        com.b.a.i.b(new com.b.a.j() { // from class: b.a.cn.1
            @Override // com.b.a.j
            public void a() {
                cn.this.f135a.a(csVar);
            }
        });
    }

    @Override // b.a.cr
    public void b(cs csVar) {
        this.f135a.b(csVar);
    }

    @Override // b.a.cr
    public void b() {
        com.b.a.i.b(new com.b.a.j() { // from class: b.a.cn.2
            @Override // com.b.a.j
            public void a() {
                cn.this.f135a.b();
            }
        });
    }
}
