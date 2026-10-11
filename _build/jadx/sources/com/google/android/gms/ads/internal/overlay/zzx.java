package com.google.android.gms.ads.internal.overlay;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import android.view.TextureView;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.internal.zzdc;
import com.google.android.gms.internal.zzdg;
import com.google.android.gms.internal.zzdi;
import com.google.android.gms.internal.zzdk;
import com.google.android.gms.internal.zzin;
import com.google.android.gms.internal.zzkd;
import com.google.android.gms.internal.zzkm;
import com.mopub.mobileads.VastExtensionXmlManager;
import java.util.concurrent.TimeUnit;

@zzin
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class zzx {
    private final Context mContext;
    private final VersionInfoParcel zzamw;
    private final String zzbvq;

    @Nullable
    private final zzdi zzbvr;

    @Nullable
    private final zzdk zzbvs;
    private final long[] zzbvu;
    private final String[] zzbvv;

    @Nullable
    private zzdi zzbvw;

    @Nullable
    private zzdi zzbvx;

    @Nullable
    private zzdi zzbvy;

    @Nullable
    private zzdi zzbvz;
    private boolean zzbwa;
    private zzi zzbwb;
    private boolean zzbwc;
    private boolean zzbwd;
    private final zzkm zzbvt = new zzkm.zzb().zza("min_1", Double.MIN_VALUE, 1.0d).zza("1_5", 1.0d, 5.0d).zza("5_10", 5.0d, 10.0d).zza("10_20", 10.0d, 20.0d).zza("20_30", 20.0d, 30.0d).zza("30_max", 30.0d, Double.MAX_VALUE).zzto();
    private long zzbwe = -1;

    public zzx(Context context, VersionInfoParcel versionInfoParcel, String str, @Nullable zzdk zzdkVar, @Nullable zzdi zzdiVar) {
        this.mContext = context;
        this.zzamw = versionInfoParcel;
        this.zzbvq = str;
        this.zzbvs = zzdkVar;
        this.zzbvr = zzdiVar;
        String str2 = zzdc.zzayt.get();
        if (str2 == null) {
            this.zzbvv = new String[0];
            this.zzbvu = new long[0];
            return;
        }
        String[] split = TextUtils.split(str2, ",");
        this.zzbvv = new String[split.length];
        this.zzbvu = new long[split.length];
        for (int i = 0; i < split.length; i++) {
            try {
                this.zzbvu[i] = Long.parseLong(split[i]);
            } catch (NumberFormatException e) {
                zzkd.zzd("Unable to parse frame hash target time number.", e);
                this.zzbvu[i] = -1;
            }
        }
    }

    private void zzc(zzi zziVar) {
        long longValue = zzdc.zzayu.get().longValue();
        long currentPosition = zziVar.getCurrentPosition();
        for (int i = 0; i < this.zzbvv.length; i++) {
            if (this.zzbvv[i] == null && longValue > Math.abs(currentPosition - this.zzbvu[i])) {
                this.zzbvv[i] = zza((TextureView) zziVar);
                return;
            }
        }
    }

    private void zzph() {
        if (this.zzbvy != null && this.zzbvz == null) {
            zzdg.zza(this.zzbvs, this.zzbvy, "vff");
            zzdg.zza(this.zzbvs, this.zzbvr, "vtt");
            this.zzbvz = zzdg.zzb(this.zzbvs);
        }
        long nanoTime = com.google.android.gms.ads.internal.zzu.zzfu().nanoTime();
        if (this.zzbwa && this.zzbwd && this.zzbwe != -1) {
            this.zzbvt.zza(TimeUnit.SECONDS.toNanos(1L) / (nanoTime - this.zzbwe));
        }
        this.zzbwd = this.zzbwa;
        this.zzbwe = nanoTime;
    }

    public void onStop() {
        if (!zzdc.zzays.get().booleanValue() || this.zzbwc) {
            return;
        }
        Bundle bundle = new Bundle();
        bundle.putString(VastExtensionXmlManager.TYPE, "native-player-metrics");
        bundle.putString("request", this.zzbvq);
        bundle.putString("player", this.zzbwb.zzni());
        for (zzkm.zza zzaVar : this.zzbvt.getBuckets()) {
            String valueOf = String.valueOf("fps_c_");
            String valueOf2 = String.valueOf(zzaVar.name);
            bundle.putString(valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf), Integer.toString(zzaVar.count));
            String valueOf3 = String.valueOf("fps_p_");
            String valueOf4 = String.valueOf(zzaVar.name);
            bundle.putString(valueOf4.length() != 0 ? valueOf3.concat(valueOf4) : new String(valueOf3), Double.toString(zzaVar.zzcly));
        }
        for (int i = 0; i < this.zzbvu.length; i++) {
            String str = this.zzbvv[i];
            if (str != null) {
                String valueOf5 = String.valueOf("fh_");
                String valueOf6 = String.valueOf(Long.valueOf(this.zzbvu[i]));
                bundle.putString(new StringBuilder(String.valueOf(valueOf5).length() + 0 + String.valueOf(valueOf6).length()).append(valueOf5).append(valueOf6).toString(), str);
            }
        }
        com.google.android.gms.ads.internal.zzu.zzfq().zza(this.mContext, this.zzamw.zzcs, "gmob-apps", bundle, true);
        this.zzbwc = true;
    }

    String zza(TextureView textureView) {
        long j;
        Bitmap bitmap = textureView.getBitmap(8, 8);
        long j2 = 0;
        long j3 = 63;
        int i = 0;
        while (i < 8) {
            int i2 = 0;
            long j4 = j2;
            while (true) {
                j = j3;
                int i3 = i2;
                if (i3 < 8) {
                    int pixel = bitmap.getPixel(i3, i);
                    j4 |= (Color.green(pixel) + (Color.blue(pixel) + Color.red(pixel)) > 128 ? 1L : 0L) << ((int) j);
                    i2 = i3 + 1;
                    j3 = j - 1;
                }
            }
            i++;
            j3 = j;
            j2 = j4;
        }
        return String.format("%016X", Long.valueOf(j2));
    }

    public void zza(zzi zziVar) {
        zzdg.zza(this.zzbvs, this.zzbvr, "vpc");
        this.zzbvw = zzdg.zzb(this.zzbvs);
        if (this.zzbvs != null) {
            this.zzbvs.zzh("vpn", zziVar.zzni());
        }
        this.zzbwb = zziVar;
    }

    public void zzb(zzi zziVar) {
        zzph();
        zzc(zziVar);
    }

    public void zzoj() {
        if (this.zzbvw == null || this.zzbvx != null) {
            return;
        }
        zzdg.zza(this.zzbvs, this.zzbvw, "vfr");
        this.zzbvx = zzdg.zzb(this.zzbvs);
    }

    public void zzpi() {
        this.zzbwa = true;
        if (this.zzbvx == null || this.zzbvy != null) {
            return;
        }
        zzdg.zza(this.zzbvs, this.zzbvx, "vfp");
        this.zzbvy = zzdg.zzb(this.zzbvs);
    }

    public void zzpj() {
        this.zzbwa = false;
    }
}
