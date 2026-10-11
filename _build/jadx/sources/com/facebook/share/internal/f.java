package com.facebook.share.internal;

/* compiled from: OpenGraphActionDialogFeature.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public enum f implements com.facebook.internal.f {
    OG_ACTION_DIALOG(20130618);


    /* renamed from: b, reason: collision with root package name */
    private int f3480b;

    f(int i) {
        this.f3480b = i;
    }

    @Override // com.facebook.internal.f
    public String a() {
        return "com.facebook.platform.action.request.OGACTIONPUBLISH_DIALOG";
    }

    @Override // com.facebook.internal.f
    public int b() {
        return this.f3480b;
    }
}
