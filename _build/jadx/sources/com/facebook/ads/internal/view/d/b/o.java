package com.facebook.ads.internal.view.d.b;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.support.annotation.Nullable;
import android.view.View;
import com.facebook.ads.internal.g.q;
import com.facebook.ads.internal.g.r;
import com.facebook.ads.internal.g.s;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class o extends View implements m {

    /* renamed from: a, reason: collision with root package name */
    private final Paint f3025a;

    /* renamed from: b, reason: collision with root package name */
    private final Rect f3026b;
    private float c;
    private final com.facebook.ads.internal.view.d.a.o d;
    private final com.facebook.ads.internal.view.d.a.c e;

    @Nullable
    private com.facebook.ads.internal.view.o f;

    public o(Context context) {
        super(context);
        this.d = new com.facebook.ads.internal.view.d.a.o() { // from class: com.facebook.ads.internal.view.d.b.o.1
            @Override // com.facebook.ads.internal.g.s
            public void a(com.facebook.ads.internal.view.d.a.n nVar) {
                if (o.this.f != null) {
                    int duration = o.this.f.getDuration();
                    if (duration > 0) {
                        o.this.c = o.this.f.getCurrentPosition() / duration;
                    } else {
                        o.this.c = 0.0f;
                    }
                    o.this.postInvalidate();
                }
            }
        };
        this.e = new com.facebook.ads.internal.view.d.a.c() { // from class: com.facebook.ads.internal.view.d.b.o.2
            @Override // com.facebook.ads.internal.g.s
            public void a(com.facebook.ads.internal.view.d.a.b bVar) {
                if (o.this.f != null) {
                    o.this.c = 0.0f;
                    o.this.postInvalidate();
                }
            }
        };
        this.f3025a = new Paint();
        this.f3025a.setStyle(Paint.Style.FILL);
        this.f3025a.setColor(-9528840);
        this.f3026b = new Rect();
    }

    @Override // com.facebook.ads.internal.view.d.b.m
    public void a(com.facebook.ads.internal.view.o oVar) {
        this.f = oVar;
        oVar.getEventBus().a((r<s, q>) this.d);
        oVar.getEventBus().a((r<s, q>) this.e);
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        this.f3026b.set(0, 0, (int) (getWidth() * this.c), getHeight());
        canvas.drawRect(this.f3026b, this.f3025a);
        super.draw(canvas);
    }
}
