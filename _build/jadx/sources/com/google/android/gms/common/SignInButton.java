package com.google.android.gms.common;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.FrameLayout;
import com.google.android.gms.R;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.zzaf;
import com.google.android.gms.common.internal.zzag;
import com.google.android.gms.dynamic.zzg;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class SignInButton extends FrameLayout implements View.OnClickListener {
    public static final int COLOR_AUTO = 2;
    public static final int COLOR_DARK = 0;
    public static final int COLOR_LIGHT = 1;
    public static final int SIZE_ICON_ONLY = 2;
    public static final int SIZE_STANDARD = 0;
    public static final int SIZE_WIDE = 1;
    private int mColor;
    private int mSize;
    private View.OnClickListener rA;
    private Scope[] ry;
    private View rz;

    @Retention(RetentionPolicy.SOURCE)
    public @interface ButtonSize {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface ColorScheme {
    }

    public SignInButton(Context context) {
        this(context, null);
    }

    public SignInButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public SignInButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.rA = null;
        zzb(context, attributeSet);
        setStyle(this.mSize, this.mColor, this.ry);
    }

    private static Button zza(Context context, int i, int i2, Scope[] scopeArr) {
        zzag zzagVar = new zzag(context);
        zzagVar.zza(context.getResources(), i, i2, scopeArr);
        return zzagVar;
    }

    private void zzb(Context context, AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, R.styleable.SignInButton, 0, 0);
        try {
            this.mSize = obtainStyledAttributes.getInt(R.styleable.SignInButton_buttonSize, 0);
            this.mColor = obtainStyledAttributes.getInt(R.styleable.SignInButton_colorScheme, 2);
            String string = obtainStyledAttributes.getString(R.styleable.SignInButton_scopeUris);
            if (string == null) {
                this.ry = null;
            } else {
                String[] split = string.trim().split("\\s+");
                this.ry = new Scope[split.length];
                for (int i = 0; i < split.length; i++) {
                    this.ry[i] = new Scope(split[i].toString());
                }
            }
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    private void zzca(Context context) {
        if (this.rz != null) {
            removeView(this.rz);
        }
        try {
            this.rz = zzaf.zzb(context, this.mSize, this.mColor, this.ry);
        } catch (zzg.zza e) {
            Log.w("SignInButton", "Sign in button not found, using placeholder instead");
            this.rz = zza(context, this.mSize, this.mColor, this.ry);
        }
        addView(this.rz);
        this.rz.setEnabled(isEnabled());
        this.rz.setOnClickListener(this);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (this.rA == null || view != this.rz) {
            return;
        }
        this.rA.onClick(this);
    }

    public void setColorScheme(int i) {
        setStyle(this.mSize, i, this.ry);
    }

    @Override // android.view.View
    public void setEnabled(boolean z) {
        super.setEnabled(z);
        this.rz.setEnabled(z);
    }

    @Override // android.view.View
    public void setOnClickListener(View.OnClickListener onClickListener) {
        this.rA = onClickListener;
        if (this.rz != null) {
            this.rz.setOnClickListener(this);
        }
    }

    public void setScopes(Scope[] scopeArr) {
        setStyle(this.mSize, this.mColor, scopeArr);
    }

    public void setSize(int i) {
        setStyle(i, this.mColor, this.ry);
    }

    public void setStyle(int i, int i2) {
        setStyle(i, i2, this.ry);
    }

    public void setStyle(int i, int i2, Scope[] scopeArr) {
        this.mSize = i;
        this.mColor = i2;
        this.ry = scopeArr;
        zzca(getContext());
    }
}
