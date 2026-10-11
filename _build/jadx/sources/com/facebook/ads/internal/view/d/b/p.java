package com.facebook.ads.internal.view.d.b;

import android.R;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.ScaleDrawable;
import android.support.v4.view.GravityCompat;
import android.support.v7.widget.helper.ItemTouchHelper;
import android.view.animation.LinearInterpolator;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import com.facebook.ads.internal.g.q;
import com.facebook.ads.internal.g.r;
import com.facebook.ads.internal.g.s;
import com.mopub.common.Constants;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class p extends RelativeLayout implements m {

    /* renamed from: a, reason: collision with root package name */
    private ObjectAnimator f3029a;

    /* renamed from: b, reason: collision with root package name */
    private AtomicInteger f3030b;
    private ProgressBar c;
    private com.facebook.ads.internal.view.o d;
    private s e;
    private s f;
    private s g;

    public p(Context context, int i) {
        super(context);
        this.e = new com.facebook.ads.internal.view.d.a.o() { // from class: com.facebook.ads.internal.view.d.b.p.1
            @Override // com.facebook.ads.internal.g.s
            public void a(com.facebook.ads.internal.view.d.a.n nVar) {
                if (p.this.d != null) {
                    p.this.a(p.this.d.getDuration(), p.this.d.getCurrentPosition());
                }
            }
        };
        this.f = new com.facebook.ads.internal.view.d.a.i() { // from class: com.facebook.ads.internal.view.d.b.p.2
            @Override // com.facebook.ads.internal.g.s
            public void a(com.facebook.ads.internal.view.d.a.h hVar) {
                p.this.b();
            }
        };
        this.g = new com.facebook.ads.internal.view.d.a.k() { // from class: com.facebook.ads.internal.view.d.b.p.3
            @Override // com.facebook.ads.internal.g.s
            public void a(com.facebook.ads.internal.view.d.a.j jVar) {
                if (p.this.d != null) {
                    p.this.a(p.this.d.getDuration(), p.this.d.getCurrentPosition());
                }
            }
        };
        this.f3030b = new AtomicInteger(-1);
        this.c = new ProgressBar(context, null, R.attr.progressBarStyleHorizontal);
        this.c.setLayoutParams(new RelativeLayout.LayoutParams(-1, i));
        LayerDrawable layerDrawable = new LayerDrawable(new Drawable[]{new ColorDrawable(0), new ColorDrawable(0), new ScaleDrawable(new ColorDrawable(Color.parseColor("#4080ff")), GravityCompat.START, 1.0f, -1.0f)});
        layerDrawable.setId(0, R.id.background);
        layerDrawable.setId(1, R.id.secondaryProgress);
        layerDrawable.setId(2, R.id.progress);
        this.c.setProgressDrawable(layerDrawable);
        this.c.setMax(Constants.TEN_SECONDS_MILLIS);
        addView(this.c);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i, int i2) {
        b();
        if (this.f3030b.get() >= i2 || i <= i2) {
            return;
        }
        this.f3029a = ObjectAnimator.ofInt(this.c, "progress", (i2 * Constants.TEN_SECONDS_MILLIS) / i, (Math.min(i2 + ItemTouchHelper.Callback.DEFAULT_SWIPE_ANIMATION_DURATION, i) * Constants.TEN_SECONDS_MILLIS) / i);
        this.f3029a.setDuration(Math.min(ItemTouchHelper.Callback.DEFAULT_SWIPE_ANIMATION_DURATION, i - i2));
        this.f3029a.setInterpolator(new LinearInterpolator());
        this.f3029a.start();
        this.f3030b.set(i2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        if (this.f3029a != null) {
            this.f3029a.cancel();
            this.f3029a.setTarget(null);
            this.f3029a = null;
            this.c.clearAnimation();
        }
    }

    public void a() {
        b();
        this.c = null;
        this.d = null;
    }

    @Override // com.facebook.ads.internal.view.d.b.m
    public void a(com.facebook.ads.internal.view.o oVar) {
        this.d = oVar;
        r<s, q> eventBus = oVar.getEventBus();
        eventBus.a((r<s, q>) this.f);
        eventBus.a((r<s, q>) this.g);
        eventBus.a((r<s, q>) this.e);
    }
}
