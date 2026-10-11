package com.google.android.gms.internal;

import com.google.android.gms.ads.purchase.PlayStorePurchaseListener;
import com.google.android.gms.internal.zzhs;

@zzin
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class zzhx extends zzhs.zza {
    private final PlayStorePurchaseListener zzawj;

    public zzhx(PlayStorePurchaseListener playStorePurchaseListener) {
        this.zzawj = playStorePurchaseListener;
    }

    @Override // com.google.android.gms.internal.zzhs
    public boolean isValidPurchase(String str) {
        return this.zzawj.isValidPurchase(str);
    }

    @Override // com.google.android.gms.internal.zzhs
    public void zza(zzhr zzhrVar) {
        this.zzawj.onInAppPurchaseFinished(new zzhv(zzhrVar));
    }
}
