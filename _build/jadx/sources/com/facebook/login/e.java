package com.facebook.login;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import com.facebook.AccessToken;
import com.facebook.FacebookActivity;
import com.facebook.Profile;
import com.facebook.i;
import com.facebook.internal.ab;
import com.facebook.internal.e;
import com.facebook.internal.l;
import com.facebook.login.LoginClient;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.UUID;

/* compiled from: LoginManager.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class e {

    /* renamed from: a, reason: collision with root package name */
    private static final Set<String> f3321a = c();

    /* renamed from: b, reason: collision with root package name */
    private static volatile e f3322b;
    private com.facebook.login.c c = com.facebook.login.c.NATIVE_WITH_FALLBACK;
    private com.facebook.login.a d = com.facebook.login.a.FRIENDS;

    e() {
        ab.a();
    }

    public static e a() {
        if (f3322b == null) {
            synchronized (e.class) {
                if (f3322b == null) {
                    f3322b = new e();
                }
            }
        }
        return f3322b;
    }

    public void a(com.facebook.e eVar, final com.facebook.g<f> gVar) {
        if (!(eVar instanceof com.facebook.internal.e)) {
            throw new i("Unexpected CallbackManager, please use the provided Factory.");
        }
        ((com.facebook.internal.e) eVar).b(e.b.Login.a(), new e.a() { // from class: com.facebook.login.e.1
            @Override // com.facebook.internal.e.a
            public boolean a(int i, Intent intent) {
                return e.this.a(i, intent, gVar);
            }
        });
    }

    boolean a(int i, Intent intent) {
        return a(i, intent, null);
    }

    boolean a(int i, Intent intent, com.facebook.g<f> gVar) {
        boolean z;
        AccessToken accessToken;
        LoginClient.Result.a aVar;
        LoginClient.Request request;
        i iVar;
        Map<String, String> map;
        LoginClient.Request request2;
        AccessToken accessToken2;
        Map<String, String> map2;
        com.facebook.f fVar;
        LoginClient.Result.a aVar2;
        com.facebook.f fVar2 = null;
        AccessToken accessToken3 = null;
        LoginClient.Result.a aVar3 = LoginClient.Result.a.ERROR;
        boolean z2 = false;
        if (intent != null) {
            LoginClient.Result result = (LoginClient.Result) intent.getParcelableExtra("com.facebook.LoginFragment:Result");
            if (result == null) {
                request2 = null;
                accessToken2 = null;
                map2 = null;
                fVar = null;
                aVar2 = aVar3;
            } else {
                LoginClient.Request request3 = result.e;
                LoginClient.Result.a aVar4 = result.f3300a;
                if (i == -1) {
                    if (result.f3300a == LoginClient.Result.a.SUCCESS) {
                        accessToken3 = result.f3301b;
                    } else {
                        fVar2 = new com.facebook.f(result.c);
                    }
                } else if (i == 0) {
                    z2 = true;
                }
                accessToken2 = accessToken3;
                map2 = result.f;
                request2 = request3;
                fVar = fVar2;
                aVar2 = aVar4;
            }
            z = z2;
            request = request2;
            accessToken = accessToken2;
            iVar = fVar;
            Map<String, String> map3 = map2;
            aVar = aVar2;
            map = map3;
        } else if (i != 0) {
            z = false;
            accessToken = null;
            aVar = aVar3;
            request = null;
            iVar = null;
            map = null;
        } else {
            z = true;
            accessToken = null;
            aVar = LoginClient.Result.a.CANCEL;
            request = null;
            iVar = null;
            map = null;
        }
        if (iVar == null && accessToken == null && !z) {
            iVar = new i("Unexpected call to LoginManager.onActivityResult");
        }
        a(null, aVar, map, iVar, true, request);
        a(accessToken, request, iVar, z, gVar);
        return true;
    }

    public e a(com.facebook.login.c cVar) {
        this.c = cVar;
        return this;
    }

    public e a(com.facebook.login.a aVar) {
        this.d = aVar;
        return this;
    }

    public void b() {
        AccessToken.a((AccessToken) null);
        Profile.a(null);
    }

    public void a(Fragment fragment, Collection<String> collection) {
        a(new l(fragment), collection);
    }

    public void a(android.app.Fragment fragment, Collection<String> collection) {
        a(new l(fragment), collection);
    }

    private void a(l lVar, Collection<String> collection) {
        a(collection);
        a(new b(lVar), c(collection));
    }

    public void a(Activity activity, Collection<String> collection) {
        a(collection);
        a(new a(activity), c(collection));
    }

    public void b(Fragment fragment, Collection<String> collection) {
        b(new l(fragment), collection);
    }

    public void b(android.app.Fragment fragment, Collection<String> collection) {
        b(new l(fragment), collection);
    }

    private void b(l lVar, Collection<String> collection) {
        b(collection);
        a(new b(lVar), c(collection));
    }

    public void b(Activity activity, Collection<String> collection) {
        b(collection);
        a(new a(activity), c(collection));
    }

    private void a(Collection<String> collection) {
        if (collection != null) {
            for (String str : collection) {
                if (a(str)) {
                    throw new i(String.format("Cannot pass a publish or manage permission (%s) to a request for read authorization", str));
                }
            }
        }
    }

    private void b(Collection<String> collection) {
        if (collection != null) {
            for (String str : collection) {
                if (!a(str)) {
                    throw new i(String.format("Cannot pass a read permission (%s) to a request for publish authorization", str));
                }
            }
        }
    }

    static boolean a(String str) {
        return str != null && (str.startsWith("publish") || str.startsWith("manage") || f3321a.contains(str));
    }

    private static Set<String> c() {
        return Collections.unmodifiableSet(new HashSet<String>() { // from class: com.facebook.login.e.2
            {
                add("ads_management");
                add("create_event");
                add("rsvp_event");
            }
        });
    }

    private LoginClient.Request c(Collection<String> collection) {
        LoginClient.Request request = new LoginClient.Request(this.c, Collections.unmodifiableSet(collection != null ? new HashSet(collection) : new HashSet()), this.d, com.facebook.l.i(), UUID.randomUUID().toString());
        request.a(AccessToken.a() != null);
        return request;
    }

    private void a(g gVar, LoginClient.Request request) throws i {
        a(gVar.a(), request);
        com.facebook.internal.e.a(e.b.Login.a(), new e.a() { // from class: com.facebook.login.e.3
            @Override // com.facebook.internal.e.a
            public boolean a(int i, Intent intent) {
                return e.this.a(i, intent);
            }
        });
        if (!b(gVar, request)) {
            i iVar = new i("Log in attempt failed: FacebookActivity could not be started. Please make sure you added FacebookActivity to the AndroidManifest.");
            a(gVar.a(), LoginClient.Result.a.ERROR, null, iVar, false, request);
            throw iVar;
        }
    }

    private void a(Context context, LoginClient.Request request) {
        d b2 = c.b(context);
        if (b2 != null && request != null) {
            b2.a(request);
        }
    }

    private void a(Context context, LoginClient.Result.a aVar, Map<String, String> map, Exception exc, boolean z, LoginClient.Request request) {
        d b2 = c.b(context);
        if (b2 != null) {
            if (request == null) {
                b2.b("fb_mobile_login_complete", "Unexpected call to logCompleteLogin with null pendingAuthorizationRequest.");
                return;
            }
            HashMap hashMap = new HashMap();
            hashMap.put("try_login_activity", z ? "1" : "0");
            b2.a(request.e(), hashMap, aVar, map, exc);
        }
    }

    private boolean b(g gVar, LoginClient.Request request) {
        Intent a2 = a(request);
        if (!a(a2)) {
            return false;
        }
        try {
            gVar.a(a2, LoginClient.d());
            return true;
        } catch (ActivityNotFoundException e) {
            return false;
        }
    }

    private boolean a(Intent intent) {
        return com.facebook.l.f().getPackageManager().resolveActivity(intent, 0) != null;
    }

    private Intent a(LoginClient.Request request) {
        Intent intent = new Intent();
        intent.setClass(com.facebook.l.f(), FacebookActivity.class);
        intent.setAction(request.b().toString());
        Bundle bundle = new Bundle();
        bundle.putParcelable("request", request);
        intent.putExtras(bundle);
        return intent;
    }

    static f a(LoginClient.Request request, AccessToken accessToken) {
        Set<String> a2 = request.a();
        HashSet hashSet = new HashSet(accessToken.e());
        if (request.f()) {
            hashSet.retainAll(a2);
        }
        HashSet hashSet2 = new HashSet(a2);
        hashSet2.removeAll(hashSet);
        return new f(accessToken, hashSet, hashSet2);
    }

    private void a(AccessToken accessToken, LoginClient.Request request, i iVar, boolean z, com.facebook.g<f> gVar) {
        if (accessToken != null) {
            AccessToken.a(accessToken);
            Profile.b();
        }
        if (gVar != null) {
            f a2 = accessToken != null ? a(request, accessToken) : null;
            if (z || (a2 != null && a2.a().size() == 0)) {
                gVar.a();
            } else if (iVar != null) {
                gVar.a(iVar);
            } else if (accessToken != null) {
                gVar.a((com.facebook.g<f>) a2);
            }
        }
    }

    /* compiled from: LoginManager.java */
    private static class a implements g {

        /* renamed from: a, reason: collision with root package name */
        private final Activity f3326a;

        a(Activity activity) {
            ab.a(activity, "activity");
            this.f3326a = activity;
        }

        @Override // com.facebook.login.g
        public void a(Intent intent, int i) {
            this.f3326a.startActivityForResult(intent, i);
        }

        @Override // com.facebook.login.g
        public Activity a() {
            return this.f3326a;
        }
    }

    /* compiled from: LoginManager.java */
    private static class b implements g {

        /* renamed from: a, reason: collision with root package name */
        private final l f3327a;

        b(l lVar) {
            ab.a(lVar, "fragment");
            this.f3327a = lVar;
        }

        @Override // com.facebook.login.g
        public void a(Intent intent, int i) {
            this.f3327a.a(intent, i);
        }

        @Override // com.facebook.login.g
        public Activity a() {
            return this.f3327a.c();
        }
    }

    /* compiled from: LoginManager.java */
    private static class c {

        /* renamed from: a, reason: collision with root package name */
        private static volatile d f3328a;

        /* JADX INFO: Access modifiers changed from: private */
        public static synchronized d b(Context context) {
            d dVar;
            synchronized (c.class) {
                if (context == null) {
                    context = com.facebook.l.f();
                }
                if (context == null) {
                    dVar = null;
                } else {
                    if (f3328a == null) {
                        f3328a = new d(context, com.facebook.l.i());
                    }
                    dVar = f3328a;
                }
            }
            return dVar;
        }
    }
}
