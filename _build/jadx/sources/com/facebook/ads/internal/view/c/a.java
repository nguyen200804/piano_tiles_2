package com.facebook.ads.internal.view.c;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.net.Uri;
import android.util.Log;
import android.view.View;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.facebook.ads.internal.g.q;
import com.facebook.ads.internal.g.r;
import com.facebook.ads.internal.g.s;
import com.facebook.ads.internal.view.o;
import java.util.HashMap;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class a extends RelativeLayout {

    /* renamed from: a, reason: collision with root package name */
    private final String f2947a;

    /* renamed from: b, reason: collision with root package name */
    private o f2948b;
    private final Paint c;
    private final RectF d;

    public a(Context context, String str, String str2, int i, o oVar, final String str3) {
        super(context);
        this.f2947a = str;
        this.f2948b = oVar;
        TextView textView = new TextView(context);
        textView.setTextColor(-1);
        textView.setTextSize(16.0f);
        textView.setText(str2);
        textView.setTypeface(Typeface.defaultFromStyle(1));
        setGravity(17);
        addView(textView);
        this.c = new Paint();
        this.c.setStyle(Paint.Style.FILL);
        this.c.setColor(i);
        this.d = new RectF();
        setBackgroundColor(0);
        setOnClickListener(new View.OnClickListener() { // from class: com.facebook.ads.internal.view.c.a.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                try {
                    Uri parse = Uri.parse(a.this.f2947a);
                    a.this.f2948b.getEventBus().a((r<s, q>) new com.facebook.ads.internal.view.d.a.a(parse));
                    com.facebook.ads.internal.a.a a2 = com.facebook.ads.internal.a.b.a(a.this.getContext(), str3, parse, new HashMap());
                    if (a2 != null) {
                        a2.b();
                    }
                } catch (ActivityNotFoundException e) {
                    Log.e(String.valueOf(a.class), "Error while opening " + a.this.f2947a, e);
                } catch (Exception e2) {
                    Log.e(String.valueOf(a.class), "Error executing action", e2);
                }
            }
        });
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        float f = getContext().getResources().getDisplayMetrics().density;
        this.d.set(0.0f, 0.0f, getWidth(), getHeight());
        canvas.drawRoundRect(this.d, 10.0f * f, f * 10.0f, this.c);
        super.onDraw(canvas);
    }
}
