package com.mopub.mobileads;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.mopub.common.Preconditions;
import java.io.Serializable;
import java.util.Arrays;
import java.util.List;

/* compiled from: VastResource.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class k implements Serializable {

    /* renamed from: a, reason: collision with root package name */
    private static final List<String> f4508a = Arrays.asList("image/jpeg", "image/png", "image/bmp", "image/gif");

    /* renamed from: b, reason: collision with root package name */
    private static final List<String> f4509b = Arrays.asList("application/x-javascript");

    @NonNull
    private String c;

    @NonNull
    private b d;

    @NonNull
    private a e;
    private int f;
    private int g;

    /* compiled from: VastResource.java */
    enum a {
        NONE,
        IMAGE,
        JAVASCRIPT
    }

    /* compiled from: VastResource.java */
    enum b {
        STATIC_RESOURCE,
        HTML_RESOURCE,
        IFRAME_RESOURCE
    }

    @Nullable
    static k a(@NonNull VastResourceXmlManager vastResourceXmlManager, @NonNull b bVar, int i, int i2) {
        a aVar;
        Preconditions.checkNotNull(vastResourceXmlManager);
        Preconditions.checkNotNull(bVar);
        String c = vastResourceXmlManager.c();
        String d = vastResourceXmlManager.d();
        String a2 = vastResourceXmlManager.a();
        String b2 = vastResourceXmlManager.b();
        if (bVar == b.STATIC_RESOURCE && a2 != null && b2 != null && (f4508a.contains(b2) || f4509b.contains(b2))) {
            if (f4508a.contains(b2)) {
                aVar = a.IMAGE;
            } else {
                aVar = a.JAVASCRIPT;
            }
        } else if (bVar == b.HTML_RESOURCE && d != null) {
            aVar = a.NONE;
            a2 = d;
        } else if (bVar == b.IFRAME_RESOURCE && c != null) {
            aVar = a.NONE;
            a2 = c;
        } else {
            return null;
        }
        return new k(a2, bVar, aVar, i, i2);
    }

    k(@NonNull String str, @NonNull b bVar, @NonNull a aVar, int i, int i2) {
        Preconditions.checkNotNull(str);
        Preconditions.checkNotNull(bVar);
        Preconditions.checkNotNull(aVar);
        this.c = str;
        this.d = bVar;
        this.e = aVar;
        this.f = i;
        this.g = i2;
    }

    @NonNull
    public String getResource() {
        return this.c;
    }

    @NonNull
    public b getType() {
        return this.d;
    }

    @NonNull
    public a getCreativeType() {
        return this.e;
    }

    public void initializeWebView(@NonNull l webView) {
        Preconditions.checkNotNull(webView);
        if (this.d == b.IFRAME_RESOURCE) {
            webView.a("<iframe frameborder=\"0\" scrolling=\"no\" marginheight=\"0\" marginwidth=\"0\" style=\"border: 0px; margin: 0px;\" width=\"" + this.f + "\" height=\"" + this.g + "\" src=\"" + this.c + "\"></iframe>");
            return;
        }
        if (this.d == b.HTML_RESOURCE) {
            webView.a(this.c);
            return;
        }
        if (this.d == b.STATIC_RESOURCE) {
            if (this.e == a.IMAGE) {
                webView.a("<html><head></head><body style=\"margin:0;padding:0\"><img src=\"" + this.c + "\" width=\"100%\" style=\"max-width:100%;max-height:100%;\" /></body></html>");
            } else if (this.e == a.JAVASCRIPT) {
                webView.a("<script src=\"" + this.c + "\"></script>");
            }
        }
    }

    @Nullable
    public String getCorrectClickThroughUrl(@Nullable String vastClickThroughUrl, @Nullable String webViewClickThroughUrl) {
        switch (this.d) {
            case STATIC_RESOURCE:
                if (a.IMAGE == this.e) {
                    return vastClickThroughUrl;
                }
                if (a.JAVASCRIPT != this.e) {
                    return null;
                }
                return webViewClickThroughUrl;
            case HTML_RESOURCE:
            case IFRAME_RESOURCE:
                return webViewClickThroughUrl;
            default:
                return null;
        }
    }
}
