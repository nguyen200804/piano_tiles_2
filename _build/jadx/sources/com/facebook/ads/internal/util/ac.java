package com.facebook.ads.internal.util;

import android.database.ContentObserver;
import android.os.Handler;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class ac extends ContentObserver {

    /* renamed from: a, reason: collision with root package name */
    private final ak f2836a;

    public ac(Handler handler, ak akVar) {
        super(handler);
        this.f2836a = akVar;
    }

    @Override // android.database.ContentObserver
    public boolean deliverSelfNotifications() {
        return false;
    }

    @Override // android.database.ContentObserver
    public void onChange(boolean z) {
        this.f2836a.e();
    }
}
