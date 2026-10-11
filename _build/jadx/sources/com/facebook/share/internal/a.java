package com.facebook.share.internal;

/* compiled from: AppInviteDialogFeature.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public enum a implements com.facebook.internal.f {
    APP_INVITES_DIALOG(20140701);


    /* renamed from: b, reason: collision with root package name */
    private int f3476b;

    a(int i) {
        this.f3476b = i;
    }

    @Override // com.facebook.internal.f
    public String a() {
        return "com.facebook.platform.action.request.APPINVITES_DIALOG";
    }

    @Override // com.facebook.internal.f
    public int b() {
        return this.f3476b;
    }
}
