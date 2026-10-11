package com.google.android.gms.internal;

import android.app.KeyguardManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.Rect;
import android.os.PowerManager;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.WindowManager;
import com.google.android.gms.ads.internal.client.AdSizeParcel;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import java.lang.ref.WeakReference;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.UUID;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@zzin
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public abstract class zzcd implements ViewTreeObserver.OnGlobalLayoutListener, ViewTreeObserver.OnScrollChangedListener {
    private final WeakReference<zzju> zzaqh;
    private final zzck zzaqj;
    protected final zzcf zzaqk;
    private final Context zzaql;
    private final WindowManager zzaqm;
    private final PowerManager zzaqn;
    private final KeyguardManager zzaqo;

    @Nullable
    private zzch zzaqp;
    private boolean zzaqq;
    private boolean zzaqt;

    @Nullable
    BroadcastReceiver zzaqv;
    protected final Object zzail = new Object();
    private boolean zzane = false;
    private boolean zzaqr = false;
    private final HashSet<zzce> zzaqw = new HashSet<>();
    private final zzep zzaqx = new zzep() { // from class: com.google.android.gms.internal.zzcd.2
        @Override // com.google.android.gms.internal.zzep
        public void zza(zzlh zzlhVar, Map<String, String> map) {
            if (zzcd.this.zzb(map)) {
                zzcd.this.zza(zzlhVar.getView(), map);
            }
        }
    };
    private final zzep zzaqy = new zzep() { // from class: com.google.android.gms.internal.zzcd.3
        @Override // com.google.android.gms.internal.zzep
        public void zza(zzlh zzlhVar, Map<String, String> map) {
            if (zzcd.this.zzb(map)) {
                String valueOf = String.valueOf(zzcd.this.zzaqk.zzhn());
                zzkd.zzcv(valueOf.length() != 0 ? "Received request to untrack: ".concat(valueOf) : new String("Received request to untrack: "));
                zzcd.this.destroy();
            }
        }
    };
    private final zzep zzaqz = new zzep() { // from class: com.google.android.gms.internal.zzcd.4
        @Override // com.google.android.gms.internal.zzep
        public void zza(zzlh zzlhVar, Map<String, String> map) {
            if (zzcd.this.zzb(map) && map.containsKey("isVisible")) {
                zzcd.this.zzj(Boolean.valueOf("1".equals(map.get("isVisible")) || "true".equals(map.get("isVisible"))).booleanValue());
            }
        }
    };
    private WeakReference<ViewTreeObserver> zzaqi = new WeakReference<>(null);
    private boolean zzaqs = true;
    private boolean zzaqu = false;
    private zzkr zzaqb = new zzkr(200);

    public static class zza implements zzck {
        private WeakReference<com.google.android.gms.ads.internal.formats.zzh> zzarb;

        public zza(com.google.android.gms.ads.internal.formats.zzh zzhVar) {
            this.zzarb = new WeakReference<>(zzhVar);
        }

        @Override // com.google.android.gms.internal.zzck
        @Nullable
        public View zzhh() {
            com.google.android.gms.ads.internal.formats.zzh zzhVar = this.zzarb.get();
            if (zzhVar != null) {
                return zzhVar.zzlc();
            }
            return null;
        }

        @Override // com.google.android.gms.internal.zzck
        public boolean zzhi() {
            return this.zzarb.get() == null;
        }

        @Override // com.google.android.gms.internal.zzck
        public zzck zzhj() {
            return new zzb(this.zzarb.get());
        }
    }

    public static class zzb implements zzck {
        private com.google.android.gms.ads.internal.formats.zzh zzarc;

        public zzb(com.google.android.gms.ads.internal.formats.zzh zzhVar) {
            this.zzarc = zzhVar;
        }

        @Override // com.google.android.gms.internal.zzck
        public View zzhh() {
            return this.zzarc.zzlc();
        }

        @Override // com.google.android.gms.internal.zzck
        public boolean zzhi() {
            return this.zzarc == null;
        }

        @Override // com.google.android.gms.internal.zzck
        public zzck zzhj() {
            return this;
        }
    }

    public static class zzc implements zzck {

        @Nullable
        private final View mView;

        @Nullable
        private final zzju zzard;

        public zzc(View view, zzju zzjuVar) {
            this.mView = view;
            this.zzard = zzjuVar;
        }

        @Override // com.google.android.gms.internal.zzck
        public View zzhh() {
            return this.mView;
        }

        @Override // com.google.android.gms.internal.zzck
        public boolean zzhi() {
            return this.zzard == null || this.mView == null;
        }

        @Override // com.google.android.gms.internal.zzck
        public zzck zzhj() {
            return this;
        }
    }

    public static class zzd implements zzck {
        private final WeakReference<View> zzare;
        private final WeakReference<zzju> zzarf;

        public zzd(View view, zzju zzjuVar) {
            this.zzare = new WeakReference<>(view);
            this.zzarf = new WeakReference<>(zzjuVar);
        }

        @Override // com.google.android.gms.internal.zzck
        public View zzhh() {
            return this.zzare.get();
        }

        @Override // com.google.android.gms.internal.zzck
        public boolean zzhi() {
            return this.zzare.get() == null || this.zzarf.get() == null;
        }

        @Override // com.google.android.gms.internal.zzck
        public zzck zzhj() {
            return new zzc(this.zzare.get(), this.zzarf.get());
        }
    }

    public zzcd(Context context, AdSizeParcel adSizeParcel, zzju zzjuVar, VersionInfoParcel versionInfoParcel, zzck zzckVar) {
        this.zzaqh = new WeakReference<>(zzjuVar);
        this.zzaqj = zzckVar;
        this.zzaqk = new zzcf(UUID.randomUUID().toString(), versionInfoParcel, adSizeParcel.zzaur, zzjuVar.zzcie, zzjuVar.zzho(), adSizeParcel.zzauu);
        this.zzaqm = (WindowManager) context.getSystemService("window");
        this.zzaqn = (PowerManager) context.getApplicationContext().getSystemService("power");
        this.zzaqo = (KeyguardManager) context.getSystemService("keyguard");
        this.zzaql = context;
    }

    protected void destroy() {
        synchronized (this.zzail) {
            zzhc();
            zzgx();
            this.zzaqs = false;
            zzgz();
        }
    }

    boolean isScreenOn() {
        return this.zzaqn.isScreenOn();
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public void onGlobalLayout() {
        zzk(2);
    }

    @Override // android.view.ViewTreeObserver.OnScrollChangedListener
    public void onScrollChanged() {
        zzk(1);
    }

    public void pause() {
        synchronized (this.zzail) {
            this.zzane = true;
            zzk(3);
        }
    }

    public void resume() {
        synchronized (this.zzail) {
            this.zzane = false;
            zzk(3);
        }
    }

    public void stop() {
        synchronized (this.zzail) {
            this.zzaqr = true;
            zzk(3);
        }
    }

    protected int zza(int i, DisplayMetrics displayMetrics) {
        return (int) (i / displayMetrics.density);
    }

    protected void zza(View view, Map<String, String> map) {
        zzk(3);
    }

    public void zza(zzce zzceVar) {
        this.zzaqw.add(zzceVar);
    }

    public void zza(zzch zzchVar) {
        synchronized (this.zzail) {
            this.zzaqp = zzchVar;
        }
    }

    protected void zza(JSONObject jSONObject) {
        try {
            JSONArray jSONArray = new JSONArray();
            JSONObject jSONObject2 = new JSONObject();
            jSONArray.put(jSONObject);
            jSONObject2.put("units", jSONArray);
            zzb(jSONObject2);
        } catch (Throwable th) {
            zzkd.zzb("Skipping active view message.", th);
        }
    }

    protected abstract void zzb(JSONObject jSONObject);

    protected boolean zzb(@Nullable Map<String, String> map) {
        if (map == null) {
            return false;
        }
        String str = map.get("hashCode");
        return !TextUtils.isEmpty(str) && str.equals(this.zzaqk.zzhn());
    }

    protected void zzc(zzft zzftVar) {
        zzftVar.zza("/updateActiveView", this.zzaqx);
        zzftVar.zza("/untrackActiveViewUnit", this.zzaqy);
        zzftVar.zza("/visibilityChanged", this.zzaqz);
    }

    protected JSONObject zzd(@Nullable View view) throws JSONException {
        if (view == null) {
            return zzhf();
        }
        boolean isAttachedToWindow = com.google.android.gms.ads.internal.zzu.zzfs().isAttachedToWindow(view);
        int[] iArr = new int[2];
        int[] iArr2 = new int[2];
        try {
            view.getLocationOnScreen(iArr);
            view.getLocationInWindow(iArr2);
        } catch (Exception e) {
            zzkd.zzb("Failure getting view location.", e);
        }
        DisplayMetrics displayMetrics = view.getContext().getResources().getDisplayMetrics();
        Rect rect = new Rect();
        rect.left = iArr[0];
        rect.top = iArr[1];
        rect.right = rect.left + view.getWidth();
        rect.bottom = rect.top + view.getHeight();
        Rect rect2 = new Rect();
        rect2.right = this.zzaqm.getDefaultDisplay().getWidth();
        rect2.bottom = this.zzaqm.getDefaultDisplay().getHeight();
        Rect rect3 = new Rect();
        boolean globalVisibleRect = view.getGlobalVisibleRect(rect3, null);
        Rect rect4 = new Rect();
        boolean localVisibleRect = view.getLocalVisibleRect(rect4);
        Rect rect5 = new Rect();
        view.getHitRect(rect5);
        JSONObject zzhd = zzhd();
        zzhd.put("windowVisibility", view.getWindowVisibility()).put("isAttachedToWindow", isAttachedToWindow).put("viewBox", new JSONObject().put("top", zza(rect2.top, displayMetrics)).put("bottom", zza(rect2.bottom, displayMetrics)).put("left", zza(rect2.left, displayMetrics)).put("right", zza(rect2.right, displayMetrics))).put("adBox", new JSONObject().put("top", zza(rect.top, displayMetrics)).put("bottom", zza(rect.bottom, displayMetrics)).put("left", zza(rect.left, displayMetrics)).put("right", zza(rect.right, displayMetrics))).put("globalVisibleBox", new JSONObject().put("top", zza(rect3.top, displayMetrics)).put("bottom", zza(rect3.bottom, displayMetrics)).put("left", zza(rect3.left, displayMetrics)).put("right", zza(rect3.right, displayMetrics))).put("globalVisibleBoxVisible", globalVisibleRect).put("localVisibleBox", new JSONObject().put("top", zza(rect4.top, displayMetrics)).put("bottom", zza(rect4.bottom, displayMetrics)).put("left", zza(rect4.left, displayMetrics)).put("right", zza(rect4.right, displayMetrics))).put("localVisibleBoxVisible", localVisibleRect).put("hitBox", new JSONObject().put("top", zza(rect5.top, displayMetrics)).put("bottom", zza(rect5.bottom, displayMetrics)).put("left", zza(rect5.left, displayMetrics)).put("right", zza(rect5.right, displayMetrics))).put("screenDensity", displayMetrics.density).put("isVisible", com.google.android.gms.ads.internal.zzu.zzfq().zza(view, this.zzaqn, this.zzaqo));
        return zzhd;
    }

    protected void zzd(zzft zzftVar) {
        zzftVar.zzb("/visibilityChanged", this.zzaqz);
        zzftVar.zzb("/untrackActiveViewUnit", this.zzaqy);
        zzftVar.zzb("/updateActiveView", this.zzaqx);
    }

    protected void zzgw() {
        synchronized (this.zzail) {
            if (this.zzaqv != null) {
                return;
            }
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.intent.action.SCREEN_ON");
            intentFilter.addAction("android.intent.action.SCREEN_OFF");
            this.zzaqv = new BroadcastReceiver() { // from class: com.google.android.gms.internal.zzcd.1
                @Override // android.content.BroadcastReceiver
                public void onReceive(Context context, Intent intent) {
                    zzcd.this.zzk(3);
                }
            };
            this.zzaql.registerReceiver(this.zzaqv, intentFilter);
        }
    }

    protected void zzgx() {
        synchronized (this.zzail) {
            if (this.zzaqv != null) {
                try {
                    this.zzaql.unregisterReceiver(this.zzaqv);
                } catch (IllegalStateException e) {
                    zzkd.zzb("Failed trying to unregister the receiver", e);
                } catch (Exception e2) {
                    com.google.android.gms.ads.internal.zzu.zzft().zzb((Throwable) e2, true);
                }
                this.zzaqv = null;
            }
        }
    }

    public void zzgy() {
        synchronized (this.zzail) {
            if (this.zzaqs) {
                this.zzaqt = true;
                try {
                    zza(zzhg());
                } catch (RuntimeException e) {
                    zzkd.zzb("Failure while processing active view data.", e);
                } catch (JSONException e2) {
                    zzkd.zzb("JSON failure while processing active view data.", e2);
                }
                String valueOf = String.valueOf(this.zzaqk.zzhn());
                zzkd.zzcv(valueOf.length() != 0 ? "Untracking ad unit: ".concat(valueOf) : new String("Untracking ad unit: "));
            }
        }
    }

    protected void zzgz() {
        if (this.zzaqp != null) {
            this.zzaqp.zza(this);
        }
    }

    public boolean zzha() {
        boolean z;
        synchronized (this.zzail) {
            z = this.zzaqs;
        }
        return z;
    }

    protected void zzhb() {
        ViewTreeObserver viewTreeObserver;
        ViewTreeObserver viewTreeObserver2;
        View zzhh = this.zzaqj.zzhj().zzhh();
        if (zzhh == null || (viewTreeObserver2 = zzhh.getViewTreeObserver()) == (viewTreeObserver = this.zzaqi.get())) {
            return;
        }
        zzhc();
        if (!this.zzaqq || (viewTreeObserver != null && viewTreeObserver.isAlive())) {
            this.zzaqq = true;
            viewTreeObserver2.addOnScrollChangedListener(this);
            viewTreeObserver2.addOnGlobalLayoutListener(this);
        }
        this.zzaqi = new WeakReference<>(viewTreeObserver2);
    }

    protected void zzhc() {
        ViewTreeObserver viewTreeObserver = this.zzaqi.get();
        if (viewTreeObserver == null || !viewTreeObserver.isAlive()) {
            return;
        }
        viewTreeObserver.removeOnScrollChangedListener(this);
        viewTreeObserver.removeGlobalOnLayoutListener(this);
    }

    protected JSONObject zzhd() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("afmaVersion", this.zzaqk.zzhl()).put("activeViewJSON", this.zzaqk.zzhm()).put("timestamp", com.google.android.gms.ads.internal.zzu.zzfu().elapsedRealtime()).put("adFormat", this.zzaqk.zzhk()).put("hashCode", this.zzaqk.zzhn()).put("isMraid", this.zzaqk.zzho()).put("isStopped", this.zzaqr).put("isPaused", this.zzane).put("isScreenOn", isScreenOn()).put("isNative", this.zzaqk.zzhp());
        return jSONObject;
    }

    protected abstract boolean zzhe();

    protected JSONObject zzhf() throws JSONException {
        return zzhd().put("isAttachedToWindow", false).put("isScreenOn", isScreenOn()).put("isVisible", false);
    }

    protected JSONObject zzhg() throws JSONException {
        JSONObject zzhd = zzhd();
        zzhd.put("doneReasonCode", "u");
        return zzhd;
    }

    protected void zzj(boolean z) {
        Iterator<zzce> it = this.zzaqw.iterator();
        while (it.hasNext()) {
            it.next().zza(this, z);
        }
    }

    protected void zzk(int i) {
        synchronized (this.zzail) {
            if (zzhe() && this.zzaqs) {
                View zzhh = this.zzaqj.zzhh();
                boolean z = zzhh != null && com.google.android.gms.ads.internal.zzu.zzfq().zza(zzhh, this.zzaqn, this.zzaqo) && zzhh.getGlobalVisibleRect(new Rect(), null);
                this.zzaqu = z;
                if (this.zzaqj.zzhi()) {
                    zzgy();
                    return;
                }
                if ((i == 1) && !this.zzaqb.tryAcquire() && z == this.zzaqu) {
                    return;
                }
                if (z || this.zzaqu || i != 1) {
                    try {
                        zza(zzd(zzhh));
                    } catch (RuntimeException | JSONException e) {
                        zzkd.zza("Active view update failed.", e);
                    }
                    zzhb();
                    zzgz();
                }
            }
        }
    }
}
