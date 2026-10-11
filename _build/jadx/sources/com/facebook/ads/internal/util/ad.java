package com.facebook.ads.internal.util;

import android.content.Context;
import android.os.Bundle;
import android.support.annotation.Nullable;
import java.util.ArrayList;
import java.util.List;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class ad extends ak {

    /* renamed from: a, reason: collision with root package name */
    public int f2837a;

    /* renamed from: b, reason: collision with root package name */
    private final com.facebook.ads.internal.view.d.a.v f2838b;
    private final com.facebook.ads.internal.g.s<com.facebook.ads.internal.view.d.a.r> c;
    private final com.facebook.ads.internal.g.s<com.facebook.ads.internal.view.d.a.h> d;
    private final com.facebook.ads.internal.g.s<com.facebook.ads.internal.view.d.a.j> e;
    private final com.facebook.ads.internal.g.s<com.facebook.ads.internal.view.d.a.n> f;
    private final com.facebook.ads.internal.g.s<com.facebook.ads.internal.view.d.a.b> g;
    private final com.facebook.ads.internal.g.s<com.facebook.ads.internal.view.d.a.p> h;
    private final com.facebook.ads.internal.g.s<com.facebook.ads.internal.view.d.a.w> i;
    private final com.facebook.ads.internal.g.s<com.facebook.ads.internal.view.d.a.x> j;
    private final com.facebook.ads.internal.g.s<com.facebook.ads.internal.view.d.a.s> k;
    private final com.facebook.ads.internal.view.d.a.m l;
    private final com.facebook.ads.internal.view.o m;
    private boolean n;

    public ad(Context context, com.facebook.ads.internal.g.f fVar, com.facebook.ads.internal.view.o oVar, String str) {
        this(context, fVar, oVar, new ArrayList(), str);
    }

    public ad(Context context, com.facebook.ads.internal.g.f fVar, com.facebook.ads.internal.view.o oVar, String str, @Nullable Bundle bundle) {
        this(context, fVar, oVar, new ArrayList(), str, bundle);
    }

    public ad(Context context, com.facebook.ads.internal.g.f fVar, com.facebook.ads.internal.view.o oVar, List<com.facebook.ads.internal.b.b> list, String str) {
        super(context, fVar, oVar, list, str);
        this.f2838b = new com.facebook.ads.internal.view.d.a.v() { // from class: com.facebook.ads.internal.util.ad.1

            /* renamed from: a, reason: collision with root package name */
            static final /* synthetic */ boolean f2839a;

            static {
                f2839a = !ad.class.desiredAssertionStatus();
            }

            @Override // com.facebook.ads.internal.g.s
            public void a(com.facebook.ads.internal.view.d.a.u uVar) {
                if (!f2839a && ad.this == null) {
                    throw new AssertionError();
                }
                if (ad.this == null) {
                    return;
                }
                ad.this.e();
            }
        };
        this.c = new com.facebook.ads.internal.g.s<com.facebook.ads.internal.view.d.a.r>() { // from class: com.facebook.ads.internal.util.ad.4

            /* renamed from: a, reason: collision with root package name */
            static final /* synthetic */ boolean f2845a;

            static {
                f2845a = !ad.class.desiredAssertionStatus();
            }

            @Override // com.facebook.ads.internal.g.s
            public Class<com.facebook.ads.internal.view.d.a.r> a() {
                return com.facebook.ads.internal.view.d.a.r.class;
            }

            @Override // com.facebook.ads.internal.g.s
            public void a(com.facebook.ads.internal.view.d.a.r rVar) {
                if (!f2845a && ad.this == null) {
                    throw new AssertionError();
                }
                if (ad.this == null) {
                    return;
                }
                ad.this.h();
            }
        };
        this.d = new com.facebook.ads.internal.g.s<com.facebook.ads.internal.view.d.a.h>() { // from class: com.facebook.ads.internal.util.ad.5

            /* renamed from: a, reason: collision with root package name */
            static final /* synthetic */ boolean f2847a;

            static {
                f2847a = !ad.class.desiredAssertionStatus();
            }

            @Override // com.facebook.ads.internal.g.s
            public Class<com.facebook.ads.internal.view.d.a.h> a() {
                return com.facebook.ads.internal.view.d.a.h.class;
            }

            @Override // com.facebook.ads.internal.g.s
            public void a(com.facebook.ads.internal.view.d.a.h hVar) {
                if (!f2847a && ad.this == null) {
                    throw new AssertionError();
                }
                if (ad.this == null) {
                    return;
                }
                ad.this.i();
            }
        };
        this.e = new com.facebook.ads.internal.g.s<com.facebook.ads.internal.view.d.a.j>() { // from class: com.facebook.ads.internal.util.ad.6

            /* renamed from: a, reason: collision with root package name */
            static final /* synthetic */ boolean f2849a;

            static {
                f2849a = !ad.class.desiredAssertionStatus();
            }

            @Override // com.facebook.ads.internal.g.s
            public Class<com.facebook.ads.internal.view.d.a.j> a() {
                return com.facebook.ads.internal.view.d.a.j.class;
            }

            @Override // com.facebook.ads.internal.g.s
            public void a(com.facebook.ads.internal.view.d.a.j jVar) {
                if (!f2849a && ad.this == null) {
                    throw new AssertionError();
                }
                if (ad.this == null) {
                    return;
                }
                if (ad.this.n) {
                    ad.this.j();
                } else {
                    ad.this.n = true;
                }
            }
        };
        this.f = new com.facebook.ads.internal.g.s<com.facebook.ads.internal.view.d.a.n>() { // from class: com.facebook.ads.internal.util.ad.7
            @Override // com.facebook.ads.internal.g.s
            public Class<com.facebook.ads.internal.view.d.a.n> a() {
                return com.facebook.ads.internal.view.d.a.n.class;
            }

            @Override // com.facebook.ads.internal.g.s
            public void a(com.facebook.ads.internal.view.d.a.n nVar) {
                if (ad.this.f2837a <= 0 || ad.this.m.getCurrentPosition() != ad.this.m.getDuration() || ad.this.m.getDuration() <= ad.this.f2837a) {
                    ad.this.a(ad.this.m.getCurrentPosition());
                }
            }
        };
        this.g = new com.facebook.ads.internal.g.s<com.facebook.ads.internal.view.d.a.b>() { // from class: com.facebook.ads.internal.util.ad.8
            @Override // com.facebook.ads.internal.g.s
            public Class<com.facebook.ads.internal.view.d.a.b> a() {
                return com.facebook.ads.internal.view.d.a.b.class;
            }

            @Override // com.facebook.ads.internal.g.s
            public void a(com.facebook.ads.internal.view.d.a.b bVar) {
                int currentPosition = ad.this.m.getCurrentPosition();
                if (ad.this.f2837a <= 0 || currentPosition != ad.this.m.getDuration() || ad.this.m.getDuration() <= ad.this.f2837a) {
                    if (!(currentPosition == 0 && ad.this.m.a()) && ad.this.m.getDuration() >= currentPosition + 500) {
                        ad.this.b(currentPosition);
                    } else if (ad.this.m.getDuration() == 0) {
                        ad.this.b(ad.this.f2837a);
                    } else {
                        ad.this.b(ad.this.m.getDuration());
                    }
                }
            }
        };
        this.h = new com.facebook.ads.internal.g.s<com.facebook.ads.internal.view.d.a.p>() { // from class: com.facebook.ads.internal.util.ad.9
            @Override // com.facebook.ads.internal.g.s
            public Class<com.facebook.ads.internal.view.d.a.p> a() {
                return com.facebook.ads.internal.view.d.a.p.class;
            }

            @Override // com.facebook.ads.internal.g.s
            public void a(com.facebook.ads.internal.view.d.a.p pVar) {
                ad.this.a(pVar.a(), pVar.b());
            }
        };
        this.i = new com.facebook.ads.internal.g.s<com.facebook.ads.internal.view.d.a.w>() { // from class: com.facebook.ads.internal.util.ad.10
            @Override // com.facebook.ads.internal.g.s
            public Class<com.facebook.ads.internal.view.d.a.w> a() {
                return com.facebook.ads.internal.view.d.a.w.class;
            }

            @Override // com.facebook.ads.internal.g.s
            public void a(com.facebook.ads.internal.view.d.a.w wVar) {
                ad.this.b();
            }
        };
        this.j = new com.facebook.ads.internal.g.s<com.facebook.ads.internal.view.d.a.x>() { // from class: com.facebook.ads.internal.util.ad.11
            @Override // com.facebook.ads.internal.g.s
            public Class<com.facebook.ads.internal.view.d.a.x> a() {
                return com.facebook.ads.internal.view.d.a.x.class;
            }

            @Override // com.facebook.ads.internal.g.s
            public void a(com.facebook.ads.internal.view.d.a.x xVar) {
                ad.this.c();
            }
        };
        this.k = new com.facebook.ads.internal.g.s<com.facebook.ads.internal.view.d.a.s>() { // from class: com.facebook.ads.internal.util.ad.2
            @Override // com.facebook.ads.internal.g.s
            public Class<com.facebook.ads.internal.view.d.a.s> a() {
                return com.facebook.ads.internal.view.d.a.s.class;
            }

            @Override // com.facebook.ads.internal.g.s
            public void a(com.facebook.ads.internal.view.d.a.s sVar) {
                ad.this.a(ad.this.k(), ad.this.k());
            }
        };
        this.l = new com.facebook.ads.internal.view.d.a.m() { // from class: com.facebook.ads.internal.util.ad.3
            @Override // com.facebook.ads.internal.g.s
            public void a(com.facebook.ads.internal.view.d.a.l lVar) {
                ad.this.f2837a = ad.this.m.getDuration();
            }
        };
        this.n = false;
        this.m = oVar;
        oVar.getEventBus().a((com.facebook.ads.internal.g.r<com.facebook.ads.internal.g.s, com.facebook.ads.internal.g.q>) this.f2838b);
        oVar.getEventBus().a((com.facebook.ads.internal.g.r<com.facebook.ads.internal.g.s, com.facebook.ads.internal.g.q>) this.f);
        oVar.getEventBus().a((com.facebook.ads.internal.g.r<com.facebook.ads.internal.g.s, com.facebook.ads.internal.g.q>) this.c);
        oVar.getEventBus().a((com.facebook.ads.internal.g.r<com.facebook.ads.internal.g.s, com.facebook.ads.internal.g.q>) this.e);
        oVar.getEventBus().a((com.facebook.ads.internal.g.r<com.facebook.ads.internal.g.s, com.facebook.ads.internal.g.q>) this.d);
        oVar.getEventBus().a((com.facebook.ads.internal.g.r<com.facebook.ads.internal.g.s, com.facebook.ads.internal.g.q>) this.g);
        oVar.getEventBus().a((com.facebook.ads.internal.g.r<com.facebook.ads.internal.g.s, com.facebook.ads.internal.g.q>) this.h);
        oVar.getEventBus().a((com.facebook.ads.internal.g.r<com.facebook.ads.internal.g.s, com.facebook.ads.internal.g.q>) this.i);
        oVar.getEventBus().a((com.facebook.ads.internal.g.r<com.facebook.ads.internal.g.s, com.facebook.ads.internal.g.q>) this.j);
        oVar.getEventBus().a((com.facebook.ads.internal.g.r<com.facebook.ads.internal.g.s, com.facebook.ads.internal.g.q>) this.l);
        oVar.getEventBus().a((com.facebook.ads.internal.g.r<com.facebook.ads.internal.g.s, com.facebook.ads.internal.g.q>) this.k);
    }

    public ad(Context context, com.facebook.ads.internal.g.f fVar, com.facebook.ads.internal.view.o oVar, List<com.facebook.ads.internal.b.b> list, String str, @Nullable Bundle bundle) {
        super(context, fVar, oVar, list, str, bundle);
        this.f2838b = new com.facebook.ads.internal.view.d.a.v() { // from class: com.facebook.ads.internal.util.ad.1

            /* renamed from: a, reason: collision with root package name */
            static final /* synthetic */ boolean f2839a;

            static {
                f2839a = !ad.class.desiredAssertionStatus();
            }

            @Override // com.facebook.ads.internal.g.s
            public void a(com.facebook.ads.internal.view.d.a.u uVar) {
                if (!f2839a && ad.this == null) {
                    throw new AssertionError();
                }
                if (ad.this == null) {
                    return;
                }
                ad.this.e();
            }
        };
        this.c = new com.facebook.ads.internal.g.s<com.facebook.ads.internal.view.d.a.r>() { // from class: com.facebook.ads.internal.util.ad.4

            /* renamed from: a, reason: collision with root package name */
            static final /* synthetic */ boolean f2845a;

            static {
                f2845a = !ad.class.desiredAssertionStatus();
            }

            @Override // com.facebook.ads.internal.g.s
            public Class<com.facebook.ads.internal.view.d.a.r> a() {
                return com.facebook.ads.internal.view.d.a.r.class;
            }

            @Override // com.facebook.ads.internal.g.s
            public void a(com.facebook.ads.internal.view.d.a.r rVar) {
                if (!f2845a && ad.this == null) {
                    throw new AssertionError();
                }
                if (ad.this == null) {
                    return;
                }
                ad.this.h();
            }
        };
        this.d = new com.facebook.ads.internal.g.s<com.facebook.ads.internal.view.d.a.h>() { // from class: com.facebook.ads.internal.util.ad.5

            /* renamed from: a, reason: collision with root package name */
            static final /* synthetic */ boolean f2847a;

            static {
                f2847a = !ad.class.desiredAssertionStatus();
            }

            @Override // com.facebook.ads.internal.g.s
            public Class<com.facebook.ads.internal.view.d.a.h> a() {
                return com.facebook.ads.internal.view.d.a.h.class;
            }

            @Override // com.facebook.ads.internal.g.s
            public void a(com.facebook.ads.internal.view.d.a.h hVar) {
                if (!f2847a && ad.this == null) {
                    throw new AssertionError();
                }
                if (ad.this == null) {
                    return;
                }
                ad.this.i();
            }
        };
        this.e = new com.facebook.ads.internal.g.s<com.facebook.ads.internal.view.d.a.j>() { // from class: com.facebook.ads.internal.util.ad.6

            /* renamed from: a, reason: collision with root package name */
            static final /* synthetic */ boolean f2849a;

            static {
                f2849a = !ad.class.desiredAssertionStatus();
            }

            @Override // com.facebook.ads.internal.g.s
            public Class<com.facebook.ads.internal.view.d.a.j> a() {
                return com.facebook.ads.internal.view.d.a.j.class;
            }

            @Override // com.facebook.ads.internal.g.s
            public void a(com.facebook.ads.internal.view.d.a.j jVar) {
                if (!f2849a && ad.this == null) {
                    throw new AssertionError();
                }
                if (ad.this == null) {
                    return;
                }
                if (ad.this.n) {
                    ad.this.j();
                } else {
                    ad.this.n = true;
                }
            }
        };
        this.f = new com.facebook.ads.internal.g.s<com.facebook.ads.internal.view.d.a.n>() { // from class: com.facebook.ads.internal.util.ad.7
            @Override // com.facebook.ads.internal.g.s
            public Class<com.facebook.ads.internal.view.d.a.n> a() {
                return com.facebook.ads.internal.view.d.a.n.class;
            }

            @Override // com.facebook.ads.internal.g.s
            public void a(com.facebook.ads.internal.view.d.a.n nVar) {
                if (ad.this.f2837a <= 0 || ad.this.m.getCurrentPosition() != ad.this.m.getDuration() || ad.this.m.getDuration() <= ad.this.f2837a) {
                    ad.this.a(ad.this.m.getCurrentPosition());
                }
            }
        };
        this.g = new com.facebook.ads.internal.g.s<com.facebook.ads.internal.view.d.a.b>() { // from class: com.facebook.ads.internal.util.ad.8
            @Override // com.facebook.ads.internal.g.s
            public Class<com.facebook.ads.internal.view.d.a.b> a() {
                return com.facebook.ads.internal.view.d.a.b.class;
            }

            @Override // com.facebook.ads.internal.g.s
            public void a(com.facebook.ads.internal.view.d.a.b bVar) {
                int currentPosition = ad.this.m.getCurrentPosition();
                if (ad.this.f2837a <= 0 || currentPosition != ad.this.m.getDuration() || ad.this.m.getDuration() <= ad.this.f2837a) {
                    if (!(currentPosition == 0 && ad.this.m.a()) && ad.this.m.getDuration() >= currentPosition + 500) {
                        ad.this.b(currentPosition);
                    } else if (ad.this.m.getDuration() == 0) {
                        ad.this.b(ad.this.f2837a);
                    } else {
                        ad.this.b(ad.this.m.getDuration());
                    }
                }
            }
        };
        this.h = new com.facebook.ads.internal.g.s<com.facebook.ads.internal.view.d.a.p>() { // from class: com.facebook.ads.internal.util.ad.9
            @Override // com.facebook.ads.internal.g.s
            public Class<com.facebook.ads.internal.view.d.a.p> a() {
                return com.facebook.ads.internal.view.d.a.p.class;
            }

            @Override // com.facebook.ads.internal.g.s
            public void a(com.facebook.ads.internal.view.d.a.p pVar) {
                ad.this.a(pVar.a(), pVar.b());
            }
        };
        this.i = new com.facebook.ads.internal.g.s<com.facebook.ads.internal.view.d.a.w>() { // from class: com.facebook.ads.internal.util.ad.10
            @Override // com.facebook.ads.internal.g.s
            public Class<com.facebook.ads.internal.view.d.a.w> a() {
                return com.facebook.ads.internal.view.d.a.w.class;
            }

            @Override // com.facebook.ads.internal.g.s
            public void a(com.facebook.ads.internal.view.d.a.w wVar) {
                ad.this.b();
            }
        };
        this.j = new com.facebook.ads.internal.g.s<com.facebook.ads.internal.view.d.a.x>() { // from class: com.facebook.ads.internal.util.ad.11
            @Override // com.facebook.ads.internal.g.s
            public Class<com.facebook.ads.internal.view.d.a.x> a() {
                return com.facebook.ads.internal.view.d.a.x.class;
            }

            @Override // com.facebook.ads.internal.g.s
            public void a(com.facebook.ads.internal.view.d.a.x xVar) {
                ad.this.c();
            }
        };
        this.k = new com.facebook.ads.internal.g.s<com.facebook.ads.internal.view.d.a.s>() { // from class: com.facebook.ads.internal.util.ad.2
            @Override // com.facebook.ads.internal.g.s
            public Class<com.facebook.ads.internal.view.d.a.s> a() {
                return com.facebook.ads.internal.view.d.a.s.class;
            }

            @Override // com.facebook.ads.internal.g.s
            public void a(com.facebook.ads.internal.view.d.a.s sVar) {
                ad.this.a(ad.this.k(), ad.this.k());
            }
        };
        this.l = new com.facebook.ads.internal.view.d.a.m() { // from class: com.facebook.ads.internal.util.ad.3
            @Override // com.facebook.ads.internal.g.s
            public void a(com.facebook.ads.internal.view.d.a.l lVar) {
                ad.this.f2837a = ad.this.m.getDuration();
            }
        };
        this.n = false;
        this.m = oVar;
        oVar.getEventBus().a((com.facebook.ads.internal.g.r<com.facebook.ads.internal.g.s, com.facebook.ads.internal.g.q>) this.f2838b);
        oVar.getEventBus().a((com.facebook.ads.internal.g.r<com.facebook.ads.internal.g.s, com.facebook.ads.internal.g.q>) this.f);
        oVar.getEventBus().a((com.facebook.ads.internal.g.r<com.facebook.ads.internal.g.s, com.facebook.ads.internal.g.q>) this.c);
        oVar.getEventBus().a((com.facebook.ads.internal.g.r<com.facebook.ads.internal.g.s, com.facebook.ads.internal.g.q>) this.e);
        oVar.getEventBus().a((com.facebook.ads.internal.g.r<com.facebook.ads.internal.g.s, com.facebook.ads.internal.g.q>) this.d);
        oVar.getEventBus().a((com.facebook.ads.internal.g.r<com.facebook.ads.internal.g.s, com.facebook.ads.internal.g.q>) this.g);
        oVar.getEventBus().a((com.facebook.ads.internal.g.r<com.facebook.ads.internal.g.s, com.facebook.ads.internal.g.q>) this.i);
        oVar.getEventBus().a((com.facebook.ads.internal.g.r<com.facebook.ads.internal.g.s, com.facebook.ads.internal.g.q>) this.j);
        oVar.getEventBus().a((com.facebook.ads.internal.g.r<com.facebook.ads.internal.g.s, com.facebook.ads.internal.g.q>) this.k);
    }

    public void a() {
        this.m.getEventBus().b((com.facebook.ads.internal.g.r<com.facebook.ads.internal.g.s, com.facebook.ads.internal.g.q>) this.f2838b);
        this.m.getEventBus().b((com.facebook.ads.internal.g.r<com.facebook.ads.internal.g.s, com.facebook.ads.internal.g.q>) this.f);
        this.m.getEventBus().b((com.facebook.ads.internal.g.r<com.facebook.ads.internal.g.s, com.facebook.ads.internal.g.q>) this.c);
        this.m.getEventBus().b((com.facebook.ads.internal.g.r<com.facebook.ads.internal.g.s, com.facebook.ads.internal.g.q>) this.e);
        this.m.getEventBus().b((com.facebook.ads.internal.g.r<com.facebook.ads.internal.g.s, com.facebook.ads.internal.g.q>) this.d);
        this.m.getEventBus().b((com.facebook.ads.internal.g.r<com.facebook.ads.internal.g.s, com.facebook.ads.internal.g.q>) this.g);
        this.m.getEventBus().b((com.facebook.ads.internal.g.r<com.facebook.ads.internal.g.s, com.facebook.ads.internal.g.q>) this.i);
        this.m.getEventBus().b((com.facebook.ads.internal.g.r<com.facebook.ads.internal.g.s, com.facebook.ads.internal.g.q>) this.j);
        this.m.getEventBus().b((com.facebook.ads.internal.g.r<com.facebook.ads.internal.g.s, com.facebook.ads.internal.g.q>) this.l);
        this.m.getEventBus().b((com.facebook.ads.internal.g.r<com.facebook.ads.internal.g.s, com.facebook.ads.internal.g.q>) this.k);
    }
}
