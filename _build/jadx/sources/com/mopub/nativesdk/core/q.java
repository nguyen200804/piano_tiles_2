package com.mopub.nativesdk.core;

import com.mopub.nativesdk.AdListener;
import com.mopub.nativesdk.Campaign;
import com.mopub.nativesdk.ClickListener;
import java.util.List;
import java.util.Random;

/* compiled from: AKService.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
final class q implements ClickListener {

    /* renamed from: a, reason: collision with root package name */
    private /* synthetic */ AdListener f4674a;

    /* renamed from: b, reason: collision with root package name */
    private /* synthetic */ List f4675b;
    private /* synthetic */ C0219a c;

    q(C0219a c0219a, AdListener adListener, List list) {
        this.c = c0219a;
        this.f4674a = adListener;
        this.f4675b = list;
    }

    @Override // com.mopub.nativesdk.ClickListener
    public final void onAdClicked(Campaign campaign, String str, int i) {
        if (i == 1) {
            if (this.f4674a != null) {
                this.f4674a.onPreLoadFinish(campaign);
            }
        } else {
            C0219a.a(this.c);
            C0219a.a(this.c, this.f4675b, new Random().nextInt(this.f4675b.size()), this.f4674a);
        }
    }

    @Override // com.mopub.nativesdk.ClickListener
    public final void onAdClickFailed(Campaign campaign, String str) {
        C0219a.a(this.c);
        C0219a.a(this.c, this.f4675b, new Random().nextInt(this.f4675b.size()), this.f4674a);
    }
}
