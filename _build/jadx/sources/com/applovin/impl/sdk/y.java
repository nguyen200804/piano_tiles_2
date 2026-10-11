package com.applovin.impl.sdk;

import android.content.Context;
import android.net.Uri;
import com.applovin.sdk.AppLovinLogger;
import com.applovin.sdk.AppLovinSdk;
import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;
import org.apache.commons.io.FileUtils;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class y {

    /* renamed from: a, reason: collision with root package name */
    private final AppLovinLogger f562a;

    /* renamed from: b, reason: collision with root package name */
    private final AppLovinSdkImpl f563b;
    private final String c = "FileManager";
    private final Object d = new Object();

    y(AppLovinSdk appLovinSdk) {
        this.f563b = (AppLovinSdkImpl) appLovinSdk;
        this.f562a = appLovinSdk.getLogger();
    }

    long a(long j) {
        return j / FileUtils.ONE_MB;
    }

    public File a(String str, Context context, boolean z) {
        File file;
        File file2 = null;
        if (dh.isValidString(str)) {
            this.f562a.d("FileManager", "Looking up cached resource: " + str);
            if (a(context) || z) {
                if (str.contains("icon")) {
                    str = str.replace("/", "_").replace(".", "_");
                }
                synchronized (this.d) {
                    File b2 = b(context);
                    file = new File(b2, str);
                    try {
                        b2.mkdirs();
                    } catch (Exception e) {
                    }
                }
                file2 = file;
            }
        } else {
            this.f563b.getLogger().d("FileManager", "Nothing to look up, skipping...");
        }
        return file2;
    }

    String a(Context context, String str) {
        return a(context, str, false);
    }

    String a(Context context, String str, boolean z) {
        if (str == null || str.equals("")) {
            this.f563b.getLogger().d("FileManager", "Nothing to cache, skipping...");
            return "";
        }
        this.f563b.getLogger().d("FileManager", "Starting caching of resource " + str);
        String lastPathSegment = Uri.parse(str).getLastPathSegment();
        File a2 = a(lastPathSegment, context, false);
        if (a2 != null && a2.exists()) {
            return z ? Uri.fromFile(a2).toString() : lastPathSegment;
        }
        if (a(a2, str)) {
            return z ? Uri.fromFile(a2).toString() : lastPathSegment;
        }
        return null;
    }

    void a(long j, Context context) {
        long c = c();
        if (c == -1) {
            this.f562a.d("FileManager", "Cache has no maximum size set; skipping drop...");
        } else {
            if (a(j) <= c) {
                this.f562a.d("FileManager", "Cache is present but under size limit; not dropping...");
                return;
            }
            this.f562a.d("FileManager", "Cache has exceeded maximum size; dropping...");
            f(context);
            this.f563b.b().a("cache_drop_count");
        }
    }

    boolean a() {
        return ((Boolean) this.f563b.a(av.aA)).booleanValue();
    }

    protected boolean a(Context context) {
        if (n.a("android.permission.WRITE_EXTERNAL_STORAGE", context)) {
            return true;
        }
        return n.c() && !((Boolean) this.f563b.a(av.bv)).booleanValue();
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x004c A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    boolean a(java.io.ByteArrayOutputStream r8, java.io.File r9) {
        /*
            r7 = this;
            com.applovin.sdk.AppLovinLogger r0 = r7.f562a
            java.lang.String r1 = "FileManager"
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r3 = "Writing resource to filesystem: "
            java.lang.StringBuilder r2 = r2.append(r3)
            java.lang.String r3 = r9.getName()
            java.lang.StringBuilder r2 = r2.append(r3)
            java.lang.String r2 = r2.toString()
            r0.d(r1, r2)
            r2 = 0
            r3 = 0
            java.lang.Object r4 = r7.d
            monitor-enter(r4)
            java.io.FileOutputStream r1 = new java.io.FileOutputStream     // Catch: java.io.IOException -> L33 java.lang.Throwable -> L48
            r1.<init>(r9)     // Catch: java.io.IOException -> L33 java.lang.Throwable -> L48
            r8.writeTo(r1)     // Catch: java.lang.Throwable -> L57 java.io.IOException -> L59
            r0 = 1
            if (r1 == 0) goto L31
            r1.close()     // Catch: java.lang.Throwable -> L50 java.lang.Exception -> L53
        L31:
            monitor-exit(r4)     // Catch: java.lang.Throwable -> L50
            return r0
        L33:
            r0 = move-exception
            r1 = r2
        L35:
            com.applovin.sdk.AppLovinLogger r2 = r7.f562a     // Catch: java.lang.Throwable -> L57
            java.lang.String r5 = "FileManager"
            java.lang.String r6 = "Unable to write data to file"
            r2.e(r5, r6, r0)     // Catch: java.lang.Throwable -> L57
            if (r1 == 0) goto L43
            r1.close()     // Catch: java.lang.Exception -> L45 java.lang.Throwable -> L50
        L43:
            r0 = r3
            goto L31
        L45:
            r0 = move-exception
            r0 = r3
            goto L31
        L48:
            r0 = move-exception
            r1 = r2
        L4a:
            if (r1 == 0) goto L4f
            r1.close()     // Catch: java.lang.Throwable -> L50 java.lang.Exception -> L55
        L4f:
            throw r0     // Catch: java.lang.Throwable -> L50
        L50:
            r0 = move-exception
            monitor-exit(r4)     // Catch: java.lang.Throwable -> L50
            throw r0
        L53:
            r1 = move-exception
            goto L31
        L55:
            r1 = move-exception
            goto L4f
        L57:
            r0 = move-exception
            goto L4a
        L59:
            r0 = move-exception
            goto L35
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.impl.sdk.y.a(java.io.ByteArrayOutputStream, java.io.File):boolean");
    }

    boolean a(File file) {
        boolean z;
        this.f562a.d("FileManager", "Removing file " + file.getName() + " from filesystem...");
        synchronized (this.d) {
            try {
                z = file.delete();
            } catch (Exception e) {
                this.f562a.e("FileManager", "Failed to remove file " + file.getName() + " from filesystem!", e);
                z = false;
            }
        }
        return z;
    }

    /* JADX WARN: Removed duplicated region for block: B:132:0x01a5 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:138:? A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:139:0x01a0 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:143:0x019b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    boolean a(java.io.File r11, java.lang.String r12) {
        /*
            Method dump skipped, instructions count: 497
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.impl.sdk.y.a(java.io.File, java.lang.String):boolean");
    }

    public boolean a(String str, Context context) {
        boolean b2;
        synchronized (this.d) {
            b2 = b(str, context, false);
        }
        return b2;
    }

    long b() {
        long longValue = ((Long) this.f563b.a(av.aB)).longValue();
        if (longValue < 0 || !a()) {
            return -1L;
        }
        return longValue;
    }

    File b(Context context) {
        return a(context) ? new File(context.getExternalFilesDir(null), "al") : new File(context.getCacheDir(), "al");
    }

    public boolean b(String str, Context context, boolean z) {
        boolean z2;
        synchronized (this.d) {
            File a2 = a(str, context, z);
            z2 = (a2 == null || !a2.exists() || a2.isDirectory()) ? false : true;
        }
        return z2;
    }

    int c() {
        int intValue = ((Integer) this.f563b.a(av.aC)).intValue();
        if (intValue < 0 || !a()) {
            return -1;
        }
        return intValue;
    }

    public List c(Context context) {
        List asList;
        File b2 = b(context);
        if (!b2.isDirectory()) {
            return new ArrayList(0);
        }
        synchronized (this.d) {
            asList = Arrays.asList(b2.listFiles());
        }
        return asList;
    }

    void d(Context context) {
        try {
            if (a()) {
                if (this.f563b.isEnabled()) {
                    this.f562a.e("FileManager", "Cannot empty file cache after SDK has completed initialization and ad loads are in progress!");
                    return;
                }
                this.f562a.d("FileManager", "Compacting cache...");
                synchronized (this.d) {
                    a(e(context), context);
                }
            }
        } catch (Exception e) {
            this.f562a.e("FileManager", "Caught exception while compacting cache!", e);
            this.f563b.getSettingsManager().a(av.aA, false);
            this.f563b.getSettingsManager().b();
        }
    }

    long e(Context context) {
        long j = 0;
        long b2 = b();
        boolean z = b2 != -1;
        long seconds = TimeUnit.MILLISECONDS.toSeconds(System.currentTimeMillis());
        synchronized (this.d) {
            for (File file : c(context)) {
                boolean z2 = false;
                if (z && seconds - TimeUnit.MILLISECONDS.toSeconds(file.lastModified()) > b2) {
                    this.f562a.d("FileManager", "File " + file.getName() + " has expired, removing...");
                    a(file);
                    z2 = true;
                }
                if (z2) {
                    this.f563b.b().a("cached_files_expired");
                } else {
                    j += file.length();
                }
            }
        }
        return j;
    }

    void f(Context context) {
        synchronized (this.d) {
            Iterator it = c(context).iterator();
            while (it.hasNext()) {
                a((File) it.next());
            }
        }
    }
}
