package com.cmplay.tile2.ui.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.animation.LinearInterpolator;
import android.view.animation.RotateAnimation;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.cmplay.tiles4.R;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class LoadingView extends RelativeLayout {

    /* renamed from: a, reason: collision with root package name */
    private ImageView f1674a;

    /* renamed from: b, reason: collision with root package name */
    private TextView f1675b;

    public void a(String str) {
        this.f1675b.setText(str);
    }

    public LoadingView(Context context, AttributeSet attrs) {
        super(context, attrs);
        LayoutInflater.from(context).inflate(R.layout.message_tag_loading_view, this);
        this.f1674a = (ImageView) findViewById(2131230869);
        this.f1675b = (TextView) findViewById(2131230870);
        a();
    }

    private void a() {
        RotateAnimation rotateAnimation = new RotateAnimation(359.0f, 0.0f, 1, 0.5f, 1, 0.5f);
        rotateAnimation.setDuration(800L);
        rotateAnimation.setRepeatMode(1);
        rotateAnimation.setRepeatCount(-1);
        rotateAnimation.setInterpolator(new LinearInterpolator());
        this.f1674a.startAnimation(rotateAnimation);
    }
}
