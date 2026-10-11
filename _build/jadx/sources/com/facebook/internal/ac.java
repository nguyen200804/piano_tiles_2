package com.facebook.internal;

import android.annotation.SuppressLint;
import android.app.Dialog;
import android.app.ProgressDialog;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.net.http.SslError;
import android.os.Bundle;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.webkit.SslErrorHandler;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.facebook.AccessToken;
import com.facebook.R;
import java.util.Locale;

/* compiled from: WebDialog.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class ac extends Dialog {

    /* renamed from: a, reason: collision with root package name */
    private String f3170a;

    /* renamed from: b, reason: collision with root package name */
    private String f3171b;
    private c c;
    private WebView d;
    private ProgressDialog e;
    private ImageView f;
    private FrameLayout g;
    private boolean h;
    private boolean i;
    private boolean j;

    /* compiled from: WebDialog.java */
    public interface c {
        void a(Bundle bundle, com.facebook.i iVar);
    }

    public ac(Context context, String str) {
        this(context, str, com.facebook.l.l());
    }

    public ac(Context context, String str, int i) {
        super(context, i == 0 ? com.facebook.l.l() : i);
        this.f3171b = "fbconnect://success";
        this.h = false;
        this.i = false;
        this.j = false;
        this.f3170a = str;
    }

    public ac(Context context, String str, Bundle bundle, int i, c cVar) {
        super(context, i == 0 ? com.facebook.l.l() : i);
        this.f3171b = "fbconnect://success";
        this.h = false;
        this.i = false;
        this.j = false;
        bundle = bundle == null ? new Bundle() : bundle;
        bundle.putString("redirect_uri", "fbconnect://success");
        bundle.putString("display", "touch");
        bundle.putString("sdk", String.format(Locale.ROOT, "android-%s", com.facebook.l.g()));
        this.f3170a = aa.a(y.a(), y.d() + "/dialog/" + str, bundle).toString();
        this.c = cVar;
    }

    public void a(c cVar) {
        this.c = cVar;
    }

    @Override // android.app.Dialog, android.view.KeyEvent.Callback
    public boolean onKeyDown(int keyCode, KeyEvent event) {
        if (keyCode == 4) {
            cancel();
        }
        return super.onKeyDown(keyCode, event);
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        if (this.d != null) {
            this.d.stopLoading();
        }
        if (!this.i && this.e != null && this.e.isShowing()) {
            this.e.dismiss();
        }
        super.dismiss();
    }

    @Override // android.app.Dialog
    protected void onStart() {
        super.onStart();
        d();
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public void onDetachedFromWindow() {
        this.i = true;
        super.onDetachedFromWindow();
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public void onAttachedToWindow() {
        this.i = false;
        super.onAttachedToWindow();
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        this.e = new ProgressDialog(getContext());
        this.e.requestWindowFeature(1);
        this.e.setMessage(getContext().getString(R.string.com_facebook_loading));
        this.e.setCanceledOnTouchOutside(false);
        this.e.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.facebook.internal.ac.1
            @Override // android.content.DialogInterface.OnCancelListener
            public void onCancel(DialogInterface dialogInterface) {
                ac.this.cancel();
            }
        });
        requestWindowFeature(1);
        this.g = new FrameLayout(getContext());
        d();
        getWindow().setGravity(17);
        getWindow().setSoftInputMode(16);
        e();
        a((this.f.getDrawable().getIntrinsicWidth() / 2) + 1);
        this.g.addView(this.f, new ViewGroup.LayoutParams(-2, -2));
        setContentView(this.g);
    }

    protected void b(String str) {
        this.f3171b = str;
    }

    protected Bundle a(String str) {
        Uri parse = Uri.parse(str);
        Bundle c2 = aa.c(parse.getQuery());
        c2.putAll(aa.c(parse.getFragment()));
        return c2;
    }

    protected boolean a() {
        return this.h;
    }

    protected boolean b() {
        return this.j;
    }

    protected WebView c() {
        return this.d;
    }

    public void d() {
        Display defaultDisplay = ((WindowManager) getContext().getSystemService("window")).getDefaultDisplay();
        DisplayMetrics displayMetrics = new DisplayMetrics();
        defaultDisplay.getMetrics(displayMetrics);
        getWindow().setLayout(Math.min(a(displayMetrics.widthPixels < displayMetrics.heightPixels ? displayMetrics.widthPixels : displayMetrics.heightPixels, displayMetrics.density, 480, 800), displayMetrics.widthPixels), Math.min(a(displayMetrics.widthPixels < displayMetrics.heightPixels ? displayMetrics.heightPixels : displayMetrics.widthPixels, displayMetrics.density, 800, 1280), displayMetrics.heightPixels));
    }

    private int a(int i, float f, int i2, int i3) {
        double d = 0.5d;
        int i4 = (int) (i / f);
        if (i4 <= i2) {
            d = 1.0d;
        } else if (i4 < i3) {
            d = 0.5d + (((i3 - i4) / (i3 - i2)) * 0.5d);
        }
        return (int) (d * i);
    }

    protected void a(Bundle bundle) {
        if (this.c != null && !this.h) {
            this.h = true;
            this.c.a(bundle, null);
            dismiss();
        }
    }

    protected void a(Throwable th) {
        com.facebook.i iVar;
        if (this.c != null && !this.h) {
            this.h = true;
            if (th instanceof com.facebook.i) {
                iVar = (com.facebook.i) th;
            } else {
                iVar = new com.facebook.i(th);
            }
            this.c.a(null, iVar);
            dismiss();
        }
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void cancel() {
        if (this.c != null && !this.h) {
            a(new com.facebook.j());
        }
    }

    private void e() {
        this.f = new ImageView(getContext());
        this.f.setOnClickListener(new View.OnClickListener() { // from class: com.facebook.internal.ac.2
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                ac.this.cancel();
            }
        });
        this.f.setImageDrawable(getContext().getResources().getDrawable(R.drawable.com_facebook_close));
        this.f.setVisibility(4);
    }

    @SuppressLint({"SetJavaScriptEnabled"})
    private void a(int i) {
        LinearLayout linearLayout = new LinearLayout(getContext());
        this.d = new WebView(getContext().getApplicationContext()) { // from class: com.facebook.internal.ac.3
            @Override // android.webkit.WebView, android.view.View
            public void onWindowFocusChanged(boolean hasWindowFocus) {
                try {
                    super.onWindowFocusChanged(hasWindowFocus);
                } catch (NullPointerException e) {
                }
            }
        };
        this.d.setVerticalScrollBarEnabled(false);
        this.d.setHorizontalScrollBarEnabled(false);
        this.d.setWebViewClient(new b());
        this.d.getSettings().setJavaScriptEnabled(true);
        this.d.loadUrl(this.f3170a);
        this.d.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        this.d.setVisibility(4);
        this.d.getSettings().setSavePassword(false);
        this.d.getSettings().setSaveFormData(false);
        this.d.setFocusable(true);
        this.d.setFocusableInTouchMode(true);
        this.d.setOnTouchListener(new View.OnTouchListener() { // from class: com.facebook.internal.ac.4
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View v, MotionEvent event) {
                if (!v.hasFocus()) {
                    v.requestFocus();
                    return false;
                }
                return false;
            }
        });
        linearLayout.setPadding(i, i, i, i);
        linearLayout.addView(this.d);
        linearLayout.setBackgroundColor(-872415232);
        this.g.addView(linearLayout);
    }

    /* compiled from: WebDialog.java */
    private class b extends WebViewClient {
        private b() {
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView view, String url) {
            int i;
            aa.a("FacebookSDK.WebDialog", "Redirect URL: " + url);
            if (url.startsWith(ac.this.f3171b)) {
                Bundle a2 = ac.this.a(url);
                String string = a2.getString("error");
                if (string == null) {
                    string = a2.getString("error_type");
                }
                String string2 = a2.getString("error_msg");
                if (string2 == null) {
                    string2 = a2.getString("error_message");
                }
                if (string2 == null) {
                    string2 = a2.getString("error_description");
                }
                String string3 = a2.getString("error_code");
                if (aa.a(string3)) {
                    i = -1;
                } else {
                    try {
                        i = Integer.parseInt(string3);
                    } catch (NumberFormatException e) {
                        i = -1;
                    }
                }
                if (aa.a(string) && aa.a(string2) && i == -1) {
                    ac.this.a(a2);
                } else if (string != null && (string.equals("access_denied") || string.equals("OAuthAccessDeniedException"))) {
                    ac.this.cancel();
                } else if (i == 4201) {
                    ac.this.cancel();
                } else {
                    ac.this.a(new com.facebook.n(new com.facebook.k(i, string, string2), string2));
                }
                return true;
            }
            if (url.startsWith("fbconnect://cancel")) {
                ac.this.cancel();
                return true;
            }
            if (url.contains("touch")) {
                return false;
            }
            try {
                ac.this.getContext().startActivity(new Intent("android.intent.action.VIEW", Uri.parse(url)));
                return true;
            } catch (ActivityNotFoundException e2) {
                return false;
            }
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedError(WebView view, int errorCode, String description, String failingUrl) {
            super.onReceivedError(view, errorCode, description, failingUrl);
            ac.this.a(new com.facebook.h(description, errorCode, failingUrl));
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedSslError(WebView view, SslErrorHandler handler, SslError error) {
            super.onReceivedSslError(view, handler, error);
            handler.cancel();
            ac.this.a(new com.facebook.h(null, -11, null));
        }

        @Override // android.webkit.WebViewClient
        public void onPageStarted(WebView view, String url, Bitmap favicon) {
            aa.a("FacebookSDK.WebDialog", "Webview loading URL: " + url);
            super.onPageStarted(view, url, favicon);
            if (!ac.this.i) {
                ac.this.e.show();
            }
        }

        @Override // android.webkit.WebViewClient
        public void onPageFinished(WebView view, String url) {
            super.onPageFinished(view, url);
            if (!ac.this.i) {
                ac.this.e.dismiss();
            }
            ac.this.g.setBackgroundColor(0);
            ac.this.d.setVisibility(0);
            ac.this.f.setVisibility(0);
            ac.this.j = true;
        }
    }

    /* compiled from: WebDialog.java */
    public static class a {

        /* renamed from: a, reason: collision with root package name */
        private Context f3176a;

        /* renamed from: b, reason: collision with root package name */
        private String f3177b;
        private String c;
        private int d;
        private c e;
        private Bundle f;
        private AccessToken g;

        public a(Context context, String str, Bundle bundle) {
            this.g = AccessToken.a();
            if (this.g == null) {
                String a2 = aa.a(context);
                if (a2 != null) {
                    this.f3177b = a2;
                } else {
                    throw new com.facebook.i("Attempted to create a builder without a valid access token or a valid default Application ID.");
                }
            }
            a(context, str, bundle);
        }

        public a(Context context, String str, String str2, Bundle bundle) {
            str = str == null ? aa.a(context) : str;
            ab.a(str, "applicationId");
            this.f3177b = str;
            a(context, str2, bundle);
        }

        public a a(c cVar) {
            this.e = cVar;
            return this;
        }

        public ac a() {
            if (this.g != null) {
                this.f.putString("app_id", this.g.i());
                this.f.putString("access_token", this.g.c());
            } else {
                this.f.putString("app_id", this.f3177b);
            }
            return new ac(this.f3176a, this.c, this.f, this.d, this.e);
        }

        public String b() {
            return this.f3177b;
        }

        public Context c() {
            return this.f3176a;
        }

        public int d() {
            return this.d;
        }

        public Bundle e() {
            return this.f;
        }

        public c f() {
            return this.e;
        }

        private void a(Context context, String str, Bundle bundle) {
            this.f3176a = context;
            this.c = str;
            if (bundle != null) {
                this.f = bundle;
            } else {
                this.f = new Bundle();
            }
        }
    }
}
