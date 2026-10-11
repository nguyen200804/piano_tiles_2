package com.facebook.notifications.internal.view;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Canvas;
import android.os.Build;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.util.DisplayMetrics;
import android.widget.RelativeLayout;
import com.facebook.notifications.internal.configuration.ActionsConfiguration;
import com.facebook.notifications.internal.configuration.CardConfiguration;
import com.facebook.notifications.internal.configuration.HeroConfiguration;
import com.facebook.notifications.internal.content.Content;

/* compiled from: HeroView.java */
@SuppressLint({"ViewConstructor"})
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class g extends RelativeLayout {

    /* renamed from: a, reason: collision with root package name */
    @Nullable
    private final HeroConfiguration f3456a;

    /* renamed from: b, reason: collision with root package name */
    @NonNull
    private final com.facebook.notifications.internal.utilities.d f3457b;

    @NonNull
    private final b c;

    @NonNull
    private final e d;
    private final int e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public g(@NonNull Context context, @NonNull com.facebook.notifications.internal.asset.a aVar, @NonNull com.facebook.notifications.internal.content.a aVar2, @NonNull CardConfiguration cardConfiguration) {
        super(context);
        int i = -1;
        int i2 = -2;
        this.f3456a = cardConfiguration.f();
        this.f3457b = new com.facebook.notifications.internal.utilities.d(context, cardConfiguration.c(), a(cardConfiguration));
        if (this.f3456a == null) {
            this.c = new b(context, aVar, null);
            this.d = new e(context, aVar2, null);
            this.e = 0;
            return;
        }
        this.c = new b(context, aVar, this.f3456a.c());
        this.d = new e(context, aVar2, this.f3456a.d());
        this.c.setId(1408016327);
        this.d.setId(-1511560139);
        DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
        this.e = Math.round(displayMetrics.density * cardConfiguration.d());
        addView(this.c, new RelativeLayout.LayoutParams(-1, -2));
        addView(this.d, new RelativeLayout.LayoutParams(i, i2) { // from class: com.facebook.notifications.internal.view.g.1
            {
                setMargins(g.this.e, g.this.e, g.this.e, g.this.e);
                switch (AnonymousClass2.f3459a[g.this.f3456a.e().ordinal()]) {
                    case 1:
                        addRule(6, 1408016327);
                        break;
                    case 2:
                        addRule(15);
                        break;
                    case 3:
                        addRule(8, 1408016327);
                        break;
                }
            }
        });
        setWillNotDraw(false);
        if (Build.VERSION.SDK_INT < 18) {
            setLayerType(1, null);
        }
    }

    /* compiled from: HeroView.java */
    /* renamed from: com.facebook.notifications.internal.view.g$2, reason: invalid class name */
    static /* synthetic */ class AnonymousClass2 {

        /* renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f3459a = new int[Content.VerticalAlignment.values().length];

        static {
            try {
                f3459a[Content.VerticalAlignment.Top.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f3459a[Content.VerticalAlignment.Center.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f3459a[Content.VerticalAlignment.Bottom.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    private static int a(@NonNull CardConfiguration cardConfiguration) {
        if (cardConfiguration.f() == null) {
            return 0;
        }
        if (cardConfiguration.g() != null || cardConfiguration.h() == null || cardConfiguration.h().b() != ActionsConfiguration.ActionsStyle.Detached) {
            return 3;
        }
        return 15;
    }

    @Override // android.widget.RelativeLayout, android.view.View
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.c.getLayoutParams();
        layoutParams.height = -2;
        super.onMeasure(widthMeasureSpec, heightMeasureSpec);
        layoutParams.height = Math.max(this.c.getMeasuredHeight(), this.d.getMeasuredHeight() + (this.e * 2));
        super.onMeasure(widthMeasureSpec, heightMeasureSpec);
    }

    @Override // android.widget.RelativeLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean changed, int l, int t, int r, int b2) {
        super.onLayout(changed, l, t, r, b2);
        this.f3457b.a(changed, l, t, r, b2);
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        this.f3457b.a(canvas);
        super.draw(canvas);
    }
}
