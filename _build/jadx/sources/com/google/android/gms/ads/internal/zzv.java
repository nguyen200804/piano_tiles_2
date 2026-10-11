package com.google.android.gms.ads.internal;

import android.R;
import android.app.Activity;
import android.content.Context;
import android.graphics.Rect;
import android.os.RemoteException;
import android.support.annotation.Nullable;
import android.support.v4.util.SimpleArrayMap;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.ViewSwitcher;
import com.google.android.gms.ads.internal.client.AdSizeParcel;
import com.google.android.gms.ads.internal.client.VideoOptionsParcel;
import com.google.android.gms.ads.internal.client.zzw;
import com.google.android.gms.ads.internal.client.zzy;
import com.google.android.gms.ads.internal.formats.NativeAdOptionsParcel;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.internal.zzas;
import com.google.android.gms.internal.zzdc;
import com.google.android.gms.internal.zzdo;
import com.google.android.gms.internal.zzeb;
import com.google.android.gms.internal.zzec;
import com.google.android.gms.internal.zzed;
import com.google.android.gms.internal.zzee;
import com.google.android.gms.internal.zzho;
import com.google.android.gms.internal.zzhs;
import com.google.android.gms.internal.zzin;
import com.google.android.gms.internal.zzju;
import com.google.android.gms.internal.zzjv;
import com.google.android.gms.internal.zzka;
import com.google.android.gms.internal.zzkc;
import com.google.android.gms.internal.zzkd;
import com.google.android.gms.internal.zzkj;
import com.google.android.gms.internal.zzkk;
import com.google.android.gms.internal.zzkr;
import com.google.android.gms.internal.zzku;
import com.google.android.gms.internal.zzlh;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;

