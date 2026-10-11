package com.facebook.share.internal;

import android.content.Context;
import android.util.AttributeSet;
import com.facebook.FacebookButtonBase;
import com.facebook.R;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class LikeButton extends FacebookButtonBase {
    @Override // android.widget.TextView, android.view.View
    public void setSelected(boolean selected) {
        super.setSelected(selected);
        g();
    }

    @Override // com.facebook.FacebookButtonBase
    protected void a(Context context, AttributeSet attributeSet, int i, int i2) {
        super.a(context, attributeSet, i, i2);
        g();
    }

    @Override // com.facebook.FacebookButtonBase
    protected int a() {
        return 0;
    }

    @Override // com.facebook.FacebookButtonBase
    protected int f() {
        return R.style.com_facebook_button_like;
    }

    private void g() {
        if (isSelected()) {
            setCompoundDrawablesWithIntrinsicBounds(R.drawable.com_facebook_button_like_icon_selected, 0, 0, 0);
            setText(getResources().getString(R.string.com_facebook_like_button_liked));
        } else {
            setCompoundDrawablesWithIntrinsicBounds(R.drawable.com_facebook_button_icon, 0, 0, 0);
            setText(getResources().getString(R.string.com_facebook_like_button_not_liked));
        }
    }
}
