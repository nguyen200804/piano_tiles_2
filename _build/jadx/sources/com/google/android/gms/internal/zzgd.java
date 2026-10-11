package com.google.android.gms.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import android.os.SystemClock;
import android.text.TextUtils;
import com.google.ads.mediation.AdUrlAdapter;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.ads.formats.NativeAdOptions;
import com.google.android.gms.ads.internal.client.AdRequestParcel;
import com.google.android.gms.ads.internal.client.AdSizeParcel;
import com.google.android.gms.ads.internal.formats.NativeAdOptionsParcel;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.ads.mediation.MediationAdapter;
import com.google.android.gms.internal.zzge;
import com.google.android.gms.internal.zzgm;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

@zzin
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class zzgd implements zzge.zza {
    private final Context mContext;
    private final zzgj zzajz;
    private final NativeAdOptionsParcel zzalk;
    private final List<String> zzall;
    private final VersionInfoParcel zzalo;
    private AdRequestParcel zzanc;
    private final AdSizeParcel zzani;
    private final boolean zzarl;
    private final boolean zzawn;
    private final String zzboc;
    private final long zzbod;
    private final zzga zzboe;
    private final zzfz zzbof;
    private zzgk zzbog;
    private zzgm zzboi;
    private final Object zzail = new Object();
    private int zzboh = -2;

    public zzgd(Context context, String str, zzgj zzgjVar, zzga zzgaVar, zzfz zzfzVar, AdRequestParcel adRequestParcel, AdSizeParcel adSizeParcel, VersionInfoParcel versionInfoParcel, boolean z, boolean z2, NativeAdOptionsParcel nativeAdOptionsParcel, List<String> list) {
        this.mContext = context;
        this.zzajz = zzgjVar;
        this.zzbof = zzfzVar;
        if ("com.google.ads.mediation.customevent.CustomEventAdapter".equals(str)) {
            this.zzboc = zzmh();
        } else {
            this.zzboc = str;
        }
        this.zzboe = zzgaVar;
        this.zzbod = zzgaVar.zzbnl != -1 ? zzgaVar.zzbnl : 10000L;
        this.zzanc = adRequestParcel;
        this.zzani = adSizeParcel;
        this.zzalo = versionInfoParcel;
        this.zzarl = z;
        this.zzawn = z2;
        this.zzalk = nativeAdOptionsParcel;
        this.zzall = list;
    }

    private long zza(long j, long j2, long j3, long j4) {
        while (this.zzboh == -2) {
            zzb(j, j2, j3, j4);
        }
        return com.google.android.gms.ads.internal.zzu.zzfu().elapsedRealtime() - j;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void zza(zzgc zzgcVar) {
        if ("com.google.ads.mediation.AdUrlAdapter".equals(this.zzboc)) {
            if (this.zzanc.zzatw == null) {
                this.zzanc = new com.google.android.gms.ads.internal.client.zzf(this.zzanc).zzc(new Bundle()).zzig();
            }
            Bundle bundle = this.zzanc.zzatw.getBundle(this.zzboc);
            if (bundle == null) {
                bundle = new Bundle();
            }
            bundle.putString("sdk_less_network_id", this.zzbof.zzbmv);
            this.zzanc.zzatw.putBundle(this.zzboc, bundle);
        }
        String zzbj = zzbj(this.zzbof.zzbnc);
        try {
            if (this.zzalo.zzcnl < 4100000) {
                if (this.zzani.zzaus) {
                    this.zzbog.zza(com.google.android.gms.dynamic.zze.zzac(this.mContext), this.zzanc, zzbj, zzgcVar);
                } else {
                    this.zzbog.zza(com.google.android.gms.dynamic.zze.zzac(this.mContext), this.zzani, this.zzanc, zzbj, zzgcVar);
                }
            } else if (this.zzarl) {
                this.zzbog.zza(com.google.android.gms.dynamic.zze.zzac(this.mContext), this.zzanc, zzbj, this.zzbof.zzbmu, zzgcVar, this.zzalk, this.zzall);
            } else if (this.zzani.zzaus) {
                this.zzbog.zza(com.google.android.gms.dynamic.zze.zzac(this.mContext), this.zzanc, zzbj, this.zzbof.zzbmu, zzgcVar);
            } else if (!this.zzawn) {
                this.zzbog.zza(com.google.android.gms.dynamic.zze.zzac(this.mContext), this.zzani, this.zzanc, zzbj, this.zzbof.zzbmu, zzgcVar);
            } else if (this.zzbof.zzbnf != null) {
                this.zzbog.zza(com.google.android.gms.dynamic.zze.zzac(this.mContext), this.zzanc, zzbj, this.zzbof.zzbmu, zzgcVar, new NativeAdOptionsParcel(zzbk(this.zzbof.zzbnj)), this.zzbof.zzbni);
            } else {
                this.zzbog.zza(com.google.android.gms.dynamic.zze.zzac(this.mContext), this.zzani, this.zzanc, zzbj, this.zzbof.zzbmu, zzgcVar);
            }
        } catch (RemoteException e) {
            zzkd.zzd("Could not request ad from mediation adapter.", e);
            zzy(5);
        }
    }

    private static zzgm zzaa(final int i) {
        return new zzgm.zza() { // from class: com.google.android.gms.internal.zzgd.2
            @Override // com.google.android.gms.internal.zzgm
            public int zzmm() throws RemoteException {
                return i;
            }
        };
    }

    private void zzb(long j, long j2, long j3, long j4) {
        long elapsedRealtime = SystemClock.elapsedRealtime();
        long j5 = j2 - (elapsedRealtime - j);
        long j6 = j4 - (elapsedRealtime - j3);
        if (j5 <= 0 || j6 <= 0) {
            zzkd.zzcw("Timed out waiting for adapter.");
            this.zzboh = 3;
        } else {
            try {
                this.zzail.wait(Math.min(j5, j6));
            } catch (InterruptedException e) {
                this.zzboh = -1;
            }
        }
    }

    private String zzbj(String str) {
        if (str == null || !zzmk() || zzz(2)) {
            return str;
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            jSONObject.remove("cpm_floor_cents");
            return jSONObject.toString();
        } catch (JSONException e) {
            zzkd.zzcx("Could not remove field. Returning the original value");
            return str;
        }
    }

    private static NativeAdOptions zzbk(String str) {
        NativeAdOptions.Builder builder = new NativeAdOptions.Builder();
        if (str == null) {
            return builder.build();
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            builder.setRequestMultipleImages(jSONObject.optBoolean("multiple_images", false));
            builder.setReturnUrlsForImageAssets(jSONObject.optBoolean("only_urls", false));
            builder.setImageOrientation(zzbl(jSONObject.optString("native_image_orientation", "any")));
        } catch (JSONException e) {
            zzkd.zzd("Exception occurred when creating native ad options", e);
        }
        return builder.build();
    }

    private static int zzbl(String str) {
        if ("landscape".equals(str)) {
            return 2;
        }
        return "portrait".equals(str) ? 1 : 0;
    }

    private String zzmh() {
        try {
            if (!TextUtils.isEmpty(this.zzbof.zzbmy)) {
                return this.zzajz.zzbn(this.zzbof.zzbmy) ? "com.google.android.gms.ads.mediation.customevent.CustomEventAdapter" : "com.google.ads.mediation.customevent.CustomEventAdapter";
            }
        } catch (RemoteException e) {
            zzkd.zzcx("Fail to determine the custom event's version, assuming the old one.");
        }
        return "com.google.ads.mediation.customevent.CustomEventAdapter";
    }

    private zzgm zzmi() {
        if (this.zzboh != 0 || !zzmk()) {
            return null;
        }
        try {
            if (zzz(4) && this.zzboi != null && this.zzboi.zzmm() != 0) {
                return this.zzboi;
            }
        } catch (RemoteException e) {
            zzkd.zzcx("Could not get cpm value from MediationResponseMetadata");
        }
        return zzaa(zzml());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public zzgk zzmj() {
        String valueOf = String.valueOf(this.zzboc);
        zzkd.zzcw(valueOf.length() != 0 ? "Instantiating mediation adapter: ".concat(valueOf) : new String("Instantiating mediation adapter: "));
        if (!this.zzarl) {
            if (zzdc.zzbbe.get().booleanValue() && "com.google.ads.mediation.admob.AdMobAdapter".equals(this.zzboc)) {
                return zza(new AdMobAdapter());
            }
            if (zzdc.zzbbf.get().booleanValue() && "com.google.ads.mediation.AdUrlAdapter".equals(this.zzboc)) {
                return zza(new AdUrlAdapter());
            }
            if ("com.google.ads.mediation.admob.AdMobCustomTabsAdapter".equals(this.zzboc)) {
                return new zzgq(new zzgy());
            }
        }
        try {
            return this.zzajz.zzbm(this.zzboc);
        } catch (RemoteException e) {
            String valueOf2 = String.valueOf(this.zzboc);
            zzkd.zza(valueOf2.length() != 0 ? "Could not instantiate mediation adapter: ".concat(valueOf2) : new String("Could not instantiate mediation adapter: "), e);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean zzmk() {
        return this.zzboe.zzbnv != -1;
    }

    private int zzml() {
        if (this.zzbof.zzbnc == null) {
            return 0;
        }
        try {
            JSONObject jSONObject = new JSONObject(this.zzbof.zzbnc);
            if ("com.google.ads.mediation.admob.AdMobAdapter".equals(this.zzboc)) {
                return jSONObject.optInt("cpm_cents", 0);
            }
            int optInt = zzz(2) ? jSONObject.optInt("cpm_floor_cents", 0) : 0;
            return optInt == 0 ? jSONObject.optInt("penalized_average_cpm_cents", 0) : optInt;
        } catch (JSONException e) {
            zzkd.zzcx("Could not convert to json. Returning 0");
            return 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean zzz(int i) {
        try {
            Bundle zzmr = this.zzarl ? this.zzbog.zzmr() : this.zzani.zzaus ? this.zzbog.getInterstitialAdapterInfo() : this.zzbog.zzmq();
            if (zzmr != null) {
                return (zzmr.getInt("capabilities", 0) & i) == i;
            }
            return false;
        } catch (RemoteException e) {
            zzkd.zzcx("Could not get adapter info. Returning false");
            return false;
        }
    }

    public void cancel() {
        synchronized (this.zzail) {
            try {
                if (this.zzbog != null) {
                    this.zzbog.destroy();
                }
            } catch (RemoteException e) {
                zzkd.zzd("Could not destroy mediation adapter.", e);
            }
            this.zzboh = -1;
            this.zzail.notify();
        }
    }

    public zzge zza(long j, long j2) {
        zzge zzgeVar;
        synchronized (this.zzail) {
            long elapsedRealtime = SystemClock.elapsedRealtime();
            final zzgc zzgcVar = new zzgc();
            zzkh.zzclc.post(new Runnable() { // from class: com.google.android.gms.internal.zzgd.1
                @Override // java.lang.Runnable
                public void run() {
                    synchronized (zzgd.this.zzail) {
                        if (zzgd.this.zzboh != -2) {
                            return;
                        }
                        zzgd.this.zzbog = zzgd.this.zzmj();
                        if (zzgd.this.zzbog == null) {
                            zzgd.this.zzy(4);
                            return;
                        }
                        if (!zzgd.this.zzmk() || zzgd.this.zzz(1)) {
                            zzgcVar.zza(zzgd.this);
                            zzgd.this.zza(zzgcVar);
                        } else {
                            String str = zzgd.this.zzboc;
                            zzkd.zzcx(new StringBuilder(String.valueOf(str).length() + 56).append("Ignoring adapter ").append(str).append(" as delayed impression is not supported").toString());
                            zzgd.this.zzy(2);
                        }
                    }
                }
            });
            zzgeVar = new zzge(this.zzbof, this.zzbog, this.zzboc, zzgcVar, this.zzboh, zzmi(), zza(elapsedRealtime, this.zzbod, j, j2));
        }
        return zzgeVar;
    }

    protected zzgk zza(MediationAdapter mediationAdapter) {
        return new zzgq(mediationAdapter);
    }

    @Override // com.google.android.gms.internal.zzge.zza
    public void zza(int i, zzgm zzgmVar) {
        synchronized (this.zzail) {
            this.zzboh = i;
            this.zzboi = zzgmVar;
            this.zzail.notify();
        }
    }

    @Override // com.google.android.gms.internal.zzge.zza
    public void zzy(int i) {
        synchronized (this.zzail) {
            this.zzboh = i;
            this.zzail.notify();
        }
    }
}
