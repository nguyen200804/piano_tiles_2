package com.mnt.impl.h;

import com.mnt.AdError;
import com.mnt.MntAdType;
import com.mnt.MntBuild;
import com.mnt.impl.f.b;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
final class c implements b.a {

    /* renamed from: a, reason: collision with root package name */
    private /* synthetic */ MntBuild f4045a;

    c(MntBuild mntBuild) {
        this.f4045a = mntBuild;
    }

    @Override // com.mnt.impl.f.b.a
    public final void a() {
        if (this.f4045a.getType() == MntAdType.INTERSTITIAL_320X480.getType()) {
            a.a(this.f4045a);
            return;
        }
        if (this.f4045a.getType() == MntAdType.Banner.BANNER_320X50.getType()) {
            a.b(this.f4045a);
        } else if (this.f4045a.getType() == MntAdType.Banner.MEDIUM_300X250.getType()) {
            a.c(this.f4045a);
        } else if (this.f4045a.getType() == MntAdType.NATIVE.getType()) {
            a.d(this.f4045a);
        }
    }

    @Override // com.mnt.impl.f.b.a
    public final void b() {
        if (this.f4045a.mAdListener != null) {
            this.f4045a.mAdListener.onAdError(AdError.NO_MATERIAL);
        }
    }
}
