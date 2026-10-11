package com.google.android.gms.common;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.util.Log;
import com.google.android.gms.common.internal.zzab;
import com.google.android.gms.common.internal.zzs;
import com.google.android.gms.common.zzd;
import java.util.Iterator;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class zzf {
    private static zzf rx;
    private final Context mContext;

    private zzf(Context context) {
        this.mContext = context.getApplicationContext();
    }

    private boolean zzb(PackageInfo packageInfo, boolean z) {
        if (packageInfo.signatures.length != 1) {
            Log.w("GoogleSignatureVerifier", "Package has more than one signature.");
            return false;
        }
        zzd.zzb zzbVar = new zzd.zzb(packageInfo.signatures[0].toByteArray());
        Iterator<zzs> it = (z ? zzd.zzani() : zzd.zzanj()).iterator();
        while (it.hasNext()) {
            if (zzbVar.equals(it.next())) {
                return true;
            }
        }
        return false;
    }

    public static zzf zzbz(Context context) {
        zzab.zzy(context);
        synchronized (zzf.class) {
            if (rx == null) {
                zzd.zzbq(context);
                rx = new zzf(context);
            }
        }
        return rx;
    }

    zzd.zza zza(PackageInfo packageInfo, zzd.zza... zzaVarArr) {
        if (packageInfo.signatures == null) {
            return null;
        }
        if (packageInfo.signatures.length != 1) {
            Log.w("GoogleSignatureVerifier", "Package has more than one signature.");
            return null;
        }
        zzd.zzb zzbVar = new zzd.zzb(packageInfo.signatures[0].toByteArray());
        for (int i = 0; i < zzaVarArr.length; i++) {
            if (zzaVarArr[i].equals(zzbVar)) {
                return zzaVarArr[i];
            }
        }
        return null;
    }

    public boolean zza(PackageInfo packageInfo, boolean z) {
        if (packageInfo != null && packageInfo.signatures != null) {
            if ((z ? zza(packageInfo, zzd.C0139zzd.ro) : zza(packageInfo, zzd.C0139zzd.ro[0])) != null) {
                return true;
            }
        }
        return false;
    }

    public boolean zza(PackageManager packageManager, PackageInfo packageInfo) {
        if (packageInfo == null) {
            return false;
        }
        if (zze.zzbu(this.mContext)) {
            return zzb(packageInfo, true);
        }
        boolean zzb = zzb(packageInfo, false);
        if (zzb || !zzb(packageInfo, true)) {
            return zzb;
        }
        Log.w("GoogleSignatureVerifier", "Test-keys aren't accepted on this build.");
        return zzb;
    }

    public boolean zzb(PackageManager packageManager, PackageInfo packageInfo) {
        if (packageInfo == null) {
            return false;
        }
        if (zza(packageInfo, false)) {
            return true;
        }
        if (!zza(packageInfo, true)) {
            return false;
        }
        if (zze.zzbu(this.mContext)) {
            return true;
        }
        Log.w("GoogleSignatureVerifier", "Test-keys aren't accepted on this build.");
        return false;
    }

    public boolean zzb(PackageManager packageManager, String str) {
        try {
            return zza(packageManager, packageManager.getPackageInfo(str, 64));
        } catch (PackageManager.NameNotFoundException e) {
            return false;
        }
    }
}
