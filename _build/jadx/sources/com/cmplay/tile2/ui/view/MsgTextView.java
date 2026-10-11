package com.cmplay.tile2.ui.view;

import android.content.Context;
import android.graphics.Typeface;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.widget.TextView;
import com.cmplay.tile2.GameApp;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class MsgTextView extends TextView {

    /* renamed from: a, reason: collision with root package name */
    private Typeface f1682a;

    /* renamed from: b, reason: collision with root package name */
    private String f1683b;

    public MsgTextView(Context context) {
        super(context);
        this.f1683b = "fonts/Futura condensed.ttf";
        a();
    }

    public MsgTextView(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.f1683b = "fonts/Futura condensed.ttf";
        a();
    }

    public MsgTextView(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.f1683b = "fonts/Futura condensed.ttf";
        a();
    }

    private void a() {
        setTypeface(this.f1682a);
        setEllipsize(TextUtils.TruncateAt.END);
    }

    @Override // android.widget.TextView
    public Typeface getTypeface() {
        if (this.f1682a == null) {
            if (!TextUtils.isEmpty(this.f1683b)) {
                this.f1682a = Typeface.createFromAsset(GameApp.f1598a.getAssets(), this.f1683b);
            }
            if (this.f1682a == null) {
                this.f1682a = Typeface.DEFAULT;
            }
        }
        return this.f1682a;
    }
}
