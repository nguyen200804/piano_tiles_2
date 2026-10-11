package com.facebook.ads.internal.view.d.b;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.View;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.facebook.ads.internal.g.q;
import com.facebook.ads.internal.g.r;
import com.facebook.ads.internal.g.s;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class h extends n {

    /* renamed from: b, reason: collision with root package name */
    private final a f2998b;
    private final int c;
    private final String d;
    private final String e;
    private final AtomicBoolean f;
    private final s<com.facebook.ads.internal.view.d.a.n> g;

    private static class a extends TextView {

        /* renamed from: a, reason: collision with root package name */
        private final Paint f3002a;

        /* renamed from: b, reason: collision with root package name */
        private final Paint f3003b;
        private final RectF c;

        public a(Context context) {
            super(context);
            DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
            setBackgroundColor(0);
            setTextColor(-3355444);
            setPadding((int) (displayMetrics.density * 9.0f), (int) (displayMetrics.density * 5.0f), (int) (displayMetrics.density * 9.0f), (int) (displayMetrics.density * 5.0f));
            setTextSize(18.0f);
            this.f3002a = new Paint();
            this.f3002a.setStyle(Paint.Style.STROKE);
            this.f3002a.setColor(-10066330);
            this.f3002a.setStrokeWidth(1.0f);
            this.f3002a.setAntiAlias(true);
            this.f3003b = new Paint();
            this.f3003b.setStyle(Paint.Style.FILL);
            this.f3003b.setColor(-1895825408);
            this.c = new RectF();
        }

        @Override // android.widget.TextView, android.view.View
        protected void onDraw(Canvas canvas) {
            if (getText().length() == 0) {
                return;
            }
            this.c.set(0, 0, getWidth(), getHeight());
            canvas.drawRoundRect(this.c, 6.0f, 6.0f, this.f3003b);
            this.c.set(2, 2, r0 - 2, r1 - 2);
            canvas.drawRoundRect(this.c, 6.0f, 6.0f, this.f3002a);
            super.onDraw(canvas);
        }
    }

    public h(Context context, int i, String str, String str2) {
        super(context);
        this.g = new s<com.facebook.ads.internal.view.d.a.n>() { // from class: com.facebook.ads.internal.view.d.b.h.1
            @Override // com.facebook.ads.internal.g.s
            public Class<com.facebook.ads.internal.view.d.a.n> a() {
                return com.facebook.ads.internal.view.d.a.n.class;
            }

            @Override // com.facebook.ads.internal.g.s
            public void a(com.facebook.ads.internal.view.d.a.n nVar) {
                if (h.this.f.get()) {
                    return;
                }
                int currentPosition = h.this.c - (h.this.getVideoView().getCurrentPosition() / 1000);
                if (currentPosition > 0) {
                    h.this.f2998b.setText(h.this.d + ' ' + currentPosition);
                } else {
                    h.this.f2998b.setText(h.this.e);
                    h.this.f.set(true);
                }
            }
        };
        this.c = i;
        this.d = str;
        this.e = str2;
        this.f = new AtomicBoolean(false);
        this.f2998b = new a(context);
        this.f2998b.setText(this.d + ' ' + i);
        addView(this.f2998b, new RelativeLayout.LayoutParams(-2, -2));
    }

    @Override // com.facebook.ads.internal.view.d.b.n
    public void a_(final com.facebook.ads.internal.view.o oVar) {
        oVar.getEventBus().a((r<s, q>) this.g);
        this.f2998b.setOnClickListener(new View.OnClickListener() { // from class: com.facebook.ads.internal.view.d.b.h.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (h.this.f.get()) {
                    oVar.e();
                } else {
                    Log.i("SkipPlugin", "User clicked skip before the ads is allowed to skip.");
                }
            }
        });
    }
}
