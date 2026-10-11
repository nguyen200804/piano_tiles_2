package com.facebook.notifications.internal.view;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Canvas;
import android.os.Build;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.widget.RelativeLayout;
import com.facebook.notifications.internal.configuration.ActionsConfiguration;
import com.facebook.notifications.internal.configuration.BodyConfiguration;
import com.facebook.notifications.internal.configuration.CardConfiguration;

/* compiled from: BodyView.java */
@SuppressLint({"ViewConstructor"})
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class c extends RelativeLayout {

    /* renamed from: a, reason: collision with root package name */
    private final int f3445a;

    /* renamed from: b, reason: collision with root package name */
    private final int f3446b;

    @Nullable
    private final BodyConfiguration c;

    @NonNull
    private final com.facebook.notifications.internal.utilities.d d;

    @NonNull
    private final b e;

    @NonNull
    private final e f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c(@NonNull Context context, @NonNull com.facebook.notifications.internal.asset.a aVar, @NonNull com.facebook.notifications.internal.content.a aVar2, @NonNull CardConfiguration cardConfiguration) {
        super(context);
        int i = -1;
        int i2 = -2;
        this.f3445a = -1520604940;
        this.f3446b = 799848136;
        this.c = cardConfiguration.g();
        ActionsConfiguration h = cardConfiguration.h();
        this.d = new com.facebook.notifications.internal.utilities.d(context, cardConfiguration.c(), (h != null ? h.b() : ActionsConfiguration.ActionsStyle.Detached) == ActionsConfiguration.ActionsStyle.Detached ? 12 : 0);
        if (this.c == null) {
            this.e = new b(context, aVar, null);
            this.f = new e(context, aVar2, null);
            return;
        }
        this.e = new b(context, aVar, this.c.b());
        this.f = new e(context, aVar2, this.c.c());
        this.e.setId(-1520604940);
        this.f.setId(799848136);
        int round = Math.round(getResources().getDisplayMetrics().density * cardConfiguration.d());
        this.f.setPadding(round, round, round, round);
        addView(this.e, new RelativeLayout.LayoutParams(i, i2) { // from class: com.facebook.notifications.internal.view.c.1
            {
                addRule(6, 799848136);
                addRule(8, 799848136);
            }
        });
        addView(this.f, new RelativeLayout.LayoutParams(-1, -2));
        setWillNotDraw(false);
        if (Build.VERSION.SDK_INT < 18) {
            setLayerType(1, null);
        }
    }

    @Override // android.widget.RelativeLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean changed, int l, int t, int r, int b2) {
        super.onLayout(changed, l, t, r, b2);
        this.d.a(changed, l, t, r, b2);
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        this.d.a(canvas);
        super.draw(canvas);
    }
}
