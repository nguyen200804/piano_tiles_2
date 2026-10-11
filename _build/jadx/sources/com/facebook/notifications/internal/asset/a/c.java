package com.facebook.notifications.internal.asset.a;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import java.net.URL;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;

/* compiled from: ContentDownloader.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class c implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    private static final String f3382a = c.class.getCanonicalName();

    /* renamed from: b, reason: collision with root package name */
    @NonNull
    private final BlockingQueue<b> f3383b = new LinkedBlockingQueue();

    /* compiled from: ContentDownloader.java */
    public interface a {
        void a(@NonNull URL url, @Nullable byte[] bArr);
    }

    /* compiled from: ContentDownloader.java */
    private interface b extends Runnable {
    }

    @Override // java.lang.Runnable
    public void run() {
        while (true) {
            try {
                this.f3383b.take().run();
            } catch (InterruptedException e) {
                return;
            }
        }
    }

    public void a(@NonNull final URL url, @NonNull final a aVar) {
        this.f3383b.offer(new b() { // from class: com.facebook.notifications.internal.asset.a.c.1
            /* JADX WARN: Removed duplicated region for block: B:60:0x008f  */
            /* JADX WARN: Removed duplicated region for block: B:69:0x00b5 A[Catch: IOException -> 0x00be, TRY_LEAVE, TryCatch #10 {IOException -> 0x00be, blocks: (B:78:0x00b0, B:69:0x00b5), top: B:77:0x00b0 }] */
            /* JADX WARN: Removed duplicated region for block: B:74:0x00ba  */
            /* JADX WARN: Removed duplicated region for block: B:76:? A[SYNTHETIC] */
            /* JADX WARN: Removed duplicated region for block: B:77:0x00b0 A[EXC_TOP_SPLITTER, SYNTHETIC] */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            private byte[] a(@android.support.annotation.NonNull java.net.URL r10) {
                /*
                    Method dump skipped, instructions count: 242
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: com.facebook.notifications.internal.asset.a.c.AnonymousClass1.a(java.net.URL):byte[]");
            }

            @Override // java.lang.Runnable
            public void run() {
                aVar.a(url, a(url));
            }
        });
    }
}
