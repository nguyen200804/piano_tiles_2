package com.facebook.ads.internal.server;

import android.content.Context;
import com.facebook.ads.internal.AdErrorType;
import com.facebook.ads.internal.i.a.m;
import com.facebook.ads.internal.i.a.n;
import com.facebook.ads.internal.j;
import com.facebook.ads.internal.server.d;
import com.facebook.ads.internal.util.ab;
import com.facebook.ads.internal.util.y;
import java.util.Map;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadPoolExecutor;
import org.json.JSONException;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class a {
    private static final ab i = new ab();
    private static final ThreadPoolExecutor j = (ThreadPoolExecutor) Executors.newCachedThreadPool(i);

    /* renamed from: a, reason: collision with root package name */
    Map<String, String> f2816a;

    /* renamed from: b, reason: collision with root package name */
    private final Context f2817b;
    private final j d;
    private InterfaceC0077a e;
    private com.facebook.ads.internal.f.f f;
    private com.facebook.ads.internal.i.a.a g;
    private final c c = c.a();
    private final String h = b.a();

    /* renamed from: com.facebook.ads.internal.server.a$a, reason: collision with other inner class name */
    public interface InterfaceC0077a {
        void a(com.facebook.ads.internal.b bVar);

        void a(e eVar);
    }

    public a(Context context) {
        this.f2817b = context.getApplicationContext();
        this.d = new j(this.f2817b);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(com.facebook.ads.internal.b bVar) {
        if (this.e != null) {
            this.e.a(bVar);
        }
        a();
    }

    private void a(e eVar) {
        if (this.e != null) {
            this.e.a(eVar);
        }
        a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str) {
        try {
            d a2 = this.c.a(str);
            com.facebook.ads.internal.f.d b2 = a2.b();
            if (b2 != null) {
                this.d.a(b2.b());
                com.facebook.ads.internal.util.d.a(b2.a().d(), this.f);
            }
            switch (a2.a()) {
                case ADS:
                    e eVar = (e) a2;
                    if (b2 != null && b2.a().e()) {
                        com.facebook.ads.internal.util.d.a(str, this.f);
                    }
                    a(eVar);
                    break;
                case ERROR:
                    f fVar = (f) a2;
                    String c = fVar.c();
                    AdErrorType adErrorTypeFromCode = AdErrorType.adErrorTypeFromCode(fVar.d(), AdErrorType.ERROR_MESSAGE);
                    if (c != null) {
                        str = c;
                    }
                    a(adErrorTypeFromCode.getAdErrorWrapper(str));
                    break;
                default:
                    a(AdErrorType.UNKNOWN_RESPONSE.getAdErrorWrapper(str));
                    break;
            }
        } catch (Exception e) {
            a(AdErrorType.PARSER_FAILURE.getAdErrorWrapper(e.getMessage()));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public com.facebook.ads.internal.i.a.b b() {
        return new com.facebook.ads.internal.i.a.b() { // from class: com.facebook.ads.internal.server.a.2
            public void a(m mVar) {
                com.facebook.ads.internal.util.d.b(a.this.f);
                a.this.g = null;
                try {
                    n a2 = mVar.a();
                    if (a2 != null) {
                        String e = a2.e();
                        d a3 = a.this.c.a(e);
                        if (a3.a() == d.a.ERROR) {
                            f fVar = (f) a3;
                            String c = fVar.c();
                            a.this.a(AdErrorType.adErrorTypeFromCode(fVar.d(), AdErrorType.ERROR_MESSAGE).getAdErrorWrapper(c == null ? e : c));
                            return;
                        }
                    }
                } catch (JSONException e2) {
                }
                a.this.a(new com.facebook.ads.internal.b(AdErrorType.NETWORK_ERROR, mVar.getMessage()));
            }

            @Override // com.facebook.ads.internal.i.a.b
            public void a(n nVar) {
                if (nVar != null) {
                    String e = nVar.e();
                    com.facebook.ads.internal.util.d.b(a.this.f);
                    a.this.g = null;
                    a.this.a(e);
                }
            }

            @Override // com.facebook.ads.internal.i.a.b
            public void a(Exception exc) {
                if (m.class.equals(exc.getClass())) {
                    a((m) exc);
                } else {
                    a.this.a(new com.facebook.ads.internal.b(AdErrorType.NETWORK_ERROR, exc.getMessage()));
                }
            }
        };
    }

    public void a() {
        if (this.g != null) {
            this.g.c(1);
            this.g.b(1);
            this.g = null;
        }
    }

    public void a(final com.facebook.ads.internal.f.f fVar) {
        a();
        if (y.c(this.f2817b) == y.a.NONE) {
            a(new com.facebook.ads.internal.b(AdErrorType.NETWORK_ERROR, "No network connection"));
            return;
        }
        this.f = fVar;
        com.facebook.ads.internal.util.a.a(this.f2817b);
        if (!com.facebook.ads.internal.util.d.a(fVar)) {
            j.submit(new Runnable() { // from class: com.facebook.ads.internal.server.a.1
                @Override // java.lang.Runnable
                public void run() {
                    com.facebook.ads.internal.f.j.b(a.this.f2817b);
                    if (fVar.e().a()) {
                        try {
                            fVar.e().a(com.facebook.ads.internal.f.j.o);
                        } catch (com.facebook.ads.internal.c e) {
                            a.this.a(e.a());
                        }
                        a.this.a(fVar.e().b());
                        return;
                    }
                    a.this.f2816a = fVar.f();
                    try {
                        a.this.g = y.b(a.this.f2817b, fVar.e);
                        a.this.g.a(a.this.h, a.this.g.b().a((Map<? extends String, ? extends String>) a.this.f2816a), a.this.b());
                    } catch (Exception e2) {
                        a.this.a(AdErrorType.AD_REQUEST_FAILED.getAdErrorWrapper(e2.getMessage()));
                    }
                }
            });
            return;
        }
        String c = com.facebook.ads.internal.util.d.c(fVar);
        if (c != null) {
            a(c);
        } else {
            a(AdErrorType.LOAD_TOO_FREQUENTLY.getAdErrorWrapper(null));
        }
    }

    public void a(InterfaceC0077a interfaceC0077a) {
        this.e = interfaceC0077a;
    }
}
