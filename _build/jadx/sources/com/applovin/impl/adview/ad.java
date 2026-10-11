package com.applovin.impl.adview;

import android.view.MotionEvent;
import android.view.View;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class ad implements View.OnTouchListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ ac f340a;

    ad(ac acVar) {
        this.f340a = acVar;
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        if (motionEvent.getAction() == 2) {
            return true;
        }
        if (!view.hasFocus()) {
            view.requestFocus();
        }
        return false;
    }
}
