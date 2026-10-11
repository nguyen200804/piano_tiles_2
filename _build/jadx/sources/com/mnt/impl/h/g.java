package com.mnt.impl.h;

import com.mnt.Ad;
import com.mnt.AdError;
import com.mnt.IAdListener;
import com.mnt.MntNative;
import java.util.List;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
final class g implements com.mnt.a.f {

    /* renamed from: a, reason: collision with root package name */
    private /* synthetic */ IAdListener f4052a;

    /* renamed from: b, reason: collision with root package name */
    private /* synthetic */ MntNative f4053b;

    g(IAdListener iAdListener, MntNative mntNative) {
        this.f4052a = iAdListener;
        this.f4053b = mntNative;
    }

    @Override // com.mnt.a.f
    public final void a(AdError adError) {
        this.f4052a.onAdError(adError);
    }

    @Override // com.mnt.a.f
    public final void a(List<Ad> list) {
        this.f4052a.onAdLoadFinish(this.f4053b);
    }

    @Override // com.mnt.a.f
    public final void a() {
        this.f4052a.onAdClicked();
    }

    @Override // com.mnt.a.f
    public final void b() {
        this.f4052a.onAdShowed();
    }
}
