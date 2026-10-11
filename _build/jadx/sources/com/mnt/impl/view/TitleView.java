package com.mnt.impl.view;

import android.content.Context;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.mnt.impl.b.k;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class TitleView extends FrameLayout {

    /* renamed from: a, reason: collision with root package name */
    private int f4098a;

    public TitleView(Context context) {
        super(context);
        int i = context.getResources().getConfiguration().orientation;
        if (i == 2) {
            this.f4098a = k.b(context)[1];
        } else if (i == 1) {
            this.f4098a = k.b(context)[0];
        }
        int i2 = (int) (this.f4098a * 0.6d);
        ImageView imageView = new ImageView(context);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(i2, (int) (i2 * 0.3d));
        layoutParams.gravity = 17;
        imageView.setScaleType(ImageView.ScaleType.CENTER_CROP);
        imageView.setLayoutParams(layoutParams);
        imageView.setImageDrawable(com.mnt.impl.l.a.f4087a.a());
        addView(imageView);
    }
}
