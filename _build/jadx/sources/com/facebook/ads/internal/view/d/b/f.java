package com.facebook.ads.internal.view.d.b;

import android.content.Context;
import android.support.annotation.Nullable;
import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.facebook.ads.internal.g.q;
import com.facebook.ads.internal.g.r;
import com.facebook.ads.internal.g.s;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class f extends n implements View.OnLayoutChangeListener {

    /* renamed from: b, reason: collision with root package name */
    private final ImageView f2990b;
    private final s<com.facebook.ads.internal.view.d.a.j> c;
    private final s<com.facebook.ads.internal.view.d.a.b> d;

    public f(Context context) {
        super(context);
        this.c = new s<com.facebook.ads.internal.view.d.a.j>() { // from class: com.facebook.ads.internal.view.d.b.f.1
            @Override // com.facebook.ads.internal.g.s
            public Class<com.facebook.ads.internal.view.d.a.j> a() {
                return com.facebook.ads.internal.view.d.a.j.class;
            }

            @Override // com.facebook.ads.internal.g.s
            public void a(com.facebook.ads.internal.view.d.a.j jVar) {
                f.this.setVisibility(8);
            }
        };
        this.d = new s<com.facebook.ads.internal.view.d.a.b>() { // from class: com.facebook.ads.internal.view.d.b.f.2
            @Override // com.facebook.ads.internal.g.s
            public Class<com.facebook.ads.internal.view.d.a.b> a() {
                return com.facebook.ads.internal.view.d.a.b.class;
            }

            @Override // com.facebook.ads.internal.g.s
            public void a(com.facebook.ads.internal.view.d.a.b bVar) {
                f.this.setVisibility(0);
            }
        };
        this.f2990b = new ImageView(context);
        this.f2990b.setScaleType(ImageView.ScaleType.FIT_CENTER);
        this.f2990b.setBackgroundColor(-16777216);
    }

    @Override // com.facebook.ads.internal.view.d.b.n
    protected void a_(com.facebook.ads.internal.view.o oVar) {
        oVar.getEventBus().a((r<s, q>) this.c);
        oVar.getEventBus().a((r<s, q>) this.d);
        oVar.addOnLayoutChangeListener(this);
        super.a_(oVar);
    }

    @Override // android.view.View.OnLayoutChangeListener
    public void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) getLayoutParams();
        int i9 = i4 - i2;
        int i10 = i3 - i;
        if (layoutParams.height == i9 && layoutParams.width == i10 && layoutParams.topMargin == i2 && layoutParams.leftMargin == i) {
            return;
        }
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(i10, i9);
        layoutParams2.topMargin = i2;
        layoutParams2.leftMargin = i;
        this.f2990b.setLayoutParams(new RelativeLayout.LayoutParams(i10, i9));
        if (this.f2990b.getParent() == null) {
            addView(this.f2990b);
        }
        setLayoutParams(layoutParams2);
    }

    public void setImage(@Nullable String str) {
        if (str == null) {
            setVisibility(8);
        } else {
            setVisibility(0);
            new com.facebook.ads.internal.util.q(this.f2990b).a(str);
        }
    }
}
