package com.applovin.impl.sdk;

import android.app.Activity;
import android.content.Intent;
import com.applovin.adview.AppLovinConfirmationActivity;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class s implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ ao f555a;

    s(ao aoVar) {
        this.f555a = aoVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        AppLovinSdkImpl appLovinSdkImpl;
        AppLovinSdkImpl appLovinSdkImpl2;
        Activity activity;
        Activity activity2;
        Activity activity3;
        appLovinSdkImpl = this.f555a.f428a;
        String str = (String) appLovinSdkImpl.a(av.ab);
        String b2 = this.f555a.b();
        appLovinSdkImpl2 = this.f555a.f428a;
        String str2 = (String) appLovinSdkImpl2.a(av.ag);
        activity = this.f555a.c;
        if (!n.a(AppLovinConfirmationActivity.class, activity)) {
            this.f555a.a(b2, null);
            return;
        }
        try {
            activity2 = this.f555a.c;
            Intent intent = new Intent(activity2, (Class<?>) AppLovinConfirmationActivity.class);
            intent.putExtra("dialog_title", str);
            intent.putExtra("dialog_body", b2);
            intent.putExtra("dialog_button_text", str2);
            activity3 = this.f555a.c;
            activity3.startActivity(intent);
        } catch (Throwable th) {
            this.f555a.a(b2, th);
        }
    }
}
