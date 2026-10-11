package com.example.luckywheel.ui;

import android.util.Log;
import android.widget.TextView;
import com.whatscall.luckywheel.R;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class y implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ int f2397a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ LuckyWheelActivity f2398b;

    y(LuckyWheelActivity luckyWheelActivity, int i) {
        this.f2398b = luckyWheelActivity;
        this.f2397a = i;
    }

    @Override // java.lang.Runnable
    public void run() {
        TextView textView;
        Log.d("liufan", "onChanged: update mBalanceTv");
        textView = this.f2398b.f2350b;
        textView.setText(this.f2398b.getString(R.string.balance, new Object[]{Integer.valueOf(this.f2397a)}));
        this.f2398b.a(com.example.luckywheel.b.e.a().c());
    }
}
