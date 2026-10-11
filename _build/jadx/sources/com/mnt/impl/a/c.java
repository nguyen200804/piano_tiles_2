package com.mnt.impl.a;

import android.content.Context;
import android.text.TextUtils;
import com.mnt.impl.b.k;
import com.mnt.impl.dsp.DspHelper$BannerWebView;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
final class c implements com.mnt.impl.dsp.b {

    /* renamed from: a, reason: collision with root package name */
    private /* synthetic */ DspHelper$BannerWebView f3918a;

    /* renamed from: b, reason: collision with root package name */
    private /* synthetic */ b f3919b;

    c(b bVar, DspHelper$BannerWebView dspHelper$BannerWebView) {
        this.f3919b = bVar;
        this.f3918a = dspHelper$BannerWebView;
    }

    @Override // com.mnt.impl.dsp.b
    public final void a(String str) {
        String str2;
        Context context;
        Context context2;
        Context context3;
        String str3;
        if (g.a().b() != null) {
            g.a().b().mAdListener.onAdClicked();
        }
        str2 = this.f3919b.j;
        if (!TextUtils.isEmpty(str2)) {
            context3 = this.f3919b.d;
            com.mnt.impl.i.c a2 = com.mnt.impl.i.c.a(context3);
            str3 = this.f3919b.j;
            a2.a(str3);
        }
        com.mnt.impl.dsp.c cVar = this.f3918a.f3968a;
        if (cVar == null || cVar.d.c != 5 || TextUtils.isEmpty(cVar.d.d)) {
            context = this.f3919b.d;
            k.b(context, str);
        } else {
            context2 = this.f3919b.d;
            k.a(context2, com.mnt.impl.e.pC + cVar.d.d, true);
        }
        this.f3919b.f3915a.finish();
    }
}
