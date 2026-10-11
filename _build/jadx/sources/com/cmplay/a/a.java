package com.cmplay.a;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import com.cmplay.tile2.GameApp;
import com.cmplay.tile2.ui.ReportService;
import com.cmplay.util.NativeUtil;
import com.cmplay.util.aa;
import com.facebook.AccessToken;
import com.facebook.GraphRequest;
import com.facebook.l;
import com.facebook.q;
import com.facebook.s;
import com.google.ads.mediation.facebook.FacebookAdapter;
import com.unity3d.ads.metadata.MediationMetaData;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: FBLogin.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class a implements com.cmplay.sharebase.b {

    /* renamed from: a, reason: collision with root package name */
    private static a f1129a = null;
    private static final String j = TextUtils.join(",", new String[]{FacebookAdapter.KEY_ID, MediationMetaData.KEY_NAME, "gender", "birthday", "age_range"});

    /* renamed from: b, reason: collision with root package name */
    private int f1130b = 0;
    private int c = 0;
    private e d = null;
    private List<e> e = new ArrayList();
    private List<e> f = new ArrayList();
    private GraphRequest.b g = new GraphRequest.b() { // from class: com.cmplay.a.a.3
        @Override // com.facebook.GraphRequest.b
        public void a(q qVar) {
            try {
                GraphRequest a2 = qVar.a(q.a.NEXT);
                if (a2 != null && a.this.c < 6) {
                    Message obtain = Message.obtain();
                    obtain.what = 1001;
                    obtain.obj = qVar;
                    obtain.arg1 = 0;
                    a.this.i.sendMessage(obtain);
                    a.d(a.this);
                    a2.a((GraphRequest.b) this);
                    a2.i();
                } else {
                    Message obtain2 = Message.obtain();
                    obtain2.what = 1001;
                    obtain2.obj = qVar;
                    obtain2.arg1 = 1;
                    a.this.i.sendMessage(obtain2);
                    a.this.c = 0;
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    };
    private GraphRequest.b h = new GraphRequest.b() { // from class: com.cmplay.a.a.4
        @Override // com.facebook.GraphRequest.b
        public void a(q qVar) {
            try {
                GraphRequest a2 = qVar.a(q.a.NEXT);
                if (a2 != null && a.this.f1130b < 6) {
                    Message obtain = Message.obtain();
                    obtain.what = 1002;
                    obtain.obj = qVar;
                    obtain.arg1 = 0;
                    a.this.i.sendMessage(obtain);
                    a.f(a.this);
                    a2.a((GraphRequest.b) this);
                    a2.i();
                } else {
                    Message obtain2 = Message.obtain();
                    obtain2.what = 1002;
                    obtain2.obj = qVar;
                    obtain2.arg1 = 1;
                    a.this.i.sendMessage(obtain2);
                    a.this.f1130b = 0;
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    };
    private Handler i = new Handler(GameApp.f1598a.getMainLooper()) { // from class: com.cmplay.a.a.5
        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            JSONObject jSONObject;
            switch (msg.what) {
                case 1001:
                    if (msg != null) {
                        try {
                            JSONObject b2 = ((q) msg.obj).b();
                            if (b2 != null && !b2.isNull("data")) {
                                JSONArray jSONArray = b2.getJSONArray("data");
                                for (int i = 0; i < jSONArray.length(); i++) {
                                    JSONObject jSONObject2 = jSONArray.getJSONObject(i);
                                    e eVar = new e(jSONObject2.getString(FacebookAdapter.KEY_ID), jSONObject2.getString(MediationMetaData.KEY_NAME));
                                    a.this.e.add(eVar);
                                    com.cmplay.util.c.a("facebook_game", "reqMeFriends      id:" + eVar.a() + "     name:" + eVar.b() + "     picture:" + eVar.c());
                                }
                            }
                            if (1 == msg.arg1) {
                                if (b2 == null && a.this.e.isEmpty()) {
                                    NativeUtil.reqMeFriendsCallbackOnGLThread(1, "");
                                    break;
                                } else {
                                    JSONArray jSONArray2 = new JSONArray();
                                    for (e eVar2 : a.this.e) {
                                        JSONObject jSONObject3 = new JSONObject();
                                        jSONObject3.put(FacebookAdapter.KEY_ID, eVar2.a());
                                        jSONObject3.put(MediationMetaData.KEY_NAME, eVar2.b());
                                        jSONArray2.put(jSONObject3);
                                    }
                                    JSONObject jSONObject4 = new JSONObject();
                                    jSONObject4.put("data", jSONArray2);
                                    NativeUtil.reqMeFriendsCallbackOnGLThread(1, jSONObject4.toString());
                                    break;
                                }
                            }
                        } catch (JSONException e) {
                            e.printStackTrace();
                            return;
                        }
                    }
                    break;
                case 1002:
                    if (msg != null) {
                        try {
                            JSONObject b3 = ((q) msg.obj).b();
                            if (b3 != null && !b3.isNull("data")) {
                                JSONArray jSONArray3 = b3.getJSONArray("data");
                                for (int i2 = 0; i2 < jSONArray3.length(); i2++) {
                                    JSONObject jSONObject5 = jSONArray3.getJSONObject(i2);
                                    e eVar3 = new e(jSONObject5.getString(FacebookAdapter.KEY_ID), jSONObject5.getString(MediationMetaData.KEY_NAME));
                                    JSONObject jSONObject6 = jSONObject5.getJSONObject("picture");
                                    if (jSONObject6 != null && (jSONObject = jSONObject6.getJSONObject("data")) != null) {
                                        eVar3.a(jSONObject.getString("url"));
                                    }
                                    a.this.f.add(eVar3);
                                }
                            }
                            if (1 == msg.arg1) {
                                if (b3 == null && a.this.f.isEmpty()) {
                                    NativeUtil.reqInvitableFriendsCallbackOnGLThread(1, "");
                                    break;
                                } else {
                                    JSONArray jSONArray4 = new JSONArray();
                                    for (e eVar4 : a.this.f) {
                                        JSONObject jSONObject7 = new JSONObject();
                                        jSONObject7.put(FacebookAdapter.KEY_ID, eVar4.a());
                                        jSONObject7.put(MediationMetaData.KEY_NAME, eVar4.b());
                                        jSONObject7.put("url", eVar4.c());
                                        jSONArray4.put(jSONObject7);
                                    }
                                    JSONObject jSONObject8 = new JSONObject();
                                    jSONObject8.put("data", jSONArray4);
                                    NativeUtil.reqInvitableFriendsCallbackOnGLThread(1, jSONObject8.toString());
                                    break;
                                }
                            }
                        } catch (JSONException e2) {
                            e2.printStackTrace();
                            return;
                        }
                    }
                    break;
            }
        }
    };

    static /* synthetic */ int d(a aVar) {
        int i = aVar.c;
        aVar.c = i + 1;
        return i;
    }

    static /* synthetic */ int f(a aVar) {
        int i = aVar.f1130b;
        aVar.f1130b = i + 1;
        return i;
    }

    private a() {
        l.a(GameApp.f1598a);
    }

    public static a a() {
        if (f1129a == null) {
            synchronized (a.class) {
                if (f1129a == null) {
                    f1129a = new a();
                }
            }
        }
        return f1129a;
    }

    @Override // com.cmplay.sharebase.b
    public void a(Activity activity) {
        if (!c()) {
            com.cmplay.util.c.a("facebook_game", "loginIn   logInWithReadPermissions");
            a(activity, Arrays.asList("public_profile", "user_friends"));
        }
    }

    public void b(Activity activity) {
        com.cmplay.util.c.a("facebook_game", "loginInReqFriendPermission");
        a(activity, Arrays.asList("user_friends"));
    }

    public void a(Activity activity, Collection<String> collection) {
        com.cmplay.util.c.a("facebook_game", "loginInReqPermission   logInWithReadPermissions");
        com.facebook.login.e.a().a(activity, collection);
    }

    @Override // com.cmplay.sharebase.b
    public void b() {
        if (c()) {
            com.cmplay.util.c.a("facebook_game", "loginOut   logOut");
            com.facebook.login.e.a().b();
        }
    }

    @Override // com.cmplay.sharebase.b
    public boolean c() {
        return AccessToken.a() != null;
    }

    public Set<String> d() {
        AccessToken a2 = AccessToken.a();
        if (a2 == null) {
            return null;
        }
        return a2.e();
    }

    @Override // com.cmplay.sharebase.b
    public String e() {
        AccessToken a2 = AccessToken.a();
        if (a2 == null || a2.k()) {
            return null;
        }
        String c = a2.c();
        com.cmplay.util.c.a("facebook_game", "getToken   strToken:" + c);
        return c;
    }

    public boolean f() {
        Set<String> d = a().d();
        if (d == null) {
            return false;
        }
        return d.contains("user_friends");
    }

    @Override // com.cmplay.sharebase.b
    public void g() {
        com.facebook.b.a().c();
        final AccessToken a2 = AccessToken.a();
        if (a2 != null) {
            GraphRequest.a(a2, new GraphRequest.c() { // from class: com.cmplay.a.a.1
                @Override // com.facebook.GraphRequest.c
                public void a(JSONObject jSONObject, q qVar) {
                    if (jSONObject != null) {
                        try {
                            JSONObject jSONObject2 = new JSONObject();
                            jSONObject2.put("data", jSONObject);
                            NativeUtil.reqMeInfoCallbackOnGLThread(1, jSONObject2.toString(), aa.b("key_h5_login", false));
                            a.this.d = new e(jSONObject.getString(FacebookAdapter.KEY_ID), jSONObject.getString(MediationMetaData.KEY_NAME));
                        } catch (JSONException e) {
                            e.printStackTrace();
                        }
                    }
                }
            }).j();
        }
    }

    @Override // com.cmplay.sharebase.b
    public void h() {
        this.e.clear();
        new Thread(new Runnable() { // from class: com.cmplay.a.a.2
            @Override // java.lang.Runnable
            public void run() {
                new GraphRequest(AccessToken.a(), "/me/friends", null, s.GET, a.this.g).i();
                e c = c.a().c();
                if (c != null) {
                    a.this.c(c.a());
                }
            }
        }).start();
    }

    @Override // com.cmplay.sharebase.b
    public void i() {
    }

    public String a(String str) {
        AccessToken a2 = AccessToken.a();
        if (a2 == null) {
            return null;
        }
        return "https://graph.facebook-com/" + str + "/picture?access_token=" + a2.c() + "&type=large";
    }

    public String b(String str) {
        return "http://graph.facebook-com/" + str + "/picture?type=large";
    }

    public void c(String str) {
        Bundle bundle = new Bundle();
        bundle.putString("fields", j);
        new GraphRequest(AccessToken.a(), str, bundle, s.GET, new GraphRequest.b() { // from class: com.cmplay.a.a.6
            @Override // com.facebook.GraphRequest.b
            public void a(q qVar) {
                JSONObject b2;
                JSONObject jSONObject;
                if (qVar != null && (b2 = qVar.b()) != null) {
                    try {
                        Intent intent = new Intent(GameApp.f1598a, (Class<?>) ReportService.class);
                        intent.putExtra("command_start_report", "command_start_report_dmc_fb_info");
                        if (!b2.isNull(FacebookAdapter.KEY_ID)) {
                            intent.putExtra(FacebookAdapter.KEY_ID, b2.getString(FacebookAdapter.KEY_ID));
                        }
                        if (!b2.isNull(MediationMetaData.KEY_NAME)) {
                            intent.putExtra(MediationMetaData.KEY_NAME, b2.getString(MediationMetaData.KEY_NAME));
                        }
                        if (!b2.isNull("gender")) {
                            intent.putExtra("gender", b2.getString("gender"));
                        }
                        if (!b2.isNull("age_range") && (jSONObject = b2.getJSONObject("age_range")) != null) {
                            if (!jSONObject.isNull("min")) {
                                intent.putExtra("age_min", jSONObject.getInt("min"));
                            }
                            if (!jSONObject.isNull("max")) {
                                intent.putExtra("age_max", jSONObject.getInt("max"));
                            }
                        }
                        GameApp.f1598a.startService(intent);
                    } catch (JSONException e) {
                        e.printStackTrace();
                    }
                }
            }
        }).j();
    }
}
