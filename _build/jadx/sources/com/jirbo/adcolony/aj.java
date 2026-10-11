package com.jirbo.adcolony;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
abstract class aj {
    af n;

    abstract void b();

    aj(af afVar) {
        this(afVar, true);
    }

    aj(af afVar, boolean z) {
        this.n = afVar;
        if (z) {
            afVar.a(this);
        }
    }
}
