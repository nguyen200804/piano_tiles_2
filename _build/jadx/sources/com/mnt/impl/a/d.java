package com.mnt.impl.a;

import android.view.View;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
final class d implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    private /* synthetic */ b f3920a;

    d(b bVar) {
        this.f3920a = bVar;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        this.f3920a.f3915a.finish();
        if (g.a().b() != null) {
            g.a().b().mAdListener.onAdClosed();
        }
    }
}
