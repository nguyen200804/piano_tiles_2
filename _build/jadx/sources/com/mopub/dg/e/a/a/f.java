package com.mopub.dg.e.a.a;

import android.view.KeyEvent;
import android.view.View;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
final class f implements View.OnKeyListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ e f4313a;

    f(e eVar) {
        this.f4313a = eVar;
    }

    @Override // android.view.View.OnKeyListener
    public final boolean onKey(View view, int i, KeyEvent keyEvent) {
        switch (i) {
            case 4:
                e.a(this.f4313a);
                return true;
            default:
                return false;
        }
    }
}
