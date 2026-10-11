package com.mopub.nativesdk.core;

import com.mopub.nativesdk.AdListener;
import com.mopub.nativesdk.Campaign;
import java.util.List;

/* compiled from: AKService.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
final class o implements com.mopub.nativesdk.c.l {

    /* renamed from: a, reason: collision with root package name */
    private /* synthetic */ AdListener f4671a;

    o(C0219a c0219a, AdListener adListener) {
        this.f4671a = adListener;
    }

    @Override // com.mopub.nativesdk.c.l
    public final void a() {
    }

    @Override // com.mopub.nativesdk.c.l
    public final void a(Object obj) {
        if (obj == null && this.f4671a != null) {
            this.f4671a.onLoadFailed("No ads");
        }
        List<Campaign> list = (List) obj;
        if (list != null && list.size() > 0) {
            for (Campaign campaign : list) {
                if (C0219a.d != null) {
                    if (C0219a.d.get(Long.valueOf(campaign.getId())) != null) {
                        C0219a.d.put(Long.valueOf(campaign.getId()), Integer.valueOf(C0219a.d.get(Long.valueOf(campaign.getId())).intValue() + 1));
                    } else {
                        C0219a.d.put(Long.valueOf(campaign.getId()), 1);
                    }
                }
            }
            this.f4671a.onLoadFinish(list);
            return;
        }
        this.f4671a.onLoadFailed("No ads");
    }

    @Override // com.mopub.nativesdk.c.l
    public final void a(String str) {
        if (this.f4671a != null) {
            this.f4671a.onLoadFailed(str);
        }
    }

    @Override // com.mopub.nativesdk.c.l
    public final void b() {
    }
}
