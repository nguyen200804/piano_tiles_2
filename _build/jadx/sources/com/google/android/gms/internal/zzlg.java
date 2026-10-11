package com.google.android.gms.internal;

import android.content.Context;
import android.view.ViewGroup;

@zzin
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class zzlg {
    private final Context mContext;
    private final zzlh zzbgf;
    private com.google.android.gms.ads.internal.overlay.zzk zzbwf;
    private final ViewGroup zzcoi;

    public zzlg(Context context, ViewGroup viewGroup, zzlh zzlhVar) {
        this(context, viewGroup, zzlhVar, null);
    }

    zzlg(Context context, ViewGroup viewGroup, zzlh zzlhVar, com.google.android.gms.ads.internal.overlay.zzk zzkVar) {
        this.mContext = context;
        this.zzcoi = viewGroup;
        this.zzbgf = zzlhVar;
        this.zzbwf = zzkVar;
    }

    public void onDestroy() {
        com.google.android.gms.common.internal.zzab.zzhi("onDestroy must be called from the UI thread.");
        if (this.zzbwf != null) {
            this.zzbwf.destroy();
            this.zzcoi.removeView(this.zzbwf);
            this.zzbwf = null;
        }
    }

    public void onPause() {
        com.google.android.gms.common.internal.zzab.zzhi("onPause must be called from the UI thread.");
        if (this.zzbwf != null) {
            this.zzbwf.pause();
        }
    }

    public void zza(int i, int i2, int i3, int i4, int i5, boolean z) {
        if (this.zzbwf != null) {
            return;
        }
        zzdg.zza(this.zzbgf.zzus().zzkf(), this.zzbgf.zzur(), "vpr");
        this.zzbwf = new com.google.android.gms.ads.internal.overlay.zzk(this.mContext, this.zzbgf, i5, z, this.zzbgf.zzus().zzkf(), zzdg.zzb(this.zzbgf.zzus().zzkf()));
        this.zzcoi.addView(this.zzbwf, 0, new ViewGroup.LayoutParams(-1, -1));
        this.zzbwf.zzd(i, i2, i3, i4);
        this.zzbgf.zzuj().zzak(false);
    }

    public void zze(int i, int i2, int i3, int i4) {
        com.google.android.gms.common.internal.zzab.zzhi("The underlay may only be modified from the UI thread.");
        if (this.zzbwf != null) {
            this.zzbwf.zzd(i, i2, i3, i4);
        }
    }

    public com.google.android.gms.ads.internal.overlay.zzk zzub() {
        com.google.android.gms.common.internal.zzab.zzhi("getAdVideoUnderlay must be called from the UI thread.");
        return this.zzbwf;
    }
}
