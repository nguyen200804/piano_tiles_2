package com.facebook.share.widget;

import android.content.Context;
import android.util.AttributeSet;
import com.facebook.R;
import com.facebook.internal.e;
import com.facebook.internal.h;
import com.facebook.share.a;
import com.facebook.share.model.ShareContent;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class SendButton extends ShareButtonBase {
    public SendButton(Context context, AttributeSet attrs) {
        super(context, attrs, 0, "fb_send_button_create", "fb_send_button_did_tap");
    }

    public SendButton(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr, "fb_send_button_create", "fb_send_button_did_tap");
    }

    @Override // com.facebook.FacebookButtonBase
    protected int f() {
        return R.style.com_facebook_button_send;
    }

    @Override // com.facebook.FacebookButtonBase
    protected int a() {
        return e.b.Message.a();
    }

    @Override // com.facebook.share.widget.ShareButtonBase
    protected h<ShareContent, a.C0091a> g() {
        if (b() != null) {
            return new c(b(), d());
        }
        if (c() != null) {
            return new c(c(), d());
        }
        return new c(e(), d());
    }
}
