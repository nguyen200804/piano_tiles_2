package com.google.android.gms.internal;

import android.content.SharedPreferences;
import android.os.Bundle;
import android.os.Parcel;
import android.support.annotation.Nullable;
import android.util.Base64;
import com.google.android.gms.ads.internal.client.AdRequestParcel;
import com.google.android.gms.internal.zzfm;
import com.google.android.gms.internal.zziv;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Map;
import java.util.regex.Pattern;

@zzin
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class zzfk {
    private final Map<zzfl, zzfm> zzbko = new HashMap();
    private final LinkedList<zzfl> zzbkp = new LinkedList<>();

    @Nullable
    private zzfh zzbkq;

    private static void zza(String str, zzfl zzflVar) {
        if (zzkd.zzaz(2)) {
            zzkd.v(String.format(str, zzflVar));
        }
    }

    private String[] zzbe(String str) {
        try {
            String[] split = str.split("\u0000");
            for (int i = 0; i < split.length; i++) {
                split[i] = new String(Base64.decode(split[i], 0), "UTF-8");
            }
            return split;
        } catch (UnsupportedEncodingException e) {
            return new String[0];
        }
    }

    private boolean zzbf(String str) {
        try {
            return Pattern.matches(zzdc.zzbal.get(), str);
        } catch (RuntimeException e) {
            com.google.android.gms.ads.internal.zzu.zzft().zzb((Throwable) e, true);
            return false;
        }
    }

    private static void zzc(Bundle bundle, String str) {
        String[] split = str.split("/", 2);
        if (split.length == 0) {
            return;
        }
        String str2 = split[0];
        if (split.length == 1) {
            bundle.remove(str2);
            return;
        }
        Bundle bundle2 = bundle.getBundle(str2);
        if (bundle2 != null) {
            zzc(bundle2, split[1]);
        }
    }

    @Nullable
    static Bundle zzi(AdRequestParcel adRequestParcel) {
        Bundle bundle = adRequestParcel.zzatw;
        if (bundle == null) {
            return null;
        }
        return bundle.getBundle("com.google.ads.mediation.admob.AdMobAdapter");
    }

    static AdRequestParcel zzj(AdRequestParcel adRequestParcel) {
        Parcel obtain = Parcel.obtain();
        adRequestParcel.writeToParcel(obtain, 0);
        obtain.setDataPosition(0);
        AdRequestParcel adRequestParcel2 = (AdRequestParcel) AdRequestParcel.CREATOR.createFromParcel(obtain);
        obtain.recycle();
        Bundle zzi = zzi(adRequestParcel2);
        if (zzi == null) {
            zzi = new Bundle();
            adRequestParcel2.zzatw.putBundle("com.google.ads.mediation.admob.AdMobAdapter", zzi);
        }
        zzi.putBoolean("_skipMediation", true);
        return adRequestParcel2;
    }

    static boolean zzk(AdRequestParcel adRequestParcel) {
        Bundle bundle;
        Bundle bundle2 = adRequestParcel.zzatw;
        return (bundle2 == null || (bundle = bundle2.getBundle("com.google.ads.mediation.admob.AdMobAdapter")) == null || !bundle.containsKey("_skipMediation")) ? false : true;
    }

    private static AdRequestParcel zzl(AdRequestParcel adRequestParcel) {
        Parcel obtain = Parcel.obtain();
        adRequestParcel.writeToParcel(obtain, 0);
        obtain.setDataPosition(0);
        AdRequestParcel adRequestParcel2 = (AdRequestParcel) AdRequestParcel.CREATOR.createFromParcel(obtain);
        obtain.recycle();
        for (String str : zzdc.zzbah.get().split(",")) {
            zzc(adRequestParcel2.zzatw, str);
        }
        return adRequestParcel2;
    }

    private String zzlp() {
        try {
            StringBuilder sb = new StringBuilder();
            Iterator<zzfl> it = this.zzbkp.iterator();
            while (it.hasNext()) {
                sb.append(Base64.encodeToString(it.next().toString().getBytes("UTF-8"), 0));
                if (it.hasNext()) {
                    sb.append("\u0000");
                }
            }
            return sb.toString();
        } catch (UnsupportedEncodingException e) {
            return "";
        }
    }

    void flush() {
        while (this.zzbkp.size() > 0) {
            zzfl remove = this.zzbkp.remove();
            zzfm zzfmVar = this.zzbko.get(remove);
            zza("Flushing interstitial queue for %s.", remove);
            while (zzfmVar.size() > 0) {
                zzfmVar.zzm(null).zzbkv.zzeu();
            }
            this.zzbko.remove(remove);
        }
    }

    void restore() {
        if (this.zzbkq == null) {
            return;
        }
        SharedPreferences sharedPreferences = this.zzbkq.getApplicationContext().getSharedPreferences("com.google.android.gms.ads.internal.interstitial.InterstitialAdPool", 0);
        flush();
        HashMap hashMap = new HashMap();
        for (Map.Entry<String, ?> entry : sharedPreferences.getAll().entrySet()) {
            try {
                if (!entry.getKey().equals("PoolKeys")) {
                    zzfo zzfoVar = new zzfo((String) entry.getValue());
                    zzfl zzflVar = new zzfl(zzfoVar.zzanc, zzfoVar.zzaln, zzfoVar.zzbkt);
                    if (!this.zzbko.containsKey(zzflVar)) {
                        this.zzbko.put(zzflVar, new zzfm(zzfoVar.zzanc, zzfoVar.zzaln, zzfoVar.zzbkt));
                        hashMap.put(zzflVar.toString(), zzflVar);
                        zza("Restored interstitial queue for %s.", zzflVar);
                    }
                }
            } catch (IOException | ClassCastException e) {
                zzkd.zzd("Malformed preferences value for InterstitialAdPool.", e);
            }
        }
        for (String str : zzbe(sharedPreferences.getString("PoolKeys", ""))) {
            zzfl zzflVar2 = (zzfl) hashMap.get(str);
            if (this.zzbko.containsKey(zzflVar2)) {
                this.zzbkp.add(zzflVar2);
            }
        }
    }

    void save() {
        if (this.zzbkq == null) {
            return;
        }
        SharedPreferences.Editor edit = this.zzbkq.getApplicationContext().getSharedPreferences("com.google.android.gms.ads.internal.interstitial.InterstitialAdPool", 0).edit();
        edit.clear();
        for (Map.Entry<zzfl, zzfm> entry : this.zzbko.entrySet()) {
            zzfl key = entry.getKey();
            zzfm value = entry.getValue();
            if (value.zzlu()) {
                edit.putString(key.toString(), new zzfo(value).zzlx());
                zza("Saved interstitial queue for %s.", key);
            }
        }
        edit.putString("PoolKeys", zzlp());
        edit.apply();
    }

    @Nullable
    zzfm.zza zza(AdRequestParcel adRequestParcel, String str) {
        zzfm zzfmVar;
        if (zzbf(str)) {
            return null;
        }
        int i = new zziv.zza(this.zzbkq.getApplicationContext()).zzrn().zzcgp;
        AdRequestParcel zzl = zzl(adRequestParcel);
        zzfl zzflVar = new zzfl(zzl, str, i);
        zzfm zzfmVar2 = this.zzbko.get(zzflVar);
        if (zzfmVar2 == null) {
            zza("Interstitial pool created at %s.", zzflVar);
            zzfm zzfmVar3 = new zzfm(zzl, str, i);
            this.zzbko.put(zzflVar, zzfmVar3);
            zzfmVar = zzfmVar3;
        } else {
            zzfmVar = zzfmVar2;
        }
        this.zzbkp.remove(zzflVar);
        this.zzbkp.add(zzflVar);
        zzfmVar.zzlt();
        while (this.zzbkp.size() > zzdc.zzbai.get().intValue()) {
            zzfl remove = this.zzbkp.remove();
            zzfm zzfmVar4 = this.zzbko.get(remove);
            zza("Evicting interstitial queue for %s.", remove);
            while (zzfmVar4.size() > 0) {
                zzfmVar4.zzm(null).zzbkv.zzeu();
            }
            this.zzbko.remove(remove);
        }
        while (zzfmVar.size() > 0) {
            zzfm.zza zzm = zzfmVar.zzm(zzl);
            if (!zzm.zzbkz || com.google.android.gms.ads.internal.zzu.zzfu().currentTimeMillis() - zzm.zzbky <= 1000 * zzdc.zzbak.get().intValue()) {
                String str2 = zzm.zzbkw != null ? " (inline) " : " ";
                zza(new StringBuilder(String.valueOf(str2).length() + 34).append("Pooled interstitial").append(str2).append("returned at %s.").toString(), zzflVar);
                return zzm;
            }
            zza("Expired interstitial at %s.", zzflVar);
        }
        return null;
    }

    void zza(zzfh zzfhVar) {
        if (this.zzbkq == null) {
            this.zzbkq = zzfhVar.zzln();
            restore();
        }
    }

    void zzb(AdRequestParcel adRequestParcel, String str) {
        if (this.zzbkq == null) {
            return;
        }
        int i = new zziv.zza(this.zzbkq.getApplicationContext()).zzrn().zzcgp;
        AdRequestParcel zzl = zzl(adRequestParcel);
        zzfl zzflVar = new zzfl(zzl, str, i);
        zzfm zzfmVar = this.zzbko.get(zzflVar);
        if (zzfmVar == null) {
            zza("Interstitial pool created at %s.", zzflVar);
            zzfmVar = new zzfm(zzl, str, i);
            this.zzbko.put(zzflVar, zzfmVar);
        }
        zzfmVar.zza(this.zzbkq, adRequestParcel);
        zzfmVar.zzlt();
        zza("Inline entry added to the queue at %s.", zzflVar);
    }

    void zzlo() {
        int size;
        int zzlr;
        if (this.zzbkq == null) {
            return;
        }
        for (Map.Entry<zzfl, zzfm> entry : this.zzbko.entrySet()) {
            zzfl key = entry.getKey();
            zzfm value = entry.getValue();
            if (zzkd.zzaz(2) && (zzlr = value.zzlr()) < (size = value.size())) {
                zzkd.v(String.format("Loading %s/%s pooled interstitials for %s.", Integer.valueOf(size - zzlr), Integer.valueOf(size), key));
            }
            value.zzls();
            while (value.size() < zzdc.zzbaj.get().intValue()) {
                zza("Pooling and loading one new interstitial for %s.", key);
                value.zzb(this.zzbkq);
            }
        }
        save();
    }
}
