package com.duapps.ad.c;

import android.database.ContentObserver;
import android.net.Uri;
import android.os.Handler;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class d extends ContentObserver {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ a f2120a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    d(a aVar, Handler handler) {
        super(handler);
        this.f2120a = aVar;
    }

    @Override // android.database.ContentObserver
    public void onChange(boolean z, Uri uri) {
        super.onChange(z, uri);
        if (uri == null) {
            return;
        }
        this.f2120a.a(uri);
    }
}
