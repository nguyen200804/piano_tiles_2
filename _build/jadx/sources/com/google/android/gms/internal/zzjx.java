package com.google.android.gms.internal;

import android.annotation.TargetApi;
import android.app.Application;
import android.content.Context;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Looper;
import android.os.Parcelable;
import android.security.NetworkSecurityPolicy;
import android.support.v4.view.MotionEventCompat;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.ads.dynamite.ModuleDescriptor;
import com.google.android.gms.internal.zzkf;
import com.google.android.gms.internal.zzsb;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.concurrent.Future;

@zzin
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class zzjx implements zzkf.zzb {
    private Context mContext;
    private zzcg zzaju;
    private VersionInfoParcel zzalo;
    private String zzbjf;
    private final String zzcjm;
    private final zzjy zzcjn;
    private String zzcjv;
    private final Object zzail = new Object();
    private BigInteger zzcjo = BigInteger.ONE;
    private final HashSet<zzjv> zzcjp = new HashSet<>();
    private final HashMap<String, zzka> zzcjq = new HashMap<>();
    private boolean zzcjr = false;
    private boolean zzcff = true;
    private int zzcjs = 0;
    private boolean zzamt = false;
    private zzde zzcjt = null;
    private boolean zzcfg = true;
    private zzcn zzask = null;
    private zzco zzcju = null;
    private zzcm zzasl = null;
    private Boolean zzcjw = null;
    private boolean zzcjx = false;
    private boolean zzcjy = false;
    private boolean zzcfo = false;
    private boolean zzcjz = false;
    private String zzcka = "";
    private long zzckb = 0;

    public zzjx(zzkh zzkhVar) {
        this.zzcjm = zzkhVar.zztf();
        this.zzcjn = new zzjy(this.zzcjm);
    }

    public Resources getResources() {
        if (this.zzalo.zzcnm) {
            return this.mContext.getResources();
        }
        try {
            zzsb zza = zzsb.zza(this.mContext, zzsb.KI, ModuleDescriptor.MODULE_ID);
            if (zza != null) {
                return zza.zzbby().getResources();
            }
            return null;
        } catch (zzsb.zza e) {
            zzkd.zzd("Cannot load resource from dynamite apk or local jar", e);
            return null;
        }
    }

    public String getSessionId() {
        return this.zzcjm;
    }

    public Bundle zza(Context context, zzjz zzjzVar, String str) {
        Bundle bundle;
        synchronized (this.zzail) {
            bundle = new Bundle();
            bundle.putBundle("app", this.zzcjn.zze(context, str));
            Bundle bundle2 = new Bundle();
            for (String str2 : this.zzcjq.keySet()) {
                bundle2.putBundle(str2, this.zzcjq.get(str2).toBundle());
            }
            bundle.putBundle("slots", bundle2);
            ArrayList<? extends Parcelable> arrayList = new ArrayList<>();
            Iterator<zzjv> it = this.zzcjp.iterator();
            while (it.hasNext()) {
                arrayList.add(it.next().toBundle());
            }
            bundle.putParcelableArrayList("ads", arrayList);
            zzjzVar.zza(this.zzcjp);
            this.zzcjp.clear();
        }
        return bundle;
    }

    public void zza(zzjv zzjvVar) {
        synchronized (this.zzail) {
            this.zzcjp.add(zzjvVar);
        }
    }

    public void zza(String str, zzka zzkaVar) {
        synchronized (this.zzail) {
            this.zzcjq.put(str, zzkaVar);
        }
    }

    public void zza(Thread thread) {
        zzim.zza(this.mContext, thread, this.zzalo);
    }

    public zzco zzaa(Context context) {
        if (!zzdc.zzazh.get().booleanValue() || !com.google.android.gms.common.util.zzs.zzavq() || zzsi()) {
            return null;
        }
        synchronized (this.zzail) {
            if (Looper.getMainLooper() == null || context == null) {
                return null;
            }
            if (this.zzask == null) {
                Application application = (Application) context.getApplicationContext();
                if (application == null) {
                    application = (Application) context;
                }
                this.zzask = new zzcn(application, context);
            }
            if (this.zzasl == null) {
                this.zzasl = new zzcm();
            }
            if (this.zzcju == null) {
                this.zzcju = new zzco(this.zzask, this.zzasl, new zzim(this.mContext, this.zzalo, null, null));
            }
            this.zzcju.zzhz();
            return this.zzcju;
        }
    }

    public void zzae(boolean z) {
        synchronized (this.zzail) {
            if (this.zzcfg != z) {
                zzkf.zze(this.mContext, z);
            }
            this.zzcfg = z;
            zzco zzaa = zzaa(this.mContext);
            if (zzaa != null && !zzaa.isAlive()) {
                zzkd.zzcw("start fetching content...");
                zzaa.zzhz();
            }
        }
    }

    public void zzaf(boolean z) {
        this.zzcjz = z;
    }

    public void zzag(boolean z) {
        synchronized (this.zzail) {
            this.zzcjx = z;
        }
    }

    @TargetApi(MotionEventCompat.AXIS_BRAKE)
    public void zzb(Context context, VersionInfoParcel versionInfoParcel) {
        synchronized (this.zzail) {
            if (!this.zzamt) {
                this.mContext = context.getApplicationContext();
                this.zzalo = versionInfoParcel;
                zzkf.zza(context, this);
                zzkf.zzb(context, this);
                zzkf.zzc(context, this);
                zzkf.zzd(context, this);
                zzkf.zze(context, this);
                zzkf.zzf(context, this);
                zza(Thread.currentThread());
                this.zzbjf = com.google.android.gms.ads.internal.zzu.zzfq().zzg(context, versionInfoParcel.zzcs);
                if (com.google.android.gms.common.util.zzs.zzavy() && !NetworkSecurityPolicy.getInstance().isCleartextTrafficPermitted()) {
                    this.zzcjy = true;
                }
                this.zzaju = new zzcg(context.getApplicationContext(), this.zzalo, com.google.android.gms.ads.internal.zzu.zzfq().zzc(context, versionInfoParcel));
                zzsw();
                com.google.android.gms.ads.internal.zzu.zzga().zzt(this.mContext);
                this.zzamt = true;
            }
        }
    }

    public void zzb(Boolean bool) {
        synchronized (this.zzail) {
            this.zzcjw = bool;
        }
    }

    public void zzb(Throwable th, boolean z) {
        new zzim(this.mContext, this.zzalo, null, null).zza(th, z);
    }

    public void zzb(HashSet<zzjv> hashSet) {
        synchronized (this.zzail) {
            this.zzcjp.addAll(hashSet);
        }
    }

    public Future zzc(Context context, boolean z) {
        Future future;
        synchronized (this.zzail) {
            if (z != this.zzcff) {
                this.zzcff = z;
                future = zzkf.zzc(context, z);
            } else {
                future = null;
            }
        }
        return future;
    }

    public Future zzcm(String str) {
        Future zzf;
        synchronized (this.zzail) {
            if (str != null) {
                if (!str.equals(this.zzcjv)) {
                    this.zzcjv = str;
                    zzf = zzkf.zzf(this.mContext, str);
                }
            }
            zzf = null;
        }
        return zzf;
    }

    public Future zzd(Context context, String str) {
        Future zza;
        this.zzckb = com.google.android.gms.ads.internal.zzu.zzfu().currentTimeMillis();
        synchronized (this.zzail) {
            if (str != null) {
                if (!str.equals(this.zzcka)) {
                    this.zzcka = str;
                    zza = zzkf.zza(context, str, this.zzckb);
                }
            }
            zza = null;
        }
        return zza;
    }

    public Future zzd(Context context, boolean z) {
        Future future;
        synchronized (this.zzail) {
            if (z != this.zzcfo) {
                this.zzcfo = z;
                future = zzkf.zzf(context, z);
            } else {
                future = null;
            }
        }
        return future;
    }

    @Override // com.google.android.gms.internal.zzkf.zzb
    public void zzg(Bundle bundle) {
        synchronized (this.zzail) {
            this.zzcff = bundle.containsKey("use_https") ? bundle.getBoolean("use_https") : this.zzcff;
            this.zzcjs = bundle.containsKey("webview_cache_version") ? bundle.getInt("webview_cache_version") : this.zzcjs;
            if (bundle.containsKey("content_url_opted_out")) {
                zzae(bundle.getBoolean("content_url_opted_out"));
            }
            if (bundle.containsKey("content_url_hashes")) {
                this.zzcjv = bundle.getString("content_url_hashes");
            }
            this.zzcfo = bundle.containsKey("auto_collect_location") ? bundle.getBoolean("auto_collect_location") : this.zzcfo;
            this.zzcka = bundle.containsKey("app_settings_json") ? bundle.getString("app_settings_json") : this.zzcka;
            this.zzckb = bundle.containsKey("app_settings_last_update_ms") ? bundle.getLong("app_settings_last_update_ms") : 0L;
        }
    }

    public boolean zzsi() {
        boolean z;
        synchronized (this.zzail) {
            z = this.zzcfg;
        }
        return z;
    }

    public String zzsj() {
        String bigInteger;
        synchronized (this.zzail) {
            bigInteger = this.zzcjo.toString();
            this.zzcjo = this.zzcjo.add(BigInteger.ONE);
        }
        return bigInteger;
    }

    public zzjy zzsk() {
        zzjy zzjyVar;
        synchronized (this.zzail) {
            zzjyVar = this.zzcjn;
        }
        return zzjyVar;
    }

    public zzde zzsl() {
        zzde zzdeVar;
        synchronized (this.zzail) {
            zzdeVar = this.zzcjt;
        }
        return zzdeVar;
    }

    public boolean zzsm() {
        boolean z;
        synchronized (this.zzail) {
            z = this.zzcjr;
            this.zzcjr = true;
        }
        return z;
    }

    public boolean zzsn() {
        boolean z;
        synchronized (this.zzail) {
            z = this.zzcff || this.zzcjy;
        }
        return z;
    }

    public String zzso() {
        String str;
        synchronized (this.zzail) {
            str = this.zzbjf;
        }
        return str;
    }

    public String zzsp() {
        String str;
        synchronized (this.zzail) {
            str = this.zzcjv;
        }
        return str;
    }

    public Boolean zzsq() {
        Boolean bool;
        synchronized (this.zzail) {
            bool = this.zzcjw;
        }
        return bool;
    }

    public boolean zzsr() {
        boolean z;
        synchronized (this.zzail) {
            z = this.zzcfo;
        }
        return z;
    }

    public boolean zzss() {
        return this.zzcjz;
    }

    public zzjw zzst() {
        zzjw zzjwVar;
        synchronized (this.zzail) {
            zzjwVar = new zzjw(this.zzcka, this.zzckb);
        }
        return zzjwVar;
    }

    public zzcg zzsu() {
        return this.zzaju;
    }

    public boolean zzsv() {
        boolean z;
        synchronized (this.zzail) {
            z = this.zzcjx;
        }
        return z;
    }

    void zzsw() {
        try {
            this.zzcjt = com.google.android.gms.ads.internal.zzu.zzfv().zza(new zzdd(this.mContext, this.zzalo.zzcs));
        } catch (IllegalArgumentException e) {
            zzkd.zzd("Cannot initialize CSI reporter.", e);
        }
    }
}
