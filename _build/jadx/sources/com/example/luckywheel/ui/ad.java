package com.example.luckywheel.ui;

import android.view.View;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class ad implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ LuckyWheelView f2358a;

    ad(LuckyWheelView luckyWheelView) {
        this.f2358a = luckyWheelView;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        this.f2358a.a();
    }
}
