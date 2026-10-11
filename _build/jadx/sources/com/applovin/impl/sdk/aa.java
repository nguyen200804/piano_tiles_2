package com.applovin.impl.sdk;

import android.content.DialogInterface;
import com.applovin.sdk.AppLovinAdRewardListener;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class aa implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ u f405a;

    aa(u uVar) {
        this.f405a = uVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        z zVar;
        AppLovinAdRewardListener appLovinAdRewardListener;
        dialogInterface.dismiss();
        zVar = this.f405a.f558a.f557b;
        appLovinAdRewardListener = this.f405a.f558a.g;
        zVar.a(appLovinAdRewardListener);
    }
}
