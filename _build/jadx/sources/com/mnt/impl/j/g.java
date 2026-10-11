package com.mnt.impl.j;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.mnt.impl.j.f;
import java.util.Iterator;
import java.util.Set;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
final class g extends BroadcastReceiver {

    /* renamed from: a, reason: collision with root package name */
    private /* synthetic */ f f4084a;

    g(f fVar) {
        this.f4084a = fVar;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        Set set;
        if (f.f4082a.equals(intent.getAction())) {
            set = this.f4084a.f4083b;
            Iterator it = set.iterator();
            while (it.hasNext()) {
                ((f.a) it.next()).a();
            }
        }
    }
}
