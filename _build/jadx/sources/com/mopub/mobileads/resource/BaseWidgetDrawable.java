package com.mopub.mobileads.resource;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.support.annotation.NonNull;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public abstract class BaseWidgetDrawable extends Drawable {
    protected void a(@NonNull Canvas canvas, @NonNull Paint paint, @NonNull Rect rect, @NonNull String str) {
        paint.getTextBounds(str, 0, str.length(), rect);
        canvas.drawText(str, getBounds().centerX(), (((paint.descent() - paint.ascent()) / 2.0f) - paint.descent()) + getBounds().centerY(), paint);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return 0;
    }
}
