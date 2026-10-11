package com.facebook.ads.internal.adapters;

import android.view.View;
import android.webkit.JavascriptInterface;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class ab {

    /* renamed from: a, reason: collision with root package name */
    private View.OnClickListener f2575a;

    /* renamed from: b, reason: collision with root package name */
    private View f2576b;

    ab(View.OnClickListener onClickListener, View view) {
        this.f2575a = onClickListener;
        this.f2576b = view;
    }

    public static String a() {
        return "WatchAndInstall";
    }

    static String b() {
        return "javascript:var anchors = document.getElementsByClassName('buy');for(var i = 0; i < anchors.length; i++) {var anchor = anchors[i];anchor.classList.remove('buy');anchor.onclick = function() {WatchAndInstall.onClick();};}";
    }

    @JavascriptInterface
    public void onClick() {
        this.f2575a.onClick(this.f2576b);
    }
}
