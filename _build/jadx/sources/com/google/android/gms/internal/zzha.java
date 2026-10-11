package com.google.android.gms.internal;

import android.app.Activity;
import android.graphics.Bitmap;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.Window;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.RelativeLayout;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.internal.client.AdSizeParcel;
import com.mopub.mobileads.VastIconXmlManager;
import java.util.Map;
import java.util.Set;

@zzin
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class zzha extends zzhf {
    static final Set<String> zzbqe = com.google.android.gms.common.util.zzf.zzc("top-left", "top-right", "top-center", "center", "bottom-left", "bottom-right", "bottom-center");
    private int zzaie;
    private int zzaif;
    private final Object zzail;
    private AdSizeParcel zzani;
    private final zzlh zzbgf;
    private final Activity zzbpu;
    private String zzbqf;
    private boolean zzbqg;
    private int zzbqh;
    private int zzbqi;
    private int zzbqj;
    private int zzbqk;
    private ImageView zzbql;
    private LinearLayout zzbqm;
    private zzhg zzbqn;
    private PopupWindow zzbqo;
    private RelativeLayout zzbqp;
    private ViewGroup zzbqq;

    public zzha(zzlh zzlhVar, zzhg zzhgVar) {
        super(zzlhVar, "resize");
        this.zzbqf = "top-right";
        this.zzbqg = true;
        this.zzbqh = 0;
        this.zzbqi = 0;
        this.zzaif = -1;
        this.zzbqj = 0;
        this.zzbqk = 0;
        this.zzaie = -1;
        this.zzail = new Object();
        this.zzbgf = zzlhVar;
        this.zzbpu = zzlhVar.zzue();
        this.zzbqn = zzhgVar;
    }

    private void zzi(Map<String, String> map) {
        if (!TextUtils.isEmpty(map.get(VastIconXmlManager.WIDTH))) {
            this.zzaie = com.google.android.gms.ads.internal.zzu.zzfq().zzcp(map.get(VastIconXmlManager.WIDTH));
        }
        if (!TextUtils.isEmpty(map.get(VastIconXmlManager.HEIGHT))) {
            this.zzaif = com.google.android.gms.ads.internal.zzu.zzfq().zzcp(map.get(VastIconXmlManager.HEIGHT));
        }
        if (!TextUtils.isEmpty(map.get("offsetX"))) {
            this.zzbqj = com.google.android.gms.ads.internal.zzu.zzfq().zzcp(map.get("offsetX"));
        }
        if (!TextUtils.isEmpty(map.get("offsetY"))) {
            this.zzbqk = com.google.android.gms.ads.internal.zzu.zzfq().zzcp(map.get("offsetY"));
        }
        if (!TextUtils.isEmpty(map.get("allowOffscreen"))) {
            this.zzbqg = Boolean.parseBoolean(map.get("allowOffscreen"));
        }
        String str = map.get("customClosePosition");
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.zzbqf = str;
    }

    private int[] zzmv() {
        if (!zzmx()) {
            return null;
        }
        if (this.zzbqg) {
            return new int[]{this.zzbqh + this.zzbqj, this.zzbqi + this.zzbqk};
        }
        int[] zzi = com.google.android.gms.ads.internal.zzu.zzfq().zzi(this.zzbpu);
        int[] zzk = com.google.android.gms.ads.internal.zzu.zzfq().zzk(this.zzbpu);
        int i = zzi[0];
        int i2 = this.zzbqh + this.zzbqj;
        int i3 = this.zzbqi + this.zzbqk;
        if (i2 < 0) {
            i2 = 0;
        } else if (this.zzaie + i2 > i) {
            i2 = i - this.zzaie;
        }
        if (i3 < zzk[0]) {
            i3 = zzk[0];
        } else if (this.zzaif + i3 > zzk[1]) {
            i3 = zzk[1] - this.zzaif;
        }
        return new int[]{i2, i3};
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public void execute(Map<String, String> map) {
        char c;
        synchronized (this.zzail) {
            if (this.zzbpu == null) {
                zzbt("Not an activity context. Cannot resize.");
                return;
            }
            if (this.zzbgf.zzdn() == null) {
                zzbt("Webview is not yet available, size is not set.");
                return;
            }
            if (this.zzbgf.zzdn().zzaus) {
                zzbt("Is interstitial. Cannot resize an interstitial.");
                return;
            }
            if (this.zzbgf.zzun()) {
                zzbt("Cannot resize an expanded banner.");
                return;
            }
            zzi(map);
            if (!zzmu()) {
                zzbt("Invalid width and height options. Cannot resize.");
                return;
            }
            Window window = this.zzbpu.getWindow();
            if (window == null || window.getDecorView() == null) {
                zzbt("Activity context is not ready, cannot get window or decor view.");
                return;
            }
            int[] zzmv = zzmv();
            if (zzmv == null) {
                zzbt("Resize location out of screen or close button is not visible.");
                return;
            }
            int zza = com.google.android.gms.ads.internal.client.zzm.zziw().zza(this.zzbpu, this.zzaie);
            int zza2 = com.google.android.gms.ads.internal.client.zzm.zziw().zza(this.zzbpu, this.zzaif);
            ViewParent parent = this.zzbgf.getView().getParent();
            if (parent == null || !(parent instanceof ViewGroup)) {
                zzbt("Webview is detached, probably in the middle of a resize or expand.");
                return;
            }
            ((ViewGroup) parent).removeView(this.zzbgf.getView());
            if (this.zzbqo == null) {
                this.zzbqq = (ViewGroup) parent;
                Bitmap zzk = com.google.android.gms.ads.internal.zzu.zzfq().zzk(this.zzbgf.getView());
                this.zzbql = new ImageView(this.zzbpu);
                this.zzbql.setImageBitmap(zzk);
                this.zzani = this.zzbgf.zzdn();
                this.zzbqq.addView(this.zzbql);
            } else {
                this.zzbqo.dismiss();
            }
            this.zzbqp = new RelativeLayout(this.zzbpu);
            this.zzbqp.setBackgroundColor(0);
            this.zzbqp.setLayoutParams(new ViewGroup.LayoutParams(zza, zza2));
            this.zzbqo = com.google.android.gms.ads.internal.zzu.zzfq().zza((View) this.zzbqp, zza, zza2, false);
            this.zzbqo.setOutsideTouchable(true);
            this.zzbqo.setTouchable(true);
            this.zzbqo.setClippingEnabled(!this.zzbqg);
            this.zzbqp.addView(this.zzbgf.getView(), -1, -1);
            this.zzbqm = new LinearLayout(this.zzbpu);
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(com.google.android.gms.ads.internal.client.zzm.zziw().zza(this.zzbpu, 50), com.google.android.gms.ads.internal.client.zzm.zziw().zza(this.zzbpu, 50));
            String str = this.zzbqf;
            switch (str.hashCode()) {
                case -1364013995:
                    if (str.equals("center")) {
                        c = 2;
                        break;
                    }
                    c = 65535;
                    break;
                case -1012429441:
                    if (str.equals("top-left")) {
                        c = 0;
                        break;
                    }
                    c = 65535;
                    break;
                case -655373719:
                    if (str.equals("bottom-left")) {
                        c = 3;
                        break;
                    }
                    c = 65535;
                    break;
                case 1163912186:
                    if (str.equals("bottom-right")) {
                        c = 5;
                        break;
                    }
                    c = 65535;
                    break;
                case 1288627767:
                    if (str.equals("bottom-center")) {
                        c = 4;
                        break;
                    }
                    c = 65535;
                    break;
                case 1755462605:
                    if (str.equals("top-center")) {
                        c = 1;
                        break;
                    }
                    c = 65535;
                    break;
                default:
                    c = 65535;
                    break;
            }
            switch (c) {
                case 0:
                    layoutParams.addRule(10);
                    layoutParams.addRule(9);
                    break;
                case 1:
                    layoutParams.addRule(10);
                    layoutParams.addRule(14);
                    break;
                case 2:
                    layoutParams.addRule(13);
                    break;
                case 3:
                    layoutParams.addRule(12);
                    layoutParams.addRule(9);
                    break;
                case 4:
                    layoutParams.addRule(12);
                    layoutParams.addRule(14);
                    break;
                case 5:
                    layoutParams.addRule(12);
                    layoutParams.addRule(11);
                    break;
                default:
                    layoutParams.addRule(10);
                    layoutParams.addRule(11);
                    break;
            }
            this.zzbqm.setOnClickListener(new View.OnClickListener() { // from class: com.google.android.gms.internal.zzha.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    zzha.this.zzs(true);
                }
            });
            this.zzbqm.setContentDescription("Close button");
            this.zzbqp.addView(this.zzbqm, layoutParams);
            try {
                this.zzbqo.showAtLocation(window.getDecorView(), 0, com.google.android.gms.ads.internal.client.zzm.zziw().zza(this.zzbpu, zzmv[0]), com.google.android.gms.ads.internal.client.zzm.zziw().zza(this.zzbpu, zzmv[1]));
                zzb(zzmv[0], zzmv[1]);
                this.zzbgf.zza(new AdSizeParcel(this.zzbpu, new AdSize(this.zzaie, this.zzaif)));
                zzc(zzmv[0], zzmv[1]);
                zzbv("resized");
            } catch (RuntimeException e) {
                String valueOf = String.valueOf(e.getMessage());
                zzbt(valueOf.length() != 0 ? "Cannot show popup window: ".concat(valueOf) : new String("Cannot show popup window: "));
                this.zzbqp.removeView(this.zzbgf.getView());
                if (this.zzbqq != null) {
                    this.zzbqq.removeView(this.zzbql);
                    this.zzbqq.addView(this.zzbgf.getView());
                    this.zzbgf.zza(this.zzani);
                }
            }
        }
    }

    public void zza(int i, int i2, boolean z) {
        synchronized (this.zzail) {
            this.zzbqh = i;
            this.zzbqi = i2;
            if (this.zzbqo != null && z) {
                int[] zzmv = zzmv();
                if (zzmv != null) {
                    this.zzbqo.update(com.google.android.gms.ads.internal.client.zzm.zziw().zza(this.zzbpu, zzmv[0]), com.google.android.gms.ads.internal.client.zzm.zziw().zza(this.zzbpu, zzmv[1]), this.zzbqo.getWidth(), this.zzbqo.getHeight());
                    zzc(zzmv[0], zzmv[1]);
                } else {
                    zzs(true);
                }
            }
        }
    }

    void zzb(int i, int i2) {
        if (this.zzbqn != null) {
            this.zzbqn.zza(i, i2, this.zzaie, this.zzaif);
        }
    }

    void zzc(int i, int i2) {
        zzb(i, i2 - com.google.android.gms.ads.internal.zzu.zzfq().zzk(this.zzbpu)[0], this.zzaie, this.zzaif);
    }

    public void zzd(int i, int i2) {
        this.zzbqh = i;
        this.zzbqi = i2;
    }

    boolean zzmu() {
        return this.zzaie > -1 && this.zzaif > -1;
    }

    public boolean zzmw() {
        boolean z;
        synchronized (this.zzail) {
            z = this.zzbqo != null;
        }
        return z;
    }

    boolean zzmx() {
        int i;
        int i2;
        int[] zzi = com.google.android.gms.ads.internal.zzu.zzfq().zzi(this.zzbpu);
        int[] zzk = com.google.android.gms.ads.internal.zzu.zzfq().zzk(this.zzbpu);
        int i3 = zzi[0];
        int i4 = zzi[1];
        if (this.zzaie < 50 || this.zzaie > i3) {
            zzkd.zzcx("Width is too small or too large.");
            return false;
        }
        if (this.zzaif < 50 || this.zzaif > i4) {
            zzkd.zzcx("Height is too small or too large.");
            return false;
        }
        if (this.zzaif == i4 && this.zzaie == i3) {
            zzkd.zzcx("Cannot resize to a full-screen ad.");
            return false;
        }
        if (this.zzbqg) {
            switch (this.zzbqf) {
                case "top-left":
                    i = this.zzbqj + this.zzbqh;
                    i2 = this.zzbqi + this.zzbqk;
                    break;
                case "top-center":
                    i = ((this.zzbqh + this.zzbqj) + (this.zzaie / 2)) - 25;
                    i2 = this.zzbqi + this.zzbqk;
                    break;
                case "center":
                    i = ((this.zzbqh + this.zzbqj) + (this.zzaie / 2)) - 25;
                    i2 = ((this.zzbqi + this.zzbqk) + (this.zzaif / 2)) - 25;
                    break;
                case "bottom-left":
                    i = this.zzbqj + this.zzbqh;
                    i2 = ((this.zzbqi + this.zzbqk) + this.zzaif) - 50;
                    break;
                case "bottom-center":
                    i = ((this.zzbqh + this.zzbqj) + (this.zzaie / 2)) - 25;
                    i2 = ((this.zzbqi + this.zzbqk) + this.zzaif) - 50;
                    break;
                case "bottom-right":
                    i = ((this.zzbqh + this.zzbqj) + this.zzaie) - 50;
                    i2 = ((this.zzbqi + this.zzbqk) + this.zzaif) - 50;
                    break;
                default:
                    i = ((this.zzbqh + this.zzbqj) + this.zzaie) - 50;
                    i2 = this.zzbqi + this.zzbqk;
                    break;
            }
            if (i < 0 || i + 50 > i3 || i2 < zzk[0] || i2 + 50 > zzk[1]) {
                return false;
            }
        }
        return true;
    }

    public void zzs(boolean z) {
        synchronized (this.zzail) {
            if (this.zzbqo != null) {
                this.zzbqo.dismiss();
                this.zzbqp.removeView(this.zzbgf.getView());
                if (this.zzbqq != null) {
                    this.zzbqq.removeView(this.zzbql);
                    this.zzbqq.addView(this.zzbgf.getView());
                    this.zzbgf.zza(this.zzani);
                }
                if (z) {
                    zzbv("default");
                    if (this.zzbqn != null) {
                        this.zzbqn.zzej();
                    }
                }
                this.zzbqo = null;
                this.zzbqp = null;
                this.zzbqq = null;
                this.zzbqm = null;
            }
        }
    }
}
