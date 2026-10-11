package com.facebook.notifications.internal.view;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Canvas;
import android.net.Uri;
import android.os.Build;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.util.DisplayMetrics;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import com.facebook.notifications.internal.configuration.ActionConfiguration;
import com.facebook.notifications.internal.configuration.ActionsConfiguration;
import com.facebook.notifications.internal.configuration.CardConfiguration;
import com.facebook.notifications.internal.view.ActionButton;

/* compiled from: ActionsView.java */
@SuppressLint({"ViewConstructor"})
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class a extends RelativeLayout implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    private final InterfaceC0090a f3440a;

    /* renamed from: b, reason: collision with root package name */
    @Nullable
    private final ActionsConfiguration f3441b;

    @NonNull
    private final com.facebook.notifications.internal.utilities.d c;

    @NonNull
    private final b d;

    @NonNull
    private final LinearLayout e;

    @NonNull
    private final ActionButton[] f;

    /* compiled from: ActionsView.java */
    /* renamed from: com.facebook.notifications.internal.view.a$a, reason: collision with other inner class name */
    public interface InterfaceC0090a {
        void a(ActionButton.a aVar, @Nullable Uri uri);
    }

    public a(@NonNull Context context, @NonNull com.facebook.notifications.internal.asset.a aVar, @NonNull InterfaceC0090a interfaceC0090a, @NonNull CardConfiguration cardConfiguration) {
        super(context);
        ActionButton.a aVar2;
        this.f3440a = interfaceC0090a;
        this.f3441b = cardConfiguration.h();
        if (this.f3441b == null) {
            this.c = new com.facebook.notifications.internal.utilities.d(context, 0.0f, 0);
            this.d = new b(context, aVar, null);
            this.e = new LinearLayout(context);
            this.f = new ActionButton[0];
            return;
        }
        this.c = new com.facebook.notifications.internal.utilities.d(context, cardConfiguration.c(), a(cardConfiguration));
        this.d = new b(context, aVar, this.f3441b.d());
        ActionConfiguration[] h = this.f3441b.h();
        this.f = new ActionButton[h.length];
        DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
        int round = Math.round(this.f3441b.f() * displayMetrics.density);
        int round2 = Math.round(this.f3441b.e() * displayMetrics.density);
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        int round3 = Math.round(displayMetrics.density * this.f3441b.i());
        this.e = new LinearLayout(context);
        switch (this.f3441b.c()) {
            case Vertical:
                i3 = -1;
                this.e.setOrientation(1);
                i2 = round;
                break;
            case Horizontal:
                i4 = 1;
                this.e.setOrientation(0);
                i = round;
                break;
            default:
                throw new RuntimeException("Unknown layout style: " + this.f3441b.c());
        }
        boolean z = true;
        for (int i5 = 0; i5 < h.length; i5++) {
            if (h[i5].f() != null) {
                ActionButton.a aVar3 = z ? ActionButton.a.Primary : ActionButton.a.Secondary;
                z = false;
                aVar2 = aVar3;
            } else {
                aVar2 = ActionButton.a.Dismiss;
            }
            this.f[i5] = new ActionButton(context, h[i5], aVar2, this.f3441b.g());
            this.f[i5].setOnClickListener(this);
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(i3, round3);
            layoutParams.weight = i4;
            if (i5 > 0) {
                layoutParams.setMargins(i, i2, 0, 0);
            }
            this.e.addView(this.f[i5], layoutParams);
        }
        this.d.setId(2027274875);
        this.e.setId(2093590728);
        addView(this.d, new RelativeLayout.LayoutParams(-1, -2) { // from class: com.facebook.notifications.internal.view.a.1
            {
                addRule(6, 2093590728);
                addRule(8, 2093590728);
            }
        });
        this.e.setPadding(round, round2, round, round);
        addView(this.e, new RelativeLayout.LayoutParams(-1, -2));
        setWillNotDraw(false);
        if (Build.VERSION.SDK_INT < 18) {
            setLayerType(1, null);
        }
    }

    private static int a(@NonNull CardConfiguration cardConfiguration) {
        if (cardConfiguration.h() == null) {
            return 0;
        }
        if (cardConfiguration.f() != null || cardConfiguration.g() != null) {
            return 12;
        }
        return 15;
    }

    @Override // android.widget.RelativeLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean changed, int l, int t, int r, int b2) {
        super.onLayout(changed, l, t, r, b2);
        this.c.a(changed, l, t, r, b2);
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        this.c.a(canvas);
        super.draw(canvas);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View v) {
        ActionButton actionButton = (ActionButton) v;
        this.f3440a.a(actionButton.b(), actionButton.a().f());
    }
}
