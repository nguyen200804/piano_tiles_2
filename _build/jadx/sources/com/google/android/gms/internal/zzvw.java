package com.google.android.gms.internal;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.PowerManager;
import android.os.WorkSource;
import android.text.TextUtils;
import android.util.Log;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class zzvw {
    private final String AK;
    private final String AM;
    private WorkSource aaW;
    private final PowerManager.WakeLock aug;
    private final int auh;
    private final String aui;
    private boolean auj;
    private int auk;
    private int aul;
    private final Context mContext;
    private static String TAG = "WakeLock";
    private static String auf = "*gcore*:";
    private static boolean DEBUG = false;

    public zzvw(Context context, int i, String str) {
        this(context, i, str, null, context == null ? null : context.getPackageName());
    }

    @SuppressLint({"UnwrappedWakeLock"})
    public zzvw(Context context, int i, String str, String str2, String str3) {
        this(context, i, str, str2, str3, null);
    }

    @SuppressLint({"UnwrappedWakeLock"})
    public zzvw(Context context, int i, String str, String str2, String str3, String str4) {
        this.auj = true;
        com.google.android.gms.common.internal.zzab.zzh(str, "Wake lock name can NOT be empty");
        this.auh = i;
        this.aui = str2;
        this.AM = str4;
        this.mContext = context.getApplicationContext();
        if ("com.google.android.gms".equals(context.getPackageName())) {
            this.AK = str;
        } else {
            String valueOf = String.valueOf(auf);
            String valueOf2 = String.valueOf(str);
            this.AK = valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf);
        }
        this.aug = ((PowerManager) context.getSystemService("power")).newWakeLock(i, str);
        if (com.google.android.gms.common.util.zzz.zzco(this.mContext)) {
            this.aaW = com.google.android.gms.common.util.zzz.zzr(context, com.google.android.gms.common.util.zzw.zzib(str3) ? context.getPackageName() : str3);
            zzc(this.aaW);
        }
    }

    private void zzd(WorkSource workSource) {
        try {
            this.aug.setWorkSource(workSource);
        } catch (IllegalArgumentException e) {
            Log.wtf(TAG, e.toString());
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x001d, code lost:
    
        if (r12.aul == 0) goto L13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0015, code lost:
    
        if (r0 == false) goto L9;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void zzl(java.lang.String r13, long r14) {
        /*
            r12 = this;
            boolean r0 = r12.zznz(r13)
            java.lang.String r6 = r12.zzp(r13, r0)
            monitor-enter(r12)
            boolean r1 = r12.auj     // Catch: java.lang.Throwable -> L44
            if (r1 == 0) goto L17
            int r1 = r12.auk     // Catch: java.lang.Throwable -> L44
            int r2 = r1 + 1
            r12.auk = r2     // Catch: java.lang.Throwable -> L44
            if (r1 == 0) goto L1f
            if (r0 != 0) goto L1f
        L17:
            boolean r0 = r12.auj     // Catch: java.lang.Throwable -> L44
            if (r0 != 0) goto L42
            int r0 = r12.aul     // Catch: java.lang.Throwable -> L44
            if (r0 != 0) goto L42
        L1f:
            com.google.android.gms.common.stats.zzh r1 = com.google.android.gms.common.stats.zzh.zzavi()     // Catch: java.lang.Throwable -> L44
            android.content.Context r2 = r12.mContext     // Catch: java.lang.Throwable -> L44
            android.os.PowerManager$WakeLock r0 = r12.aug     // Catch: java.lang.Throwable -> L44
            java.lang.String r3 = com.google.android.gms.common.stats.zzf.zza(r0, r6)     // Catch: java.lang.Throwable -> L44
            r4 = 7
            java.lang.String r5 = r12.AK     // Catch: java.lang.Throwable -> L44
            java.lang.String r7 = r12.AM     // Catch: java.lang.Throwable -> L44
            int r8 = r12.auh     // Catch: java.lang.Throwable -> L44
            android.os.WorkSource r0 = r12.aaW     // Catch: java.lang.Throwable -> L44
            java.util.List r9 = com.google.android.gms.common.util.zzz.zzb(r0)     // Catch: java.lang.Throwable -> L44
            r10 = r14
            r1.zza(r2, r3, r4, r5, r6, r7, r8, r9, r10)     // Catch: java.lang.Throwable -> L44
            int r0 = r12.aul     // Catch: java.lang.Throwable -> L44
            int r0 = r0 + 1
            r12.aul = r0     // Catch: java.lang.Throwable -> L44
        L42:
            monitor-exit(r12)     // Catch: java.lang.Throwable -> L44
            return
        L44:
            r0 = move-exception
            monitor-exit(r12)     // Catch: java.lang.Throwable -> L44
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzvw.zzl(java.lang.String, long):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x001e, code lost:
    
        if (r9.aul == 1) goto L13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0015, code lost:
    
        if (r0 == false) goto L9;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void zzny(java.lang.String r10) {
        /*
            r9 = this;
            boolean r0 = r9.zznz(r10)
            java.lang.String r5 = r9.zzp(r10, r0)
            monitor-enter(r9)
            boolean r1 = r9.auj     // Catch: java.lang.Throwable -> L45
            if (r1 == 0) goto L17
            int r1 = r9.auk     // Catch: java.lang.Throwable -> L45
            int r1 = r1 + (-1)
            r9.auk = r1     // Catch: java.lang.Throwable -> L45
            if (r1 == 0) goto L20
            if (r0 != 0) goto L20
        L17:
            boolean r0 = r9.auj     // Catch: java.lang.Throwable -> L45
            if (r0 != 0) goto L43
            int r0 = r9.aul     // Catch: java.lang.Throwable -> L45
            r1 = 1
            if (r0 != r1) goto L43
        L20:
            com.google.android.gms.common.stats.zzh r0 = com.google.android.gms.common.stats.zzh.zzavi()     // Catch: java.lang.Throwable -> L45
            android.content.Context r1 = r9.mContext     // Catch: java.lang.Throwable -> L45
            android.os.PowerManager$WakeLock r2 = r9.aug     // Catch: java.lang.Throwable -> L45
            java.lang.String r2 = com.google.android.gms.common.stats.zzf.zza(r2, r5)     // Catch: java.lang.Throwable -> L45
            r3 = 8
            java.lang.String r4 = r9.AK     // Catch: java.lang.Throwable -> L45
            java.lang.String r6 = r9.AM     // Catch: java.lang.Throwable -> L45
            int r7 = r9.auh     // Catch: java.lang.Throwable -> L45
            android.os.WorkSource r8 = r9.aaW     // Catch: java.lang.Throwable -> L45
            java.util.List r8 = com.google.android.gms.common.util.zzz.zzb(r8)     // Catch: java.lang.Throwable -> L45
            r0.zza(r1, r2, r3, r4, r5, r6, r7, r8)     // Catch: java.lang.Throwable -> L45
            int r0 = r9.aul     // Catch: java.lang.Throwable -> L45
            int r0 = r0 + (-1)
            r9.aul = r0     // Catch: java.lang.Throwable -> L45
        L43:
            monitor-exit(r9)     // Catch: java.lang.Throwable -> L45
            return
        L45:
            r0 = move-exception
            monitor-exit(r9)     // Catch: java.lang.Throwable -> L45
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzvw.zzny(java.lang.String):void");
    }

    private boolean zznz(String str) {
        return (TextUtils.isEmpty(str) || str.equals(this.aui)) ? false : true;
    }

    private String zzp(String str, boolean z) {
        return (this.auj && z) ? str : this.aui;
    }

    public void acquire(long j) {
        if (!com.google.android.gms.common.util.zzs.zzavq() && this.auj) {
            String str = TAG;
            String valueOf = String.valueOf(this.AK);
            Log.wtf(str, valueOf.length() != 0 ? "Do not acquire with timeout on reference counted WakeLocks before ICS. wakelock: ".concat(valueOf) : new String("Do not acquire with timeout on reference counted WakeLocks before ICS. wakelock: "));
        }
        zzl(null, j);
        this.aug.acquire(j);
    }

    public boolean isHeld() {
        return this.aug.isHeld();
    }

    public void release() {
        zzny(null);
        this.aug.release();
    }

    public void setReferenceCounted(boolean z) {
        this.aug.setReferenceCounted(z);
        this.auj = z;
    }

    public void zzc(WorkSource workSource) {
        if (workSource == null || !com.google.android.gms.common.util.zzz.zzco(this.mContext)) {
            return;
        }
        if (this.aaW != null) {
            this.aaW.add(workSource);
        } else {
            this.aaW = workSource;
        }
        zzd(this.aaW);
    }
}
