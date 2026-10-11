package com.mopub.nativesdk.b;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;

/* compiled from: JumpLoader.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
final class c extends Handler {

    /* renamed from: a, reason: collision with root package name */
    private /* synthetic */ b f4599a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    c(b bVar, Looper looper) {
        super(looper);
        this.f4599a = bVar;
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        f fVar;
        e eVar;
        f fVar2;
        e eVar2;
        f fVar3;
        e eVar3;
        if (message.what == 1) {
            fVar = this.f4599a.f4597a;
            if (fVar != null) {
                eVar = this.f4599a.f4598b;
                if (eVar.a()) {
                    fVar3 = this.f4599a.f4597a;
                    eVar3 = this.f4599a.f4598b;
                    fVar3.a(eVar3);
                } else {
                    fVar2 = this.f4599a.f4597a;
                    eVar2 = this.f4599a.f4598b;
                    fVar2.a(eVar2.b());
                }
            }
        }
        super.handleMessage(message);
    }
}
