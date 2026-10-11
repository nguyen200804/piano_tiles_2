package com.applovin.impl.adview;

import android.util.Log;
import android.view.View;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class ae implements View.OnLongClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ ac f341a;

    ae(ac acVar) {
        this.f341a = acVar;
    }

    @Override // android.view.View.OnLongClickListener
    public boolean onLongClick(View view) {
        Log.d("AdWebView", "Received a LongClick event.");
        return true;
    }
}
