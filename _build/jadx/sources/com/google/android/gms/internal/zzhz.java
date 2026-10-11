package com.google.android.gms.internal;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.os.AsyncTask;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.view.View;
import android.webkit.WebView;
import com.facebook.ads.AudienceNetworkActivity;
import com.google.android.gms.ads.internal.request.AdResponseParcel;
import com.google.android.gms.internal.zzli;

@zzin
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class zzhz implements Runnable {
    private final int zzaie;
    private final int zzaif;
    protected final zzlh zzbgf;
    private final Handler zzbxx;
    private final long zzbxy;
    private long zzbxz;
    private zzli.zza zzbya;
    protected boolean zzbyb;
    protected boolean zzbyc;

    protected final class zza extends AsyncTask<Void, Void, Boolean> {
        private final WebView zzbyd;
        private Bitmap zzbye;

        public zza(WebView webView) {
            this.zzbyd = webView;
        }

        @Override // android.os.AsyncTask
        protected synchronized void onPreExecute() {
            this.zzbye = Bitmap.createBitmap(zzhz.this.zzaie, zzhz.this.zzaif, Bitmap.Config.ARGB_8888);
            this.zzbyd.setVisibility(0);
            this.zzbyd.measure(View.MeasureSpec.makeMeasureSpec(zzhz.this.zzaie, 0), View.MeasureSpec.makeMeasureSpec(zzhz.this.zzaif, 0));
            this.zzbyd.layout(0, 0, zzhz.this.zzaie, zzhz.this.zzaif);
            this.zzbyd.draw(new Canvas(this.zzbye));
            this.zzbyd.invalidate();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        /* renamed from: zza, reason: merged with bridge method [inline-methods] */
        public synchronized Boolean doInBackground(Void... voidArr) {
            boolean z;
            int width = this.zzbye.getWidth();
            int height = this.zzbye.getHeight();
            if (width == 0 || height == 0) {
                z = false;
            } else {
                int i = 0;
                for (int i2 = 0; i2 < width; i2 += 10) {
                    for (int i3 = 0; i3 < height; i3 += 10) {
                        if (this.zzbye.getPixel(i2, i3) != 0) {
                            i++;
                        }
                    }
                }
                z = Boolean.valueOf(((double) i) / (((double) (width * height)) / 100.0d) > 0.1d);
            }
            return z;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        /* renamed from: zza, reason: merged with bridge method [inline-methods] */
        public void onPostExecute(Boolean bool) {
            zzhz.zzc(zzhz.this);
            if (bool.booleanValue() || zzhz.this.zzqb() || zzhz.this.zzbxz <= 0) {
                zzhz.this.zzbyc = bool.booleanValue();
                zzhz.this.zzbya.zza(zzhz.this.zzbgf, true);
            } else if (zzhz.this.zzbxz > 0) {
                if (zzkd.zzaz(2)) {
                    zzkd.zzcv("Ad not detected, scheduling another run.");
                }
                zzhz.this.zzbxx.postDelayed(zzhz.this, zzhz.this.zzbxy);
            }
        }
    }

    public zzhz(zzli.zza zzaVar, zzlh zzlhVar, int i, int i2) {
        this(zzaVar, zzlhVar, i, i2, 200L, 50L);
    }

    public zzhz(zzli.zza zzaVar, zzlh zzlhVar, int i, int i2, long j, long j2) {
        this.zzbxy = j;
        this.zzbxz = j2;
        this.zzbxx = new Handler(Looper.getMainLooper());
        this.zzbgf = zzlhVar;
        this.zzbya = zzaVar;
        this.zzbyb = false;
        this.zzbyc = false;
        this.zzaif = i2;
        this.zzaie = i;
    }

    static /* synthetic */ long zzc(zzhz zzhzVar) {
        long j = zzhzVar.zzbxz - 1;
        zzhzVar.zzbxz = j;
        return j;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.zzbgf == null || zzqb()) {
            this.zzbya.zza(this.zzbgf, true);
        } else {
            new zza(this.zzbgf.getWebView()).execute(new Void[0]);
        }
    }

    public void zza(AdResponseParcel adResponseParcel) {
        zza(adResponseParcel, new zzlr(this, this.zzbgf, adResponseParcel.zzccf));
    }

    public void zza(AdResponseParcel adResponseParcel, zzlr zzlrVar) {
        this.zzbgf.setWebViewClient(zzlrVar);
        this.zzbgf.loadDataWithBaseURL(TextUtils.isEmpty(adResponseParcel.zzbto) ? null : com.google.android.gms.ads.internal.zzu.zzfq().zzco(adResponseParcel.zzbto), adResponseParcel.body, AudienceNetworkActivity.WEBVIEW_MIME_TYPE, "UTF-8", null);
    }

    public void zzpz() {
        this.zzbxx.postDelayed(this, this.zzbxy);
    }

    public synchronized void zzqa() {
        this.zzbyb = true;
    }

    public synchronized boolean zzqb() {
        return this.zzbyb;
    }

    public boolean zzqc() {
        return this.zzbyc;
    }
}
