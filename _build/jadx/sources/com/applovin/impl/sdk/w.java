package com.applovin.impl.sdk;

import android.app.Activity;
import java.util.TimerTask;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class w extends TimerTask {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ v f560a;

    w(v vVar) {
        this.f560a = vVar;
    }

    @Override // java.util.TimerTask, java.lang.Runnable
    public void run() {
        Activity activity;
        activity = this.f560a.f559a.f558a.c;
        activity.runOnUiThread(new x(this));
    }
}
