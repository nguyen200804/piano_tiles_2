package com.mnt.impl;

import android.view.View;
import com.mnt.Ad;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class c implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    private /* synthetic */ Ad f3954a;

    /* renamed from: b, reason: collision with root package name */
    private /* synthetic */ b f3955b;

    public c(b bVar, Ad ad) {
        this.f3955b = bVar;
        this.f3954a = ad;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        com.mnt.a.f fVar;
        com.mnt.a.f fVar2;
        this.f3955b.a(this.f3954a);
        fVar = this.f3955b.f3930b;
        if (fVar != null) {
            fVar2 = this.f3955b.f3930b;
            fVar2.a();
        }
    }
}
