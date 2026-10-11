package com.applovin.impl.sdk;

import android.content.DialogInterface;
import java.util.Timer;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class v implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ u f559a;

    v(u uVar) {
        this.f559a = uVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        Timer timer;
        dialogInterface.dismiss();
        timer = this.f559a.f558a.h;
        timer.schedule(new w(this), 200L);
    }
}
