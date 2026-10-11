package com.facebook.login.widget;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.os.Bundle;
import android.util.AttributeSet;
import android.view.View;
import com.facebook.AccessToken;
import com.facebook.FacebookButtonBase;
import com.facebook.Profile;
import com.facebook.R;
import com.facebook.d;
import com.facebook.internal.aa;
import com.facebook.internal.e;
import com.facebook.internal.t;
import com.facebook.l;
import com.facebook.login.e;
import com.facebook.login.widget.a;
import java.util.Collections;
import java.util.List;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class LoginButton extends FacebookButtonBase {

    /* renamed from: a, reason: collision with root package name */
    private static final String f3331a = LoginButton.class.getName();

    /* renamed from: b, reason: collision with root package name */
    private boolean f3332b;
    private String c;
    private String d;
    private a e;
    private String f;
    private boolean g;
    private a.b h;
    private c i;
    private long j;
    private com.facebook.login.widget.a k;
    private d l;
    private e m;

    public enum c {
        AUTOMATIC("automatic", 0),
        DISPLAY_ALWAYS("display_always", 1),
        NEVER_DISPLAY("never_display", 2);

        private String e;
        private int f;
        public static c d = AUTOMATIC;

        public static c a(int i) {
            for (c cVar : values()) {
                if (cVar.a() == i) {
                    return cVar;
                }
            }
            return null;
        }

        c(String str, int i) {
            this.e = str;
            this.f = i;
        }

        @Override // java.lang.Enum
        public String toString() {
            return this.e;
        }

        public int a() {
            return this.f;
        }
    }

    static class a {

        /* renamed from: a, reason: collision with root package name */
        private com.facebook.login.a f3339a = com.facebook.login.a.FRIENDS;

        /* renamed from: b, reason: collision with root package name */
        private List<String> f3340b = Collections.emptyList();
        private t c = null;
        private com.facebook.login.c d = com.facebook.login.c.NATIVE_WITH_FALLBACK;

        a() {
        }

        public com.facebook.login.a a() {
            return this.f3339a;
        }

        public com.facebook.login.c b() {
            return this.d;
        }
    }

    public LoginButton(Context context, AttributeSet attrs) {
        super(context, attrs, 0, 0, "fb_login_button_create", "fb_login_button_did_tap");
        this.e = new a();
        this.f = "fb_login_view_usage";
        this.h = a.b.BLUE;
        this.j = 6000L;
    }

    public LoginButton(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle, 0, "fb_login_button_create", "fb_login_button_did_tap");
        this.e = new a();
        this.f = "fb_login_view_usage";
        this.h = a.b.BLUE;
        this.j = 6000L;
    }

    public com.facebook.login.a g() {
        return this.e.a();
    }

    public com.facebook.login.c h() {
        return this.e.b();
    }

    public void i() {
        if (this.k != null) {
            this.k.b();
            this.k = null;
        }
    }

    @Override // com.facebook.FacebookButtonBase, android.widget.TextView, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.l != null && !this.l.c()) {
            this.l.a();
            l();
        }
    }

    @Override // com.facebook.FacebookButtonBase, android.widget.TextView, android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (!this.g && !isInEditMode()) {
            this.g = true;
            k();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(aa.b bVar) {
        if (bVar != null && bVar.c() && getVisibility() == 0) {
            b(bVar.b());
        }
    }

    private void b(String str) {
        this.k = new com.facebook.login.widget.a(str, this);
        this.k.a(this.h);
        this.k.a(this.j);
        this.k.a();
    }

    private void k() {
        switch (this.i) {
            case AUTOMATIC:
                final String a2 = aa.a(getContext());
                l.d().execute(new Runnable() { // from class: com.facebook.login.widget.LoginButton.1
                    @Override // java.lang.Runnable
                    public void run() {
                        final aa.b a3 = aa.a(a2, false);
                        LoginButton.this.e().runOnUiThread(new Runnable() { // from class: com.facebook.login.widget.LoginButton.1.1
                            @Override // java.lang.Runnable
                            public void run() {
                                LoginButton.this.a(a3);
                            }
                        });
                    }
                });
                break;
            case DISPLAY_ALWAYS:
                b(getResources().getString(R.string.com_facebook_tooltip_default));
                break;
        }
    }

    @Override // android.widget.TextView, android.view.View
    protected void onLayout(boolean changed, int left, int top, int right, int bottom) {
        super.onLayout(changed, left, top, right, bottom);
        l();
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.l != null) {
            this.l.b();
        }
        i();
    }

    @Override // android.widget.TextView, android.view.View
    protected void onVisibilityChanged(View changedView, int visibility) {
        super.onVisibilityChanged(changedView, visibility);
        if (visibility != 0) {
            i();
        }
    }

    @Override // com.facebook.FacebookButtonBase
    protected void a(Context context, AttributeSet attributeSet, int i, int i2) {
        super.a(context, attributeSet, i, i2);
        a(new b());
        b(context, attributeSet, i, i2);
        if (isInEditMode()) {
            setBackgroundColor(getResources().getColor(R.color.com_facebook_blue));
            this.c = "Log in with Facebook";
        } else {
            this.l = new d() { // from class: com.facebook.login.widget.LoginButton.2
                @Override // com.facebook.d
                protected void a(AccessToken accessToken, AccessToken accessToken2) {
                    LoginButton.this.l();
                }
            };
        }
        l();
    }

    @Override // com.facebook.FacebookButtonBase
    protected int f() {
        return R.style.com_facebook_loginview_default_style;
    }

    private void b(Context context, AttributeSet attributeSet, int i, int i2) {
        this.i = c.d;
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, R.styleable.com_facebook_login_view, i, i2);
        try {
            this.f3332b = obtainStyledAttributes.getBoolean(R.styleable.com_facebook_login_view_com_facebook_confirm_logout, true);
            this.c = obtainStyledAttributes.getString(R.styleable.com_facebook_login_view_com_facebook_login_text);
            this.d = obtainStyledAttributes.getString(R.styleable.com_facebook_login_view_com_facebook_logout_text);
            this.i = c.a(obtainStyledAttributes.getInt(R.styleable.com_facebook_login_view_com_facebook_tooltip_mode, c.d.a()));
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    @Override // android.widget.TextView, android.view.View
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        Paint.FontMetrics fontMetrics = getPaint().getFontMetrics();
        int compoundPaddingBottom = getCompoundPaddingBottom() + ((int) Math.ceil(Math.abs(fontMetrics.bottom) + Math.abs(fontMetrics.top))) + getCompoundPaddingTop();
        Resources resources = getResources();
        String str = this.c;
        if (str == null) {
            str = resources.getString(R.string.com_facebook_loginview_log_in_button_long);
            int c2 = c(str);
            if (resolveSize(c2, widthMeasureSpec) < c2) {
                str = resources.getString(R.string.com_facebook_loginview_log_in_button);
            }
        }
        int c3 = c(str);
        String str2 = this.d;
        if (str2 == null) {
            str2 = resources.getString(R.string.com_facebook_loginview_log_out_button);
        }
        setMeasuredDimension(resolveSize(Math.max(c3, c(str2)), widthMeasureSpec), compoundPaddingBottom);
    }

    private int c(String str) {
        return a(str) + getCompoundPaddingLeft() + getCompoundDrawablePadding() + getCompoundPaddingRight();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l() {
        Resources resources = getResources();
        if (!isInEditMode() && AccessToken.a() != null) {
            setText(this.d != null ? this.d : resources.getString(R.string.com_facebook_loginview_log_out_button));
            return;
        }
        if (this.c != null) {
            setText(this.c);
            return;
        }
        String string = resources.getString(R.string.com_facebook_loginview_log_in_button_long);
        int width = getWidth();
        if (width != 0 && c(string) > width) {
            string = resources.getString(R.string.com_facebook_loginview_log_in_button);
        }
        setText(string);
    }

    @Override // com.facebook.FacebookButtonBase
    protected int a() {
        return e.b.Login.a();
    }

    private class b implements View.OnClickListener {
        private b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v) {
            String string;
            LoginButton.this.a(v);
            Context context = LoginButton.this.getContext();
            AccessToken a2 = AccessToken.a();
            if (a2 != null) {
                if (LoginButton.this.f3332b) {
                    String string2 = LoginButton.this.getResources().getString(R.string.com_facebook_loginview_log_out_action);
                    String string3 = LoginButton.this.getResources().getString(R.string.com_facebook_loginview_cancel_action);
                    Profile a3 = Profile.a();
                    if (a3 != null && a3.c() != null) {
                        string = String.format(LoginButton.this.getResources().getString(R.string.com_facebook_loginview_logged_in_as), a3.c());
                    } else {
                        string = LoginButton.this.getResources().getString(R.string.com_facebook_loginview_logged_in_using_facebook);
                    }
                    AlertDialog.Builder builder = new AlertDialog.Builder(context);
                    builder.setMessage(string).setCancelable(true).setPositiveButton(string2, new DialogInterface.OnClickListener() { // from class: com.facebook.login.widget.LoginButton.b.1
                        @Override // android.content.DialogInterface.OnClickListener
                        public void onClick(DialogInterface dialog, int which) {
                            LoginButton.this.j().b();
                        }
                    }).setNegativeButton(string3, (DialogInterface.OnClickListener) null);
                    builder.create().show();
                } else {
                    LoginButton.this.j().b();
                }
            } else {
                com.facebook.login.e j = LoginButton.this.j();
                j.a(LoginButton.this.g());
                j.a(LoginButton.this.h());
                if (t.PUBLISH.equals(LoginButton.this.e.c)) {
                    if (LoginButton.this.b() != null) {
                        j.b(LoginButton.this.b(), LoginButton.this.e.f3340b);
                    } else if (LoginButton.this.c() != null) {
                        j.b(LoginButton.this.c(), LoginButton.this.e.f3340b);
                    } else {
                        j.b(LoginButton.this.e(), LoginButton.this.e.f3340b);
                    }
                } else if (LoginButton.this.b() != null) {
                    j.a(LoginButton.this.b(), LoginButton.this.e.f3340b);
                } else if (LoginButton.this.c() != null) {
                    j.a(LoginButton.this.c(), LoginButton.this.e.f3340b);
                } else {
                    j.a(LoginButton.this.e(), LoginButton.this.e.f3340b);
                }
            }
            com.facebook.appevents.a b2 = com.facebook.appevents.a.b(LoginButton.this.getContext());
            Bundle bundle = new Bundle();
            bundle.putInt("logging_in", a2 != null ? 0 : 1);
            b2.a(LoginButton.this.f, (Double) null, bundle);
        }
    }

    com.facebook.login.e j() {
        if (this.m == null) {
            this.m = com.facebook.login.e.a();
        }
        return this.m;
    }
}
