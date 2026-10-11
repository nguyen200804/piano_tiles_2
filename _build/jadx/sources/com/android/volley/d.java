package com.android.volley;

import com.mopub.volley.DefaultRetryPolicy;

/* compiled from: DefaultRetryPolicy.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class d implements p {

    /* renamed from: a, reason: collision with root package name */
    private int f234a;

    /* renamed from: b, reason: collision with root package name */
    private int f235b;
    private final int c;
    private final float d;

    public d() {
        this(DefaultRetryPolicy.DEFAULT_TIMEOUT_MS, 1, 1.0f);
    }

    public d(int i, int i2, float f) {
        this.f234a = i;
        this.c = i2;
        this.d = f;
    }

    @Override // com.android.volley.p
    public int a() {
        return this.f234a;
    }

    @Override // com.android.volley.p
    public int b() {
        return this.f235b;
    }

    @Override // com.android.volley.p
    public void a(s sVar) throws s {
        this.f235b++;
        this.f234a = (int) (this.f234a + (this.f234a * this.d));
        if (!c()) {
            throw sVar;
        }
    }

    protected boolean c() {
        return this.f235b <= this.c;
    }
}
