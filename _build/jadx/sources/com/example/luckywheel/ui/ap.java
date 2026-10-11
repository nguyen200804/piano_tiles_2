package com.example.luckywheel.ui;

import android.widget.Toast;
import com.whatscall.luckywheel.R;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class ap implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ an f2374a;

    ap(an anVar) {
        this.f2374a = anVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f2374a.f2371a.dismiss();
        Toast.makeText(this.f2374a.f2372b.c(), R.string.request_exception, 0).show();
    }
}
