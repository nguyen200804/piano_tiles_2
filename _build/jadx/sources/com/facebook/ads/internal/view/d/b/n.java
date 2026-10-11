package com.facebook.ads.internal.view.d.b;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.RelativeLayout;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public abstract class n extends RelativeLayout implements m {

    /* renamed from: a, reason: collision with root package name */
    static final /* synthetic */ boolean f3023a;

    /* renamed from: b, reason: collision with root package name */
    private com.facebook.ads.internal.view.o f3024b;

    static {
        f3023a = !n.class.desiredAssertionStatus();
    }

    public n(Context context) {
        super(context);
    }

    public n(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
    }

    @Override // com.facebook.ads.internal.view.d.b.m
    public void a(com.facebook.ads.internal.view.o oVar) {
        this.f3024b = oVar;
        a_(oVar);
    }

    protected void a_(com.facebook.ads.internal.view.o oVar) {
    }

    protected com.facebook.ads.internal.view.o getVideoView() {
        if (f3023a || this.f3024b != null) {
            return this.f3024b;
        }
        throw new AssertionError();
    }
}
