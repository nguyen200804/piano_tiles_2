package com.cmplay.f;

import android.content.Context;
import android.content.Intent;
import android.support.v4.app.FragmentActivity;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.cmplay.f.c;
import com.cmplay.tile2.GameApp;
import com.cmplay.tiles4.R;
import com.cmplay.util.NativeUtil;
import com.cmplay.util.aa;
import com.cmplay.util.t;
import com.google.android.gms.auth.GooglePlayServicesAvailabilityException;
import com.google.android.gms.auth.UserRecoverableAuthException;
import com.google.android.gms.common.AccountPicker;
import com.google.android.gms.common.GooglePlayServicesUtil;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: AuthWithGoogleForRestAPIs.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class b implements c {

    /* renamed from: a, reason: collision with root package name */
    FragmentActivity f1355a;

    /* renamed from: b, reason: collision with root package name */
    Context f1356b;
    c.a c;
    WindowManager d = null;
    RelativeLayout e = null;
    protected boolean f = false;
    protected boolean g = false;
    private String h;

    public b(FragmentActivity fragmentActivity, c.a aVar) {
        this.f1355a = null;
        this.f1356b = null;
        this.c = null;
        this.f1355a = fragmentActivity;
        this.f1356b = fragmentActivity.getApplicationContext();
        this.c = aVar;
    }

    @Override // com.cmplay.f.c
    public void a(FragmentActivity fragmentActivity) {
        this.f1355a = fragmentActivity;
        this.f1356b = fragmentActivity.getApplicationContext();
    }

    @Override // com.cmplay.f.c
    public void a() {
        this.f1355a = null;
    }

    @Override // com.cmplay.f.c
    public void a(int i, int i2, Intent intent) {
        if (i == 1000) {
            if (i2 == -1) {
                this.h = intent.getStringExtra("authAccount");
                aa.a("authAccount", this.h);
                b();
            } else if (i2 == 0) {
                a(50004);
            }
            if (this.d != null && this.e != null) {
                this.d.removeView(this.e);
                return;
            }
            return;
        }
        if (i == 1001 || i == 1002) {
            if (i2 == -1) {
                a(i2, intent);
            } else if (i2 == 0) {
                a(50005);
            }
        }
    }

    private void a(int i, Intent intent) {
        if (intent == null) {
            a("Unknown error, click the button again");
            return;
        }
        if (i == -1) {
            a("handleAuthorizeResult mEmail:" + this.h);
            if (!TextUtils.isEmpty(this.h)) {
                aa.a("authAccount", this.h);
                a("Retrying");
                a(this.h, "oauth2:https://www.googleapis.com/auth/userinfo.profile").execute(new Void[0]);
                return;
            }
            return;
        }
        if (i == 0) {
            a("User rejected authorization.");
        } else {
            a("Unknown error, try again");
        }
    }

    public void a(int i) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("platform", 0);
            jSONObject.put("isLogin", 0);
            jSONObject.put("ab_test_type", 1);
            jSONObject.put("error_code", i);
            jSONObject.put("show_pick_user_account", c());
            jSONObject.put("req_authorize", d());
            a(false, jSONObject.toString());
        } catch (JSONException e) {
            e.printStackTrace();
        }
    }

    void a(boolean z, String str) {
        a("Notifying LISTENER of sign-in " + (z ? "SUCCESS" : "FAILURE\njsonData:" + str));
        if (this.c != null) {
            if (z) {
                this.c.b(str);
            } else {
                this.c.a(str);
            }
        }
    }

    void a(String str) {
    }

    @Override // com.cmplay.f.c
    public void b() {
        this.h = aa.b("authAccount", "");
        if (TextUtils.isEmpty(this.h)) {
            e();
        } else if (t.c(GameApp.f1598a)) {
            a(this.h, "oauth2:https://www.googleapis.com/auth/userinfo.profile").execute(new Void[0]);
        } else {
            a(50006);
        }
    }

    private void e() {
        this.f1355a.startActivityForResult(AccountPicker.newChooseAccountIntent(null, null, new String[]{"com.google"}, false, null, null, null, null), 1000);
        a(true);
        f();
    }

    private a a(String str, String str2) {
        return new d(this, str, str2);
    }

    public void a(final Exception exc) {
        if (this.f1355a != null) {
            this.f1355a.runOnUiThread(new Runnable() { // from class: com.cmplay.f.b.1
                @Override // java.lang.Runnable
                public void run() {
                    if (exc instanceof GooglePlayServicesAvailabilityException) {
                        GooglePlayServicesUtil.getErrorDialog(((GooglePlayServicesAvailabilityException) exc).getConnectionStatusCode(), b.this.f1355a, 1002).show();
                    } else if (exc instanceof UserRecoverableAuthException) {
                        b.this.f1355a.startActivityForResult(((UserRecoverableAuthException) exc).getIntent(), 1002);
                    }
                }
            });
        }
    }

    private void f() {
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
        Context context = GameApp.f1598a;
        GameApp.g();
        this.d = (WindowManager) context.getSystemService("window");
        layoutParams.type = 2005;
        layoutParams.format = 1;
        layoutParams.flags = 8;
        layoutParams.gravity = 49;
        layoutParams.x = 0;
        layoutParams.y = 0;
        layoutParams.width = -1;
        layoutParams.height = -2;
        this.e = (RelativeLayout) LayoutInflater.from(GameApp.g()).inflate(R.layout.login_float_tip_layout, (ViewGroup) null);
        ((TextView) this.e.findViewById(R.id.gp_login_toast)).setText(NativeUtil.getLanguageTextByKey("gp_guide1"));
        this.d.addView(this.e, layoutParams);
    }

    public boolean c() {
        return this.f;
    }

    public void a(boolean z) {
        this.f = z;
    }

    public boolean d() {
        return this.g;
    }

    public void b(boolean z) {
        this.g = z;
    }
}
