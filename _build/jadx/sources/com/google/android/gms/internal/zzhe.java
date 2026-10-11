package com.google.android.gms.internal;

import android.app.Activity;
import android.content.Context;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import com.google.android.gms.internal.zzhd;
import java.util.Map;

@zzin
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class zzhe extends zzhf implements zzep {
    private final Context mContext;
    private final WindowManager zzaqm;
    private final zzlh zzbgf;
    private final zzcu zzbrc;
    DisplayMetrics zzbrd;
    private float zzbre;
    int zzbrf;
    int zzbrg;
    private int zzbrh;
    int zzbri;
    int zzbrj;
    int zzbrk;
    int zzbrl;

    public zzhe(zzlh zzlhVar, Context context, zzcu zzcuVar) {
        super(zzlhVar);
        this.zzbrf = -1;
        this.zzbrg = -1;
        this.zzbri = -1;
        this.zzbrj = -1;
        this.zzbrk = -1;
        this.zzbrl = -1;
        this.zzbgf = zzlhVar;
        this.mContext = context;
        this.zzbrc = zzcuVar;
        this.zzaqm = (WindowManager) context.getSystemService("window");
    }

    private void zzmz() {
        this.zzbrd = new DisplayMetrics();
        Display defaultDisplay = this.zzaqm.getDefaultDisplay();
        defaultDisplay.getMetrics(this.zzbrd);
        this.zzbre = this.zzbrd.density;
        this.zzbrh = defaultDisplay.getRotation();
    }

    private void zzne() {
        int[] iArr = new int[2];
        this.zzbgf.getLocationOnScreen(iArr);
        zze(com.google.android.gms.ads.internal.client.zzm.zziw().zzb(this.mContext, iArr[0]), com.google.android.gms.ads.internal.client.zzm.zziw().zzb(this.mContext, iArr[1]));
    }

    private zzhd zznh() {
        return new zzhd.zza().zzu(this.zzbrc.zzjp()).zzt(this.zzbrc.zzjq()).zzv(this.zzbrc.zzju()).zzw(this.zzbrc.zzjr()).zzx(this.zzbrc.zzjs()).zzmy();
    }

    @Override // com.google.android.gms.internal.zzep
    public void zza(zzlh zzlhVar, Map<String, String> map) {
        zznc();
    }

    public void zze(int i, int i2) {
        zzc(i, i2 - (this.mContext instanceof Activity ? com.google.android.gms.ads.internal.zzu.zzfq().zzk((Activity) this.mContext)[0] : 0), this.zzbrk, this.zzbrl);
        this.zzbgf.zzuj().zzd(i, i2);
    }

    void zzna() {
        this.zzbrf = com.google.android.gms.ads.internal.client.zzm.zziw().zzb(this.zzbrd, this.zzbrd.widthPixels);
        this.zzbrg = com.google.android.gms.ads.internal.client.zzm.zziw().zzb(this.zzbrd, this.zzbrd.heightPixels);
        Activity zzue = this.zzbgf.zzue();
        if (zzue == null || zzue.getWindow() == null) {
            this.zzbri = this.zzbrf;
            this.zzbrj = this.zzbrg;
        } else {
            int[] zzh = com.google.android.gms.ads.internal.zzu.zzfq().zzh(zzue);
            this.zzbri = com.google.android.gms.ads.internal.client.zzm.zziw().zzb(this.zzbrd, zzh[0]);
            this.zzbrj = com.google.android.gms.ads.internal.client.zzm.zziw().zzb(this.zzbrd, zzh[1]);
        }
    }

    void zznb() {
        if (this.zzbgf.zzdn().zzaus) {
            this.zzbrk = this.zzbrf;
            this.zzbrl = this.zzbrg;
        } else {
            this.zzbgf.measure(0, 0);
            this.zzbrk = com.google.android.gms.ads.internal.client.zzm.zziw().zzb(this.mContext, this.zzbgf.getMeasuredWidth());
            this.zzbrl = com.google.android.gms.ads.internal.client.zzm.zziw().zzb(this.mContext, this.zzbgf.getMeasuredHeight());
        }
    }

    public void zznc() {
        zzmz();
        zzna();
        zznb();
        zznf();
        zzng();
        zzne();
        zznd();
    }

    void zznd() {
        if (zzkd.zzaz(2)) {
            zzkd.zzcw("Dispatching Ready Event.");
        }
        zzbu(this.zzbgf.zzum().zzcs);
    }

    void zznf() {
        zza(this.zzbrf, this.zzbrg, this.zzbri, this.zzbrj, this.zzbre, this.zzbrh);
    }

    void zzng() {
        this.zzbgf.zzb("onDeviceFeaturesReceived", zznh().toJson());
    }
}
