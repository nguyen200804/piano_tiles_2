package com.google.android.gms.internal;

import android.view.View;
import android.view.ViewTreeObserver;
import java.lang.ref.WeakReference;

@zzin
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class zzld extends zzlf implements ViewTreeObserver.OnGlobalLayoutListener {
    private final WeakReference<ViewTreeObserver.OnGlobalLayoutListener> zzcog;

    public zzld(View view, ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener) {
        super(view);
        this.zzcog = new WeakReference<>(onGlobalLayoutListener);
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public void onGlobalLayout() {
        ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener = this.zzcog.get();
        if (onGlobalLayoutListener != null) {
            onGlobalLayoutListener.onGlobalLayout();
        } else {
            detach();
        }
    }

    @Override // com.google.android.gms.internal.zzlf
    protected void zza(ViewTreeObserver viewTreeObserver) {
        viewTreeObserver.addOnGlobalLayoutListener(this);
    }

    @Override // com.google.android.gms.internal.zzlf
    protected void zzb(ViewTreeObserver viewTreeObserver) {
        com.google.android.gms.ads.internal.zzu.zzfs().zza(viewTreeObserver, this);
    }
}
