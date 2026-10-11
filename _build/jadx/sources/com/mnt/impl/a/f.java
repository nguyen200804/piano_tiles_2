package com.mnt.impl.a;

import android.view.View;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
final class f implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    private /* synthetic */ b f3922a;

    f(b bVar) {
        this.f3922a = bVar;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        this.f3922a.f3915a.finish();
        if (g.a().b() != null) {
            g.a().b().mAdListener.onAdClosed();
        }
    }
}
