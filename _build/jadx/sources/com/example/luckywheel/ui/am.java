package com.example.luckywheel.ui;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class am implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ a f2369a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ LuckyWheelView f2370b;

    am(LuckyWheelView luckyWheelView, a aVar) {
        this.f2370b = luckyWheelView;
        this.f2369a = aVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.f2369a.isShowing()) {
            this.f2369a.dismiss();
        }
    }
}
