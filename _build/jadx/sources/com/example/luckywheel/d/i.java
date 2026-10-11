package com.example.luckywheel.d;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class i extends Handler {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ b f2346a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    i(b bVar, Looper looper) {
        super(looper);
        this.f2346a = bVar;
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        super.handleMessage(message);
        switch (message.what) {
            case 1:
                this.f2346a.c();
                break;
        }
    }
}
