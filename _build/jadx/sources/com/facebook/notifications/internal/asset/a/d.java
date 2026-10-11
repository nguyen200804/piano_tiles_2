package com.facebook.notifications.internal.asset.a;

import android.content.Context;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.util.Log;
import java.io.File;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

/* compiled from: DiskCache.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class d {

    /* renamed from: a, reason: collision with root package name */
    private static final String f3386a = d.class.getCanonicalName();

    /* renamed from: b, reason: collision with root package name */
    @NonNull
    private final File f3387b;

    @NonNull
    private final Object c = new Object();

    public d(@NonNull Context context) {
        this.f3387b = context.getCacheDir();
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x005a A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void a(@android.support.annotation.NonNull java.lang.String r7, @android.support.annotation.NonNull byte[] r8) {
        /*
            r6 = this;
            java.lang.Object r3 = r6.c
            monitor-enter(r3)
            java.io.File r0 = new java.io.File     // Catch: java.lang.Throwable -> L24
            java.io.File r1 = r6.f3387b     // Catch: java.lang.Throwable -> L24
            r0.<init>(r1, r7)     // Catch: java.lang.Throwable -> L24
            r2 = 0
            java.io.FileOutputStream r1 = new java.io.FileOutputStream     // Catch: java.io.IOException -> L27 java.lang.Throwable -> L56
            r4 = 0
            r1.<init>(r0, r4)     // Catch: java.io.IOException -> L27 java.lang.Throwable -> L56
            r1.write(r8)     // Catch: java.lang.Throwable -> L67 java.io.IOException -> L69
            if (r1 == 0) goto L19
            r1.close()     // Catch: java.io.IOException -> L1b java.lang.Throwable -> L24
        L19:
            monitor-exit(r3)     // Catch: java.lang.Throwable -> L24
            return
        L1b:
            r0 = move-exception
            java.lang.String r1 = com.facebook.notifications.internal.asset.a.d.f3386a     // Catch: java.lang.Throwable -> L24
            java.lang.String r2 = "Error while closing output stream to disk."
            android.util.Log.e(r1, r2, r0)     // Catch: java.lang.Throwable -> L24
            goto L19
        L24:
            r0 = move-exception
            monitor-exit(r3)     // Catch: java.lang.Throwable -> L24
            throw r0
        L27:
            r0 = move-exception
            r1 = r2
        L29:
            java.lang.String r2 = com.facebook.notifications.internal.asset.a.d.f3386a     // Catch: java.lang.Throwable -> L67
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L67
            r4.<init>()     // Catch: java.lang.Throwable -> L67
            java.lang.String r5 = "Error while writing cache content for key "
            java.lang.StringBuilder r4 = r4.append(r5)     // Catch: java.lang.Throwable -> L67
            java.lang.StringBuilder r4 = r4.append(r7)     // Catch: java.lang.Throwable -> L67
            java.lang.String r5 = " to disk."
            java.lang.StringBuilder r4 = r4.append(r5)     // Catch: java.lang.Throwable -> L67
            java.lang.String r4 = r4.toString()     // Catch: java.lang.Throwable -> L67
            android.util.Log.e(r2, r4, r0)     // Catch: java.lang.Throwable -> L67
            if (r1 == 0) goto L19
            r1.close()     // Catch: java.lang.Throwable -> L24 java.io.IOException -> L4d
            goto L19
        L4d:
            r0 = move-exception
            java.lang.String r1 = com.facebook.notifications.internal.asset.a.d.f3386a     // Catch: java.lang.Throwable -> L24
            java.lang.String r2 = "Error while closing output stream to disk."
            android.util.Log.e(r1, r2, r0)     // Catch: java.lang.Throwable -> L24
            goto L19
        L56:
            r0 = move-exception
            r1 = r2
        L58:
            if (r1 == 0) goto L5d
            r1.close()     // Catch: java.lang.Throwable -> L24 java.io.IOException -> L5e
        L5d:
            throw r0     // Catch: java.lang.Throwable -> L24
        L5e:
            r1 = move-exception
            java.lang.String r2 = com.facebook.notifications.internal.asset.a.d.f3386a     // Catch: java.lang.Throwable -> L24
            java.lang.String r4 = "Error while closing output stream to disk."
            android.util.Log.e(r2, r4, r1)     // Catch: java.lang.Throwable -> L24
            goto L5d
        L67:
            r0 = move-exception
            goto L58
        L69:
            r0 = move-exception
            goto L29
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.notifications.internal.asset.a.d.a(java.lang.String, byte[]):void");
    }

    public void a(@NonNull String str) {
        synchronized (this.c) {
            File file = new File(this.f3387b, str);
            if (!file.delete()) {
                Log.w(f3386a, "Failed to delete cache file \"" + file.getAbsolutePath() + "\"");
            }
        }
    }

    @Nullable
    public File b(@NonNull String str) {
        File file = new File(this.f3387b, str);
        if (!file.exists()) {
            return null;
        }
        return file;
    }

    @NonNull
    public Set<String> a() {
        String[] list = this.f3387b.list();
        HashSet hashSet = new HashSet(list.length);
        Collections.addAll(hashSet, list);
        return hashSet;
    }
}
