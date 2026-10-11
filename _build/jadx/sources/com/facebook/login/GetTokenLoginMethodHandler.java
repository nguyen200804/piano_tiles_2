package com.facebook.login;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.facebook.i;
import com.facebook.internal.aa;
import com.facebook.internal.w;
import com.facebook.login.LoginClient;
import com.google.ads.mediation.facebook.FacebookAdapter;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Set;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class GetTokenLoginMethodHandler extends LoginMethodHandler {
    public static final Parcelable.Creator<GetTokenLoginMethodHandler> CREATOR = new Parcelable.Creator() { // from class: com.facebook.login.GetTokenLoginMethodHandler.3
        @Override // android.os.Parcelable.Creator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public GetTokenLoginMethodHandler createFromParcel(Parcel parcel) {
            return new GetTokenLoginMethodHandler(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public GetTokenLoginMethodHandler[] newArray(int i) {
            return new GetTokenLoginMethodHandler[i];
        }
    };
    private b c;

    GetTokenLoginMethodHandler(LoginClient loginClient) {
        super(loginClient);
    }

    @Override // com.facebook.login.LoginMethodHandler
    String c() {
        return "get_token";
    }

    @Override // com.facebook.login.LoginMethodHandler
    void a() {
        if (this.c != null) {
            this.c.b();
            this.c.a((w.a) null);
            this.c = null;
        }
    }

    @Override // com.facebook.login.LoginMethodHandler
    boolean a(final LoginClient.Request request) {
        this.c = new b(this.f3310b.b(), request.d());
        if (!this.c.a()) {
            return false;
        }
        this.f3310b.k();
        this.c.a(new w.a() { // from class: com.facebook.login.GetTokenLoginMethodHandler.1
            @Override // com.facebook.internal.w.a
            public void a(Bundle bundle) {
                GetTokenLoginMethodHandler.this.a(request, bundle);
            }
        });
        return true;
    }

    void a(LoginClient.Request request, Bundle bundle) {
        if (this.c != null) {
            this.c.a((w.a) null);
        }
        this.c = null;
        this.f3310b.l();
        if (bundle != null) {
            ArrayList<String> stringArrayList = bundle.getStringArrayList("com.facebook.platform.extra.PERMISSIONS");
            Set<String> a2 = request.a();
            if (stringArrayList != null && (a2 == null || stringArrayList.containsAll(a2))) {
                c(request, bundle);
                return;
            }
            HashSet hashSet = new HashSet();
            for (String str : a2) {
                if (!stringArrayList.contains(str)) {
                    hashSet.add(str);
                }
            }
            if (!hashSet.isEmpty()) {
                a("new_permissions", TextUtils.join(",", hashSet));
            }
            request.a(hashSet);
        }
        this.f3310b.i();
    }

    void b(LoginClient.Request request, Bundle bundle) {
        this.f3310b.a(LoginClient.Result.a(this.f3310b.c(), a(bundle, com.facebook.c.FACEBOOK_APPLICATION_SERVICE, request.d())));
    }

    void c(final LoginClient.Request request, final Bundle bundle) {
        String string = bundle.getString("com.facebook.platform.extra.USER_ID");
        if (string == null || string.isEmpty()) {
            this.f3310b.k();
            aa.a(bundle.getString("com.facebook.platform.extra.ACCESS_TOKEN"), new aa.c() { // from class: com.facebook.login.GetTokenLoginMethodHandler.2
                @Override // com.facebook.internal.aa.c
                public void a(JSONObject jSONObject) {
                    try {
                        bundle.putString("com.facebook.platform.extra.USER_ID", jSONObject.getString(FacebookAdapter.KEY_ID));
                        GetTokenLoginMethodHandler.this.b(request, bundle);
                    } catch (JSONException e) {
                        GetTokenLoginMethodHandler.this.f3310b.b(LoginClient.Result.a(GetTokenLoginMethodHandler.this.f3310b.c(), "Caught exception", e.getMessage()));
                    }
                }

                @Override // com.facebook.internal.aa.c
                public void a(i iVar) {
                    GetTokenLoginMethodHandler.this.f3310b.b(LoginClient.Result.a(GetTokenLoginMethodHandler.this.f3310b.c(), "Caught exception", iVar.getMessage()));
                }
            });
        } else {
            b(request, bundle);
        }
    }

    GetTokenLoginMethodHandler(Parcel source) {
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
