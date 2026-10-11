package com.mnt.impl.b;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public abstract class e<T> implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    private static a f3937a = null;

    /* renamed from: b, reason: collision with root package name */
    private T f3938b;
    private boolean c = false;

    public abstract T a();

    public abstract void a(T t);

    @Override // java.lang.Runnable
    public void run() {
        try {
            this.f3938b = a();
        } catch (Throwable th) {
            th.printStackTrace();
        }
        try {
            if (this.c && f3937a != null) {
                Message message = new Message();
                message.obj = this;
                f3937a.sendMessage(message);
                return;
            }
            a((e<T>) this.f3938b);
        } catch (Throwable th2) {
            th2.printStackTrace();
        }
    }

    static class a extends Handler {
        private a() {
        }

        /* synthetic */ a(byte b2) {
            this();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            try {
                e eVar = (e) message.obj;
                if (eVar == 0) {
                    return;
                }
                eVar.a((e) eVar.f3938b);
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    public static void b() {
        if (f3937a == null) {
            synchronized (e.class) {
                if (f3937a == null) {
                    f3937a = new a((byte) 0);
                }
            }
        }
    }

    public final void c() {
        this.c = Looper.getMainLooper() == Looper.myLooper();
        if (this.c) {
            b();
        }
        com.mnt.impl.l.c.a(this);
    }
}
