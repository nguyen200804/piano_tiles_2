package com.facebook.notifications.internal.view;

import android.R;
import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.GradientDrawable;
import android.os.Build;
import android.support.annotation.NonNull;
import android.util.DisplayMetrics;
import android.util.StateSet;
import android.widget.Button;
import com.facebook.notifications.internal.configuration.ActionConfiguration;

@SuppressLint({"ViewConstructor"})
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class ActionButton extends Button {

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    private final ActionConfiguration f3430a;

    /* renamed from: b, reason: collision with root package name */
    private final a f3431b;

    public enum a {
        Primary,
        Secondary,
        Dismiss
    }

    public ActionButton(@NonNull Context context, @NonNull ActionConfiguration config, @NonNull a t, final float cornerRadius) {
        super(context, null, R.attr.borderlessButtonStyle);
        this.f3430a = config;
        this.f3431b = t;
        setText(this.f3430a.d());
        setTextColor(this.f3430a.e());
        setTransformationMethod(null);
        setPadding(0, 0, 0, 0);
        final DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
        final int a2 = this.f3430a.a();
        final int round = Math.round(this.f3430a.c() * displayMetrics.density);
        float[] fArr = {0.0f, 0.0f, 0.0f};
        Color.colorToHSV(a2, fArr);
        fArr[2] = (float) (fArr[2] * 0.5d);
        final int HSVToColor = Color.HSVToColor(a2 >> 24, fArr);
        GradientDrawable gradientDrawable = new GradientDrawable() { // from class: com.facebook.notifications.internal.view.ActionButton.1
            {
                setCornerRadius(cornerRadius * displayMetrics.density);
                setShape(0);
                setStroke(round, ActionButton.this.f3430a.b());
                setColor(a2);
            }
        };
        GradientDrawable gradientDrawable2 = new GradientDrawable() { // from class: com.facebook.notifications.internal.view.ActionButton.2
            {
                setCornerRadius(cornerRadius * displayMetrics.density);
                setShape(0);
                setStroke(round, ActionButton.this.f3430a.b());
                setColor(HSVToColor);
            }
        };
        com.facebook.notifications.internal.utilities.e eVar = new com.facebook.notifications.internal.utilities.e();
        eVar.addState(new int[]{R.attr.state_pressed}, gradientDrawable2);
        eVar.addState(StateSet.WILD_CARD, gradientDrawable);
        setBackgroundDrawable(eVar);
        setWillNotDraw(false);
        if (Build.VERSION.SDK_INT < 18) {
            setLayerType(1, null);
        }
    }

    @NonNull
    public ActionConfiguration a() {
        return this.f3430a;
    }

    public a b() {
        return this.f3431b;
    }
}
