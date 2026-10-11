package com.cmcm.dmc.sdk.e;

import android.content.SharedPreferences;
import com.unity3d.ads.metadata.MediationMetaData;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public abstract class a extends b {
    private void i() {
        SharedPreferences h = h();
        String j = j();
        int a2 = com.cmcm.dmc.sdk.a.c.a(f(), MediationMetaData.KEY_VERSION, 0);
        if (h.getInt(j, -1) < a2) {
            if (e()) {
                c();
            }
            h.edit().putInt(j, a2).apply();
        }
    }

    private String j() {
        return f() + "_version";
    }

    @Override // com.cmcm.dmc.sdk.e.b
    public void a() {
        super.a();
        i();
    }

    @Override // com.cmcm.dmc.sdk.e.b
    public void b() {
        super.b();
        i();
    }

    protected abstract void c();
}
