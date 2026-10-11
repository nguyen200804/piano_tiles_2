package com.facebook.share.internal;

/* compiled from: ShareDialogFeature.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public enum k implements com.facebook.internal.f {
    SHARE_DIALOG(20130618),
    PHOTOS(20140204),
    VIDEO(20141028);

    private int d;

    k(int i) {
        this.d = i;
    }

    @Override // com.facebook.internal.f
    public String a() {
        return "com.facebook.platform.action.request.FEED_DIALOG";
    }

    @Override // com.facebook.internal.f
    public int b() {
        return this.d;
    }
}
