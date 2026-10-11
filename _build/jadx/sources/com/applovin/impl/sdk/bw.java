package com.applovin.impl.sdk;

import org.json.JSONObject;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
abstract class bw extends au implements cw {

    /* renamed from: a, reason: collision with root package name */
    private int f477a;

    /* renamed from: b, reason: collision with root package name */
    private long f478b;
    private final cw c;
    private by d;

    bw(String str, int i, AppLovinSdkImpl appLovinSdkImpl) {
        super(str, appLovinSdkImpl);
        this.f478b = -1L;
        this.d = null;
        this.f477a = i;
        this.c = new bx(this, appLovinSdkImpl, str);
    }

    bw(String str, by byVar, AppLovinSdkImpl appLovinSdkImpl) {
        this(str, ((Integer) appLovinSdkImpl.a(byVar)).intValue(), appLovinSdkImpl);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        if (this.d != null) {
            az settingsManager = this.f.getSettingsManager();
            settingsManager.a(this.d, this.d.c());
            settingsManager.b();
        }
    }

    public void a(int i) {
    }

    public void a(long j) {
        this.f478b = j;
    }

    public void a(by byVar) {
        this.d = byVar;
    }

    protected abstract void a(cv cvVar, cw cwVar);

    public void a(JSONObject jSONObject, int i) {
    }

    @Override // java.lang.Runnable
    public void run() {
        a(this.f.getConnectionManager(), this.c);
    }
}
