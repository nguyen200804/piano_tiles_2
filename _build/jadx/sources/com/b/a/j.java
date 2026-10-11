package com.b.a;

/* compiled from: SafeRunnable.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public abstract class j implements Runnable {
    public abstract void a();

    @Override // java.lang.Runnable
    public void run() {
        try {
            a();
        } catch (Throwable th) {
            if (th != null) {
                th.printStackTrace();
            }
        }
    }
}
