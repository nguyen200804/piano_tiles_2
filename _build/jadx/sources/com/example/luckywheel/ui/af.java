package com.example.luckywheel.ui;

import android.view.View;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class af implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ LuckyWheelView f2360a;

    af(LuckyWheelView luckyWheelView) {
        this.f2360a = luckyWheelView;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        this.f2360a.d();
    }
}
