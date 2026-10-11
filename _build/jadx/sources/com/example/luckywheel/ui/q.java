package com.example.luckywheel.ui;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.whatscall.luckywheel.R;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class q extends AnimatorListenerAdapter {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ l f2386a;

    q(l lVar) {
        this.f2386a = lVar;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        this.f2386a.dismiss();
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationStart(Animator animator) {
        ProgressBar progressBar;
        ImageView imageView;
        TextView textView;
        progressBar = this.f2386a.f2382a;
        progressBar.setVisibility(8);
        imageView = this.f2386a.c;
        imageView.setVisibility(0);
        textView = this.f2386a.d;
        textView.setText(R.string.redeem_success);
    }
}
