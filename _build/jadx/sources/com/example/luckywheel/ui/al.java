package com.example.luckywheel.ui;

import android.util.Log;
import com.example.luckywheel.ui.a;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class al implements a.InterfaceC0066a {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ LuckyWheelView f2368a;

    al(LuckyWheelView luckyWheelView) {
        this.f2368a = luckyWheelView;
    }

    @Override // com.example.luckywheel.ui.a.InterfaceC0066a
    public void a() {
        Log.d("liufan", "onDismiss showAd");
        this.f2368a.n();
    }
}
