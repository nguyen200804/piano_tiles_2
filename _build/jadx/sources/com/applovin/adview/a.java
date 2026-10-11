package com.applovin.adview;

import android.content.DialogInterface;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class a implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ AppLovinConfirmationActivity f302a;

    a(AppLovinConfirmationActivity appLovinConfirmationActivity) {
        this.f302a = appLovinConfirmationActivity;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        dialogInterface.dismiss();
        this.f302a.finish();
    }
}
