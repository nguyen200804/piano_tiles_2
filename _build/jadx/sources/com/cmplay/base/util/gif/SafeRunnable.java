package com.cmplay.base.util.gif;

import java.lang.Thread;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
abstract class SafeRunnable implements Runnable {
    final GifDrawable mGifDrawable;

    abstract void doWork();

    SafeRunnable(GifDrawable gifDrawable) {
        this.mGifDrawable = gifDrawable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            if (!this.mGifDrawable.isRecycled()) {
                doWork();
            }
        } catch (Throwable th) {
            Thread.UncaughtExceptionHandler defaultUncaughtExceptionHandler = Thread.getDefaultUncaughtExceptionHandler();
            if (defaultUncaughtExceptionHandler != null) {
                defaultUncaughtExceptionHandler.uncaughtException(Thread.currentThread(), th);
            }
            throw th;
        }
    }
}
