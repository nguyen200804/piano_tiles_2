package com.applovin.impl.adview;

import android.view.View;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class d implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ ai f356a;

    d(ai aiVar) {
        this.f356a = aiVar;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        this.f356a.dismiss();
    }
}
