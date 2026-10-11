package com.facebook.notifications.internal.view;

import android.annotation.SuppressLint;
import android.content.Context;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.widget.FrameLayout;
import com.facebook.notifications.internal.content.Content;
import com.facebook.notifications.internal.content.TextContent;

/* compiled from: ContentView.java */
@SuppressLint({"ViewConstructor"})
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class e extends FrameLayout {

    /* renamed from: a, reason: collision with root package name */
    @Nullable
    private final Content f3451a;

    public e(@NonNull Context context, @NonNull com.facebook.notifications.internal.content.a aVar, @Nullable Content content) {
        super(context);
        this.f3451a = content;
        if (content != null) {
            addView(new TextContentLabel(context, (TextContent) content), new FrameLayout.LayoutParams(-1, -2));
        }
    }
}
