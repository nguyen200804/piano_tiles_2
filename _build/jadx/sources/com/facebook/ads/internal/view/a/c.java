package com.facebook.ads.internal.view.a;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.text.TextUtils;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.facebook.ads.internal.util.s;
import com.facebook.ads.internal.util.v;
import com.mopub.common.Constants;

@TargetApi(19)
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class c extends LinearLayout {

    /* renamed from: a, reason: collision with root package name */
    private TextView f2927a;

    /* renamed from: b, reason: collision with root package name */
    private TextView f2928b;
    private Drawable c;

    public c(Context context) {
        super(context);
        a();
    }

    private void a() {
        float f = getResources().getDisplayMetrics().density;
        setOrientation(1);
        this.f2927a = new TextView(getContext());
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
        this.f2927a.setTextColor(-16777216);
        this.f2927a.setTextSize(2, 20.0f);
        this.f2927a.setEllipsize(TextUtils.TruncateAt.END);
        this.f2927a.setSingleLine(true);
        this.f2927a.setVisibility(8);
        addView(this.f2927a, layoutParams);
        this.f2928b = new TextView(getContext());
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-1, -2);
        this.f2928b.setAlpha(0.5f);
        this.f2928b.setTextColor(-16777216);
        this.f2928b.setTextSize(2, 15.0f);
        this.f2928b.setCompoundDrawablePadding((int) (f * 5.0f));
        this.f2928b.setEllipsize(TextUtils.TruncateAt.END);
        this.f2928b.setSingleLine(true);
        this.f2928b.setVisibility(8);
        addView(this.f2928b, layoutParams2);
    }

    private Drawable getPadlockDrawable() {
        if (this.c == null) {
            this.c = v.b(getContext(), s.BROWSER_PADLOCK);
        }
        return this.c;
    }

    public void setSubtitle(String str) {
        if (TextUtils.isEmpty(str)) {
            this.f2928b.setText((CharSequence) null);
            this.f2928b.setVisibility(8);
        } else {
            Uri parse = Uri.parse(str);
            this.f2928b.setText(parse.getHost());
            this.f2928b.setCompoundDrawablesRelativeWithIntrinsicBounds(Constants.HTTPS.equals(parse.getScheme()) ? getPadlockDrawable() : null, (Drawable) null, (Drawable) null, (Drawable) null);
            this.f2928b.setVisibility(0);
        }
    }

    public void setTitle(String str) {
        if (TextUtils.isEmpty(str)) {
            this.f2927a.setText((CharSequence) null);
            this.f2927a.setVisibility(8);
        } else {
            this.f2927a.setText(str);
            this.f2927a.setVisibility(0);
        }
    }
}
