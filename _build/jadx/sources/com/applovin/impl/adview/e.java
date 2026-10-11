package com.applovin.impl.adview;

import android.view.View;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class e implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ u f357a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ ai f358b;

    e(ai aiVar, u uVar) {
        this.f358b = aiVar;
        this.f357a = uVar;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        this.f357a.performClick();
    }
}
