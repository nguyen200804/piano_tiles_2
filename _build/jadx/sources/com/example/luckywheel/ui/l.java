package com.example.luckywheel.ui;

import android.animation.ValueAnimator;
import android.app.Activity;
import android.os.Bundle;
import android.view.animation.DecelerateInterpolator;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.whatscall.luckywheel.R;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class l extends b {

    /* renamed from: a, reason: collision with root package name */
    private ProgressBar f2382a;
    private ImageView c;
    private TextView d;

    public l(Activity activity) {
        super(activity);
    }

    public void a() {
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        ofFloat.setDuration(2000L);
        ofFloat.addUpdateListener(new p(this));
        ofFloat.addListener(new q(this));
        ofFloat.setInterpolator(new DecelerateInterpolator());
        ofFloat.setStartDelay(1000L);
        ofFloat.start();
    }

    @Override // android.app.Dialog
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.request_dialog);
        this.d = (TextView) findViewById(R.id.request_title);
        this.d.setText(R.string.redeem_request);
        this.f2382a = (ProgressBar) findViewById(R.id.request_progress_bar);
        this.c = (ImageView) findViewById(R.id.request_success_img);
    }
}
