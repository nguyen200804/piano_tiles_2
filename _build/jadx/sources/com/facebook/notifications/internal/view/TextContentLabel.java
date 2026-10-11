package com.facebook.notifications.internal.view;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Typeface;
import android.support.annotation.NonNull;
import android.widget.TextView;
import com.facebook.notifications.internal.content.TextContent;

@SuppressLint({"ViewConstructor"})
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class TextContentLabel extends TextView {

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    private final TextContent f3438a;

    public TextContentLabel(@NonNull Context context, @NonNull TextContent cont) {
        super(context);
        this.f3438a = cont;
        setText(this.f3438a.a());
        setTextColor(this.f3438a.b());
        String c = this.f3438a.c();
        setTypeface(c == null ? Typeface.DEFAULT : Typeface.create(c, 0));
        setTextSize(this.f3438a.d());
        switch (this.f3438a.e()) {
            case Left:
                setGravity(3);
                break;
            case Center:
                setGravity(1);
                break;
            case Right:
                setGravity(5);
                break;
        }
    }
}
