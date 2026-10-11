package com.facebook.share.internal;

/* compiled from: MessageDialogFeature.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public enum d implements com.facebook.internal.f {
    MESSAGE_DIALOG(20140204),
    PHOTOS(20140324),
    VIDEO(20141218);

    private int d;

    d(int i) {
        this.d = i;
    }

    @Override // com.facebook.internal.f
    public String a() {
        return "com.facebook.platform.action.request.MESSAGE_DIALOG";
    }

    @Override // com.facebook.internal.f
    public int b() {
        return this.d;
    }
}
