package com.facebook.ads.internal.adapters;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.facebook.ads.AdError;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class z extends BroadcastReceiver {

    /* renamed from: a, reason: collision with root package name */
    private String f2644a;

    /* renamed from: b, reason: collision with root package name */
    private y f2645b;
    private x c;

    public z(String str, x xVar, y yVar) {
        this.c = xVar;
        this.f2645b = yVar;
        this.f2644a = str;
    }

    public IntentFilter a() {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction(com.facebook.ads.internal.l.REWARDED_VIDEO_COMPLETE.a(this.f2644a));
        intentFilter.addAction(com.facebook.ads.internal.l.REWARDED_VIDEO_ERROR.a(this.f2644a));
        intentFilter.addAction(com.facebook.ads.internal.l.REWARDED_VIDEO_AD_CLICK.a(this.f2644a));
        intentFilter.addAction(com.facebook.ads.internal.l.REWARDED_VIDEO_IMPRESSION.a(this.f2644a));
        intentFilter.addAction(com.facebook.ads.internal.l.REWARDED_VIDEO_CLOSED.a(this.f2644a));
        intentFilter.addAction(com.facebook.ads.internal.l.REWARD_SERVER_SUCCESS.a(this.f2644a));
        intentFilter.addAction(com.facebook.ads.internal.l.REWARD_SERVER_FAILED.a(this.f2644a));
        return intentFilter;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        String action = intent.getAction();
        if (com.facebook.ads.internal.l.REWARDED_VIDEO_COMPLETE.a(this.f2644a).equals(action)) {
            this.f2645b.d(this.c);
            return;
        }
        if (com.facebook.ads.internal.l.REWARDED_VIDEO_ERROR.a(this.f2644a).equals(action)) {
            this.f2645b.a(this.c, AdError.INTERNAL_ERROR);
            return;
        }
        if (com.facebook.ads.internal.l.REWARDED_VIDEO_AD_CLICK.a(this.f2644a).equals(action)) {
            this.f2645b.b(this.c);
            return;
        }
        if (com.facebook.ads.internal.l.REWARDED_VIDEO_IMPRESSION.a(this.f2644a).equals(action)) {
            this.f2645b.c(this.c);
            return;
        }
        if (com.facebook.ads.internal.l.REWARDED_VIDEO_CLOSED.a(this.f2644a).equals(action)) {
            this.f2645b.a();
        } else if (com.facebook.ads.internal.l.REWARD_SERVER_FAILED.a(this.f2644a).equals(action)) {
            this.f2645b.e(this.c);
        } else if (com.facebook.ads.internal.l.REWARD_SERVER_SUCCESS.a(this.f2644a).equals(action)) {
            this.f2645b.f(this.c);
        }
    }
}
