package com.facebook.share.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import com.facebook.FacebookButtonBase;
import com.facebook.internal.h;
import com.facebook.share.a;
import com.facebook.share.model.ShareContent;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public abstract class ShareButtonBase extends FacebookButtonBase {

    /* renamed from: a, reason: collision with root package name */
    private ShareContent f3536a;

    /* renamed from: b, reason: collision with root package name */
    private int f3537b;
    private boolean c;

    protected abstract h<ShareContent, a.C0091a> g();

    protected ShareButtonBase(Context context, AttributeSet attrs, int defStyleAttr, String analyticsButtonCreatedEventName, String analyticsButtonTappedEventName) {
        super(context, attrs, defStyleAttr, 0, analyticsButtonCreatedEventName, analyticsButtonTappedEventName);
        this.f3537b = 0;
        this.c = false;
        this.f3537b = isInEditMode() ? 0 : a();
        a(false);
    }

    public ShareContent h() {
        return this.f3536a;
    }

    @Override // android.widget.TextView, android.view.View
    public void setEnabled(boolean enabled) {
        super.setEnabled(enabled);
        this.c = true;
    }

    @Override // com.facebook.FacebookButtonBase
    public int d() {
        return this.f3537b;
    }

    @Override // com.facebook.FacebookButtonBase
    protected void a(Context context, AttributeSet attributeSet, int i, int i2) {
        super.a(context, attributeSet, i, i2);
        a(i());
    }

    protected boolean canShare() {
        return g().a(h());
    }

    protected View.OnClickListener i() {
        return new View.OnClickListener() { // from class: com.facebook.share.widget.ShareButtonBase.1
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                ShareButtonBase.this.a(v);
                ShareButtonBase.this.g().b(ShareButtonBase.this.h());
            }
        };
    }

    private void a(boolean z) {
        setEnabled(z);
        this.c = false;
    }
}
