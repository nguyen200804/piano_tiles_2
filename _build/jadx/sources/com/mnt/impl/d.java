package com.mnt.impl;

import android.content.Context;
import android.content.Intent;
import android.graphics.Color;
import android.os.Build;
import android.os.Looper;
import android.webkit.WebSettings;
import android.webkit.WebView;
import com.mnt.MntBuild;
import com.mnt.impl.b.k;
import com.mnt.impl.dsp.DspHelper$BannerWebView;
import com.mnt.impl.f.d;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class d implements d.a {

    /* renamed from: a, reason: collision with root package name */
    private /* synthetic */ b f3958a;

    d(b bVar) {
        this.f3958a = bVar;
    }

    @Override // com.mnt.impl.f.d.a
    public final void a(com.mnt.impl.e.g gVar) {
        MntBuild mntBuild;
        MntBuild mntBuild2;
        if (gVar != null && gVar.f3991a == 200) {
            this.f3958a.a(true, null);
            b bVar = this.f3958a;
            mntBuild2 = this.f3958a.h;
            bVar.a(gVar, false, mntBuild2);
            return;
        }
        if (gVar == null || gVar.f3991a != 300) {
            this.f3958a.b();
            return;
        }
        b bVar2 = this.f3958a;
        mntBuild = this.f3958a.h;
        b.b(bVar2, gVar, mntBuild);
    }

    public static boolean a() {
        String str = e.mk;
        ArrayList arrayList = new ArrayList();
        for (String str2 : Arrays.asList(System.getenv(e.mn).split(e.mo))) {
            if (!str2.endsWith(e.ml)) {
                str2 = str2 + e.mm;
            }
            if (k.d(str2 + str)) {
                arrayList.add(str2);
            }
        }
        return arrayList.size() > 0;
    }

    public static boolean a(Context context, String str) {
        try {
            context.getPackageManager().getPackageInfo(str, 0);
            return true;
        } catch (Exception e) {
            return false;
        }
    }

    public static WebView a(Context context, com.mnt.impl.dsp.c cVar, String str, com.mnt.impl.dsp.b bVar) {
        DspHelper$BannerWebView dspHelper$BannerWebView = new DspHelper$BannerWebView(context.getApplicationContext(), cVar, str);
        dspHelper$BannerWebView.setOnWebViewClickListener(bVar);
        dspHelper$BannerWebView.setBackgroundColor(Color.parseColor(e.ak));
        WebSettings settings = dspHelper$BannerWebView.getSettings();
        settings.setJavaScriptEnabled(true);
        dspHelper$BannerWebView.setVerticalScrollBarEnabled(false);
        dspHelper$BannerWebView.setHorizontalScrollBarEnabled(false);
        dspHelper$BannerWebView.setScrollBarStyle(33554432);
        settings.setSupportZoom(false);
        if (Build.VERSION.SDK_INT >= 21) {
            settings.setMixedContentMode(0);
        }
        dspHelper$BannerWebView.setWebViewClient(new com.mnt.impl.dsp.a(dspHelper$BannerWebView));
        try {
            dspHelper$BannerWebView.loadDataWithBaseURL(null, cVar.d.f3973a, e.al, e.am, null);
        } catch (Throwable th) {
            th.printStackTrace();
        }
        return dspHelper$BannerWebView;
    }

    public static com.mnt.a.c a(Context context) {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            throw new IllegalStateException(e.W);
        }
        try {
            context.getPackageManager().getPackageInfo(e.X, 0);
            com.mnt.a.d dVar = new com.mnt.a.d((byte) 0);
            Intent intent = new Intent(e.Y);
            intent.setPackage(e.Z);
            try {
                if (!context.bindService(intent, dVar, 1)) {
                    throw new IOException(e.aa);
                }
                try {
                    if (dVar.f3912a) {
                        throw new IllegalStateException();
                    }
                    dVar.f3912a = true;
                    com.mnt.a.e eVar = new com.mnt.a.e(dVar.f3913b.take());
                    String a2 = eVar.a();
                    eVar.b();
                    return new com.mnt.a.c(a2);
                } catch (Exception e) {
                    throw e;
                }
            } finally {
                context.unbindService(dVar);
            }
        } catch (Exception e2) {
            throw e2;
        }
    }
}
