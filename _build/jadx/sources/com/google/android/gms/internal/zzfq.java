package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.internal.zzfp;
import java.util.concurrent.Future;

@zzin
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class zzfq {

    private static class zza<JavascriptEngine> extends zzkv<JavascriptEngine> {
        JavascriptEngine zzblk;

        private zza() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Type inference failed for: r0v0, types: [JavascriptEngine, com.google.android.gms.internal.zzfp, com.google.android.gms.internal.zzfr] */
    public zzfp zza(Context context, VersionInfoParcel versionInfoParcel, final zza<zzfp> zzaVar, zzas zzasVar) {
        ?? zzfrVar = new zzfr(context, versionInfoParcel, zzasVar);
        zzaVar.zzblk = zzfrVar;
        zzfrVar.zza(new zzfp.zza() { // from class: com.google.android.gms.internal.zzfq.2
            @Override // com.google.android.gms.internal.zzfp.zza
            public void zzlz() {
                zzaVar.zzh((zzfp) zzaVar.zzblk);
            }
        });
        return zzfrVar;
    }

    public Future<zzfp> zza(final Context context, final VersionInfoParcel versionInfoParcel, final String str, final zzas zzasVar) {
        final zza zzaVar = new zza();
        zzkh.zzclc.post(new Runnable() { // from class: com.google.android.gms.internal.zzfq.1
            @Override // java.lang.Runnable
            public void run() {
                zzfq.this.zza(context, versionInfoParcel, (zza<zzfp>) zzaVar, zzasVar).zzbh(str);
            }
        });
        return zzaVar;
    }
}
