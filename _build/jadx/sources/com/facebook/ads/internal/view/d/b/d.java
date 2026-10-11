package com.facebook.ads.internal.view.d.b;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.annotation.TargetApi;
import android.os.Handler;
import android.support.annotation.Nullable;
import android.view.View;
import com.facebook.ads.internal.g.q;
import com.facebook.ads.internal.g.r;
import com.facebook.ads.internal.g.s;
import com.facebook.ads.internal.view.d.a.t;

@TargetApi(12)
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class d implements m {

    /* renamed from: b, reason: collision with root package name */
    private View f2976b;

    @Nullable
    private a c;

    @Nullable
    private com.facebook.ads.internal.view.o d;
    private final com.facebook.ads.internal.view.d.a.i e = new com.facebook.ads.internal.view.d.a.i() { // from class: com.facebook.ads.internal.view.d.b.d.1
        @Override // com.facebook.ads.internal.g.s
        public void a(com.facebook.ads.internal.view.d.a.h hVar) {
            d.this.f2975a.removeCallbacksAndMessages(null);
            d.this.f2976b.clearAnimation();
            d.this.f2976b.setAlpha(1.0f);
            d.this.f2976b.setVisibility(0);
        }
    };
    private final com.facebook.ads.internal.view.d.a.k f = new com.facebook.ads.internal.view.d.a.k() { // from class: com.facebook.ads.internal.view.d.b.d.2
        @Override // com.facebook.ads.internal.g.s
        public void a(com.facebook.ads.internal.view.d.a.j jVar) {
            if (d.this.c == a.FADE_OUT_ON_PLAY) {
                d.this.c = null;
                d.this.f2976b.animate().alpha(0.0f).setDuration(2000L).setListener(new AnimatorListenerAdapter() { // from class: com.facebook.ads.internal.view.d.b.d.2.1
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        d.this.f2976b.setVisibility(8);
                    }
                });
            } else {
                d.this.f2975a.removeCallbacksAndMessages(null);
                d.this.f2976b.clearAnimation();
                d.this.f2976b.setAlpha(0.0f);
                d.this.f2976b.setVisibility(8);
            }
        }
    };
    private final com.facebook.ads.internal.view.d.a.c g = new com.facebook.ads.internal.view.d.a.c() { // from class: com.facebook.ads.internal.view.d.b.d.3
        @Override // com.facebook.ads.internal.g.s
        public void a(com.facebook.ads.internal.view.d.a.b bVar) {
            if (d.this.c != a.INVSIBLE) {
                d.this.f2976b.setAlpha(1.0f);
                d.this.f2976b.setVisibility(0);
            }
        }
    };
    private final s<t> h = new AnonymousClass4();

    /* renamed from: a, reason: collision with root package name */
    private final Handler f2975a = new Handler();

    /* renamed from: com.facebook.ads.internal.view.d.b.d$4, reason: invalid class name */
    class AnonymousClass4 extends s<t> {

        /* renamed from: com.facebook.ads.internal.view.d.b.d$4$1, reason: invalid class name */
        class AnonymousClass1 extends AnimatorListenerAdapter {
            AnonymousClass1() {
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                d.this.f2975a.postDelayed(new Runnable() { // from class: com.facebook.ads.internal.view.d.b.d.4.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        d.this.f2976b.animate().alpha(0.0f).setDuration(500L).setListener(new AnimatorListenerAdapter() { // from class: com.facebook.ads.internal.view.d.b.d.4.1.1.1
                            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                            public void onAnimationEnd(Animator animator2) {
                                d.this.f2976b.setVisibility(8);
                            }
                        });
                    }
                }, 2000L);
            }
        }

        AnonymousClass4() {
        }

        @Override // com.facebook.ads.internal.g.s
        public Class<t> a() {
            return t.class;
        }

        @Override // com.facebook.ads.internal.g.s
        public void a(t tVar) {
            if (d.this.d != null && tVar.b().getAction() == 0) {
                d.this.f2975a.removeCallbacksAndMessages(null);
                d.this.f2976b.setVisibility(0);
                d.this.f2976b.animate().alpha(1.0f).setDuration(500L).setListener(new AnonymousClass1());
            }
        }
    }

    public enum a {
        VISIBLE,
        INVSIBLE,
        FADE_OUT_ON_PLAY
    }

    public d(View view, a aVar) {
        this.f2976b = view;
        this.c = aVar;
        this.f2976b.clearAnimation();
        if (aVar == a.INVSIBLE) {
            this.f2976b.setAlpha(0.0f);
            this.f2976b.setVisibility(8);
        } else {
            this.f2976b.setAlpha(1.0f);
            this.f2976b.setVisibility(0);
        }
    }

    public void a(View view, a aVar) {
        this.f2976b = view;
        this.c = aVar;
        this.f2976b.clearAnimation();
        if (aVar == a.INVSIBLE) {
            this.f2976b.setAlpha(0.0f);
            this.f2976b.setVisibility(8);
        } else {
            this.f2976b.setAlpha(1.0f);
            this.f2976b.setVisibility(0);
        }
    }

    @Override // com.facebook.ads.internal.view.d.b.m
    public void a(com.facebook.ads.internal.view.o oVar) {
        oVar.getEventBus().a((r<s, q>) this.e);
        oVar.getEventBus().a((r<s, q>) this.f);
        oVar.getEventBus().a((r<s, q>) this.h);
        oVar.getEventBus().a((r<s, q>) this.g);
        this.d = oVar;
    }
}
