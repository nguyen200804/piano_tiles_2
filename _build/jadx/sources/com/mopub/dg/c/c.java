package com.mopub.dg.c;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.util.List;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
final class c extends Handler {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ k f4260a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ a f4261b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    c(a aVar, Looper looper, k kVar) {
        super(looper);
        this.f4261b = aVar;
        this.f4260a = kVar;
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        List list;
        switch (message.what) {
            case 10:
                if (this.f4260a != null) {
                    k kVar = this.f4260a;
                    list = this.f4261b.i;
                    kVar.a(list);
                    break;
                }
                break;
            case 30:
                if (this.f4260a != null) {
                    this.f4260a.a();
                    break;
                }
                break;
        }
    }
}
