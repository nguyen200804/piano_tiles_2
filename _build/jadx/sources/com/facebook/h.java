package com.facebook;

/* compiled from: FacebookDialogException.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class h extends i {

    /* renamed from: a, reason: collision with root package name */
    private int f3148a;

    /* renamed from: b, reason: collision with root package name */
    private String f3149b;

    public h(String str, int i, String str2) {
        super(str);
        this.f3148a = i;
        this.f3149b = str2;
    }

    public int a() {
        return this.f3148a;
    }

    public String b() {
        return this.f3149b;
    }

    @Override // com.facebook.i, java.lang.Throwable
    public final String toString() {
        return "{FacebookDialogException: errorCode: " + a() + ", message: " + getMessage() + ", url: " + b() + "}";
    }
}
