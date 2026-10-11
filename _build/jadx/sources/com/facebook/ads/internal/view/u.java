package com.facebook.ads.internal.view;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class u extends View {

    /* renamed from: a, reason: collision with root package name */
    private t f3099a;

    public u(Context context, t tVar) {
        super(context);
        this.f3099a = tVar;
        setLayoutParams(new ViewGroup.LayoutParams(0, 0));
    }

    @Override // android.view.View
    public void onWindowVisibilityChanged(int i) {
        if (this.f3099a != null) {
            this.f3099a.a(i);
        }
    }
}
