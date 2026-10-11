package com.mnt.impl.a;

import com.mnt.AdError;
import com.mnt.IAdListener;
import java.util.List;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
final class j implements com.mnt.impl.f.a {

    /* renamed from: a, reason: collision with root package name */
    private /* synthetic */ h f3928a;

    j(h hVar) {
        this.f3928a = hVar;
    }

    @Override // com.mnt.impl.f.a
    public final void a(String str) {
        List list;
        IAdListener iAdListener;
        IAdListener iAdListener2;
        this.f3928a.o++;
        int i = this.f3928a.o;
        list = this.f3928a.l;
        if (i == list.size()) {
            if (this.f3928a.p == 0) {
                this.f3928a.f = true;
                this.f3928a.k = 2;
                iAdListener2 = this.f3928a.e;
                iAdListener2.onAdLoadFinish(null);
                return;
            }
            if (this.f3928a.p > 0) {
                this.f3928a.f = false;
                iAdListener = this.f3928a.e;
                iAdListener.onAdError(AdError.NO_OFFERS);
            }
        }
    }

    @Override // com.mnt.impl.f.a
    public final void a() {
        IAdListener iAdListener;
        List list;
        IAdListener iAdListener2;
        this.f3928a.o++;
        this.f3928a.p++;
        iAdListener = this.f3928a.e;
        if (iAdListener != null) {
            this.f3928a.f = false;
            int i = this.f3928a.o;
            list = this.f3928a.l;
            if (i == list.size()) {
                iAdListener2 = this.f3928a.e;
                iAdListener2.onAdError(AdError.NO_OFFERS);
            }
        }
    }
}
