package com.cmplay.tile2.ui;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.media.AudioManager;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.preference.PreferenceManager;
import android.support.v4.content.LocalBroadcastManager;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import com.appsflyer.AppsFlyerLib;
import com.b.a.b;
import com.cmplay.ad.d;
import com.cmplay.base.util.g;
import com.cmplay.f.c;
import com.cmplay.gcmPush.RegistrationIntentService;
import com.cmplay.h.f;
import com.cmplay.internalpush.i;
import com.cmplay.internalpush.n;
import com.cmplay.pay.PayAdapterGetter;
import com.cmplay.tile2.GameApp;
import com.cmplay.tiles4.R;
import com.cmplay.util.ConnectionChangedReceiver;
import com.cmplay.util.NativeUtil;
import com.cmplay.util.WiredHeadStateReceiver;
import com.cmplay.util.aa;
import com.cmplay.util.d;
import com.cmplay.util.h;
import com.cmplay.util.i;
import com.cmplay.util.o;
import com.cmplay.util.t;
import com.cmplay.util.z;
import com.facebook.AccessToken;
import com.facebook.e;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import javax.microedition.khronos.opengles.GL10;
import org.cocos2dx.lib.Cocos2dxActivity;
import org.cocos2dx.lib.Cocos2dxGLSurfaceView;
import org.cocos2dx.lib.Cocos2dxHelper;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class AppActivity extends Cocos2dxActivity implements f.a {
    public static boolean c = true;
    private static WeakReference<Activity> p;
    private Cocos2dxGLSurfaceView g;
    private AudioManager i;
    private e m;
    private boolean f = false;

    /* renamed from: a, reason: collision with root package name */
    public boolean f1609a = false;
    private Runnable h = new Runnable() { // from class: com.cmplay.tile2.ui.AppActivity.1
        @Override // java.lang.Runnable
        public void run() {
            NativeUtil.reportTask();
        }
    };
    private Handler j = new Handler();
    private z k = null;

    /* renamed from: b, reason: collision with root package name */
    ConnectionChangedReceiver.a f1610b = new ConnectionChangedReceiver.a() { // from class: com.cmplay.tile2.ui.AppActivity.9
        @Override // com.cmplay.util.ConnectionChangedReceiver.a
        public void a(int i) {
            NativeUtil.notifyNetWorkChange(i);
        }
    };
    private WiredHeadStateReceiver l = new WiredHeadStateReceiver();
    private LocalBroadcastManager n = null;
    private AccessTokenChangedReceiver o = null;
    private List<d> q = new ArrayList();
    private BroadcastReceiver r = new BroadcastReceiver() { // from class: com.cmplay.tile2.ui.AppActivity.16
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            String a2;
            if ("android.intent.action.CLOSE_SYSTEM_DIALOGS".equals(intent.getAction()) && "homekey".equals(intent.getStringExtra("reason")) && AppActivity.this.f1609a && (a2 = a.a("home")) != null) {
                Intent intent2 = new Intent(GameApp.f1598a, (Class<?>) ReportService.class);
                intent2.putExtra("command_start_gameproblem_adname", a2);
                intent2.putExtra("command_start_report", "command_start_gameproblem_home");
                context.startService(intent2);
            }
        }
    };
    private BroadcastReceiver s = new BroadcastReceiver() { // from class: com.cmplay.tile2.ui.AppActivity.6
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (PreferenceManager.getDefaultSharedPreferences(context).getBoolean("sentTokenToServer", false)) {
                Log.i("AppActivity", Cocos2dxActivity.getContext().getString(R.string.gcm_send_message));
            } else {
                Log.i("AppActivity", Cocos2dxActivity.getContext().getString(R.string.token_error_message));
            }
        }
    };
    protected c d = null;
    c.a e = new c.a() { // from class: com.cmplay.tile2.ui.AppActivity.7
        @Override // com.cmplay.f.c.a
        public void a(String str) {
            NativeUtil.reqPlayGamesUserInfoCallBackOnGLThread(str);
        }

        @Override // com.cmplay.f.c.a
        public void b(String str) {
            NativeUtil.reqPlayGamesUserInfoCallBackOnGLThread(str);
        }
    };

    @Override // org.cocos2dx.lib.Cocos2dxActivity, android.support.v4.app.FragmentActivity, android.support.v4.app.BaseFragmentActivityDonut, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        f();
        if (!GameApp.c) {
            h();
            this.f = true;
        }
    }

    private void f() {
        p = new WeakReference<>(this);
        a(getIntent());
        aa.a("key_gameproblem_adshowed", false);
        AppsFlyerLib.a(getApplicationContext());
        com.cmplay.g.a.a(this, 1);
        ConnectionChangedReceiver.a(this.f1610b);
        x();
        v();
        i.a(Cocos2dxGLSurfaceView.getInstance());
        PayAdapterGetter.getInstance().init(this);
        f.b().a((f.a) this);
        this.i = (AudioManager) getSystemService("audio");
        this.i.requestAudioFocus(null, 3, 1);
        registerReceiver(this.r, new IntentFilter("android.intent.action.CLOSE_SYSTEM_DIALOGS"));
        g();
    }

    private void g() {
        Intent intent = new Intent(getApplicationContext(), (Class<?>) ReportService.class);
        intent.putExtra("report_channel", true);
        startService(intent);
    }

    private void h() {
        com.cmplay.util.e.a(GameApp.f1598a, aa.b("key_language_selected", "en"), aa.b("key_country_selected", ""));
        com.b.a.a.a.a(false);
        com.b.a.a.a.d(this);
        b.c(this);
        com.b.a.a.a(true);
        b();
        if (TextUtils.isEmpty(aa.a("key_gaid"))) {
            com.cmplay.gaid.a.a().b(this);
        }
        z();
        getResources().getString(R.string.facebook_app_id_gp);
        if (h.c()) {
            getResources().getString(R.string.facebook_app_id_amazon);
        } else if (h.d()) {
            getResources().getString(R.string.facebook_app_id_naranya);
        }
        y();
        t();
        new Handler().postDelayed(new Runnable() { // from class: com.cmplay.tile2.ui.AppActivity.10
            @Override // java.lang.Runnable
            public void run() {
                AppActivity.this.u();
                for (d dVar : AppActivity.this.q) {
                    if (dVar != null) {
                        dVar.onCreate(AppActivity.c());
                    }
                }
            }
        }, 500L);
        com.cmplay.h.b.a().a("active_main");
        com.cmplay.h.b.a().c();
        com.cmplay.util.a.a.a(new Runnable() { // from class: com.cmplay.tile2.ui.AppActivity.11
            @Override // java.lang.Runnable
            public void run() {
                com.cmplay.b.b.a().c();
            }
        });
        if (com.cmplay.util.e.a((Activity) this, false)) {
            getContext().startService(new Intent(getContext(), (Class<?>) RegistrationIntentService.class));
        }
        n.a().a(new i.a() { // from class: com.cmplay.tile2.ui.AppActivity.12
            @Override // com.cmplay.internalpush.i.a
            public void a() {
                com.cmplay.util.i.a(new Runnable() { // from class: com.cmplay.tile2.ui.AppActivity.12.1
                    @Override // java.lang.Runnable
                    public void run() {
                        g.a("internal_push", "NativeUtil.onOpenScreenClose()");
                        NativeUtil.onOpenScreenClose();
                    }
                });
            }
        });
        A();
        new com.cmplay.exitpopup.d().a(1040, com.cmplay.util.e.b() ? 1 : 2, 0, 0, 0, "");
    }

    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    protected void onStart() {
        super.onStart();
        i();
        if (this.f) {
            j();
        }
    }

    private void i() {
        com.cmplay.util.b.b.a(System.currentTimeMillis());
    }

    private void j() {
        for (d dVar : this.q) {
            if (dVar != null) {
                dVar.onStart(this);
            }
        }
        if (c && this.d != null) {
            this.d.a(this);
        }
    }

    @Override // org.cocos2dx.lib.Cocos2dxActivity, android.support.v4.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        System.currentTimeMillis();
        super.onResume();
        k();
        if (this.f) {
            l();
        }
    }

    private void k() {
        o.a("AppActivity onResume", this);
        w();
        f.b().a(System.currentTimeMillis());
        this.j.removeCallbacks(this.h);
        f.b().a((f.a) this);
        d();
        if (com.cmplay.d.a.a().b()) {
            com.cmplay.b.b.a().e();
        }
        com.cmplay.util.d.a(new d.a() { // from class: com.cmplay.tile2.ui.AppActivity.13
            @Override // com.cmplay.util.d.a
            public void a() {
                NativeUtil.refreshSDKMessage();
            }
        });
        this.j.post(new Runnable() { // from class: com.cmplay.tile2.ui.AppActivity.14
            @Override // java.lang.Runnable
            public void run() {
                com.cmplay.util.d.b();
            }
        });
        AppsFlyerLib.a((Activity) this);
        aa.a("key_h5_login", false);
        aa.a("key_gameproblem_isresume", true);
        if (GameApp.c() == 0) {
            GameApp.c(System.currentTimeMillis());
        }
        this.f1609a = true;
        Log.d("xushengmingaaaa", "shengming----6 time = " + (System.currentTimeMillis() - GameApp.a()));
    }

    private void l() {
        com.b.a.a.a.b(this);
        String string = getResources().getString(R.string.facebook_app_id_gp);
        if (h.c()) {
            string = getResources().getString(R.string.facebook_app_id_amazon);
        } else if (h.d()) {
            string = getResources().getString(R.string.facebook_app_id_naranya);
        }
        com.facebook.appevents.a.a(this, string);
        for (com.cmplay.ad.d dVar : this.q) {
            if (dVar != null) {
                dVar.onResume(this);
            }
        }
        this.n.registerReceiver(this.s, new IntentFilter("registrationComplete"));
    }

    @Override // org.cocos2dx.lib.Cocos2dxActivity, android.support.v4.app.FragmentActivity, android.app.Activity
    protected void onPause() {
        GameApp.a(0L);
        super.onPause();
        m();
        if (this.f) {
            n();
        }
    }

    private void m() {
        o.a("AppActivity onPause", this);
        com.facebook.appevents.a.a((Context) this);
        AppsFlyerLib.b((Activity) this);
        this.f1609a = false;
        aa.a("key_gameproblem_isresume", false);
    }

    private void n() {
        com.b.a.a.a.a(this);
        for (com.cmplay.ad.d dVar : this.q) {
            if (dVar != null) {
                dVar.onPaused(this);
            }
        }
        try {
            this.n.unregisterReceiver(this.s);
        } catch (Exception e) {
        }
    }

    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    protected void onStop() {
        GameApp.a(0L);
        super.onStop();
        o();
        if (this.f) {
            p();
        }
    }

    private void o() {
        o.a("AppActivity onStop", this);
        this.j.postDelayed(this.h, com.cmplay.cloud.a.a().a(2, "section_probability", "CLOUD_KEY_REPORT_DELAYED_TIME", 50) * 1000);
        com.cmplay.util.b.b.b(System.currentTimeMillis());
        s();
    }

    private void p() {
        for (com.cmplay.ad.d dVar : this.q) {
            if (dVar != null) {
                dVar.onStop(this);
            }
        }
        if (c && this.d != null) {
            this.d.a();
        }
    }

    @Override // org.cocos2dx.lib.Cocos2dxActivity, android.support.v4.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        q();
        if (this.f) {
            r();
        }
    }

    private void q() {
        if (this.r != null) {
            try {
                unregisterReceiver(this.r);
            } catch (Exception e) {
            }
            this.r = null;
        }
        if (this.o != null) {
            this.n.unregisterReceiver(this.o);
        }
        ConnectionChangedReceiver.b(this.f1610b);
        com.cmplay.base.a adapter = PayAdapterGetter.getInstance().getAdapter();
        if (adapter != null) {
            adapter.onDestory();
        }
        f.b().a((f.a) null);
        f.b().c();
        this.k = null;
        this.i.abandonAudioFocus(null);
        com.cmplay.util.d.a();
    }

    private void r() {
        for (com.cmplay.ad.d dVar : this.q) {
            if (dVar != null) {
                dVar.onDestroy(this);
            }
        }
        try {
            unregisterReceiver(this.l);
        } catch (Exception e) {
        }
    }

    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    protected void onNewIntent(Intent intent) {
        a(intent);
    }

    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    public void onBackPressed() {
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < this.q.size()) {
                com.cmplay.ad.d dVar = this.q.get(i2);
                if (dVar == null || !dVar.onBackPressed()) {
                    i = i2 + 1;
                } else {
                    return;
                }
            } else {
                super.onBackPressed();
                return;
            }
        }
    }

    public void a() {
        System.currentTimeMillis();
        GameApp.g().d();
        h();
        j();
        l();
        this.f = true;
        com.cmplay.util.i.a(new Runnable() { // from class: com.cmplay.tile2.ui.AppActivity.15
            @Override // java.lang.Runnable
            public void run() {
                NativeUtil.androidLoadedEnd();
            }
        });
    }

    public void b() {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.HEADSET_PLUG");
        registerReceiver(this.l, intentFilter);
    }

    private void s() {
        Intent intent = new Intent(getApplicationContext(), (Class<?>) ReportService.class);
        intent.putExtra("command_start_report", "command_schedule_all_notifications");
        startService(intent);
    }

    private void t() {
        this.n = LocalBroadcastManager.getInstance(GameApp.f1598a);
        IntentFilter intentFilter = new IntentFilter("com.facebook.sdk.ACTION_CURRENT_ACCESS_TOKEN_CHANGED");
        this.o = new AccessTokenChangedReceiver();
        this.n.registerReceiver(this.o, intentFilter);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void u() {
        for (Integer num : com.cmplay.ad.a.a()) {
            com.cmplay.ad.d a2 = com.cmplay.ad.a.a(num.intValue(), (com.cmplay.ad.c) null);
            if (a2 != null) {
                this.q.add(a2);
            }
        }
    }

    private void v() {
        if (TextUtils.isEmpty(aa.b("key_screen_display_size", (String) null))) {
            DisplayMetrics displayMetrics = new DisplayMetrics();
            getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
            aa.a("key_screen_display_size", String.valueOf(displayMetrics.widthPixels) + "x" + String.valueOf(displayMetrics.heightPixels));
        }
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyUp(int keyCode, KeyEvent event) {
        int i = 0;
        boolean z = System.currentTimeMillis() - f.b().g() > 800;
        if (keyCode != 4 || !z) {
            return super.onKeyUp(keyCode, event);
        }
        while (true) {
            int i2 = i;
            if (i2 < this.q.size()) {
                com.cmplay.ad.d dVar = this.q.get(i2);
                if (dVar != null && dVar.onBackPressed()) {
                    return true;
                }
                i = i2 + 1;
            } else {
                NativeUtil.onBackKeyClicked();
                return true;
            }
        }
    }

    @Override // org.cocos2dx.lib.Cocos2dxActivity, android.support.v4.app.FragmentActivity, android.app.Activity
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        com.cmplay.ad.d next;
        try {
            if (c && this.d != null) {
                this.d.a(requestCode, resultCode, data);
            }
        } catch (Exception e) {
        }
        f.b().a(System.currentTimeMillis());
        super.onActivityResult(requestCode, resultCode, data);
        com.cmplay.base.a adapter = PayAdapterGetter.getInstance().getAdapter();
        if (adapter != null && !adapter.handleResult(requestCode, resultCode, data)) {
            super.onActivityResult(requestCode, resultCode, data);
        }
        f.b().a(requestCode, resultCode, data);
        if (this.k != null) {
            this.k.a(requestCode, resultCode, data);
        }
        if (2001 == requestCode) {
            NativeUtil.sendEmailCallbackOnGLThread(1);
        }
        if (this.f) {
            if (this.m != null) {
                this.m.a(requestCode, resultCode, data);
            }
            Iterator<com.cmplay.ad.d> it = this.q.iterator();
            while (it.hasNext() && ((next = it.next()) == null || !next.activityResult(requestCode, resultCode, data))) {
            }
        }
        if (com.facebook.notifications.a.a(requestCode, resultCode, data) != null) {
        }
    }

    @Override // org.cocos2dx.lib.Cocos2dxActivity
    @SuppressLint({"NewApi"})
    public Cocos2dxGLSurfaceView onCreateView() {
        this.g = new Cocos2dxGLSurfaceView(this);
        w();
        this.g.setEGLConfigChooser(5, 6, 5, 0, 16, 8);
        return this.g;
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onWindowFocusChanged(boolean hasFocus) {
        super.onWindowFocusChanged(hasFocus);
        if (hasFocus) {
            w();
        }
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean dispatchTouchEvent(MotionEvent ev) {
        return super.dispatchTouchEvent(ev);
    }

    private void w() {
        if (Build.VERSION.SDK_INT > 18) {
            View decorView = getWindow().getDecorView();
            decorView.setSystemUiVisibility(8);
            decorView.setSystemUiVisibility(5895);
        }
    }

    private void x() {
        Uri data;
        int indexOf;
        Intent intent = getIntent();
        if (intent != null && (data = intent.getData()) != null) {
            String uri = data.toString();
            if (a.a.a(this, intent) != null) {
            }
            if (!TextUtils.isEmpty(uri) && (indexOf = uri.indexOf("?")) >= 0 && indexOf < uri.length()) {
                String replace = uri.substring(0, indexOf).replace("pianotiles2share://story/", "");
                if (TextUtils.isEmpty(replace) || replace.trim().equals("1000") || replace.trim().equals("1001")) {
                }
            }
        }
    }

    public static Activity c() {
        if (p == null) {
            return null;
        }
        return p.get();
    }

    private void a(Intent intent) {
        JSONObject jSONObject;
        if (intent != null) {
            if (intent.getBooleanExtra("notification", false)) {
                String stringExtra = intent.getStringExtra("notification_version");
                int intExtra = intent.getIntExtra("notify_cloud_id", 0);
                final int intExtra2 = intent.getIntExtra("notify_action", 0);
                int intExtra3 = intent.getIntExtra("notify_img_style", 0);
                final String stringExtra2 = intent.getStringExtra("notify_data");
                int intExtra4 = intent.getIntExtra("notify_text_id", 0);
                try {
                    if (!TextUtils.isEmpty(stringExtra2)) {
                        jSONObject = new JSONObject(stringExtra2);
                    } else {
                        jSONObject = new JSONObject();
                    }
                    jSONObject.put("notification_version", stringExtra);
                    jSONObject.put("notify_img_style", intExtra3);
                    jSONObject.put("notify_cloud_id", intExtra);
                    jSONObject.put("notify_text_id", intExtra4);
                    stringExtra2 = jSONObject.toString();
                } catch (Exception e) {
                }
                if (intExtra2 != 0) {
                    Cocos2dxHelper.runOnGLThread(new Runnable() { // from class: com.cmplay.tile2.ui.AppActivity.2
                        @Override // java.lang.Runnable
                        public void run() {
                            NativeUtil.doNotificationAction(intExtra2, stringExtra2);
                        }
                    });
                }
            }
            if (intent.getBooleanExtra("week_race", false)) {
                this.j.postDelayed(new Runnable() { // from class: com.cmplay.tile2.ui.AppActivity.3
                    @Override // java.lang.Runnable
                    public void run() {
                        NativeUtil.openGetWeekRaceDiamondPage(aa.b("key_week_race_id_just_end", ""));
                        f.b().b(605, 2, 0, 0);
                    }
                }, 300L);
            }
            com.facebook.notifications.a.a(this);
            Bundle bundleExtra = intent.getBundleExtra("push");
            if (bundleExtra != null) {
                String string = bundleExtra.getString("function_id");
                int i = -1;
                if (!TextUtils.isEmpty(string)) {
                    try {
                        i = Integer.parseInt(string);
                    } catch (NumberFormatException e2) {
                        e2.printStackTrace();
                    }
                }
                switch (i) {
                    case 1:
                        this.j.postDelayed(new Runnable() { // from class: com.cmplay.tile2.ui.AppActivity.4
                            @Override // java.lang.Runnable
                            public void run() {
                                NativeUtil.pushVipStoreNotify();
                            }
                        }, 300L);
                        break;
                    default:
                        try {
                            com.facebook.notifications.a.a(this, bundleExtra);
                            break;
                        } catch (Exception e3) {
                            e3.printStackTrace();
                            break;
                        }
                }
                f.b().a(com.cmplay.gcmPush.a.b(bundleExtra), string, 2);
                com.cmplay.h.b.a().b().a(bundleExtra, intent.getAction());
            }
        }
    }

    @Override // org.cocos2dx.lib.Cocos2dxRenderer.ReportGL
    public void ReportGL(GL10 gl) {
        com.cmplay.util.c.b.a().a(gl.glGetString(7938));
        com.cmplay.util.c.b.a().b(gl.glGetString(7936));
        com.cmplay.util.c.b.a().c(gl.glGetString(7937));
    }

    public void d() {
    }

    private void y() {
        AccessToken a2 = AccessToken.a();
        if (a2 != null) {
            if (new Date(System.currentTimeMillis() + 172800000).after(a2.d())) {
                AccessToken.b();
            }
        }
    }

    private void z() {
        this.m = e.a.a();
        com.facebook.login.e.a().a(this.m, new com.facebook.g<com.facebook.login.f>() { // from class: com.cmplay.tile2.ui.AppActivity.5
            @Override // com.facebook.g
            public void a(com.facebook.login.f fVar) {
                NativeUtil.loginCallbackOnGLThread(1, 0, null);
            }

            @Override // com.facebook.g
            public void a() {
                NativeUtil.loginCallbackOnGLThread(1, 1, null);
            }

            @Override // com.facebook.g
            public void a(com.facebook.i iVar) {
                String str = "unknow facebook login error!";
                if (iVar != null) {
                    str = iVar.getMessage();
                }
                NativeUtil.loginCallbackOnGLThread(1, 2, str);
            }
        });
    }

    public void e() {
        boolean c2 = t.c(GameApp.f1598a);
        c = com.cmplay.util.e.a((Activity) this, true);
        if (c && this.d == null) {
            this.d = new com.cmplay.f.b(this, this.e);
        }
        if (!c || !c2) {
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("platform", 0);
                jSONObject.put("isLogin", 0);
                jSONObject.put("ab_test_type", 1);
                if (!c) {
                    jSONObject.put("error_code", 50002);
                } else if (!c2) {
                    jSONObject.put("error_code", 50006);
                    NativeUtil.toastTip(NativeUtil.getLanguageTextByKey("share_fb_have_no_network"));
                }
                jSONObject.put("show_pick_user_account", false);
                jSONObject.put("req_authorize", false);
                this.e.a(jSONObject.toString());
                return;
            } catch (JSONException e) {
                e.printStackTrace();
                return;
            }
        }
        ((com.cmplay.f.b) this.d).a(false);
        ((com.cmplay.f.b) this.d).b(false);
        this.d.b();
    }

    private void A() {
        com.example.luckywheel.b.g.a().a(this, "A61E6C59480049FD", NativeUtil.getAppId(), new com.example.luckywheel.c.a() { // from class: com.cmplay.tile2.ui.AppActivity.8
            @Override // com.example.luckywheel.c.a
            public void a(byte b2) {
                g.a("LuckyWheel", "initLuckyWheel      goReport   action:" + ((int) b2));
                NativeUtil.reportData("whitetile2_go_action", "action=" + ((int) b2), true);
            }

            @Override // com.example.luckywheel.c.a
            public void a(byte b2, int i, int i2) {
                g.a("LuckyWheel", "initLuckyWheel      exchangeReport   action:" + ((int) b2) + "  errorCode:" + i2 + "   exchange_num:" + i);
                NativeUtil.reportData("whitetile2_exchange_action", "action=" + ((int) b2) + "&error=" + i2 + "&exchange_num=" + i, true);
                com.cmplay.util.d.a(new d.a() { // from class: com.cmplay.tile2.ui.AppActivity.8.1
                    @Override // com.cmplay.util.d.a
                    public void a() {
                        NativeUtil.onExchangeFinish();
                    }
                });
            }
        });
        g.a("LuckyWheel", "initLuckyWheel      LUCK_WHEEL_APPKEY:A61E6C59480049FD  fb Appid:" + NativeUtil.getAppId() + "    fb installed:" + NativeUtil.isFacebookInstalled());
    }
}
