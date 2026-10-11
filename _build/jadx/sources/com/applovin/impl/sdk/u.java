package com.applovin.impl.sdk;

import android.app.Activity;
import android.app.AlertDialog;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class u implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ t f558a;

    u(t tVar) {
        this.f558a = tVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        Activity activity;
        AppLovinSdkImpl appLovinSdkImpl;
        AppLovinSdkImpl appLovinSdkImpl2;
        AppLovinSdkImpl appLovinSdkImpl3;
        AppLovinSdkImpl appLovinSdkImpl4;
        activity = this.f558a.c;
        AlertDialog.Builder builder = new AlertDialog.Builder(activity);
        appLovinSdkImpl = this.f558a.f556a;
        builder.setTitle((CharSequence) appLovinSdkImpl.a(av.X));
        appLovinSdkImpl2 = this.f558a.f556a;
        builder.setMessage((CharSequence) appLovinSdkImpl2.a(av.Y));
        builder.setCancelable(false);
        appLovinSdkImpl3 = this.f558a.f556a;
        builder.setPositiveButton((CharSequence) appLovinSdkImpl3.a(av.Z), new v(this));
        appLovinSdkImpl4 = this.f558a.f556a;
        builder.setNegativeButton((CharSequence) appLovinSdkImpl4.a(av.aa), new aa(this));
        builder.show();
    }
}
