package com.facebook.login;

import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.i;
import com.facebook.internal.aa;
import com.facebook.internal.v;
import com.facebook.internal.y;
import com.facebook.login.LoginClient;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class KatanaProxyLoginMethodHandler extends LoginMethodHandler {
    public static final Parcelable.Creator<KatanaProxyLoginMethodHandler> CREATOR = new Parcelable.Creator() { // from class: com.facebook.login.KatanaProxyLoginMethodHandler.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public KatanaProxyLoginMethodHandler createFromParcel(Parcel parcel) {
            return new KatanaProxyLoginMethodHandler(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public KatanaProxyLoginMethodHandler[] newArray(int i) {
            return new KatanaProxyLoginMethodHandler[i];
        }
    };

    KatanaProxyLoginMethodHandler(LoginClient loginClient) {
        super(loginClient);
    }

    @Override // com.facebook.login.LoginMethodHandler
    String c() {
        return "katana_proxy_auth";
    }

    @Override // com.facebook.login.LoginMethodHandler
    boolean a(LoginClient.Request request) {
        String m = LoginClient.m();
        Intent a2 = v.a(this.f3310b.b(), request.d(), request.a(), m, request.f(), request.g(), request.c(), a(request.e()));
        a("e2e", m);
        return a(a2, LoginClient.d());
    }

    @Override // com.facebook.login.LoginMethodHandler
    boolean a(int i, int i2, Intent intent) {
        LoginClient.Result a2;
        LoginClient.Request c = this.f3310b.c();
        if (intent == null) {
            a2 = LoginClient.Result.a(c, "Operation canceled");
        } else if (i2 == 0) {
            a2 = b(c, intent);
        } else if (i2 != -1) {
            a2 = LoginClient.Result.a(c, "Unexpected resultCode from authorization.", null);
        } else {
            a2 = a(c, intent);
        }
        if (a2 != null) {
            this.f3310b.a(a2);
            return true;
        }
        this.f3310b.i();
        return true;
    }

    private LoginClient.Result a(LoginClient.Request request, Intent intent) {
        Bundle extras = intent.getExtras();
        String a2 = a(extras);
        String string = extras.getString("error_code");
        String b2 = b(extras);
        String string2 = extras.getString("e2e");
        if (!aa.a(string2)) {
            b(string2);
        }
        if (a2 == null && string == null && b2 == null) {
            try {
                return LoginClient.Result.a(request, a(request.a(), extras, com.facebook.c.FACEBOOK_APPLICATION_WEB, request.d()));
            } catch (i e) {
                return LoginClient.Result.a(request, null, e.getMessage());
            }
        }
        if (y.f3266a.contains(a2)) {
            return null;
        }
        if (y.f3267b.contains(a2)) {
            return LoginClient.Result.a(request, (String) null);
        }
        return LoginClient.Result.a(request, a2, b2, string);
    }

    private LoginClient.Result b(LoginClient.Request request, Intent intent) {
        Bundle extras = intent.getExtras();
        String a2 = a(extras);
        String string = extras.getString("error_code");
        return "CONNECTION_FAILURE".equals(string) ? LoginClient.Result.a(request, a2, b(extras), string) : LoginClient.Result.a(request, a2);
    }

    private String a(Bundle bundle) {
        String string = bundle.getString("error");
        if (string == null) {
            return bundle.getString("error_type");
        }
        return string;
    }

    private String b(Bundle bundle) {
        String string = bundle.getString("error_message");
        if (string == null) {
            return bundle.getString("error_description");
        }
        return string;
    }

    protected boolean a(Intent intent, int i) {
        if (intent == null) {
            return false;
        }
        try {
            this.f3310b.a().startActivityForResult(intent, i);
            return true;
        } catch (ActivityNotFoundException e) {
            return false;
        }
    }

    KatanaProxyLoginMethodHandler(Parcel source) {
        super(source);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.facebook.login.LoginMethodHandler, android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        super.writeToParcel(dest, flags);
    }
}
