package com.facebook.login;

import android.content.Context;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.app.FragmentActivity;
import android.text.TextUtils;
import android.webkit.CookieSyncManager;
import com.facebook.AccessToken;
import com.facebook.i;
import com.facebook.internal.FacebookDialogFragment;
import com.facebook.internal.aa;
import com.facebook.internal.ac;
import com.facebook.j;
import com.facebook.k;
import com.facebook.login.LoginClient;
import com.facebook.n;
import java.util.Locale;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class WebViewLoginMethodHandler extends LoginMethodHandler {
    public static final Parcelable.Creator<WebViewLoginMethodHandler> CREATOR = new Parcelable.Creator() { // from class: com.facebook.login.WebViewLoginMethodHandler.2
        @Override // android.os.Parcelable.Creator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public WebViewLoginMethodHandler createFromParcel(Parcel parcel) {
            return new WebViewLoginMethodHandler(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public WebViewLoginMethodHandler[] newArray(int i) {
            return new WebViewLoginMethodHandler[i];
        }
    };
    private ac c;
    private String d;

    WebViewLoginMethodHandler(LoginClient loginClient) {
        super(loginClient);
    }

    @Override // com.facebook.login.LoginMethodHandler
    String c() {
        return "web_view";
    }

    @Override // com.facebook.login.LoginMethodHandler
    boolean d() {
        return true;
    }

    @Override // com.facebook.login.LoginMethodHandler
    void a() {
        if (this.c != null) {
            this.c.cancel();
            this.c = null;
        }
    }

    @Override // com.facebook.login.LoginMethodHandler
    boolean a(final LoginClient.Request request) {
        Bundle bundle = new Bundle();
        if (!aa.a(request.a())) {
            String join = TextUtils.join(",", request.a());
            bundle.putString("scope", join);
            a("scope", join);
        }
        bundle.putString("default_audience", request.c().a());
        AccessToken a2 = AccessToken.a();
        String c = a2 != null ? a2.c() : null;
        if (c != null && c.equals(b())) {
            bundle.putString("access_token", c);
            a("access_token", "1");
        } else {
            aa.b(this.f3310b.b());
            a("access_token", "0");
        }
        ac.c cVar = new ac.c() { // from class: com.facebook.login.WebViewLoginMethodHandler.1
            @Override // com.facebook.internal.ac.c
            public void a(Bundle bundle2, i iVar) {
                WebViewLoginMethodHandler.this.a(request, bundle2, iVar);
            }
        };
        this.d = LoginClient.m();
        a("e2e", this.d);
        bundle.putString("state", a(request.e()));
        FragmentActivity b2 = this.f3310b.b();
        this.c = new a(b2, request.d(), bundle).a(this.d).a(request.f()).a(cVar).a();
        FacebookDialogFragment facebookDialogFragment = new FacebookDialogFragment();
        facebookDialogFragment.setRetainInstance(true);
        facebookDialogFragment.a(this.c);
        facebookDialogFragment.show(b2.getSupportFragmentManager(), "FacebookDialogFragment");
        return true;
    }

    void a(LoginClient.Request request, Bundle bundle, i iVar) {
        String str;
        LoginClient.Result a2;
        if (bundle != null) {
            if (bundle.containsKey("e2e")) {
                this.d = bundle.getString("e2e");
            }
            try {
                AccessToken a3 = a(request.a(), bundle, com.facebook.c.WEB_VIEW, request.d());
                a2 = LoginClient.Result.a(this.f3310b.c(), a3);
                CookieSyncManager.createInstance(this.f3310b.b()).sync();
                c(a3.c());
            } catch (i e) {
                a2 = LoginClient.Result.a(this.f3310b.c(), null, e.getMessage());
            }
        } else if (iVar instanceof j) {
            a2 = LoginClient.Result.a(this.f3310b.c(), "User canceled log in.");
        } else {
            this.d = null;
            String message = iVar.getMessage();
            if (iVar instanceof n) {
                k a4 = ((n) iVar).a();
                str = String.format(Locale.ROOT, "%d", Integer.valueOf(a4.b()));
                message = a4.toString();
            } else {
                str = null;
            }
            a2 = LoginClient.Result.a(this.f3310b.c(), null, message, str);
        }
        if (!aa.a(this.d)) {
            b(this.d);
        }
        this.f3310b.a(a2);
    }

    private void c(String str) {
        this.f3310b.b().getSharedPreferences("com.facebook.login.AuthorizationClient.WebViewAuthHandler.TOKEN_STORE_KEY", 0).edit().putString("TOKEN", str).apply();
    }

    private String b() {
        return this.f3310b.b().getSharedPreferences("com.facebook.login.AuthorizationClient.WebViewAuthHandler.TOKEN_STORE_KEY", 0).getString("TOKEN", "");
    }

    static class a extends ac.a {

        /* renamed from: a, reason: collision with root package name */
        private String f3313a;

        /* renamed from: b, reason: collision with root package name */
        private boolean f3314b;

        public a(Context context, String str, Bundle bundle) {
            super(context, str, "oauth", bundle);
        }

        public a a(String str) {
            this.f3313a = str;
            return this;
        }

        public a a(boolean z) {
            this.f3314b = z;
            return this;
        }

        @Override // com.facebook.internal.ac.a
        public ac a() {
            Bundle e = e();
            e.putString("redirect_uri", "fbconnect://success");
            e.putString("client_id", b());
            e.putString("e2e", this.f3313a);
            e.putString("response_type", "token,signed_request");
            e.putString("return_scopes", "true");
            if (this.f3314b) {
                e.putString("auth_type", "rerequest");
            }
            return new ac(c(), "oauth", e, d(), f());
        }
    }

    WebViewLoginMethodHandler(Parcel source) {
        super(source);
        this.d = source.readString();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.facebook.login.LoginMethodHandler, android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        super.writeToParcel(dest, flags);
        dest.writeString(this.d);
    }
}
