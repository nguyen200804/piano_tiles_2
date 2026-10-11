package com.cmplay.crashreport;

import java.util.Random;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class o implements f {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ m f1309a;

    o(m mVar) {
        this.f1309a = mVar;
    }

    @Override // com.cmplay.crashreport.f
    public void a(String str) {
        if (new Random().nextInt(100) < 10) {
            this.f1309a.a(str);
        }
    }
}
