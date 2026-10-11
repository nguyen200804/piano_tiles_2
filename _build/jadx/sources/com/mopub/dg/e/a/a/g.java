package com.mopub.dg.e.a.a;

import android.graphics.Bitmap;
import android.webkit.WebView;
import android.webkit.WebViewClient;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
final class g extends WebViewClient {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ e f4314a;

    g(e eVar) {
        this.f4314a = eVar;
    }

    @Override // android.webkit.WebViewClient
    public final void onPageFinished(WebView webView, String str) {
        super.onPageFinished(webView, str);
    }

    @Override // android.webkit.WebViewClient
    public final void onPageStarted(WebView webView, String str, Bitmap bitmap) {
        super.onPageStarted(webView, str, bitmap);
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedError(WebView webView, int i, String str, String str2) {
        e.a(this.f4314a);
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x002d  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x00a6  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0039  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00d3  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x00a4  */
    @Override // android.webkit.WebViewClient
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean shouldOverrideUrlLoading(android.webkit.WebView r9, java.lang.String r10) {
        /*
            r8 = this;
            r6 = 65536(0x10000, float:9.18355E-41)
            r2 = 1
            r1 = 0
            if (r10 != 0) goto L8
            r2 = r1
        L7:
            return r2
        L8:
            com.mopub.dg.e.a.a.e r3 = r8.f4314a
            boolean r0 = com.mopub.dg.e.a.b.b.a(r10)
            if (r0 != 0) goto L30
            if (r10 == 0) goto La2
            android.net.Uri r0 = android.net.Uri.parse(r10)
            java.lang.String r0 = r0.getScheme()
            java.lang.String r4 = "http"
            boolean r4 = r4.equals(r0)
            if (r4 != 0) goto L2a
            java.lang.String r4 = "https"
            boolean r0 = r4.equals(r0)
            if (r0 == 0) goto La2
        L2a:
            r0 = r2
        L2b:
            if (r0 != 0) goto La4
            r0 = r2
        L2e:
            if (r0 == 0) goto La6
        L30:
            r0 = r2
        L31:
            r3.f = r0
            com.mopub.dg.e.a.a.e r0 = r8.f4314a
            boolean r0 = r0.f
            if (r0 == 0) goto Ld3
            com.mopub.dg.e.a.a.e r3 = r8.f4314a
            boolean r0 = com.mopub.dg.e.a.b.b.a(r10)
            if (r0 == 0) goto Lac
            android.content.Intent r4 = new android.content.Intent
            java.lang.String r0 = "android.intent.action.VIEW"
            android.net.Uri r5 = android.net.Uri.parse(r10)
            r4.<init>(r0, r5)
            r0 = 8388608(0x800000, float:1.17549435E-38)
            r4.addFlags(r0)
            r0 = 268435456(0x10000000, float:2.5243549E-29)
            r4.addFlags(r0)
            r0 = 1073741824(0x40000000, float:2.0)
            r4.addFlags(r0)
            r4.addFlags(r6)
            android.content.Context r0 = r3.f4311a     // Catch: java.lang.Exception -> La8
            android.content.pm.PackageManager r0 = r0.getPackageManager()     // Catch: java.lang.Exception -> La8
            r5 = 65536(0x10000, float:9.18355E-41)
            java.util.List r0 = r0.queryIntentActivities(r4, r5)     // Catch: java.lang.Exception -> La8
            java.util.Iterator r5 = r0.iterator()     // Catch: java.lang.Exception -> La8
        L6e:
            boolean r0 = r5.hasNext()     // Catch: java.lang.Exception -> La8
            if (r0 == 0) goto Lac
            java.lang.Object r0 = r5.next()     // Catch: java.lang.Exception -> La8
            android.content.pm.ResolveInfo r0 = (android.content.pm.ResolveInfo) r0     // Catch: java.lang.Exception -> La8
            android.content.pm.ActivityInfo r6 = r0.activityInfo     // Catch: java.lang.Exception -> La8
            java.lang.String r6 = r6.packageName     // Catch: java.lang.Exception -> La8
            java.lang.String r7 = "com.android.vending"
            boolean r6 = r6.equals(r7)     // Catch: java.lang.Exception -> La8
            if (r6 == 0) goto Lda
            android.content.pm.ActivityInfo r6 = r0.activityInfo     // Catch: java.lang.Exception -> La8
            java.lang.String r6 = r6.packageName     // Catch: java.lang.Exception -> La8
            android.content.pm.ActivityInfo r0 = r0.activityInfo     // Catch: java.lang.Exception -> La8
            java.lang.String r0 = r0.name     // Catch: java.lang.Exception -> La8
            r4.setClassName(r6, r0)     // Catch: java.lang.Exception -> La8
            android.content.Context r0 = r3.f4311a     // Catch: java.lang.Exception -> La8
            r0.startActivity(r4)     // Catch: java.lang.Exception -> La8
            android.content.Context r0 = r3.f4311a     // Catch: java.lang.Exception -> La8
            android.app.Activity r0 = (android.app.Activity) r0     // Catch: java.lang.Exception -> La8
            r6 = 0
            r7 = 0
            r0.overridePendingTransition(r6, r7)     // Catch: java.lang.Exception -> La8
            r0 = r2
        La0:
            r1 = r0
            goto L6e
        La2:
            r0 = r1
            goto L2b
        La4:
            r0 = r1
            goto L2e
        La6:
            r0 = r1
            goto L31
        La8:
            r0 = move-exception
            r0.printStackTrace()
        Lac:
            if (r1 != 0) goto Lbe
            android.content.Intent r0 = new android.content.Intent
            java.lang.String r1 = "android.intent.action.VIEW"
            android.net.Uri r4 = android.net.Uri.parse(r10)
            r0.<init>(r1, r4)
            android.content.Context r1 = r3.f4311a
            r1.startActivity(r0)
        Lbe:
            boolean r0 = r3.g
            if (r0 == 0) goto L7
            android.widget.RelativeLayout r0 = r3.d
            android.view.ViewParent r0 = r0.getParent()
            if (r0 == 0) goto L7
            android.view.WindowManager r0 = r3.i
            android.widget.RelativeLayout r1 = r3.d
            r0.removeView(r1)
            goto L7
        Ld3:
            if (r9 == 0) goto L7
            r9.loadUrl(r10)
            goto L7
        Lda:
            r0 = r1
            goto La0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mopub.dg.e.a.a.g.shouldOverrideUrlLoading(android.webkit.WebView, java.lang.String):boolean");
    }
}
