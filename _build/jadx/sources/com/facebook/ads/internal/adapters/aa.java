package com.facebook.ads.internal.adapters;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.support.v4.content.LocalBroadcastManager;
import com.facebook.ads.VideoStartReason;
import java.io.Serializable;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class aa extends BroadcastReceiver {

    /* renamed from: a, reason: collision with root package name */
    private Context f2573a;

    /* renamed from: b, reason: collision with root package name */
    private com.facebook.ads.internal.view.j f2574b;
    private boolean c = false;

    public aa(com.facebook.ads.internal.view.j jVar, Context context) {
        this.f2574b = jVar;
        this.f2573a = context;
    }

    public void a() {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("com.facebook.ads.interstitial.displayed:" + this.f2574b.getUniqueId());
        intentFilter.addAction("videoInterstitalEvent:" + this.f2574b.getUniqueId());
        intentFilter.addAction("performCtaClick:" + this.f2574b.getUniqueId());
        LocalBroadcastManager.getInstance(this.f2573a).registerReceiver(this, intentFilter);
    }

    public void b() {
        try {
            LocalBroadcastManager.getInstance(this.f2573a).unregisterReceiver(this);
        } catch (Exception e) {
        }
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        String[] split = intent.getAction().split(":");
        if (split.length == 2 && split[1].equals(this.f2574b.getUniqueId())) {
            if (split[0].equals("com.facebook.ads.interstitial.displayed")) {
                if (this.f2574b.getListener() != null) {
                    this.f2574b.getListener().g();
                    this.f2574b.getListener().a();
                    return;
                }
                return;
            }
            if (!split[0].equals("videoInterstitalEvent")) {
                if (split[0].equals("performCtaClick")) {
                    this.f2574b.d();
                    return;
                }
                return;
            }
            Serializable serializableExtra = intent.getSerializableExtra("event");
            if (serializableExtra instanceof com.facebook.ads.internal.view.d.a.p) {
                if (this.f2574b.getListener() != null) {
                    this.f2574b.getListener().f();
                    this.f2574b.getListener().a();
                }
                if (this.c) {
                    this.f2574b.a(1);
                } else {
                    this.f2574b.a(((com.facebook.ads.internal.view.d.a.p) serializableExtra).b());
                }
                this.f2574b.setVisibility(0);
                this.f2574b.a(VideoStartReason.USER_STARTED);
                return;
            }
            if (serializableExtra instanceof com.facebook.ads.internal.view.d.a.f) {
                if (this.f2574b.getListener() != null) {
                    this.f2574b.getListener().d();
                    return;
                }
                return;
            }
            if (serializableExtra instanceof com.facebook.ads.internal.view.d.a.g) {
                if (this.f2574b.getListener() != null) {
                    this.f2574b.getListener().e();
                }
            } else if (serializableExtra instanceof com.facebook.ads.internal.view.d.a.b) {
                if (this.f2574b.getListener() != null) {
                    this.f2574b.getListener().h();
                }
                this.c = true;
            } else if (serializableExtra instanceof com.facebook.ads.internal.view.d.a.j) {
                if (this.f2574b.getListener() != null) {
                    this.f2574b.getListener().c();
                }
                this.c = false;
            } else {
                if (!(serializableExtra instanceof com.facebook.ads.internal.view.d.a.h) || this.f2574b.getListener() == null) {
                    return;
                }
                this.f2574b.getListener().b();
            }
        }
    }
}
