package com.facebook.login;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.text.TextUtils;
import com.facebook.AccessToken;
import com.facebook.R;
import com.facebook.i;
import com.facebook.internal.aa;
import com.facebook.internal.ab;
import com.facebook.internal.e;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class LoginClient implements Parcelable {
    public static final Parcelable.Creator<LoginClient> CREATOR = new Parcelable.Creator() { // from class: com.facebook.login.LoginClient.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public LoginClient createFromParcel(Parcel parcel) {
            return new LoginClient(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public LoginClient[] newArray(int i) {
            return new LoginClient[i];
        }
    };

    /* renamed from: a, reason: collision with root package name */
    LoginMethodHandler[] f3296a;

    /* renamed from: b, reason: collision with root package name */
    int f3297b;
    Fragment c;
    b d;
    a e;
    boolean f;
    Request g;
    Map<String, String> h;
    private d i;

    interface a {
        void a();

        void b();
    }

    public interface b {
        void a(Result result);
    }

    public LoginClient(Fragment fragment) {
        this.f3297b = -1;
        this.c = fragment;
    }

    public Fragment a() {
        return this.c;
    }

    void a(Fragment fragment) {
        if (this.c != null) {
            throw new i("Can't set fragment once it is already set.");
        }
        this.c = fragment;
    }

    FragmentActivity b() {
        return this.c.getActivity();
    }

    public Request c() {
        return this.g;
    }

    public static int d() {
        return e.b.Login.a();
    }

    void a(Request request) {
        if (!e()) {
            b(request);
        }
    }

    void b(Request request) {
        if (request != null) {
            if (this.g != null) {
                throw new i("Attempted to authorize while a request is pending.");
            }
            if (AccessToken.a() == null || h()) {
                this.g = request;
                this.f3296a = c(request);
                i();
            }
        }
    }

    boolean e() {
        return this.g != null && this.f3297b >= 0;
    }

    void f() {
        if (this.f3297b >= 0) {
            g().a();
        }
    }

    LoginMethodHandler g() {
        if (this.f3297b >= 0) {
            return this.f3296a[this.f3297b];
        }
        return null;
    }

    public boolean a(int i, int i2, Intent intent) {
        LoginMethodHandler g;
        if (this.g == null || (g = g()) == null) {
            return false;
        }
        return g.a(i, i2, intent);
    }

    private LoginMethodHandler[] c(Request request) {
        ArrayList arrayList = new ArrayList();
        c b2 = request.b();
        if (b2.a()) {
            arrayList.add(new GetTokenLoginMethodHandler(this));
            arrayList.add(new KatanaProxyLoginMethodHandler(this));
        }
        if (b2.b()) {
            arrayList.add(new WebViewLoginMethodHandler(this));
        }
        if (b2.c()) {
            arrayList.add(new DeviceAuthMethodHandler(this));
        }
        LoginMethodHandler[] loginMethodHandlerArr = new LoginMethodHandler[arrayList.size()];
        arrayList.toArray(loginMethodHandlerArr);
        return loginMethodHandlerArr;
    }

    boolean h() {
        if (this.f) {
            return true;
        }
        if (a("android.permission.INTERNET") != 0) {
            FragmentActivity b2 = b();
            b(Result.a(this.g, b2.getString(R.string.com_facebook_internet_permission_error_title), b2.getString(R.string.com_facebook_internet_permission_error_message)));
            return false;
        }
        this.f = true;
        return true;
    }

    void i() {
        if (this.f3297b >= 0) {
            a(g().c(), "skipped", null, null, g().f3309a);
        }
        while (this.f3296a != null && this.f3297b < this.f3296a.length - 1) {
            this.f3297b++;
            if (j()) {
                return;
            }
        }
        if (this.g != null) {
            n();
        }
    }

    private void n() {
        b(Result.a(this.g, "Login attempt failed.", null));
    }

    private void a(String str, String str2, boolean z) {
        if (this.h == null) {
            this.h = new HashMap();
        }
        if (this.h.containsKey(str) && z) {
            str2 = this.h.get(str) + "," + str2;
        }
        this.h.put(str, str2);
    }

    boolean j() {
        boolean z = false;
        LoginMethodHandler g = g();
        if (g != null) {
            if (g.d() && !h()) {
                a("no_internet_permission", "1", false);
            } else {
                z = g.a(this.g);
                if (z) {
                    o().a(this.g.e(), g.c());
                } else {
                    a("not_tried", g.c(), true);
                }
            }
        }
        return z;
    }

    void a(Result result) {
        if (result.f3301b != null && AccessToken.a() != null) {
            c(result);
        } else {
            b(result);
        }
    }

    void b(Result result) {
        LoginMethodHandler g = g();
        if (g != null) {
            a(g.c(), result, g.f3309a);
        }
        if (this.h != null) {
            result.f = this.h;
        }
        this.f3296a = null;
        this.f3297b = -1;
        this.g = null;
        this.h = null;
        d(result);
    }

    void a(b bVar) {
        this.d = bVar;
    }

    void a(a aVar) {
        this.e = aVar;
    }

    int a(String str) {
        return b().checkCallingOrSelfPermission(str);
    }

    void c(Result result) {
        Result a2;
        if (result.f3301b == null) {
            throw new i("Can't validate without a token");
        }
        AccessToken a3 = AccessToken.a();
        AccessToken accessToken = result.f3301b;
        if (a3 != null && accessToken != null) {
            try {
                if (a3.j().equals(accessToken.j())) {
                    a2 = Result.a(this.g, result.f3301b);
                    b(a2);
                }
            } catch (Exception e) {
                b(Result.a(this.g, "Caught exception", e.getMessage()));
                return;
            }
        }
        a2 = Result.a(this.g, "User logged in as different Facebook user.", null);
        b(a2);
    }

    private d o() {
        if (this.i == null || !this.i.a().equals(this.g.d())) {
            this.i = new d(b(), this.g.d());
        }
        return this.i;
    }

    private void d(Result result) {
        if (this.d != null) {
            this.d.a(result);
        }
    }

    void k() {
        if (this.e != null) {
            this.e.a();
        }
    }

    void l() {
        if (this.e != null) {
            this.e.b();
        }
    }

    private void a(String str, Result result, Map<String, String> map) {
        a(str, result.f3300a.a(), result.c, result.d, map);
    }

    private void a(String str, String str2, String str3, String str4, Map<String, String> map) {
        if (this.g == null) {
            o().a("fb_mobile_login_method_complete", "Unexpected call to logCompleteLogin with null pendingAuthorizationRequest.", str);
        } else {
            o().a(this.g.e(), str, str2, str3, str4, map);
        }
    }

    static String m() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("init", System.currentTimeMillis());
        } catch (JSONException e) {
        }
        return jSONObject.toString();
    }

    public static class Request implements Parcelable {
        public static final Parcelable.Creator<Request> CREATOR = new Parcelable.Creator() { // from class: com.facebook.login.LoginClient.Request.1
            @Override // android.os.Parcelable.Creator
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public Request createFromParcel(Parcel parcel) {
                return new Request(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public Request[] newArray(int i) {
                return new Request[i];
            }
        };

        /* renamed from: a, reason: collision with root package name */
        private final c f3298a;

        /* renamed from: b, reason: collision with root package name */
        private Set<String> f3299b;
        private final com.facebook.login.a c;
        private final String d;
        private final String e;
        private boolean f;

        Request(c loginBehavior, Set<String> permissions, com.facebook.login.a defaultAudience, String applicationId, String authId) {
            this.f = false;
            this.f3298a = loginBehavior;
            this.f3299b = permissions == null ? new HashSet<>() : permissions;
            this.c = defaultAudience;
            this.d = applicationId;
            this.e = authId;
        }

        Set<String> a() {
            return this.f3299b;
        }

        void a(Set<String> set) {
            ab.a((Object) set, "permissions");
            this.f3299b = set;
        }

        c b() {
            return this.f3298a;
        }

        com.facebook.login.a c() {
            return this.c;
        }

        String d() {
            return this.d;
        }

        String e() {
            return this.e;
        }

        boolean f() {
            return this.f;
        }

        void a(boolean z) {
            this.f = z;
        }

        boolean g() {
            Iterator<String> it = this.f3299b.iterator();
            while (it.hasNext()) {
                if (e.a(it.next())) {
                    return true;
                }
            }
            return false;
        }

        private Request(Parcel parcel) {
            this.f = false;
            String readString = parcel.readString();
            this.f3298a = readString != null ? c.valueOf(readString) : null;
            ArrayList arrayList = new ArrayList();
            parcel.readStringList(arrayList);
            this.f3299b = new HashSet(arrayList);
            String readString2 = parcel.readString();
            this.c = readString2 != null ? com.facebook.login.a.valueOf(readString2) : null;
            this.d = parcel.readString();
            this.e = parcel.readString();
            this.f = parcel.readByte() != 0;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel dest, int flags) {
            dest.writeString(this.f3298a != null ? this.f3298a.name() : null);
            dest.writeStringList(new ArrayList(this.f3299b));
            dest.writeString(this.c != null ? this.c.name() : null);
            dest.writeString(this.d);
            dest.writeString(this.e);
            dest.writeByte((byte) (this.f ? 1 : 0));
        }
    }

    public static class Result implements Parcelable {
        public static final Parcelable.Creator<Result> CREATOR = new Parcelable.Creator() { // from class: com.facebook.login.LoginClient.Result.1
            @Override // android.os.Parcelable.Creator
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public Result createFromParcel(Parcel parcel) {
                return new Result(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public Result[] newArray(int i) {
                return new Result[i];
            }
        };

        /* renamed from: a, reason: collision with root package name */
        final a f3300a;

        /* renamed from: b, reason: collision with root package name */
        final AccessToken f3301b;
        final String c;
        final String d;
        final Request e;
        public Map<String, String> f;

        enum a {
            SUCCESS("success"),
            CANCEL("cancel"),
            ERROR("error");

            private final String d;

            a(String str) {
                this.d = str;
            }

            String a() {
                return this.d;
            }
        }

        Result(Request request, a code, AccessToken token, String errorMessage, String errorCode) {
            ab.a(code, "code");
            this.e = request;
            this.f3301b = token;
            this.c = errorMessage;
            this.f3300a = code;
            this.d = errorCode;
        }

        static Result a(Request request, AccessToken accessToken) {
            return new Result(request, a.SUCCESS, accessToken, null, null);
        }

        static Result a(Request request, String str) {
            return new Result(request, a.CANCEL, null, str, null);
        }

        static Result a(Request request, String str, String str2) {
            return a(request, str, str2, null);
        }

        static Result a(Request request, String str, String str2, String str3) {
            return new Result(request, a.ERROR, null, TextUtils.join(": ", aa.b(str, str2)), str3);
        }

        private Result(Parcel parcel) {
            this.f3300a = a.valueOf(parcel.readString());
            this.f3301b = (AccessToken) parcel.readParcelable(AccessToken.class.getClassLoader());
            this.c = parcel.readString();
            this.d = parcel.readString();
            this.e = (Request) parcel.readParcelable(Request.class.getClassLoader());
            this.f = aa.a(parcel);
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel dest, int flags) {
            dest.writeString(this.f3300a.name());
            dest.writeParcelable(this.f3301b, flags);
            dest.writeString(this.c);
            dest.writeString(this.d);
            dest.writeParcelable(this.e, flags);
            aa.a(dest, this.f);
        }
    }

    public LoginClient(Parcel source) {
        this.f3297b = -1;
        Parcelable[] readParcelableArray = source.readParcelableArray(LoginMethodHandler.class.getClassLoader());
        this.f3296a = new LoginMethodHandler[readParcelableArray.length];
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < readParcelableArray.length) {
                this.f3296a[i2] = (LoginMethodHandler) readParcelableArray[i2];
                this.f3296a[i2].a(this);
                i = i2 + 1;
            } else {
                this.f3297b = source.readInt();
                this.g = (Request) source.readParcelable(Request.class.getClassLoader());
                this.h = aa.a(source);
                return;
            }
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeParcelableArray(this.f3296a, flags);
        dest.writeInt(this.f3297b);
        dest.writeParcelable(this.g, flags);
        aa.a(dest, this.h);
    }
}