@zzin
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class zzv implements ViewTreeObserver.OnGlobalLayoutListener, ViewTreeObserver.OnScrollChangedListener {
    public final Context zzagf;
    boolean zzame;
    final String zzaot;
    public String zzaou;
    final zzas zzaov;
    public final VersionInfoParcel zzaow;

    @Nullable
    zza zzaox;

    @Nullable
    public zzkc zzaoy;

    @Nullable
    public zzkj zzaoz;
    public AdSizeParcel zzapa;

    @Nullable
    public zzju zzapb;
    public zzju.zza zzapc;
    public zzjv zzapd;

    @Nullable
    com.google.android.gms.ads.internal.client.zzp zzape;

    @Nullable
    com.google.android.gms.ads.internal.client.zzq zzapf;

    @Nullable
    zzw zzapg;

    @Nullable
    zzy zzaph;

    @Nullable
    zzho zzapi;

    @Nullable
    zzhs zzapj;

    @Nullable
    zzeb zzapk;

    @Nullable
    zzec zzapl;
    SimpleArrayMap<String, zzed> zzapm;
    SimpleArrayMap<String, zzee> zzapn;
    NativeAdOptionsParcel zzapo;

    @Nullable
    VideoOptionsParcel zzapp;

    @Nullable
    zzdo zzapq;

    @Nullable
    com.google.android.gms.ads.internal.reward.client.zzd zzapr;

    @Nullable
    List<String> zzaps;

    @Nullable
    com.google.android.gms.ads.internal.purchase.zzk zzapt;

    @Nullable
    public zzka zzapu;

    @Nullable
    View zzapv;
    public int zzapw;
    boolean zzapx;
    private HashSet<zzjv> zzapy;
    private int zzapz;
    private int zzaqa;
    private zzkr zzaqb;
    private boolean zzaqc;
    private boolean zzaqd;
    private boolean zzaqe;

    public static class zza extends ViewSwitcher {
        private final zzkk zzaqf;

        @Nullable
        private final zzku zzaqg;

        public zza(Context context, ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener, ViewTreeObserver.OnScrollChangedListener onScrollChangedListener) {
            super(context);
            this.zzaqf = new zzkk(context);
            if (context instanceof Activity) {
                this.zzaqg = new zzku((Activity) context, this, onGlobalLayoutListener, onScrollChangedListener);
            } else {
                this.zzaqg = new zzku(null, this, onGlobalLayoutListener, onScrollChangedListener);
            }
            this.zzaqg.zzts();
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void onAttachedToWindow() {
            super.onAttachedToWindow();
            if (this.zzaqg != null) {
                this.zzaqg.onAttachedToWindow();
            }
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void onDetachedFromWindow() {
            super.onDetachedFromWindow();
            if (this.zzaqg != null) {
                this.zzaqg.onDetachedFromWindow();
            }
        }

        @Override // android.view.ViewGroup
        public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
            this.zzaqf.zze(motionEvent);
            return false;
        }

        @Override // android.widget.ViewAnimator, android.view.ViewGroup
        public void removeAllViews() {
            ArrayList arrayList = new ArrayList();
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 >= getChildCount()) {
                    break;
                }
                KeyEvent.Callback childAt = getChildAt(i2);
                if (childAt != null && (childAt instanceof zzlh)) {
                    arrayList.add((zzlh) childAt);
                }
                i = i2 + 1;
            }
            super.removeAllViews();
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                ((zzlh) it.next()).destroy();
            }
        }

        public void zzgr() {
            zzkd.v("Disable position monitoring on adFrame.");
            if (this.zzaqg != null) {
                this.zzaqg.zztt();
            }
        }

        public zzkk zzgv() {
            return this.zzaqf;
        }
    }

    public zzv(Context context, AdSizeParcel adSizeParcel, String str, VersionInfoParcel versionInfoParcel) {
        this(context, adSizeParcel, str, versionInfoParcel, null);
    }

    zzv(Context context, AdSizeParcel adSizeParcel, String str, VersionInfoParcel versionInfoParcel, zzas zzasVar) {
        this.zzapu = null;
        this.zzapv = null;
        this.zzapw = 0;
        this.zzapx = false;
        this.zzame = false;
        this.zzapy = null;
        this.zzapz = -1;
        this.zzaqa = -1;
        this.zzaqc = true;
        this.zzaqd = true;
        this.zzaqe = false;
        zzdc.initialize(context);
        if (zzu.zzft().zzsl() != null) {
            List<String> zzjy = zzdc.zzjy();
            if (versionInfoParcel.zzcnk != 0) {
                zzjy.add(Integer.toString(versionInfoParcel.zzcnk));
            }
            zzu.zzft().zzsl().zzc(zzjy);
        }
        this.zzaot = UUID.randomUUID().toString();
        if (adSizeParcel.zzaus || adSizeParcel.zzauu) {
            this.zzaox = null;
        } else {
            this.zzaox = new zza(context, this, this);
            this.zzaox.setMinimumWidth(adSizeParcel.widthPixels);
            this.zzaox.setMinimumHeight(adSizeParcel.heightPixels);
            this.zzaox.setVisibility(4);
        }
        this.zzapa = adSizeParcel;
        this.zzaou = str;
        this.zzagf = context;
        this.zzaow = versionInfoParcel;
        this.zzaov = zzasVar == null ? new zzas(new zzi(this)) : zzasVar;
        this.zzaqb = new zzkr(200L);
        this.zzapn = new SimpleArrayMap<>();
    }

    private void zzgs() {
        View findViewById;
        if (this.zzaox == null || (findViewById = this.zzaox.getRootView().findViewById(R.id.content)) == null) {
            return;
        }
        Rect rect = new Rect();
        Rect rect2 = new Rect();
        this.zzaox.getGlobalVisibleRect(rect);
        findViewById.getGlobalVisibleRect(rect2);
        if (rect.top != rect2.top) {
            this.zzaqc = false;
        }
        if (rect.bottom != rect2.bottom) {
            this.zzaqd = false;
        }
    }

    private void zzh(boolean z) {
        if (this.zzaox == null || this.zzapb == null || this.zzapb.zzbtm == null || this.zzapb.zzbtm.zzuj() == null) {
            return;
        }
        if (!z || this.zzaqb.tryAcquire()) {
            if (this.zzapb.zzbtm.zzuj().zzho()) {
                int[] iArr = new int[2];
                this.zzaox.getLocationOnScreen(iArr);
                int zzb = com.google.android.gms.ads.internal.client.zzm.zziw().zzb(this.zzagf, iArr[0]);
                int zzb2 = com.google.android.gms.ads.internal.client.zzm.zziw().zzb(this.zzagf, iArr[1]);
                if (zzb != this.zzapz || zzb2 != this.zzaqa) {
                    this.zzapz = zzb;
                    this.zzaqa = zzb2;
                    this.zzapb.zzbtm.zzuj().zza(this.zzapz, this.zzaqa, z ? false : true);
                }
            }
            zzgs();
        }
    }

    public void destroy() {
        zzgr();
        this.zzapf = null;
        this.zzapg = null;
        this.zzapj = null;
        this.zzapi = null;
        this.zzapq = null;
        this.zzaph = null;
        zzi(false);
        if (this.zzaox != null) {
            this.zzaox.removeAllViews();
        }
        zzgm();
        zzgo();
        this.zzapb = null;
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public void onGlobalLayout() {
        zzh(false);
    }

    @Override // android.view.ViewTreeObserver.OnScrollChangedListener
    public void onScrollChanged() {
        zzh(true);
        this.zzaqe = true;
    }

    public void zza(HashSet<zzjv> hashSet) {
        this.zzapy = hashSet;
    }

    public HashSet<zzjv> zzgl() {
        return this.zzapy;
    }

    public void zzgm() {
        if (this.zzapb == null || this.zzapb.zzbtm == null) {
            return;
        }
        this.zzapb.zzbtm.destroy();
    }

    public void zzgn() {
        if (this.zzapb == null || this.zzapb.zzbtm == null) {
            return;
        }
        this.zzapb.zzbtm.stopLoading();
    }

    public void zzgo() {
        if (this.zzapb == null || this.zzapb.zzboo == null) {
            return;
        }
        try {
            this.zzapb.zzboo.destroy();
        } catch (RemoteException e) {
            zzkd.zzcx("Could not destroy mediation adapter.");
        }
    }

    public boolean zzgp() {
        return this.zzapw == 0;
    }

    public boolean zzgq() {
        return this.zzapw == 1;
    }

    public void zzgr() {
        if (this.zzaox != null) {
            this.zzaox.zzgr();
        }
    }

    public String zzgt() {
        return (this.zzaqc && this.zzaqd) ? "" : this.zzaqc ? this.zzaqe ? "top-scrollable" : "top-locked" : this.zzaqd ? this.zzaqe ? "bottom-scrollable" : "bottom-locked" : "";
    }

    public void zzgu() {
        if (this.zzapb != null) {
            this.zzapd.zzl(this.zzapb.zzcik);
            this.zzapd.zzm(this.zzapb.zzcil);
            this.zzapd.zzad(this.zzapb.zzcby);
        }
        this.zzapd.zzac(this.zzapa.zzaus);
    }

    public void zzi(boolean z) {
        if (this.zzapw == 0) {
            zzgn();
        }
        if (this.zzaoy != null) {
            this.zzaoy.cancel();
        }
        if (this.zzaoz != null) {
            this.zzaoz.cancel();
        }
        if (z) {
            this.zzapb = null;
        }
    }
}
