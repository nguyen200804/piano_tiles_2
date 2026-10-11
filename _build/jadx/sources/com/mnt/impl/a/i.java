package com.mnt.impl.a;

import android.content.Context;
import com.mnt.AdError;
import com.mnt.IAdListener;
import com.mnt.impl.dsp.d;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class i implements d.a {

    /* renamed from: a, reason: collision with root package name */
    private /* synthetic */ h f3927a;

    public i(h hVar) {
        this.f3927a = hVar;
    }

    @Override // com.mnt.impl.dsp.d.a
    public final void a(com.mnt.impl.dsp.c cVar) {
        Context context;
        String str;
        IAdListener iAdListener;
        this.f3927a.n = cVar;
        this.f3927a.k = 1;
        g a2 = g.a();
        context = this.f3927a.f3925a;
        str = this.f3927a.d;
        a2.c = com.mnt.impl.d.a(context, cVar, str, null);
        this.f3927a.f = true;
        iAdListener = this.f3927a.e;
        iAdListener.onAdLoadFinish(null);
    }

    @Override // com.mnt.impl.dsp.d.a
    public final void a() {
        IAdListener iAdListener;
        iAdListener = this.f3927a.e;
        iAdListener.onAdError(AdError.NO_OFFERS);
    }

    @Override // com.mnt.impl.dsp.d.a
    public final void b() {
        r0.c.a(this.f3927a.m);
    }
}
