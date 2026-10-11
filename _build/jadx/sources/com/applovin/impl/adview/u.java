package com.applovin.impl.adview;

import android.content.Context;
import android.view.View;
import com.applovin.sdk.AppLovinSdk;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public abstract class u extends View {

    /* renamed from: a, reason: collision with root package name */
    protected final AppLovinSdk f381a;

    /* renamed from: b, reason: collision with root package name */
    protected final Context f382b;

    u(AppLovinSdk appLovinSdk, Context context) {
        super(context);
        this.f382b = context;
        this.f381a = appLovinSdk;
    }

    public static u a(AppLovinSdk appLovinSdk, Context context, v vVar) {
        return vVar.equals(v.WhiteXOnTransparentGrey) ? new al(appLovinSdk, context) : new am(appLovinSdk, context);
    }

    public abstract void a(int i);
}
