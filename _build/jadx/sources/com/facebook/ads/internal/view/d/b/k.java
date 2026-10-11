package com.facebook.ads.internal.view.d.b;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import android.widget.RelativeLayout;
import com.applovin.sdk.AppLovinErrorCodes;
import com.facebook.ads.VideoStartReason;
import com.facebook.ads.internal.g.q;
import com.facebook.ads.internal.g.r;
import com.facebook.ads.internal.g.s;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class k extends n {

    /* renamed from: b, reason: collision with root package name */
    private final l f3013b;
    private final com.facebook.ads.internal.view.d.a.i c;
    private final com.facebook.ads.internal.view.d.a.k d;
    private final com.facebook.ads.internal.view.d.a.c e;
    private final Paint f;
    private final RectF g;

    /* renamed from: com.facebook.ads.internal.view.d.b.k$5, reason: invalid class name */
    static /* synthetic */ class AnonymousClass5 {

        /* renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f3019a = new int[com.facebook.ads.internal.view.d.c.d.values().length];

        static {
            try {
                f3019a[com.facebook.ads.internal.view.d.c.d.PREPARED.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f3019a[com.facebook.ads.internal.view.d.c.d.IDLE.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f3019a[com.facebook.ads.internal.view.d.c.d.PAUSED.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f3019a[com.facebook.ads.internal.view.d.c.d.PLAYBACK_COMPLETED.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f3019a[com.facebook.ads.internal.view.d.c.d.STARTED.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
        }
    }

    public k(Context context) {
        super(context);
        this.c = new com.facebook.ads.internal.view.d.a.i() { // from class: com.facebook.ads.internal.view.d.b.k.1
            @Override // com.facebook.ads.internal.g.s
            public void a(com.facebook.ads.internal.view.d.a.h hVar) {
                k.this.f3013b.setChecked(true);
            }
        };
        this.d = new com.facebook.ads.internal.view.d.a.k() { // from class: com.facebook.ads.internal.view.d.b.k.2
            @Override // com.facebook.ads.internal.g.s
            public void a(com.facebook.ads.internal.view.d.a.j jVar) {
                k.this.f3013b.setChecked(false);
            }
        };
        this.e = new com.facebook.ads.internal.view.d.a.c() { // from class: com.facebook.ads.internal.view.d.b.k.3
            @Override // com.facebook.ads.internal.g.s
            public void a(com.facebook.ads.internal.view.d.a.b bVar) {
                k.this.f3013b.setChecked(true);
            }
        };
        this.f3013b = new l(context);
        DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams((int) (displayMetrics.density * 50.0f), (int) (displayMetrics.density * 50.0f));
        layoutParams.addRule(13);
        this.f3013b.setLayoutParams(layoutParams);
        this.f3013b.setChecked(true);
        this.f = new Paint();
        this.f.setStyle(Paint.Style.FILL);
        this.f.setColor(-1);
        this.f.setAlpha(AppLovinErrorCodes.NO_FILL);
        this.g = new RectF();
        setBackgroundColor(0);
        addView(this.f3013b);
        setGravity(17);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams((int) (displayMetrics.density * 75.0d), (int) (displayMetrics.density * 75.0d));
        layoutParams2.addRule(13);
        setLayoutParams(layoutParams2);
    }

    @Override // com.facebook.ads.internal.view.d.b.n
    protected void a_(final com.facebook.ads.internal.view.o oVar) {
        oVar.getEventBus().a((r<s, q>) this.c);
        oVar.getEventBus().a((r<s, q>) this.d);
        oVar.getEventBus().a((r<s, q>) this.e);
        this.f3013b.setOnTouchListener(new View.OnTouchListener() { // from class: com.facebook.ads.internal.view.d.b.k.4
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                if (motionEvent.getAction() == 0) {
                    return true;
                }
                if (motionEvent.getAction() != 1) {
                    return false;
                }
                switch (AnonymousClass5.f3019a[oVar.getState().ordinal()]) {
                    case 1:
                    case 2:
                    case 3:
                    case 4:
                        oVar.a(VideoStartReason.USER_STARTED);
                        return true;
                    case 5:
                        oVar.a(true);
                        return true;
                    default:
                        return false;
                }
            }
        });
        super.a_(oVar);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        canvas.drawCircle(getPaddingLeft() + r1, (r0 / 2) + getPaddingTop(), Math.min((getWidth() - getPaddingLeft()) - getPaddingRight(), (getHeight() - getPaddingTop()) - getPaddingBottom()) / 2, this.f);
        super.onDraw(canvas);
    }
}
