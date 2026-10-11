package com.mopub.mobileads.resource;

import android.graphics.Canvas;
import android.graphics.Paint;
import com.mopub.mobileads.resource.DrawableConstants;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class CloseButtonDrawable extends BaseWidgetDrawable {

    /* renamed from: a, reason: collision with root package name */
    private final Paint f4519a;

    /* renamed from: b, reason: collision with root package name */
    private final float f4520b;

    public CloseButtonDrawable() {
        this(8.0f);
    }

    public CloseButtonDrawable(float strokeWidth) {
        this.f4520b = strokeWidth / 2.0f;
        this.f4519a = new Paint();
        this.f4519a.setColor(-1);
        this.f4519a.setStrokeWidth(strokeWidth);
        this.f4519a.setStrokeCap(DrawableConstants.CloseButton.STROKE_CAP);
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        int width = getBounds().width();
        int height = getBounds().height();
        canvas.drawLine(0.0f + this.f4520b, height - this.f4520b, width - this.f4520b, 0.0f + this.f4520b, this.f4519a);
        canvas.drawLine(0.0f + this.f4520b, 0.0f + this.f4520b, width - this.f4520b, height - this.f4520b, this.f4519a);
    }
}
