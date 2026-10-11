package com.google.android.gms.internal;

import android.content.Context;
import android.support.annotation.Nullable;
import com.google.android.gms.internal.zzju;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.concurrent.Future;
import org.json.JSONException;
import org.json.JSONObject;

@zzin
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class zzjl extends zzkc implements zzjk {
    private final Context mContext;
    private final zzju.zza zzbxr;
    private final zzjf zzchz;
    private final ArrayList<Future> zzchw = new ArrayList<>();
    private final ArrayList<String> zzchx = new ArrayList<>();
    private final HashSet<String> zzchy = new HashSet<>();
    private final Object zzail = new Object();

    public zzjl(Context context, zzju.zza zzaVar, zzjf zzjfVar) {
        this.mContext = context;
        this.zzbxr = zzaVar;
        this.zzchz = zzjfVar;
    }

    private zzju zza(int i, @Nullable String str, @Nullable zzfz zzfzVar) {
        return new zzju(this.zzbxr.zzcip.zzcar, null, this.zzbxr.zzciq.zzbnm, i, this.zzbxr.zzciq.zzbnn, this.zzbxr.zzciq.zzcca, this.zzbxr.zzciq.orientation, this.zzbxr.zzciq.zzbns, this.zzbxr.zzcip.zzcau, this.zzbxr.zzciq.zzcby, zzfzVar, null, str, this.zzbxr.zzcig, null, this.zzbxr.zzciq.zzcbz, this.zzbxr.zzapa, this.zzbxr.zzciq.zzcbx, this.zzbxr.zzcik, this.zzbxr.zzciq.zzccc, this.zzbxr.zzciq.zzccd, this.zzbxr.zzcie, null, this.zzbxr.zzciq.zzccn, this.zzbxr.zzciq.zzcco, this.zzbxr.zzciq.zzccp, this.zzbxr.zzciq.zzccq, this.zzbxr.zzciq.zzccr, null, this.zzbxr.zzciq.zzbnp);
    }

    private zzju zza(String str, zzfz zzfzVar) {
        return zza(-2, str, zzfzVar);
    }

    private void zzd(String str, String str2, String str3) {
        synchronized (this.zzail) {
            zzjm zzcf = this.zzchz.zzcf(str);
            if (zzcf == null || zzcf.zzrv() == null || zzcf.zzru() == null) {
                return;
            }
            this.zzchw.add((Future) zza(str, str2, str3, zzcf).zzpy());
            this.zzchx.add(str);
        }
    }

    private zzju zzrt() {
        return zza(3, null, null);
    }

    @Override // com.google.android.gms.internal.zzkc
    public void onStop() {
    }

    protected zzjg zza(String str, String str2, String str3, zzjm zzjmVar) {
        return new zzjg(this.mContext, str, str2, str3, this.zzbxr, zzjmVar, this);
    }

    @Override // com.google.android.gms.internal.zzjk
    public void zza(String str, int i) {
    }

    @Override // com.google.android.gms.internal.zzjk
    public void zzcg(String str) {
        synchronized (this.zzail) {
            this.zzchy.add(str);
        }
    }

    @Override // com.google.android.gms.internal.zzkc
    public void zzew() {
        for (zzfz zzfzVar : this.zzbxr.zzcig.zzbnk) {
            String str = zzfzVar.zzbnc;
            for (String str2 : zzfzVar.zzbmw) {
                if ("com.google.android.gms.ads.mediation.customevent.CustomEventAdapter".equals(str2)) {
                    try {
                        str2 = new JSONObject(str).getString("class_name");
                    } catch (JSONException e) {
                        zzkd.zzb("Unable to determine custom event class name, skipping...", e);
                    }
                }
                zzd(str2, str, zzfzVar.zzbmu);
            }
        }
        for (int i = 0; i < this.zzchw.size(); i++) {
            try {
                this.zzchw.get(i).get();
                synchronized (this.zzail) {
                    if (this.zzchy.contains(this.zzchx.get(i))) {
                        final zzju zza = zza(this.zzchx.get(i), this.zzbxr.zzcig.zzbnk.get(i));
                        com.google.android.gms.ads.internal.util.client.zza.zzcnb.post(new Runnable() { // from class: com.google.android.gms.internal.zzjl.1
                            @Override // java.lang.Runnable
                            public void run() {
                                zzjl.this.zzchz.zzb(zza);
                            }
                        });
                        return;
                    }
                }
            } catch (InterruptedException e2) {
            } catch (Exception e3) {
            }
        }
        final zzju zzrt = zzrt();
        com.google.android.gms.ads.internal.util.client.zza.zzcnb.post(new Runnable() { // from class: com.google.android.gms.internal.zzjl.2
            @Override // java.lang.Runnable
            public void run() {
                zzjl.this.zzchz.zzb(zzrt);
            }
        });
    }
}
