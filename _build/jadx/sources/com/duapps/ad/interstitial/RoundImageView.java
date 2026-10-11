package com.duapps.ad.interstitial;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.widget.ImageView;
import com.duapps.ad.c.b.c;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class RoundImageView extends ImageView {

    /* renamed from: a, reason: collision with root package name */
    private final RectF f2184a;

    /* renamed from: b, reason: collision with root package name */
    private float f2185b;
    private final Paint c;
    private final Paint d;

    public RoundImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f2184a = new RectF();
        this.c = new Paint();
        this.d = new Paint();
        a(context);
    }

    public RoundImageView(Context context) {
        super(context);
        this.f2184a = new RectF();
        this.c = new Paint();
        this.d = new Paint();
        a(context);
    }

    private void a(Context context) {
        this.c.setAntiAlias(true);
        this.c.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
        this.d.setAntiAlias(true);
        this.d.setColor(-1842205);
        this.f2185b = c.a(context, 8.0f);
    }

    @Override // android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        this.f2184a.set(0.0f, 0.0f, getWidth(), getHeight());
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        canvas.saveLayer(this.f2184a, this.d, 31);
        canvas.drawRoundRect(this.f2184a, this.f2185b, this.f2185b, this.d);
        canvas.saveLayer(this.f2184a, this.c, 31);
        super.draw(canvas);
        canvas.restore();
    }
}
