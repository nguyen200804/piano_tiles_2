package com.facebook.notifications.internal.view;

import android.annotation.SuppressLint;
import android.content.Context;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.widget.FrameLayout;
import com.facebook.notifications.internal.asset.Asset;

/* compiled from: AssetView.java */
@SuppressLint({"ViewConstructor"})
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class b extends FrameLayout {

    /* renamed from: a, reason: collision with root package name */
    @Nullable
    private final Asset f3444a;

    public b(@NonNull Context context, @NonNull com.facebook.notifications.internal.asset.a aVar, @Nullable Asset asset) {
        super(context);
        this.f3444a = asset;
        if (asset != null) {
            addView(aVar.a((com.facebook.notifications.internal.asset.a) asset, context), new FrameLayout.LayoutParams(-1, -1));
        }
    }
}
