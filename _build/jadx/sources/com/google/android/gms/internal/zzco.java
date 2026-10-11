package com.google.android.gms.internal;

import android.R;
import android.annotation.TargetApi;
import android.app.Activity;
import android.app.ActivityManager;
import android.content.Context;
import android.graphics.Rect;
import android.os.PowerManager;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.ValueCallback;
import android.webkit.WebView;
import android.widget.EditText;
import android.widget.TextView;
import org.apache.commons.io.IOUtils;
import org.json.JSONException;
import org.json.JSONObject;

@TargetApi(14)
@zzin
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class zzco extends Thread {
    private final zzcn zzask;
    private final zzcm zzasl;
    private final zzim zzasm;
    private boolean mStarted = false;
    private boolean zzasj = false;
    private boolean zzbl = false;
    private final Object zzail = new Object();
    private final int zzarv = zzdc.zzazi.get().intValue();
    private final int zzaso = zzdc.zzazj.get().intValue();
    private final int zzarx = zzdc.zzazk.get().intValue();
    private final int zzasp = zzdc.zzazl.get().intValue();
    private final int zzasn = zzdc.zzazm.get().intValue();

    @zzin
    class zza {
        final int zzasx;
        final int zzasy;

        zza(int i, int i2) {
            this.zzasx = i;
            this.zzasy = i2;
        }
    }

    public zzco(zzcn zzcnVar, zzcm zzcmVar, zzim zzimVar) {
        this.zzask = zzcnVar;
        this.zzasl = zzcmVar;
        this.zzasm = zzimVar;
        setName("ContentFetchTask");
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        while (true) {
            try {
                if (zzia()) {
                    Activity activity = this.zzask.getActivity();
                    if (activity == null) {
                        zzkd.zzcv("ContentFetchThread: no activity. Sleeping.");
                        zzic();
                    } else {
                        zza(activity);
                    }
                } else {
                    zzkd.zzcv("ContentFetchTask: sleeping");
                    zzic();
                }
                Thread.sleep(this.zzasn * 1000);
            } catch (Throwable th) {
                zzkd.zzb("Error in ContentFetchTask", th);
                this.zzasm.zza(th, true);
            }
            synchronized (this.zzail) {
                while (this.zzasj) {
                    try {
                        zzkd.zzcv("ContentFetchTask: waiting");
                        this.zzail.wait();
                    } catch (InterruptedException e) {
                    }
                }
            }
        }
    }

    public void wakeup() {
        synchronized (this.zzail) {
            this.zzasj = false;
            this.zzail.notifyAll();
            zzkd.zzcv("ContentFetchThread: wakeup");
        }
    }

    zza zza(@Nullable View view, zzcl zzclVar) {
        if (view == null) {
            return new zza(0, 0);
        }
        boolean globalVisibleRect = view.getGlobalVisibleRect(new Rect());
        if ((view instanceof TextView) && !(view instanceof EditText)) {
            CharSequence text = ((TextView) view).getText();
            if (TextUtils.isEmpty(text)) {
                return new zza(0, 0);
            }
            zzclVar.zze(text.toString(), globalVisibleRect);
            return new zza(1, 0);
        }
        if ((view instanceof WebView) && !(view instanceof zzlh)) {
            zzclVar.zzhv();
            return zza((WebView) view, zzclVar, globalVisibleRect) ? new zza(0, 1) : new zza(0, 0);
        }
        if (!(view instanceof ViewGroup)) {
            return new zza(0, 0);
        }
        ViewGroup viewGroup = (ViewGroup) view;
        int i = 0;
        int i2 = 0;
        for (int i3 = 0; i3 < viewGroup.getChildCount(); i3++) {
            zza zza2 = zza(viewGroup.getChildAt(i3), zzclVar);
            i2 += zza2.zzasx;
            i += zza2.zzasy;
        }
        return new zza(i2, i);
    }

    void zza(@Nullable Activity activity) {
        if (activity == null) {
            return;
        }
        View view = null;
        try {
            if (activity.getWindow() != null && activity.getWindow().getDecorView() != null) {
                view = activity.getWindow().getDecorView().findViewById(R.id.content);
            }
        } catch (Throwable th) {
            zzkd.zzcv("Failed getting root view of activity. Content not extracted.");
        }
        if (view != null) {
            zze(view);
        }
    }

    void zza(zzcl zzclVar, WebView webView, String str, boolean z) {
        zzclVar.zzhu();
        try {
            if (!TextUtils.isEmpty(str)) {
                String optString = new JSONObject(str).optString("text");
                if (TextUtils.isEmpty(webView.getTitle())) {
                    zzclVar.zzd(optString, z);
                } else {
                    String valueOf = String.valueOf(webView.getTitle());
                    zzclVar.zzd(new StringBuilder(String.valueOf(valueOf).length() + 1 + String.valueOf(optString).length()).append(valueOf).append(IOUtils.LINE_SEPARATOR_UNIX).append(optString).toString(), z);
                }
            }
            if (zzclVar.zzhq()) {
                this.zzasl.zzb(zzclVar);
            }
        } catch (JSONException e) {
            zzkd.zzcv("Json string may be malformed.");
        } catch (Throwable th) {
            zzkd.zza("Failed to get webview content.", th);
            this.zzasm.zza(th, true);
        }
    }

    boolean zza(ActivityManager.RunningAppProcessInfo runningAppProcessInfo) {
        return runningAppProcessInfo.importance == 100;
    }

    @TargetApi(19)
    boolean zza(final WebView webView, final zzcl zzclVar, final boolean z) {
        if (!com.google.android.gms.common.util.zzs.zzavu()) {
            return false;
        }
        zzclVar.zzhv();
        webView.post(new Runnable() { // from class: com.google.android.gms.internal.zzco.2
            ValueCallback<String> zzass = new ValueCallback<String>() { // from class: com.google.android.gms.internal.zzco.2.1
                @Override // android.webkit.ValueCallback
                /* renamed from: zzz, reason: merged with bridge method [inline-methods] */
                public void onReceiveValue(String str) {
                    zzco.this.zza(zzclVar, webView, str, z);
                }
            };

            @Override // java.lang.Runnable
            public void run() {
                if (webView.getSettings().getJavaScriptEnabled()) {
                    try {
                        webView.evaluateJavascript("(function() { return  {text:document.body.innerText}})();", this.zzass);
                    } catch (Throwable th) {
                        this.zzass.onReceiveValue("");
                    }
                }
            }
        });
        return true;
    }

    boolean zze(@Nullable final View view) {
        if (view == null) {
            return false;
        }
        view.post(new Runnable() { // from class: com.google.android.gms.internal.zzco.1
            @Override // java.lang.Runnable
            public void run() {
                zzco.this.zzf(view);
            }
        });
        return true;
    }

    void zzf(View view) {
        try {
            zzcl zzclVar = new zzcl(this.zzarv, this.zzaso, this.zzarx, this.zzasp);
            zza zza2 = zza(view, zzclVar);
            zzclVar.zzhw();
            if (zza2.zzasx == 0 && zza2.zzasy == 0) {
                return;
            }
            if (zza2.zzasy == 0 && zzclVar.zzhx() == 0) {
                return;
            }
            if (zza2.zzasy == 0 && this.zzasl.zza(zzclVar)) {
                return;
            }
            this.zzasl.zzc(zzclVar);
        } catch (Exception e) {
            zzkd.zzb("Exception in fetchContentOnUIThread", e);
            this.zzasm.zza(e, true);
        }
    }

    public void zzhz() {
        synchronized (this.zzail) {
            if (this.mStarted) {
                zzkd.zzcv("Content hash thread already started, quiting...");
            } else {
                this.mStarted = true;
                start();
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x0045, code lost:
    
        if (zza(r0) == false) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x004b, code lost:
    
        if (r1.inKeyguardRestrictedInputMode() != false) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0051, code lost:
    
        if (zzj(r3) == false) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0053, code lost:
    
        return true;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    boolean zzia() {
        /*
            r7 = this;
            r2 = 0
            com.google.android.gms.internal.zzcn r0 = r7.zzask     // Catch: java.lang.Throwable -> L57
            android.content.Context r3 = r0.getContext()     // Catch: java.lang.Throwable -> L57
            if (r3 != 0) goto Lb
            r0 = r2
        La:
            return r0
        Lb:
            java.lang.String r0 = "activity"
            java.lang.Object r0 = r3.getSystemService(r0)     // Catch: java.lang.Throwable -> L57
            android.app.ActivityManager r0 = (android.app.ActivityManager) r0     // Catch: java.lang.Throwable -> L57
            java.lang.String r1 = "keyguard"
            java.lang.Object r1 = r3.getSystemService(r1)     // Catch: java.lang.Throwable -> L57
            android.app.KeyguardManager r1 = (android.app.KeyguardManager) r1     // Catch: java.lang.Throwable -> L57
            if (r0 == 0) goto L1f
            if (r1 != 0) goto L21
        L1f:
            r0 = r2
            goto La
        L21:
            java.util.List r0 = r0.getRunningAppProcesses()     // Catch: java.lang.Throwable -> L57
            if (r0 != 0) goto L29
            r0 = r2
            goto La
        L29:
            java.util.Iterator r4 = r0.iterator()     // Catch: java.lang.Throwable -> L57
        L2d:
            boolean r0 = r4.hasNext()     // Catch: java.lang.Throwable -> L57
            if (r0 == 0) goto L55
            java.lang.Object r0 = r4.next()     // Catch: java.lang.Throwable -> L57
            android.app.ActivityManager$RunningAppProcessInfo r0 = (android.app.ActivityManager.RunningAppProcessInfo) r0     // Catch: java.lang.Throwable -> L57
            int r5 = android.os.Process.myPid()     // Catch: java.lang.Throwable -> L57
            int r6 = r0.pid     // Catch: java.lang.Throwable -> L57
            if (r5 != r6) goto L2d
            boolean r0 = r7.zza(r0)     // Catch: java.lang.Throwable -> L57
            if (r0 == 0) goto L55
            boolean r0 = r1.inKeyguardRestrictedInputMode()     // Catch: java.lang.Throwable -> L57
            if (r0 != 0) goto L55
            boolean r0 = r7.zzj(r3)     // Catch: java.lang.Throwable -> L57
            if (r0 == 0) goto L55
            r0 = 1
            goto La
        L55:
            r0 = r2
            goto La
        L57:
            r0 = move-exception
            r0 = r2
            goto La
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzco.zzia():boolean");
    }

    public zzcl zzib() {
        return this.zzasl.zzhy();
    }

    public void zzic() {
        synchronized (this.zzail) {
            this.zzasj = true;
            zzkd.zzcv(new StringBuilder(42).append("ContentFetchThread: paused, mPause = ").append(this.zzasj).toString());
        }
    }

    public boolean zzid() {
        return this.zzasj;
    }

    boolean zzj(Context context) {
        PowerManager powerManager = (PowerManager) context.getSystemService("power");
        if (powerManager == null) {
            return false;
        }
        return powerManager.isScreenOn();
    }
}
