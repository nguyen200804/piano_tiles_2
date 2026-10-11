package com.example.luckywheel.d;

import android.os.Handler;
import android.os.Message;
import java.util.TimerTask;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class h extends TimerTask {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ b f2345a;

    h(b bVar) {
        this.f2345a = bVar;
    }

    @Override // java.util.TimerTask, java.lang.Runnable
    public void run() {
        Handler handler;
        Message obtain = Message.obtain();
        obtain.what = 1;
        handler = this.f2345a.g;
        handler.sendMessage(obtain);
    }
}
