package com.applovin.impl.sdk;

import android.util.Log;
import org.json.JSONObject;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class bx implements cw {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ AppLovinSdkImpl f479a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ String f480b;
    final /* synthetic */ bw c;

    bx(bw bwVar, AppLovinSdkImpl appLovinSdkImpl, String str) {
        this.c = bwVar;
        this.f479a = appLovinSdkImpl;
        this.f480b = str;
    }

    @Override // com.applovin.impl.sdk.cw
    public void a(int i) {
        int i2;
        long j;
        int i3;
        int i4;
        int i5;
        boolean z = i < 200 || i >= 500;
        boolean z2 = i != -103;
        if (z && z2) {
            i2 = this.c.f477a;
            if (i2 > 0) {
                j = this.c.f478b;
                long longValue = j < 0 ? ((Long) this.f479a.a(av.n)).longValue() : this.c.f478b;
                String str = this.f480b;
                StringBuilder append = new StringBuilder().append("Unable to send request due to server failure (code ").append(i).append("). ");
                i3 = this.c.f477a;
                Log.w(str, append.append(i3).append(" attempts left, retrying in ").append(longValue / 1000.0d).append(" seconds...").toString());
                bw bwVar = this.c;
                i4 = this.c.f477a;
                bwVar.f477a = i4 - 1;
                i5 = this.c.f477a;
                if (i5 == 0) {
                    this.c.c();
                }
                this.f479a.a().a(this.c, bp.BACKGROUND, longValue);
                return;
            }
        }
        this.c.a(i);
    }

    @Override // com.applovin.impl.sdk.cw
    public void a(JSONObject jSONObject, int i) {
        this.c.f477a = 0;
        this.c.a(jSONObject, i);
    }
}
