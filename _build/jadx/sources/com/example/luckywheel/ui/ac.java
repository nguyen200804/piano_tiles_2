package com.example.luckywheel.ui;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.util.Log;
import android.widget.TextView;
import com.whatscall.luckywheel.R;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class ac extends AnimatorListenerAdapter {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ LuckyWheelActivity f2357a;

    ac(LuckyWheelActivity luckyWheelActivity) {
        this.f2357a = luckyWheelActivity;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        TextView textView;
        int i;
        TextView textView2;
        int i2;
        int i3;
        textView = this.f2357a.f;
        textView.setVisibility(4);
        StringBuilder append = new StringBuilder().append("mCurrentFrameBalance = ");
        i = this.f2357a.k;
        Log.d("liufan", append.append(i).toString());
        textView2 = this.f2357a.f2350b;
        LuckyWheelActivity luckyWheelActivity = this.f2357a;
        int i4 = R.string.balance;
        i2 = this.f2357a.k;
        textView2.setText(luckyWheelActivity.getString(i4, new Object[]{Integer.valueOf(i2)}));
        LuckyWheelActivity luckyWheelActivity2 = this.f2357a;
        i3 = this.f2357a.k;
        luckyWheelActivity2.a(i3);
    }
}
