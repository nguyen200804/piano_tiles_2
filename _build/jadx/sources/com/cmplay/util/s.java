package com.cmplay.util;

import android.app.Activity;
import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.media.AudioManager;
import android.net.Uri;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Bundle;
import android.os.Process;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.Display;
import android.view.WindowManager;
import android.widget.Toast;
import com.appsflyer.AppsFlyerLib;
import com.cmplay.base.util.webview.ui.WebViewLayout;
import com.cmplay.d.a;
import com.cmplay.internalpush.ui.OpenScreenActivity;
import com.cmplay.ipc.SyncIpcProvider;
import com.cmplay.j.a;
import com.cmplay.pay.PayAdapterGetter;
import com.cmplay.tile2.GameApp;
import com.cmplay.tile2.ui.AppActivity;
import com.cmplay.tile2.ui.ChristmasShareActivity;
import com.cmplay.tile2.ui.LoveShareActivity;
import com.cmplay.tile2.ui.ReportService;
import com.cmplay.tile2.ui.ShareActivity;
import com.cmplay.tile2.ui.SongMixShareActivity;
import com.cmplay.util.d;
import com.cmplay.util.j;
import com.cmplay.webview.broadcast.WebBroadcast;
import com.cmplay.webview.ui.WebViewActivity;
import com.facebook.ads.AdError;
import com.google.android.gms.common.GoogleApiAvailability;
import com.tencent.mm.sdk.constants.ConstantsAPI;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.zip.CRC32;
import org.apache.commons.io.IOUtils;
import org.cocos2dx.lib.Cocos2dxGLSurfaceView;
import org.cocos2dx.lib.Cocos2dxHelper;
import org.cocos2dx.lib.GameControllerDelegate;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: NativeInterfaceImpl.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class s implements r {
    private String f;
    private String g;
    private final int h = 0;
    private final int i = 1;
    private final int j = 2;
    private final int k = 3;
    private final int l = 4;
    private final int m = 5;
    private final int n = 6;
    private final int o = 7;
    private final int p = 8;
    private final String q = "res/phonecfg.json";
    private final String r = "phonecfg.json";
    private final String s = "wavemix-info";
    private final String t = "com.cmplay.tiles4.soundmix";
    private final String u = "user_enable_mix";
    private final String v = "decode_simple_time2";

    /* renamed from: a, reason: collision with root package name */
    public final int f1820a = 1;

    /* renamed from: b, reason: collision with root package name */
    public final int f1821b = 2;
    public final int c = 3;
    public final int d = 4;
    public final int e = 5;
    private ArrayList<JSONObject> w = new ArrayList<>();
    private ArrayList<String> x = new ArrayList<>();

    @Override // com.cmplay.util.r
    public String a() {
        Log.d("ymym", " uuid " + com.cmplay.kinfoc.report.c.d(GameApp.f1598a));
        return com.cmplay.kinfoc.report.c.d(GameApp.f1598a);
    }

    @Override // com.cmplay.util.r
    public String b() {
        Context context = GameApp.f1598a;
        if (context == null) {
            return null;
        }
        String simOperator = ((TelephonyManager) context.getSystemService("phone")).getSimOperator();
        if (simOperator == null || simOperator.length() < 3) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        sb.append((CharSequence) simOperator, 0, 3);
        return sb.toString();
    }

    @Override // com.cmplay.util.r
    public int z() {
        return (int) Cocos2dxGLSurfaceView.mPositionX;
    }

    @Override // com.cmplay.util.r
    public int A() {
        return (int) Cocos2dxGLSurfaceView.mPositionY;
    }

    @Override // com.cmplay.util.r
    public String c() {
        Context context = GameApp.f1598a;
        if (context == null) {
            return null;
        }
        String simOperator = ((TelephonyManager) context.getSystemService("phone")).getSimOperator();
        if (simOperator == null || simOperator.length() < 5) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        sb.append((CharSequence) simOperator, 3, 5);
        return sb.toString();
    }

    @Override // com.cmplay.util.r
    public void aA() {
    }

    @Override // com.cmplay.util.r
    public void aB() {
    }

    @Override // com.cmplay.util.r
    public void aC() {
    }

    @Override // com.cmplay.util.r
    public void aD() {
    }

    @Override // com.cmplay.util.r
    public boolean aK() {
        return false;
    }

    @Override // com.cmplay.util.r
    public String aL() {
        return null;
    }

    @Override // com.cmplay.util.r
    public String aM() {
        return null;
    }

    @Override // com.cmplay.util.r
    public int aN() {
        return 0;
    }

    @Override // com.cmplay.util.r
    public String d() {
        Context context = GameApp.f1598a;
        return Locale.getDefault().getLanguage();
    }

    @Override // com.cmplay.util.r
    public String e() {
        Context context = GameApp.f1598a;
        return Locale.getDefault().getCountry();
    }

    @Override // com.cmplay.util.r
    public String f() {
        return com.cmplay.kinfoc.report.c.g(GameApp.f1598a).j;
    }

    @Override // com.cmplay.util.r
    public String p() {
        return e.a(GameApp.f1598a);
    }

    @Override // com.cmplay.util.r
    public String g() {
        return com.cmplay.kinfoc.report.c.g(GameApp.f1598a).t;
    }

    @Override // com.cmplay.util.r
    public String r() {
        if (TextUtils.isEmpty(this.f)) {
            this.f = com.cmplay.kinfoc.report.c.a(GameApp.f1598a);
        }
        return this.f;
    }

    @Override // com.cmplay.util.r
    public String s() {
        if (TextUtils.isEmpty(this.g)) {
            this.g = com.cmplay.kinfoc.report.c.b(GameApp.f1598a);
        }
        return this.g;
    }

    @Override // com.cmplay.util.r
    public String x() {
        return String.valueOf(t.a(GameApp.f1598a));
    }

    public String bZ() {
        String netUUid = NativeUtil.getNetUUid();
        if (TextUtils.isEmpty(netUUid)) {
            netUUid = "";
        }
        int platformType = NativeUtil.getPlatformType();
        String faceBookId = NativeUtil.getFaceBookId();
        if (TextUtils.isEmpty(faceBookId)) {
            faceBookId = "";
        }
        return (platformType == 0 || TextUtils.isEmpty(faceBookId)) ? netUUid : faceBookId;
    }

    @Override // com.cmplay.util.r
    public String bd() {
        if (GameApp.f1598a == null) {
            return "";
        }
        WifiManager wifiManager = (WifiManager) GameApp.f1598a.getSystemService("wifi");
        if (!wifiManager.isWifiEnabled()) {
            wifiManager.setWifiEnabled(true);
        }
        return O(wifiManager.getConnectionInfo().getIpAddress());
    }

    private String O(int i) {
        return (i & 255) + "." + ((i >> 8) & 255) + "." + ((i >> 16) & 255) + "." + ((i >> 24) & 255);
    }

    @Override // com.cmplay.util.r
    public String t() {
        Context context = GameApp.f1598a;
        return String.valueOf(Build.VERSION.SDK_INT);
    }

    @Override // com.cmplay.util.r
    public int aE() {
        return 0;
    }

    @Override // com.cmplay.util.r
    public String u() {
        return String.valueOf(GameApp.f1598a.getPackageName());
    }

    @Override // com.cmplay.util.r
    public String v() {
        if (h.c()) {
            return "amazon";
        }
        if (h.d()) {
            return "naranya";
        }
        return com.cmplay.i.a.a(GameApp.f1598a);
    }

    @Override // com.cmplay.util.r
    public String w() {
        try {
            Map<String, String> b2 = AppsFlyerLib.b(GameApp.f1598a);
            if (b2 != null) {
                String str = b2.get("media_source");
                if (!TextUtils.isEmpty(str)) {
                    return str;
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        if (h.c()) {
            return "1";
        }
        if (h.e()) {
            return "2";
        }
        if (h.f()) {
            return "3";
        }
        if (h.h()) {
            return "4";
        }
        if (h.g()) {
            return "5";
        }
        return "0";
    }

    @Override // com.cmplay.util.r
    public void B() {
    }

    @Override // com.cmplay.util.r
    public String C() {
        return i.d();
    }

    @Override // com.cmplay.util.r
    public boolean a(String str, int i, int i2) {
        com.cmplay.h.d.c = str;
        com.cmplay.h.d.d = i;
        com.cmplay.h.d.j = true;
        return true;
    }

    @Override // com.cmplay.util.r
    public void s(String str) {
    }

    @Override // com.cmplay.util.r
    public void a(int i, String str, String str2, String str3) {
        com.cmplay.h.d.a();
        com.cmplay.h.d.i = false;
        com.cmplay.h.d.n = 3;
        com.cmplay.h.d.e = str;
        com.cmplay.h.d.d = i;
        com.cmplay.h.d.g = str3;
        com.cmplay.h.d.f = NativeUtil.getScore();
        j.a("collection_system", (j.a) null);
        j.a("collection_system", str2);
        com.cmplay.h.b.a().a("clk_col_wall_share_btn");
    }

    @Override // com.cmplay.util.r
    public void D() {
        com.cmplay.h.f.b().d();
    }

    @Override // com.cmplay.util.r
    public void a(int i, int i2) {
        String languageTextByKey;
        com.cmplay.h.d.a();
        com.cmplay.h.d.i = false;
        com.cmplay.h.d.m = i;
        com.cmplay.h.d.n = i2;
        com.cmplay.h.d.e = NativeUtil.getSongName();
        com.cmplay.h.d.f = NativeUtil.getScore();
        j.a("", (j.a) null);
        if (1 == com.cmplay.h.d.n) {
            String score = NativeUtil.getScore();
            switch (com.cmplay.h.d.m) {
                case 1:
                    j.a("", "", "");
                    break;
                case 2:
                    int f = i.f();
                    if (f > 10) {
                        languageTextByKey = NativeUtil.getSongName();
                    } else {
                        languageTextByKey = NativeUtil.getLanguageTextByKey("sharepic_screenshot");
                    }
                    j.a(1, languageTextByKey, score, f);
                    break;
                case 3:
                    j.a(score, NativeUtil.getRanking(), NativeUtil.getHighestAchievement());
                    break;
                case 4:
                    j.a(NativeUtil.getChallengeStatus(), NativeUtil.getSongName(), i.e(), NativeUtil.getChallengeLevel());
                    break;
                case 5:
                case 6:
                    int challengeStatus = NativeUtil.getChallengeStatus();
                    String songName = NativeUtil.getSongName();
                    int e = i.e();
                    int challengeLevel = NativeUtil.getChallengeLevel();
                    int challengeCurrentScore = NativeUtil.getChallengeCurrentScore();
                    int challengePassScore = NativeUtil.getChallengePassScore();
                    j.a(challengeStatus, songName, e, challengeLevel, challengeCurrentScore, challengePassScore, challengePassScore != 0 ? 2 : 1);
                    break;
            }
        } else if (com.cmplay.h.d.n != 0 && 3 == com.cmplay.h.d.n) {
            switch (com.cmplay.h.d.m) {
                case 7:
                case 8:
                    break;
                default:
                    j.a("", "", "");
                    break;
            }
        }
        com.cmplay.h.b.a().a("clk_share_btn_result_pg");
    }

    @Override // com.cmplay.util.r
    public void E() {
        com.cmplay.h.d.a();
        com.cmplay.h.d.i = false;
        com.cmplay.h.b.a().a("clk_share_btn_result_pg");
    }

    @Override // com.cmplay.util.r
    public void a(final String str, final String str2, final String str3, final int i) {
        com.cmplay.base.util.d.a(new Runnable() { // from class: com.cmplay.util.s.1
            @Override // java.lang.Runnable
            public void run() {
                if (3 == com.cmplay.h.d.n) {
                    com.cmplay.h.f.b().b(str, str2, str3, i);
                } else {
                    com.cmplay.h.d.o = NativeUtil.getRankPercent();
                    com.cmplay.h.f.b().a(str, str2, str3, i);
                }
            }
        }, 1000L);
    }

    @Override // com.cmplay.util.r
    public void F() {
        com.cmplay.h.f.b().e();
    }

    @Override // com.cmplay.util.r
    public void a(int i) {
        com.cmplay.h.f.b().a(i);
    }

    @Override // com.cmplay.util.r
    public void b(int i) {
        com.cmplay.h.d.n = 2;
        if (6 == i || 7 == i) {
            com.cmplay.h.f.b().c(i);
        } else {
            com.cmplay.h.f.b().b(i);
        }
    }

    @Override // com.cmplay.util.r
    public void c(int i) {
    }

    @Override // com.cmplay.util.r
    public boolean a(String str) {
        return e.b(str);
    }

    @Override // com.cmplay.util.r
    public boolean G() {
        return v.a(GameApp.f1598a);
    }

    @Override // com.cmplay.util.r
    public boolean H() {
        return GoogleApiAvailability.getInstance().isGooglePlayServicesAvailable(GameApp.f1598a) == 0;
    }

    @Override // com.cmplay.util.r
    public void b(String str) {
        i.a(str);
    }

    @Override // com.cmplay.util.r
    public boolean c(String str) {
        b("https://play.google.com/store/apps/details?id=com.cleanmaster.mguard&referrer=utm_source%3D204122");
        return true;
    }

    @Override // com.cmplay.util.r
    public void d(String str) {
        a(str, 0);
    }

    @Override // com.cmplay.util.r
    public void a(final String str, final int i) {
        GameApp.g().a(new Runnable() { // from class: com.cmplay.util.s.12
            @Override // java.lang.Runnable
            public void run() {
                int i2;
                Activity c = AppActivity.c();
                if (c != null) {
                    if (i == 2) {
                        i2 = 3;
                    } else {
                        i2 = 0;
                    }
                    com.cmplay.webview.ipc.a.b.a(GameApp.f1598a).b("feed_back_device_json", com.cmplay.webview.d.d.e());
                    WebViewActivity.a(c, str, i2);
                }
            }
        });
    }

    @Override // com.cmplay.util.r
    public void P() {
    }

    @Override // com.cmplay.util.r
    public void e(String str) {
        try {
            Context context = GameApp.f1598a;
            Intent launchIntentForPackage = context.getPackageManager().getLaunchIntentForPackage(str);
            launchIntentForPackage.addFlags(268435456);
            context.startActivity(launchIntentForPackage);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // com.cmplay.util.r
    public boolean I() {
        return e.b("com.facebook.katana");
    }

    @Override // com.cmplay.util.r
    public boolean J() {
        return e.b("com.facebook.orca");
    }

    @Override // com.cmplay.util.r
    public boolean K() {
        return e.b("com.twitter.android");
    }

    @Override // com.cmplay.util.r
    public boolean L() {
        return com.cmplay.h.f.b().a() && e.b(ConstantsAPI.WXApp.WXAPP_PACKAGE_NAME);
    }

    @Override // com.cmplay.util.r
    public boolean N() {
        return false;
    }

    @Override // com.cmplay.util.r
    public boolean O() {
        return false;
    }

    @Override // com.cmplay.util.r
    public boolean M() {
        return e.b("com.sina.weibo");
    }

    @Override // com.cmplay.util.r
    public void b(final int i, final int i2) {
        i.a(new Runnable() { // from class: com.cmplay.util.s.22
            @Override // java.lang.Runnable
            public void run() {
                NativeUtil.shareCallback(i, i2);
            }
        });
    }

    @Override // com.cmplay.util.r
    public void c(final int i, final int i2) {
        i.a(new Runnable() { // from class: com.cmplay.util.s.33
            @Override // java.lang.Runnable
            public void run() {
                NativeUtil.gameRequestCallback(i, i2);
            }
        });
    }

    @Override // com.cmplay.util.r
    public void a(final int i, final String str) {
        i.a(new Runnable() { // from class: com.cmplay.util.s.42
            @Override // java.lang.Runnable
            public void run() {
                NativeUtil.notifyTokenChanged(i, str);
            }
        });
    }

    @Override // com.cmplay.util.r
    public void d(final int i) {
        i.a(new Runnable() { // from class: com.cmplay.util.s.43
            @Override // java.lang.Runnable
            public void run() {
                NativeUtil.sendEmailCallback(i);
            }
        });
    }

    @Override // com.cmplay.util.r
    public boolean y() {
        return t.c(GameApp.f1598a);
    }

    @Override // com.cmplay.util.r
    public void Q() {
        e.b(GameApp.f1598a);
    }

    @Override // com.cmplay.util.r
    public void f(String str) {
        i.b(str);
    }

    @Override // com.cmplay.util.r
    public void g(String str) {
        Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(str));
        intent.addFlags(268435456);
        e.a(GameApp.f1598a, intent);
    }

    @Override // com.cmplay.util.r
    public void e(int i) {
        com.cmplay.h.d.n = 0;
        com.cmplay.h.d.e = NativeUtil.getSongName();
        Context context = AppActivity.getContext();
        o.a("click share button", context);
        com.cmplay.h.d.f = NativeUtil.getScore();
        if (t.c(context)) {
            ShareActivity.a(context, i);
        } else {
            h(NativeUtil.getLanguageTextByKey("share_fb_have_no_network"));
        }
    }

    @Override // com.cmplay.util.r
    public void i(boolean z) {
    }

    @Override // com.cmplay.util.r
    public boolean bC() {
        return false;
    }

    @Override // com.cmplay.util.r
    public void bD() {
    }

    @Override // com.cmplay.util.r
    public boolean bE() {
        return false;
    }

    @Override // com.cmplay.util.r
    public void h(final String str) {
        final Activity activity = (Activity) AppActivity.getContext();
        activity.runOnUiThread(new Runnable() { // from class: com.cmplay.util.s.44
            @Override // java.lang.Runnable
            public void run() {
                Toast.makeText(activity, str, 1).show();
            }
        });
    }

    @Override // com.cmplay.util.r
    public void a(final String str, final boolean z) {
        final Activity activity = (Activity) AppActivity.getContext();
        activity.runOnUiThread(new Runnable() { // from class: com.cmplay.util.s.45
            @Override // java.lang.Runnable
            public void run() {
                Toast makeText = Toast.makeText(activity, str, z ? 1 : 0);
                makeText.setGravity(17, 0, 0);
                makeText.show();
            }
        });
    }

    @Override // com.cmplay.util.r
    public void a(String str, String str2, String str3) {
        i.a(str, str2, str3, AdError.INTERNAL_ERROR_CODE);
    }

    @Override // com.cmplay.util.r
    public void a(boolean z) {
        if (z) {
            i.b();
        } else {
            i.a();
        }
    }

    @Override // com.cmplay.util.r
    public AssetManager aP() {
        return GameApp.f1598a.getAssets();
    }

    @Override // com.cmplay.util.r
    public boolean aQ() {
        return false;
    }

    @Override // com.cmplay.util.r
    public String R() {
        return GameApp.f1598a.getFilesDir().getAbsolutePath();
    }

    @Override // com.cmplay.util.r
    public void f(final int i) {
        i.a(new Runnable() { // from class: com.cmplay.util.s.46
            @Override // java.lang.Runnable
            public void run() {
                NativeUtil.payCallback(i);
            }
        });
    }

    @Override // com.cmplay.util.r
    public void a(final String str, final String str2) {
        i.a(new Runnable() { // from class: com.cmplay.util.s.2
            @Override // java.lang.Runnable
            public void run() {
                NativeUtil.sendConsumeInfo(str, str2);
            }
        });
    }

    @Override // com.cmplay.util.r
    public void b(final String str, final String str2) {
        i.a(new Runnable() { // from class: com.cmplay.util.s.3
            @Override // java.lang.Runnable
            public void run() {
                if (h.b()) {
                    NativeUtil.sendOrderInfo(str, str2, 0);
                    return;
                }
                if (h.c()) {
                    NativeUtil.sendOrderInfo(str, str2, 1);
                } else if (h.d()) {
                    NativeUtil.sendOrderInfo(str, str2, 2);
                } else if (h.a()) {
                    NativeUtil.sendOrderInfo(str, str2, 9);
                }
            }
        });
    }

    @Override // com.cmplay.util.r
    public void i(final String str) {
        i.a(new Runnable() { // from class: com.cmplay.util.s.4
            @Override // java.lang.Runnable
            public void run() {
                NativeUtil.getPriceCallback(str);
            }
        });
    }

    @Override // com.cmplay.util.r
    public void g(final int i) {
        i.a(new Runnable() { // from class: com.cmplay.util.s.5
            @Override // java.lang.Runnable
            public void run() {
                NativeUtil.addOfferWallReward(i);
            }
        });
    }

    @Override // com.cmplay.util.r
    public void S() {
        i.a(new Runnable() { // from class: com.cmplay.util.s.6
            @Override // java.lang.Runnable
            public void run() {
                NativeUtil.backKeyClicked();
            }
        });
    }

    @Override // com.cmplay.util.r
    public void c(final int i, final String str) {
        i.a(new Runnable() { // from class: com.cmplay.util.s.7
            @Override // java.lang.Runnable
            public void run() {
                NativeUtil.sendSubscribeState(i, str);
            }
        });
    }

    @Override // com.cmplay.util.r
    public String b(int i, String str) {
        return null;
    }

    @Override // com.cmplay.util.r
    public void j(final String str) {
        i.a(new Runnable() { // from class: com.cmplay.util.s.8
            @Override // java.lang.Runnable
            public void run() {
                NativeUtil.getSubscribeInfoCallback(str);
            }
        });
    }

    @Override // com.cmplay.util.r
    public void b(final String str, final String str2, final String str3) {
        i.a(new Runnable() { // from class: com.cmplay.util.s.9
            @Override // java.lang.Runnable
            public void run() {
                NativeUtil.subscribePayCallback(str, str2, str3);
            }
        });
    }

    @Override // com.cmplay.util.r
    public void A(int i) {
    }

    @Override // com.cmplay.util.r
    public String b(final int i, final String str, final String str2, final String str3) {
        final com.cmplay.base.a adapter = PayAdapterGetter.getInstance().getAdapter();
        if (adapter != null) {
            adapter.setPayCallback(new com.cmplay.base.d() { // from class: com.cmplay.util.s.10
                @Override // com.cmplay.base.d
                public void a(int i2) {
                    NativeUtil.onPayCallback(i2);
                }

                @Override // com.cmplay.base.d
                public void a(String str4, String str5) {
                    NativeUtil.onSendConsumeInfo(str4, str5);
                }

                @Override // com.cmplay.base.d
                public void a(String str4) {
                    NativeUtil.onGetPriceCallback(str4);
                }

                @Override // com.cmplay.base.d
                public void b(String str4, String str5) {
                    NativeUtil.onSendOrderInfo(str4, str5);
                }

                @Override // com.cmplay.base.d
                public void a(int i2, String str4) {
                    NativeUtil.onSendSubscribeState(i2, str4);
                }

                @Override // com.cmplay.base.d
                public void b(String str4) {
                    NativeUtil.onGetSubscribeInfoCallback(str4);
                }

                @Override // com.cmplay.base.d
                public void a(String str4, String str5, String str6) {
                    NativeUtil.onSubscribePayCallback(str4, str5, str6);
                }
            });
        }
        if (h.e() || h.f()) {
            PayAdapterGetter.getInstance().getAdapter().setPriceRowCount(Math.min(Math.max(com.cmplay.cloud.a.a().a(2, "section_common", "cloud_key_naranya_pay_row_prefixgpArm", 1), 1), 3));
        } else if (h.h() || h.g()) {
            PayAdapterGetter.getInstance().getAdapter().setPriceRowCount(Math.min(Math.max(com.cmplay.cloud.a.a().a(2, "section_common", "cloud_key_naranya_pay_row_prefixgpArm", 2), 1), 3));
        } else if (h.a()) {
            PayAdapterGetter.getInstance().getAdapter().setSocialId(bZ());
        }
        GameApp.g().a(new Runnable() { // from class: com.cmplay.util.s.11
            @Override // java.lang.Runnable
            public void run() {
                if (adapter != null) {
                    switch (i) {
                        case 0:
                            adapter.asyncGetPrice("");
                            break;
                        case 1:
                            adapter.Init();
                            break;
                        case 2:
                            adapter.asyncQueryOrders();
                            break;
                        case 3:
                            adapter.asyncPurchase(str);
                            break;
                        case 4:
                            adapter.consumeOrder(str);
                            break;
                        case 6:
                            adapter.getSubscribeInfo(str);
                            break;
                        case 7:
                            adapter.asyncSubscribePurchase(str, str2, str3, s.this.Y(), "");
                            break;
                        case 8:
                            adapter.asyncScreenPageSubsPay(str, str2, str3, s.this.Y());
                            break;
                    }
                }
            }
        });
        return "";
    }

    @Override // com.cmplay.util.r
    public String T() {
        return NativeUtil.getAndroidId();
    }

    @Override // com.cmplay.util.r
    public void c(String str, String str2) {
        e.a(GameApp.f1598a, str, str2);
        aa.a("key_language_selected", str);
        aa.a("key_country_selected", str2);
        SyncIpcProvider.setLanguage(str, str2);
        StringBuilder sb = new StringBuilder();
        sb.append(str.toLowerCase());
        if (!TextUtils.isEmpty(str2)) {
            sb.append("_");
            sb.append(str2.toLowerCase());
        }
        com.cmplay.internalpush.a.a(sb.toString());
    }

    @Override // com.cmplay.util.r
    public void U() {
        Log.d("cfg", "UI process onCLanguage, pull cloud config");
        com.cmplay.cloud.a.a().a((Context) null, true);
    }

    @Override // com.cmplay.util.r
    public int V() {
        return 1;
    }

    @Override // com.cmplay.util.r
    public String h() {
        return Build.DEVICE;
    }

    @Override // com.cmplay.util.r
    public String i() {
        return Build.DISPLAY;
    }

    @Override // com.cmplay.util.r
    public String j() {
        return Build.PRODUCT;
    }

    @Override // com.cmplay.util.r
    public String k() {
        return Build.VERSION.CODENAME;
    }

    @Override // com.cmplay.util.r
    public String l() {
        return Build.HARDWARE;
    }

    @Override // com.cmplay.util.r
    public String m() {
        return Build.ID;
    }

    @Override // com.cmplay.util.r
    public String n() {
        return Build.BOARD;
    }

    @Override // com.cmplay.util.r
    public String o() {
        return Build.MANUFACTURER;
    }

    @Override // com.cmplay.util.r
    public int q() {
        return Build.VERSION.SDK_INT;
    }

    @Override // com.cmplay.util.r
    public boolean W() {
        int i;
        Context context = GameApp.f1598a;
        int height = ((WindowManager) context.getSystemService("window")).getDefaultDisplay().getHeight();
        Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
        DisplayMetrics displayMetrics = new DisplayMetrics();
        try {
            Class.forName("android.view.Display").getMethod("getRealMetrics", DisplayMetrics.class).invoke(defaultDisplay, displayMetrics);
            i = displayMetrics.heightPixels;
        } catch (Exception e) {
            i = -1;
        }
        if (i != -1 && i != height) {
            return true;
        }
        return false;
    }

    @Override // com.cmplay.util.r
    public int X() {
        int i;
        Context context = GameApp.f1598a;
        int height = ((WindowManager) context.getSystemService("window")).getDefaultDisplay().getHeight();
        Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
        DisplayMetrics displayMetrics = new DisplayMetrics();
        try {
            Class.forName("android.view.Display").getMethod("getRealMetrics", DisplayMetrics.class).invoke(defaultDisplay, displayMetrics);
            i = displayMetrics.heightPixels;
        } catch (Exception e) {
            i = -1;
        }
        if (i != -1 && i != height) {
            return i - height;
        }
        return -1;
    }

    @Override // com.cmplay.util.r
    public final String Y() {
        Context context = GameApp.f1598a;
        if (h.c()) {
            return "1027486350646867";
        }
        if (!h.d()) {
            return "1635899819990716";
        }
        return "435291046667403";
    }

    /* JADX WARN: Removed duplicated region for block: B:38:0x0048 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // com.cmplay.util.r
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String k(java.lang.String r9) {
        /*
            r8 = this;
            java.io.File r0 = new java.io.File
            r0.<init>(r9)
            r2 = 0
            long r4 = r0.length()     // Catch: java.lang.Exception -> L37 java.lang.Throwable -> L44
            r0 = 0
            int r0 = (r4 > r0 ? 1 : (r4 == r0 ? 0 : -1))
            if (r0 <= 0) goto L2e
            int r0 = (int) r4     // Catch: java.lang.Exception -> L37 java.lang.Throwable -> L44
            byte[] r3 = new byte[r0]     // Catch: java.lang.Exception -> L37 java.lang.Throwable -> L44
            java.io.FileInputStream r1 = new java.io.FileInputStream     // Catch: java.lang.Exception -> L37 java.lang.Throwable -> L44
            r1.<init>(r9)     // Catch: java.lang.Exception -> L37 java.lang.Throwable -> L44
            int r0 = r1.read(r3)     // Catch: java.lang.Throwable -> L52 java.lang.Exception -> L54
            long r6 = (long) r0     // Catch: java.lang.Throwable -> L52 java.lang.Exception -> L54
            int r0 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
            if (r0 != 0) goto L2f
            java.lang.String r0 = new java.lang.String     // Catch: java.lang.Throwable -> L52 java.lang.Exception -> L54
            java.lang.String r2 = "UTF-8"
            r0.<init>(r3, r2)     // Catch: java.lang.Throwable -> L52 java.lang.Exception -> L54
            if (r1 == 0) goto L2d
            r1.close()     // Catch: java.io.IOException -> L4c
        L2d:
            return r0
        L2e:
            r1 = r2
        L2f:
            if (r1 == 0) goto L34
            r1.close()     // Catch: java.io.IOException -> L4e
        L34:
            java.lang.String r0 = ""
            goto L2d
        L37:
            r0 = move-exception
            r1 = r2
        L39:
            r0.printStackTrace()     // Catch: java.lang.Throwable -> L52
            if (r1 == 0) goto L34
            r1.close()     // Catch: java.io.IOException -> L42
            goto L34
        L42:
            r0 = move-exception
            goto L34
        L44:
            r0 = move-exception
            r1 = r2
        L46:
            if (r1 == 0) goto L4b
            r1.close()     // Catch: java.io.IOException -> L50
        L4b:
            throw r0
        L4c:
            r1 = move-exception
            goto L2d
        L4e:
            r0 = move-exception
            goto L34
        L50:
            r1 = move-exception
            goto L4b
        L52:
            r0 = move-exception
            goto L46
        L54:
            r0 = move-exception
            goto L39
        */
        throw new UnsupportedOperationException("Method not decompiled: com.cmplay.util.s.k(java.lang.String):java.lang.String");
    }

    /* JADX WARN: Removed duplicated region for block: B:56:0x0072 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:63:? A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:64:0x006d A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0068 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // com.cmplay.util.r
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String Z() {
        /*
            r9 = this;
            r3 = 0
            java.lang.String r0 = ""
            android.content.Context r1 = com.cmplay.tile2.GameApp.f1598a
            r4 = 0
            r5 = 0
            android.content.res.AssetManager r1 = r1.getAssets()     // Catch: java.lang.Throwable -> L64 java.io.IOException -> L88
            java.lang.String r2 = "res/phonecfg.json"
            java.io.InputStream r2 = r1.open(r2)     // Catch: java.lang.Throwable -> L64 java.io.IOException -> L88
            r1 = 1024(0x400, float:1.435E-42)
            byte[] r1 = new byte[r1]     // Catch: java.io.IOException -> L26 java.lang.Throwable -> L86
            java.io.ByteArrayOutputStream r6 = new java.io.ByteArrayOutputStream     // Catch: java.io.IOException -> L26 java.lang.Throwable -> L86
            r6.<init>()     // Catch: java.io.IOException -> L26 java.lang.Throwable -> L86
        L1a:
            int r7 = r2.read(r1)     // Catch: java.io.IOException -> L26 java.lang.Throwable -> L86
            r8 = -1
            if (r7 == r8) goto L3a
            r8 = 0
            r6.write(r1, r8, r7)     // Catch: java.io.IOException -> L26 java.lang.Throwable -> L86
            goto L1a
        L26:
            r1 = move-exception
        L27:
            r1.printStackTrace()     // Catch: java.lang.Throwable -> L86
            if (r2 == 0) goto L2f
            r2.close()     // Catch: java.io.IOException -> L5a
        L2f:
            if (r3 == 0) goto L34
            r5.close()     // Catch: java.io.IOException -> L82
        L34:
            if (r3 == 0) goto L39
            r4.close()     // Catch: java.io.IOException -> L5f
        L39:
            return r0
        L3a:
            java.lang.String r1 = "UTF-8"
            java.lang.String r0 = r6.toString(r1)     // Catch: java.io.IOException -> L26 java.lang.Throwable -> L86
            if (r2 == 0) goto L45
            r2.close()     // Catch: java.io.IOException -> L55
        L45:
            if (r3 == 0) goto L4a
            r5.close()     // Catch: java.io.IOException -> L80
        L4a:
            if (r3 == 0) goto L39
            r4.close()     // Catch: java.io.IOException -> L50
            goto L39
        L50:
            r1 = move-exception
            r1.printStackTrace()
            goto L39
        L55:
            r1 = move-exception
            r1.printStackTrace()
            goto L45
        L5a:
            r1 = move-exception
            r1.printStackTrace()
            goto L2f
        L5f:
            r1 = move-exception
            r1.printStackTrace()
            goto L39
        L64:
            r0 = move-exception
            r2 = r3
        L66:
            if (r2 == 0) goto L6b
            r2.close()     // Catch: java.io.IOException -> L76
        L6b:
            if (r3 == 0) goto L70
            r5.close()     // Catch: java.io.IOException -> L84
        L70:
            if (r3 == 0) goto L75
            r4.close()     // Catch: java.io.IOException -> L7b
        L75:
            throw r0
        L76:
            r1 = move-exception
            r1.printStackTrace()
            goto L6b
        L7b:
            r1 = move-exception
            r1.printStackTrace()
            goto L75
        L80:
            r1 = move-exception
            goto L4a
        L82:
            r1 = move-exception
            goto L34
        L84:
            r1 = move-exception
            goto L70
        L86:
            r0 = move-exception
            goto L66
        L88:
            r1 = move-exception
            r2 = r3
            goto L27
        */
        throw new UnsupportedOperationException("Method not decompiled: com.cmplay.util.s.Z():java.lang.String");
    }

    @Override // com.cmplay.util.r
    public int l(String str) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            if (jSONObject == null || !jSONObject.has("phone_cfg_version")) {
                return 0;
            }
            return jSONObject.getInt("phone_cfg_version");
        } catch (JSONException e) {
            e.printStackTrace();
            return 0;
        }
    }

    @Override // com.cmplay.util.r
    public boolean aa() {
        return WiredHeadStateReceiver.f1700a;
    }

    @Override // com.cmplay.util.r
    public void b(final boolean z) {
        i.a(new Runnable() { // from class: com.cmplay.util.s.13
            @Override // java.lang.Runnable
            public void run() {
                NativeUtil.notifyWiredHeadState(z);
            }
        });
    }

    @Override // com.cmplay.util.r
    public String ab() {
        String Z = Z();
        int l = l(Z);
        String ag = ag();
        return l(ag) > l ? ag : Z;
    }

    @Override // com.cmplay.util.r
    public void ac() {
        PendingIntent activity = PendingIntent.getActivity(GameApp.f1598a, 0, new Intent(GameApp.f1598a, (Class<?>) AppActivity.class), 1073741824);
        AlarmManager alarmManager = (AlarmManager) GameApp.f1598a.getSystemService("alarm");
        if (Build.VERSION.SDK_INT >= 23) {
            alarmManager.setExactAndAllowWhileIdle(1, System.currentTimeMillis() + 1000, activity);
        } else if (Build.VERSION.SDK_INT >= 19) {
            alarmManager.setExact(1, System.currentTimeMillis() + 1000, activity);
        } else {
            alarmManager.set(1, System.currentTimeMillis() + 1000, activity);
        }
        Process.killProcess(Process.myPid());
    }

    @Override // com.cmplay.util.r
    public void h(int i) {
        com.cmplay.a.c.a().a((AppActivity) AppActivity.getContext(), i);
    }

    @Override // com.cmplay.util.r
    public void a(final int i, final int i2, final String str) {
        i.a(new Runnable() { // from class: com.cmplay.util.s.14
            @Override // java.lang.Runnable
            public void run() {
                Log.i("ly", "platformType = " + i + "result = " + i2);
                NativeUtil.loginCallback(i, i2, str);
            }
        });
    }

    @Override // com.cmplay.util.r
    public void i(int i) {
        com.cmplay.a.c.a().a(i);
    }

    @Override // com.cmplay.util.r
    public boolean j(int i) {
        return com.cmplay.a.c.a().b(i);
    }

    @Override // com.cmplay.util.r
    public String k(int i) {
        return com.cmplay.a.c.a().c(i);
    }

    @Override // com.cmplay.util.r
    public String t(String str) {
        return Uri.encode(str);
    }

    @Override // com.cmplay.util.r
    public String u(String str) {
        return Uri.decode(str);
    }

    @Override // com.cmplay.util.r
    public void l(final int i) {
        ((AppActivity) AppActivity.getContext()).runOnUiThread(new Runnable() { // from class: com.cmplay.util.s.15
            @Override // java.lang.Runnable
            public void run() {
                com.cmplay.a.c.a().d(i);
            }
        });
    }

    @Override // com.cmplay.util.r
    public void a(final int i, final String str, final boolean z) {
        i.a(new Runnable() { // from class: com.cmplay.util.s.16
            @Override // java.lang.Runnable
            public void run() {
                NativeUtil.reqMeInfoCallback(i, str, z);
            }
        });
    }

    @Override // com.cmplay.util.r
    public void m(final int i) {
        ((AppActivity) AppActivity.getContext()).runOnUiThread(new Runnable() { // from class: com.cmplay.util.s.17
            @Override // java.lang.Runnable
            public void run() {
                com.cmplay.a.c.a().e(i);
            }
        });
    }

    @Override // com.cmplay.util.r
    public void d(final int i, final String str) {
        i.a(new Runnable() { // from class: com.cmplay.util.s.18
            @Override // java.lang.Runnable
            public void run() {
                NativeUtil.reqMeFriendsCallback(i, str);
            }
        });
    }

    @Override // com.cmplay.util.r
    public void n(final int i) {
        ((AppActivity) AppActivity.getContext()).runOnUiThread(new Runnable() { // from class: com.cmplay.util.s.19
            @Override // java.lang.Runnable
            public void run() {
                com.cmplay.a.c.a().f(i);
            }
        });
    }

    @Override // com.cmplay.util.r
    public void e(final int i, final String str) {
        i.a(new Runnable() { // from class: com.cmplay.util.s.20
            @Override // java.lang.Runnable
            public void run() {
                NativeUtil.reqInvitableFriendsCallback(i, str);
            }
        });
    }

    @Override // com.cmplay.util.r
    public void ad() {
        i.a(new Runnable() { // from class: com.cmplay.util.s.21
            @Override // java.lang.Runnable
            public void run() {
                try {
                    AppActivity appActivity = (AppActivity) AppActivity.c();
                    if (appActivity != null) {
                        appActivity.e();
                    }
                } catch (Throwable th) {
                }
            }
        }, 100L);
    }

    @Override // com.cmplay.util.r
    public void m(final String str) {
        i.a(new Runnable() { // from class: com.cmplay.util.s.23
            @Override // java.lang.Runnable
            public void run() {
                NativeUtil.reqPlayGamesUserInfoCallBack(str);
            }
        });
    }

    @Override // com.cmplay.util.r
    public String n(String str) {
        return com.cmplay.a.c.a().a(str);
    }

    @Override // com.cmplay.util.r
    public boolean ae() {
        return com.cmplay.a.c.a().b();
    }

    @Override // com.cmplay.util.r
    public void af() {
        com.cmplay.a.a.a().b((AppActivity) AppActivity.getContext());
    }

    @Override // com.cmplay.util.r
    public void f(int i, String str) {
        com.cmplay.h.d.a();
        if (6 == i || 8 == i) {
            j.b(str);
        } else if (7 == i || 9 == i) {
            j.c(str);
        }
    }

    @Override // com.cmplay.util.r
    public void g(int i, String str) {
        com.cmplay.h.d.n = 1;
        com.cmplay.h.f.b().a(i, str);
    }

    @Override // com.cmplay.util.r
    public void o(int i) {
        com.cmplay.h.d.a();
        j.a(i);
    }

    @Override // com.cmplay.util.r
    public void h(int i, String str) {
        com.cmplay.h.f.b().b(i, str);
    }

    @Override // com.cmplay.util.r
    public void d(int i, int i2) {
        com.cmplay.h.d.a();
        com.cmplay.h.d.p = i;
        com.cmplay.h.d.q = i2;
        com.cmplay.h.d.n = 1;
        j.a(i, i2);
    }

    @Override // com.cmplay.util.r
    public void a(int i, String str, String str2) {
        com.cmplay.h.f.b().a(i, str, str2);
    }

    @Override // com.cmplay.util.r
    public void b(int i, String str, String str2) {
        com.cmplay.h.f.b().b(i, str, str2);
    }

    @Override // com.cmplay.util.r
    public void p(final int i) {
        Activity c = AppActivity.c();
        if (c != null) {
            c.runOnUiThread(new Runnable() { // from class: com.cmplay.util.s.24
                @Override // java.lang.Runnable
                public void run() {
                    Bundle bundle = new Bundle();
                    bundle.putInt("vip_user_state", i);
                    com.cmplay.h.b.a().a("vip_user_state", bundle);
                }
            });
        }
    }

    @Override // com.cmplay.util.r
    public void q(final int i) {
        Activity c = AppActivity.c();
        if (c != null) {
            c.runOnUiThread(new Runnable() { // from class: com.cmplay.util.s.25
                @Override // java.lang.Runnable
                public void run() {
                    Bundle bundle = new Bundle();
                    bundle.putInt("game_level", i);
                    com.cmplay.h.b.a().a("game_level", bundle);
                }
            });
        }
    }

    @Override // com.cmplay.util.r
    public void i(int i, String str) {
        com.cmplay.h.f.b().d(i, str);
    }

    @Override // com.cmplay.util.r
    public String ag() {
        return k(2, "section_common");
    }

    @Override // com.cmplay.util.r
    public int ah() {
        return GameApp.f1598a.getSharedPreferences("com.cmplay.tiles4.soundmix", 0).getInt("user_enable_mix", 0);
    }

    @Override // com.cmplay.util.r
    public int r(int i) {
        SharedPreferences.Editor edit = GameApp.f1598a.getSharedPreferences("com.cmplay.tiles4.soundmix", 0).edit();
        edit.putInt("user_enable_mix", i);
        edit.apply();
        edit.commit();
        return 0;
    }

    @Override // com.cmplay.util.r
    public int ai() {
        return GameApp.f1598a.getSharedPreferences("com.cmplay.tiles4.soundmix", 0).getInt("decode_simple_time2", 0);
    }

    @Override // com.cmplay.util.r
    public int s(int i) {
        SharedPreferences.Editor edit = GameApp.f1598a.getSharedPreferences("com.cmplay.tiles4.soundmix", 0).edit();
        edit.putInt("decode_simple_time2", i);
        edit.apply();
        return 0;
    }

    @Override // com.cmplay.util.r
    public String k(int i, String str) {
        return com.cmplay.cloud.a.a().b(i, str);
    }

    @Override // com.cmplay.util.r
    public String[] j(int i, String str) {
        List<String> a2 = com.cmplay.cloud.a.a().a(i, str);
        return (a2 == null || a2.size() <= 0) ? new String[0] : (String[]) a2.toArray(new String[a2.size()]);
    }

    @Override // com.cmplay.util.r
    public String c(int i, String str, String str2, String str3) {
        return com.cmplay.cloud.a.a().a(i, str, str2, str3);
    }

    @Override // com.cmplay.util.r
    public int a(int i, String str, String str2, int i2) {
        return com.cmplay.cloud.a.a().a(i, str, str2, i2);
    }

    @Override // com.cmplay.util.r
    public long a(int i, String str, String str2, long j) {
        return com.cmplay.cloud.a.a().a(i, str, str2, j);
    }

    @Override // com.cmplay.util.r
    public boolean a(int i, String str, String str2, boolean z) {
        return com.cmplay.cloud.a.a().a(i, str, str2, z);
    }

    @Override // com.cmplay.util.r
    public double a(int i, String str, String str2, double d) {
        return com.cmplay.cloud.a.a().a(i, str, str2, d);
    }

    @Override // com.cmplay.util.r
    public int aj() {
        String h = com.cmplay.kinfoc.report.c.h(GameApp.f1598a);
        if (TextUtils.isEmpty(h)) {
            h = String.valueOf(e.a()[0]);
        }
        CRC32 crc32 = new CRC32();
        try {
            crc32.update(h.getBytes("UTF-8"));
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
        return (int) (crc32.getValue() % 10);
    }

    @Override // com.cmplay.util.r
    public boolean a(int i, int i2, int i3, boolean z) {
        c.b("liuyong", "Nativeutil canAdShow adType = " + i + "  reportFrom:" + i2 + "    isClicked:" + z);
        if (1 == i) {
            com.cmplay.ad.a.f = i2;
        }
        com.cmplay.ad.a.g = z;
        return com.cmplay.ad.a.a(i, i2);
    }

    @Override // com.cmplay.util.r
    public void a(int i, int i2, int i3) {
        c.b("liuyong", "Nativeutil showAd adType = " + i + "  reportFrom:" + i2);
        if (1 == i) {
            com.cmplay.ad.a.f = i2;
        }
        com.cmplay.ad.a.g = false;
        Activity c = AppActivity.c();
        if (c != null) {
            c.runOnUiThread(new AnonymousClass26(i2, i, i3));
        }
    }

    /* compiled from: NativeInterfaceImpl.java */
    /* renamed from: com.cmplay.util.s$26, reason: invalid class name */
    class AnonymousClass26 implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ int f1856a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f1857b;
        final /* synthetic */ int c;

        AnonymousClass26(int i, int i2, int i3) {
            this.f1856a = i;
            this.f1857b = i2;
            this.c = i3;
        }

        /* JADX WARN: Removed duplicated region for block: B:14:0x0072 A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:18:0x0025 A[SYNTHETIC] */
        @Override // java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void run() {
            /*
                r11 = this;
                r2 = 0
                java.lang.Integer[] r0 = com.cmplay.ad.a.a()
                int r1 = r11.f1856a
                boolean r1 = com.cmplay.internalpush.b.b(r1, r2)
                if (r1 == 0) goto L13
                r1 = 1009(0x3f1, float:1.414E-42)
                java.lang.Integer[] r0 = com.cmplay.util.e.a(r0, r1)
            L13:
                r1 = r2
            L14:
                int r3 = r0.length
                if (r1 >= r3) goto L8a
                r3 = r0[r1]
                int r5 = r3.intValue()
                int r3 = com.cmplay.ad.a.a(r5)
                int r4 = r11.f1857b
                if (r3 == r4) goto L28
            L25:
                int r1 = r1 + 1
                goto L14
            L28:
                java.lang.String r3 = "NativeUtil"
                java.lang.StringBuilder r4 = new java.lang.StringBuilder
                r4.<init>()
                java.lang.String r6 = "showAd  id = "
                java.lang.StringBuilder r4 = r4.append(r6)
                java.lang.StringBuilder r4 = r4.append(r5)
                java.lang.String r4 = r4.toString()
                com.cmplay.util.c.b(r3, r4)
                com.cmplay.util.s$26$1 r3 = new com.cmplay.util.s$26$1
                r3.<init>()
                com.cmplay.ad.d r3 = com.cmplay.ad.a.a(r5, r3)
                if (r3 == 0) goto Laf
                int r4 = r11.f1856a     // Catch: java.lang.Exception -> Lac
                boolean r4 = r3.canShow(r4)     // Catch: java.lang.Exception -> Lac
                if (r4 == 0) goto Laf
                int r4 = r11.f1856a     // Catch: java.lang.Exception -> Lac
                boolean r3 = r3.show(r4)     // Catch: java.lang.Exception -> Lac
                int r4 = r11.f1857b     // Catch: java.lang.Exception -> La4
                int r6 = com.cmplay.ad.a.f1147b     // Catch: java.lang.Exception -> La4
                if (r4 != r6) goto L6f
                if (r3 == 0) goto L8b
                java.lang.String r4 = "key_ad_interstitial_show"
                r6 = 0
                int r4 = com.cmplay.util.aa.b(r4, r6)     // Catch: java.lang.Exception -> La4
                int r4 = r4 + 1
                r6 = 2
                r7 = 0
                com.cmplay.ad.g.a.a(r6, r4, r7)     // Catch: java.lang.Exception -> La4
            L6f:
                r4 = r3
            L70:
                if (r4 == 0) goto L25
                java.lang.String r0 = "NativeUtil"
                java.lang.StringBuilder r1 = new java.lang.StringBuilder
                r1.<init>()
                java.lang.String r2 = "showad = "
                java.lang.StringBuilder r1 = r1.append(r2)
                java.lang.StringBuilder r1 = r1.append(r5)
                java.lang.String r1 = r1.toString()
                com.cmplay.util.c.b(r0, r1)
            L8a:
                return
            L8b:
                com.cmplay.util.s$26$2 r4 = new com.cmplay.util.s$26$2     // Catch: java.lang.Exception -> La4
                r4.<init>()     // Catch: java.lang.Exception -> La4
                org.cocos2dx.lib.Cocos2dxHelper.runOnGLThread(r4)     // Catch: java.lang.Exception -> La4
                com.cmplay.util.c.a.a r4 = new com.cmplay.util.c.a.a     // Catch: java.lang.Exception -> La4
                r4.<init>()     // Catch: java.lang.Exception -> La4
                int r6 = r11.f1856a     // Catch: java.lang.Exception -> La4
                byte r6 = (byte) r6     // Catch: java.lang.Exception -> La4
                r7 = 5
                r8 = 4
                int r9 = r11.c     // Catch: java.lang.Exception -> La4
                byte r9 = (byte) r9     // Catch: java.lang.Exception -> La4
                r4.a(r6, r7, r8, r9)     // Catch: java.lang.Exception -> La4
                goto L6f
            La4:
                r4 = move-exception
                r10 = r4
                r4 = r3
                r3 = r10
            La8:
                r3.printStackTrace()
                goto L70
            Lac:
                r3 = move-exception
                r4 = r2
                goto La8
            Laf:
                r3 = r2
                goto L6f
            */
            throw new UnsupportedOperationException("Method not decompiled: com.cmplay.util.s.AnonymousClass26.run():void");
        }
    }

    @Override // com.cmplay.util.r
    public void t(final int i) {
        Activity c = AppActivity.c();
        if (c != null) {
            c.runOnUiThread(new Runnable() { // from class: com.cmplay.util.s.27
                @Override // java.lang.Runnable
                public void run() {
                    com.cmplay.ad.a.b(i);
                }
            });
        }
    }

    @Override // com.cmplay.util.r
    public void u(int i) {
        com.cmplay.g.a.b(GameApp.f1598a, i);
    }

    @Override // com.cmplay.util.r
    public int aF() {
        return 0;
    }

    @Override // com.cmplay.util.r
    public void ak() {
        com.cmplay.g.a.b(GameApp.f1598a);
    }

    @Override // com.cmplay.util.r
    public void v(int i) {
        com.cmplay.d.a.a().a(a.EnumC0039a.a(i));
        if (com.cmplay.d.a.a().d()) {
            SyncIpcProvider.setDmcSdkEnabled(false);
        } else {
            SyncIpcProvider.setDmcSdkEnabled(true);
        }
    }

    @Override // com.cmplay.util.r
    public int al() {
        return 0;
    }

    @Override // com.cmplay.util.r
    public void w(int i) {
    }

    @Override // com.cmplay.util.r
    public boolean am() {
        return aa.b("key_msg_box_enable", true);
    }

    @Override // com.cmplay.util.r
    public String an() {
        return "";
    }

    @Override // com.cmplay.util.r
    public void ao() {
    }

    private void ca() {
        Intent intent = new Intent(GameApp.f1598a, (Class<?>) ReportService.class);
        intent.putExtra("command_start_report", "command_schedule_all_notifications");
        GameApp.f1598a.startService(intent);
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x010d  */
    /* JADX WARN: Removed duplicated region for block: B:19:? A[RETURN, SYNTHETIC] */
    @Override // com.cmplay.util.r
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void ap() {
        /*
            Method dump skipped, instructions count: 486
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.cmplay.util.s.ap():void");
    }

    @Override // com.cmplay.util.r
    public void aG() {
    }

    @Override // com.cmplay.util.r
    public boolean aH() {
        return false;
    }

    @Override // com.cmplay.util.r
    public void d(boolean z) {
    }

    @Override // com.cmplay.util.r
    public void e(boolean z) {
    }

    @Override // com.cmplay.util.r
    public void aI() {
    }

    @Override // com.cmplay.util.r
    public void aJ() {
    }

    @Override // com.cmplay.util.r
    public void a(boolean z, int i) {
        GameApp.g().a(new Runnable() { // from class: com.cmplay.util.s.28
            @Override // java.lang.Runnable
            public void run() {
            }
        });
    }

    @Override // com.cmplay.util.r
    public void aq() {
        com.cmplay.webview.ipc.a.b.a(GameApp.f1598a).a(NativeUtil.isLoginGameCenter());
        com.cmplay.webview.ipc.a.b.a(GameApp.f1598a).a(NativeUtil.getPlayerInfo());
        com.cmplay.webview.ipc.a.b.a(GameApp.f1598a).b("diamond_count", NativeUtil.getDiamond(false));
        com.cmplay.webview.ipc.a.b.a(GameApp.f1598a).b("coin_count", NativeUtil.getCurCoin(false));
        com.cmplay.webview.ipc.a.b.a(GameApp.f1598a).b("life_count", NativeUtil.getCurHP(false));
        Log.e("ymymym", "startWebView  : " + NativeUtil.getDiamond(false) + "  " + NativeUtil.getCurCoin(false) + "  " + NativeUtil.getCurHP(false));
        com.cmplay.webview.ipc.a.b.a(GameApp.f1598a).b("feed_back_device_json", com.cmplay.webview.d.d.e());
        WebViewActivity.a(AppActivity.getContext(), WebViewLayout.HALLOWEEN_URL, 1);
    }

    @Override // com.cmplay.util.r
    public boolean ar() {
        return h.d() || h.c();
    }

    @Override // com.cmplay.util.r
    public boolean as() {
        return h.d();
    }

    @Override // com.cmplay.util.r
    public void a(int i, boolean z) {
        Log.e("ymym", "ymym notifyPublicDataChange  ");
        Intent intent = new Intent(GameApp.f1598a, (Class<?>) ReportService.class);
        intent.putExtra("command_start_report", "command_notify_public");
        GameApp.f1598a.startService(intent);
    }

    @Override // com.cmplay.util.r
    public boolean at() {
        return aa.b("key_h5_login", false);
    }

    @Override // com.cmplay.util.r
    public void x(final int i) {
        Cocos2dxHelper.runOnGLThread(new Runnable() { // from class: com.cmplay.util.s.29
            @Override // java.lang.Runnable
            public void run() {
                NativeUtil.onUploadDebugInfoRes(i);
            }
        });
    }

    @Override // com.cmplay.util.r
    public void c(String str, String str2, String str3) {
        com.cmplay.c.a.a.a(GameApp.f1598a, str, str2, str3);
    }

    @Override // com.cmplay.util.r
    public void au() {
    }

    @Override // com.cmplay.util.r
    public void o(String str) {
    }

    @Override // com.cmplay.util.r
    public long av() {
        return GameApp.a();
    }

    @Override // com.cmplay.util.r
    public long aw() {
        return GameApp.b();
    }

    @Override // com.cmplay.util.r
    public long ax() {
        return GameApp.c();
    }

    @Override // com.cmplay.util.r
    public void p(String str) {
        com.cmplay.webview.ipc.a.b.a(GameApp.f1598a).c(str);
        WebBroadcast.a(GameApp.f1598a);
    }

    @Override // com.cmplay.util.r
    public void ay() {
        com.cmplay.webview.ipc.a.b.a(GameApp.f1598a).b("feed_back_device_json", com.cmplay.webview.d.d.e());
        WebViewActivity.a(AppActivity.c(), WebViewLayout.FEEDBACK_URL, 2);
    }

    @Override // com.cmplay.util.r
    public void q(final String str) {
        Cocos2dxHelper.runOnGLThread(new Runnable() { // from class: com.cmplay.util.s.30
            @Override // java.lang.Runnable
            public void run() {
                NativeUtil.doPostFeedbackInfo(str);
            }
        });
    }

    @Override // com.cmplay.util.r
    public void c(boolean z) {
        aa.a("key_gameproblem_adshowed", z);
    }

    @Override // com.cmplay.util.r
    public void az() {
        aa.a("key_gameproblem_mess_recommend", new Long(System.currentTimeMillis() / 86400000).intValue());
    }

    @Override // com.cmplay.util.r
    public String y(int i) {
        return com.cmplay.b.b.a().a(i);
    }

    @Override // com.cmplay.util.r
    public void z(int i) {
        com.cmplay.b.b.a().b(i);
    }

    @Override // com.cmplay.util.r
    public void r(String str) {
        com.cmplay.b.b.a().a(str);
        com.cmplay.b.b.a().b(str);
    }

    @Override // com.cmplay.util.r
    public int aO() {
        return 0;
    }

    @Override // com.cmplay.util.r
    public boolean B(int i) {
        return false;
    }

    @Override // com.cmplay.util.r
    public boolean C(int i) {
        return false;
    }

    @Override // com.cmplay.util.r
    public void D(int i) {
    }

    @Override // com.cmplay.util.r
    public void E(int i) {
    }

    @Override // com.cmplay.util.r
    public void F(int i) {
    }

    @Override // com.cmplay.util.r
    public boolean aR() {
        return false;
    }

    @Override // com.cmplay.util.r
    public void f(boolean z) {
    }

    @Override // com.cmplay.util.r
    public boolean g(boolean z) {
        return true;
    }

    @Override // com.cmplay.util.r
    public void H(int i) {
    }

    @Override // com.cmplay.util.r
    public String aU() {
        return GameApp.h();
    }

    @Override // com.cmplay.util.r
    public String aV() {
        return GameApp.i();
    }

    @Override // com.cmplay.util.r
    public boolean aW() {
        return GameApp.c;
    }

    @Override // com.cmplay.util.r
    public void aX() {
        final Activity c = AppActivity.c();
        if (c != null) {
            c.runOnUiThread(new Runnable() { // from class: com.cmplay.util.s.31
                @Override // java.lang.Runnable
                public void run() {
                    ((AppActivity) c).a();
                }
            });
        }
    }

    @Override // com.cmplay.util.r
    public void v(String str) {
    }

    @Override // com.cmplay.util.r
    public void e(int i, int i2) {
    }

    @Override // com.cmplay.util.r
    public void w(String str) {
        if (this.w.size() <= 0) {
            try {
                JSONArray jSONArray = new JSONArray(str);
                for (int i = 0; i < jSONArray.length(); i++) {
                    JSONObject jSONObject = jSONArray.getJSONObject(i);
                    this.w.add(jSONObject);
                    final int optInt = jSONObject.optInt("songId");
                    final int optInt2 = jSONObject.optInt("moneyType");
                    final int optInt3 = jSONObject.optInt("moneyNum");
                    d.a(new d.a() { // from class: com.cmplay.util.s.32
                        @Override // com.cmplay.util.d.a
                        public void a() {
                            NativeUtil.pushUnlockMusicNotify(optInt, optInt3, optInt2, false);
                        }
                    });
                }
            } catch (JSONException e) {
                e.printStackTrace();
            }
        }
    }

    @Override // com.cmplay.util.r
    public void f(int i, int i2) {
        String str = i + ":" + i2;
        if (!this.x.contains(str)) {
            this.x.add(str);
        }
        if (this.x.size() >= this.w.size()) {
            this.w.clear();
            this.x.clear();
        }
    }

    @Override // com.cmplay.util.r
    public void x(String str) {
        try {
            String[] split = str.replaceAll("\\[", "").replaceAll("]", "").split(",");
            StringBuilder sb = new StringBuilder();
            sb.append("{");
            for (int i = 0; i < split.length; i++) {
                if (!TextUtils.isEmpty(split[i])) {
                    String str2 = split[i] + ":" + NativeUtil.isUnlockMusicByMid(Integer.parseInt(split[i].replaceAll("\"", "")));
                    if (i + 1 < split.length) {
                        sb.append(str2).append(",");
                    } else {
                        sb.append(str2);
                    }
                }
            }
            sb.append("}");
            com.cmplay.webview.ipc.a.b.a(GameApp.f1598a).b(sb.toString());
            Log.d("Web", "WebBroadcast.updateSongLockCallback");
            WebBroadcast.b(GameApp.f1598a);
        } catch (Exception e) {
            Log.d("Web", e.toString());
            e.printStackTrace();
        }
    }

    @Override // com.cmplay.util.r
    public void g(int i, int i2) {
    }

    @Override // com.cmplay.util.r
    public boolean aY() {
        return com.cmplay.i.c.a();
    }

    @Override // com.cmplay.util.r
    public File a(Context context) {
        if (context == null) {
            context = GameApp.f1598a;
        }
        if (context == null) {
            Log.d("feedback", "context is null");
            return null;
        }
        String str = com.cmplay.i.b.a(context) + "/logcat.txt";
        File file = new File(str);
        if (file.exists()) {
            file.delete();
        }
        Log.d("feedback", "getting logcat to " + str);
        try {
            Process exec = Runtime.getRuntime().exec("logcat -v threadtime -d -f " + str);
            try {
                Log.d("feedback", "get adb log finished at " + exec.waitFor());
            } finally {
                exec.destroy();
            }
        } catch (Exception e) {
        }
        if (file.exists()) {
            return file;
        }
        return null;
    }

    @Override // com.cmplay.util.r
    public void bb() {
        com.b.a.a.a.a("game1");
    }

    @Override // com.cmplay.util.r
    public void bc() {
        com.b.a.a.a.b("game1");
    }

    public static String a(InputStream inputStream, String str) throws Exception {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[1024];
        while (true) {
            int read = inputStream.read(bArr, 0, 1024);
            if (read != -1) {
                byteArrayOutputStream.write(bArr, 0, read);
            } else {
                return new String(byteArrayOutputStream.toByteArray(), "UTF-8");
            }
        }
    }

    @Override // com.cmplay.util.r
    public String be() {
        int i = 0;
        Process process = null;
        String str = "";
        try {
            try {
                process = Runtime.getRuntime().exec("lsof " + String.valueOf(Process.myPid()));
                str = a(process.getInputStream(), "");
                String[] split = str.split(IOUtils.LINE_SEPARATOR_UNIX);
                if (split != null) {
                    for (String str2 : split) {
                        Log.d("game", str2);
                        if (-1 != str2.indexOf("kinfoc")) {
                            i++;
                        }
                    }
                    Log.d("game", "open file list total " + split.length + " files, has " + i + " infoc files");
                }
                if (process == null) {
                    return str;
                }
                process.destroy();
                return str;
            } catch (IOException e) {
                String str3 = str;
                e.printStackTrace();
                if (process == null) {
                    return str3;
                }
                process.destroy();
                return str3;
            } catch (Exception e2) {
                String str4 = str;
                e2.printStackTrace();
                if (process == null) {
                    return str4;
                }
                process.destroy();
                return str4;
            }
        } catch (Throwable th) {
            if (process != null) {
                process.destroy();
            }
            throw th;
        }
    }

    @Override // com.cmplay.util.r
    public void y(String str) {
    }

    @Override // com.cmplay.util.r
    public void I(int i) {
        Activity c = AppActivity.c();
        if (c != null) {
            LoveShareActivity.a(c, i);
        }
    }

    @Override // com.cmplay.util.r
    public void aZ() {
        Activity c = AppActivity.c();
        if (c != null) {
            com.cmplay.h.d.n = 1;
            ChristmasShareActivity.a(c);
        }
    }

    @Override // com.cmplay.util.r
    public void d(String str, String str2) {
        Activity c = AppActivity.c();
        if (c != null) {
            aa.a("key_share_cd_file_url", "");
            SongMixShareActivity.a(c, str, str2);
        }
    }

    @Override // com.cmplay.util.r
    public int bf() {
        if (GameApp.f1598a != null) {
            return Integer.getInteger(((AudioManager) GameApp.f1598a.getSystemService("audio")).getProperty("android.media.property.OUTPUT_SAMPLE_RATE")).intValue();
        }
        return 0;
    }

    @Override // com.cmplay.util.r
    public void z(String str) {
        com.cmplay.notification.a.a(GameApp.f1598a, str);
    }

    @Override // com.cmplay.util.r
    public int bg() {
        return i.c();
    }

    @Override // com.cmplay.util.r
    public int bh() {
        Resources resources = GameApp.g().getResources();
        if (resources != null) {
            return resources.getDisplayMetrics().widthPixels;
        }
        WindowManager windowManager = (WindowManager) GameApp.f1598a.getSystemService("window");
        if (windowManager == null) {
            return 0;
        }
        return windowManager.getDefaultDisplay().getWidth();
    }

    @Override // com.cmplay.util.r
    public int bi() {
        Resources resources = GameApp.g().getResources();
        if (resources != null) {
            return resources.getDisplayMetrics().heightPixels;
        }
        WindowManager windowManager = (WindowManager) GameApp.f1598a.getSystemService("window");
        if (windowManager == null) {
            return 0;
        }
        return windowManager.getDefaultDisplay().getHeight();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public PendingIntent cb() {
        Intent intent = new Intent(GameApp.f1598a, (Class<?>) ReportService.class);
        intent.putExtra("command_start_report", "command_start_show_get_week_race_diamond");
        return PendingIntent.getService(GameApp.f1598a, GameControllerDelegate.BUTTON_DPAD_UP, intent, 134217728);
    }

    @Override // com.cmplay.util.r
    public void a(final String str, final long j) {
        i.a(new Runnable() { // from class: com.cmplay.util.s.34
            @Override // java.lang.Runnable
            public void run() {
                aa.a("key_week_race_id_just_end", str);
                long a2 = i.a(System.currentTimeMillis() + (j * 1000), 21);
                AlarmManager alarmManager = (AlarmManager) GameApp.f1598a.getSystemService("alarm");
                PendingIntent cb = s.this.cb();
                alarmManager.cancel(cb);
                try {
                    if (Build.VERSION.SDK_INT >= 23) {
                        alarmManager.setExactAndAllowWhileIdle(0, a2, cb);
                    } else if (Build.VERSION.SDK_INT >= 19) {
                        alarmManager.setExact(0, a2, cb);
                    } else {
                        alarmManager.set(0, a2, cb);
                    }
                } catch (Throwable th) {
                }
            }
        }, 10L);
    }

    @Override // com.cmplay.util.r
    public void A(final String str) {
        i.a(new Runnable() { // from class: com.cmplay.util.s.35
            @Override // java.lang.Runnable
            public void run() {
                aa.a("key_week_race_id_just_end", str);
                long a2 = i.a(System.currentTimeMillis(), 21);
                AlarmManager alarmManager = (AlarmManager) GameApp.f1598a.getSystemService("alarm");
                PendingIntent cb = s.this.cb();
                alarmManager.cancel(cb);
                try {
                    if (Build.VERSION.SDK_INT >= 23) {
                        alarmManager.setExactAndAllowWhileIdle(0, a2, cb);
                    } else if (Build.VERSION.SDK_INT >= 19) {
                        alarmManager.setExact(0, a2, cb);
                    } else {
                        alarmManager.set(0, a2, cb);
                    }
                } catch (Throwable th) {
                }
            }
        }, 10L);
    }

    @Override // com.cmplay.util.r
    public void B(final String str) {
        i.a(new Runnable() { // from class: com.cmplay.util.s.36
            @Override // java.lang.Runnable
            public void run() {
                String b2 = aa.b("key_get_week_race_diamond_ids", "");
                boolean z = false;
                if (!TextUtils.isEmpty(b2)) {
                    z = b2.contains(str);
                }
                if (!z) {
                    aa.a("key_get_week_race_diamond_ids", b2 + "," + str);
                }
            }
        }, 10L);
    }

    @Override // com.cmplay.util.r
    public void b(String str, boolean z) {
        aa.a(str, z);
    }

    @Override // com.cmplay.util.r
    public void b(String str, int i) {
        aa.a(str, i);
    }

    @Override // com.cmplay.util.r
    public void b(String str, long j) {
        aa.a(str, j);
    }

    @Override // com.cmplay.util.r
    public void a(int i, String str, String str2, String str3, String str4, int i2) {
        com.cmplay.notification.b.a().a(i, str, str2, str3, str4, i2 * 1000);
    }

    @Override // com.cmplay.util.r
    public void d(int i, String str, String str2, String str3) {
        com.cmplay.notification.b.a().a(i, str, str2, str3);
    }

    @Override // com.cmplay.util.r
    public void l(int i, String str) {
        com.cmplay.notification.b.a().a(i, str);
    }

    @Override // com.cmplay.util.r
    public void J(int i) {
        com.cmplay.notification.b.a().a(i);
    }

    @Override // com.cmplay.util.r
    public void K(int i) {
        com.cmplay.notification.b.a().b(i);
    }

    @Override // com.cmplay.util.r
    public String C(String str) {
        return com.cmplay.d.b.a().a(str);
    }

    @Override // com.cmplay.util.r
    public boolean bj() {
        PackageManager packageManager = GameApp.f1598a.getPackageManager();
        if (packageManager != null) {
            return packageManager.hasSystemFeature("android.hardware.sensor.accelerometer");
        }
        return false;
    }

    @Override // com.cmplay.util.r
    public void D(String str) {
        a.a(GameApp.f1598a, str);
    }

    @Override // com.cmplay.util.r
    public void E(String str) {
    }

    @Override // com.cmplay.util.r
    public boolean bk() {
        return false;
    }

    @Override // com.cmplay.util.r
    public boolean bl() {
        return false;
    }

    @Override // com.cmplay.util.r
    public void bm() {
    }

    @Override // com.cmplay.util.r
    public int aS() {
        return 0;
    }

    @Override // com.cmplay.util.r
    public int aT() {
        return 0;
    }

    @Override // com.cmplay.util.r
    public void G(int i) {
    }

    @Override // com.cmplay.util.r
    public void ba() {
        com.cmplay.cloud.a.a().a(GameApp.f1598a);
    }

    @Override // com.cmplay.util.r
    public void L(int i) {
    }

    @Override // com.cmplay.util.r
    public void bn() {
    }

    @Override // com.cmplay.util.r
    public int bo() {
        return 0;
    }

    @Override // com.cmplay.util.r
    public void bp() {
    }

    @Override // com.cmplay.util.r
    public void h(boolean z) {
    }

    @Override // com.cmplay.util.r
    public void bq() {
    }

    @Override // com.cmplay.util.r
    public boolean br() {
        return false;
    }

    @Override // com.cmplay.util.r
    public boolean bs() {
        return false;
    }

    @Override // com.cmplay.util.r
    public boolean bt() {
        return false;
    }

    @Override // com.cmplay.util.r
    public boolean bu() {
        return false;
    }

    @Override // com.cmplay.util.r
    public boolean bv() {
        return false;
    }

    @Override // com.cmplay.util.r
    public boolean bw() {
        return false;
    }

    @Override // com.cmplay.util.r
    public boolean bx() {
        return false;
    }

    @Override // com.cmplay.util.r
    public boolean by() {
        return false;
    }

    @Override // com.cmplay.util.r
    public void bz() {
    }

    @Override // com.cmplay.util.r
    public boolean bA() {
        return true;
    }

    @Override // com.cmplay.util.r
    public boolean bB() {
        return true;
    }

    @Override // com.cmplay.util.r
    public boolean M(int i) {
        return q.c(i);
    }

    @Override // com.cmplay.util.r
    public int N(int i) {
        return q.a(i);
    }

    @Override // com.cmplay.util.r
    public int bF() {
        return o.a(GameApp.f1598a);
    }

    @Override // com.cmplay.util.r
    public void bG() {
        Intent intent = new Intent(GameApp.f1598a, (Class<?>) ReportService.class);
        intent.putExtra("command_start_report", "command_notify_leveing_data_changed");
        GameApp.f1598a.startService(intent);
    }

    @Override // com.cmplay.util.r
    public boolean b(boolean z, int i) {
        com.cmplay.base.util.g.a("internal_push", "NativeInterfaceImpl.canShowOpenScreen   isNewUrser:" + z + "  scence:" + i);
        return com.cmplay.internalpush.b.a(GameApp.f1598a, i, z);
    }

    @Override // com.cmplay.util.r
    public void bH() {
        com.cmplay.base.util.g.a("internal_push", "NativeInterfaceImpl.showOpenScreen");
        i.a(new Runnable() { // from class: com.cmplay.util.s.37
            @Override // java.lang.Runnable
            public void run() {
                Activity c = AppActivity.c();
                if (c != null) {
                    com.cmplay.internalpush.b.a(c);
                }
            }
        }, 10L);
    }

    @Override // com.cmplay.util.r
    public void bI() {
        com.cmplay.base.util.g.a("internal_push", "NativeInterfaceImpl.closeOpenScreen");
        i.a(new Runnable() { // from class: com.cmplay.util.s.38
            @Override // java.lang.Runnable
            public void run() {
                OpenScreenActivity openScreenActivity = (OpenScreenActivity) OpenScreenActivity.b();
                if (openScreenActivity != null) {
                    openScreenActivity.a();
                }
            }
        }, 10L);
    }

    @Override // com.cmplay.util.r
    public boolean bJ() {
        return com.cmplay.internalpush.b.a(GameApp.f1598a);
    }

    @Override // com.cmplay.util.r
    public void bK() {
        i.a(new Runnable() { // from class: com.cmplay.util.s.39
            @Override // java.lang.Runnable
            public void run() {
                Activity c = AppActivity.c();
                if (c != null) {
                    com.cmplay.internalpush.b.b(c);
                }
            }
        }, 10L);
    }

    @Override // com.cmplay.util.r
    public boolean bL() {
        return com.cmplay.internalpush.b.b(GameApp.f1598a, 0, false);
    }

    @Override // com.cmplay.util.r
    public String bM() {
        return com.cmplay.internalpush.b.b(GameApp.f1598a);
    }

    @Override // com.cmplay.util.r
    public void F(String str) {
        com.cmplay.internalpush.b.a(GameApp.f1598a, str);
    }

    @Override // com.cmplay.util.r
    public boolean bN() {
        return com.cmplay.internalpush.b.c(GameApp.f1598a);
    }

    @Override // com.cmplay.util.r
    public boolean bO() {
        return com.cmplay.internalpush.b.d(GameApp.f1598a);
    }

    @Override // com.cmplay.util.r
    public String bP() {
        return com.cmplay.internalpush.b.e(GameApp.f1598a);
    }

    @Override // com.cmplay.util.r
    public void G(String str) {
        com.cmplay.internalpush.b.b(GameApp.f1598a, str);
    }

    @Override // com.cmplay.util.r
    public boolean bQ() {
        return com.cmplay.internalpush.b.f(GameApp.f1598a);
    }

    @Override // com.cmplay.util.r
    public boolean bR() {
        return com.cmplay.internalpush.b.g(GameApp.f1598a);
    }

    @Override // com.cmplay.util.r
    public String bS() {
        return com.cmplay.internalpush.b.h(GameApp.f1598a);
    }

    @Override // com.cmplay.util.r
    public void H(String str) {
        com.cmplay.internalpush.b.c(GameApp.f1598a, str);
    }

    @Override // com.cmplay.util.r
    public boolean I(String str) {
        return com.cmplay.internalpush.b.d(GameApp.f1598a, str);
    }

    @Override // com.cmplay.util.r
    public boolean bT() {
        com.cmplay.i.c.a(GameApp.f1598a);
        return com.cmplay.i.c.b();
    }

    @Override // com.cmplay.util.r
    public boolean bU() {
        com.cmplay.i.c.a(GameApp.f1598a);
        return com.cmplay.i.c.a();
    }

    @Override // com.cmplay.util.r
    public void bV() {
        Intent intent = new Intent(GameApp.f1598a, (Class<?>) ReportService.class);
        intent.putExtra("command_start_report", "command_notify_cd_fragment_data_changed");
        GameApp.f1598a.startService(intent);
    }

    @Override // com.cmplay.util.r
    public void e(String str, String str2) {
        com.cmplay.g.a.a(GameApp.f1598a, str, str2);
    }

    @Override // com.cmplay.util.r
    public String bW() {
        com.ijinshan.cloudconfig.c.a.a(GameApp.f1598a);
        return com.ijinshan.cloudconfig.b.a.a().b("local_version", "none");
    }

    @Override // com.cmplay.util.r
    public void a(String str, String str2, String str3, String str4, int i, int i2) {
    }

    @Override // com.cmplay.util.r
    public void bX() {
        c.c("ymym", "ymym notifyPublicDataChange  ");
        Intent intent = new Intent(GameApp.f1598a, (Class<?>) ReportService.class);
        intent.putExtra("command_start_report", "command_notify_public");
        GameApp.f1598a.startService(intent);
    }

    @Override // com.cmplay.util.r
    public void bY() {
        Intent intent = new Intent(GameApp.f1598a, (Class<?>) ReportService.class);
        intent.putExtra("command_start_report", "command_notify_cloud_data_changed");
        GameApp.f1598a.startService(intent);
    }

    @Override // com.cmplay.util.r
    public void m(final int i, final String str) {
        final Activity c = AppActivity.c();
        if (c != null && !c.isFinishing()) {
            c.runOnUiThread(new Runnable() { // from class: com.cmplay.util.s.40
                @Override // java.lang.Runnable
                public void run() {
                    com.cmplay.j.a.a(c, str, a.EnumC0049a.a(i));
                }
            });
        }
    }

    @Override // com.cmplay.util.r
    public void J(final String str) {
        Activity c = AppActivity.c();
        if (c != null) {
            c.runOnUiThread(new Runnable() { // from class: com.cmplay.util.s.41
                @Override // java.lang.Runnable
                public void run() {
                    com.cmplay.base.util.g.a("LuckyWheel", "LuckyWheelManager.getInstance().enter    peerId:" + str);
                    com.example.luckywheel.b.g.a().a(GameApp.f1598a, str);
                }
            });
        }
    }
}
