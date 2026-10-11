package com.facebook.share.internal;

/* compiled from: OpenGraphMessageDialogFeature.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public enum h implements com.facebook.internal.f {
    OG_MESSAGE_DIALOG(20140204);


    /* renamed from: b, reason: collision with root package name */
    private int f3482b;

    h(int i) {
        this.f3482b = i;
    }

    @Override // com.facebook.internal.f
    public String a() {
        return "com.facebook.platform.action.request.OGMESSAGEPUBLISH_DIALOG";
    }

    @Override // com.facebook.internal.f
    public int b() {
        return this.f3482b;
    }
}
