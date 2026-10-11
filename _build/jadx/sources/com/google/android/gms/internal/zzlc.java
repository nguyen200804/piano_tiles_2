package com.google.android.gms.internal;

import android.view.View;
import android.view.ViewTreeObserver;

@zzin
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class zzlc {
    public void zza(View view, ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener) {
        new zzld(view, onGlobalLayoutListener).zzua();
    }

    public void zza(View view, ViewTreeObserver.OnScrollChangedListener onScrollChangedListener) {
        new zzle(view, onScrollChangedListener).zzua();
    }
}
