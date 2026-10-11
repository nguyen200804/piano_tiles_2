package com.facebook.ads.internal.view.d.b;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.net.Uri;
import android.util.DisplayMetrics;
import android.view.View;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.facebook.ads.internal.g.q;
import com.facebook.ads.internal.g.r;
import com.facebook.ads.internal.g.s;
import java.util.HashMap;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class e extends n {

    /* renamed from: b, reason: collision with root package name */
    private final Context f2987b;
    private final String c;
    private final TextView d;
    private final String e;
    private final Paint f;
    private final RectF g;

    public e(Context context, String str, String str2, String str3) {
        super(context);
        this.f2987b = context;
        this.c = str;
        this.e = str2;
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        this.d = new TextView(getContext());
        this.d.setTextColor(-3355444);
        this.d.setTextSize(16.0f);
        this.d.setPadding((int) (displayMetrics.density * 6.0f), (int) (displayMetrics.density * 4.0f), (int) (displayMetrics.density * 6.0f), (int) (displayMetrics.density * 4.0f));
        this.f = new Paint();
        this.f.setStyle(Paint.Style.FILL);
        this.f.setColor(-16777216);
        this.f.setAlpha(178);
        this.g = new RectF();
        setBackgroundColor(0);
        this.d.setText(str3);
        addView(this.d, new RelativeLayout.LayoutParams(-2, -2));
    }

    @Override // com.facebook.ads.internal.view.d.b.n
    protected void a_(final com.facebook.ads.internal.view.o oVar) {
        this.d.setOnClickListener(new View.OnClickListener() { // from class: com.facebook.ads.internal.view.d.b.e.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Uri parse = Uri.parse(e.this.c);
                oVar.getEventBus().a((r<s, q>) new com.facebook.ads.internal.view.d.a.a(parse));
                com.facebook.ads.internal.a.a a2 = com.facebook.ads.internal.a.b.a(e.this.getContext(), e.this.e, parse, new HashMap());
                if (a2 != null) {
                    a2.b();
                }
            }
        });
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        this.g.set(0.0f, 0.0f, getWidth(), getHeight());
        canvas.drawRoundRect(this.g, 0.0f, 0.0f, this.f);
        super.onDraw(canvas);
    }
}
