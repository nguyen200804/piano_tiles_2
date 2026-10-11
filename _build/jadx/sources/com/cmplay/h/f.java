package com.cmplay.h;

import android.app.Activity;
import android.content.Intent;
import android.text.TextUtils;
import android.widget.Toast;
import com.cmplay.tile2.GameApp;
import com.cmplay.tile2.ui.SongMixShareActivity;
import com.cmplay.util.NativeUtil;
import com.cmplay.util.aa;
import com.cmplay.util.i;
import com.cmplay.util.j;
import com.cmplay.util.t;
import com.cmplay.webview.ui.WebViewActivity;
import java.lang.reflect.InvocationTargetException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import org.cocos2dx.lib.Cocos2dxActivity;

/* compiled from: ShareHelper.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class f implements c {
    private static SimpleDateFormat e = new SimpleDateFormat("yyyy-MM-dd", Locale.US);

    /* renamed from: a, reason: collision with root package name */
    private a f1387a;

    /* renamed from: b, reason: collision with root package name */
    private ArrayList<c> f1388b = new ArrayList<>();
    private long c = 0;
    private long d = 0;

    /* compiled from: ShareHelper.java */
    public interface a {
    }

    /* compiled from: ShareHelper.java */
    public static final class b {

        /* renamed from: a, reason: collision with root package name */
        public static final f f1398a = new f();
    }

    public boolean a() {
        try {
            Class<?> cls = Class.forName("com.cmplay.tiles4_cn.wxapi.WechatHelper");
            cls.getMethod(com.cmplay.base.util.ipc.a.FORCE_STATIC_METHOD, new Class[0]).invoke(cls, new Object[0]);
            return true;
        } catch (ClassNotFoundException e2) {
            e2.printStackTrace();
            return false;
        } catch (IllegalAccessException e3) {
            e3.printStackTrace();
            return false;
        } catch (NoSuchMethodException e4) {
            e4.printStackTrace();
            return false;
        } catch (InvocationTargetException e5) {
            e5.printStackTrace();
            return false;
        }
    }

    public boolean a(Activity activity, e eVar, int i) {
        if (!a(activity)) {
            return false;
        }
        c();
        com.cmplay.h.a.b bVar = new com.cmplay.h.a.b(activity, i);
        a(bVar);
        bVar.a(eVar);
        return true;
    }

    public boolean a(Activity activity, e eVar) {
        return a(activity, new com.cmplay.h.a.b(activity, 3), eVar);
    }

    public boolean b(Activity activity, e eVar) {
        return a(activity, new com.cmplay.h.a.d(activity), eVar);
    }

    public boolean c(Activity activity, e eVar) {
        return a(activity, new com.cmplay.h.a.f(activity), eVar);
    }

    public boolean d(Activity activity, e eVar) {
        return a(activity, new com.cmplay.h.a.e(activity), eVar);
    }

    private boolean a(Activity activity, com.cmplay.h.a.c cVar, e eVar) {
        if (!a(activity, cVar.a())) {
            return false;
        }
        c();
        cVar.a(eVar);
        a(cVar);
        return true;
    }

    public void e(Activity activity, e eVar) {
        c();
        com.cmplay.h.a.a aVar = new com.cmplay.h.a.a(activity);
        aVar.a(eVar);
        com.cmplay.util.c.a("MMM", "ShareHelper shareToSystem ");
        a(aVar);
    }

    private boolean a(Activity activity) {
        if (i()) {
            return true;
        }
        b(activity, NativeUtil.getLanguageTextByKey("share_fb_have_no_network"));
        return false;
    }

    private boolean a(Activity activity, String str) {
        if (!i()) {
            b(activity, NativeUtil.getLanguageTextByKey("share_fb_have_no_network"));
            return false;
        }
        if (!a(str)) {
            b(activity, NativeUtil.getLanguageTextByKey("app_not_found"));
            return false;
        }
        return true;
    }

    public static f b() {
        return b.f1398a;
    }

    @Override // com.cmplay.h.c
    public void a(int i, int i2, Intent intent) {
        if (this.f1388b != null && this.f1388b.size() != 0) {
            com.cmplay.util.c.a("MMM", "ShareHelper onActivityResult size=" + this.f1388b.size());
            Iterator<c> it = this.f1388b.iterator();
            while (it.hasNext()) {
                c next = it.next();
                com.cmplay.util.c.a("MMM", "ShareHelper onActivityResult " + next);
                next.a(i, i2, intent);
            }
        }
    }

    public boolean a(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        boolean z = true;
        try {
            GameApp.f1598a.getPackageManager().getPackageInfo(str, 256);
        } catch (Exception e2) {
            z = false;
        }
        return z;
    }

    public void a(c cVar) {
        boolean z;
        com.cmplay.util.c.a("MMM", "ShareHelper registerActivityResult abc " + cVar);
        if (this.f1388b.size() == 0) {
            this.f1388b.add(cVar);
            com.cmplay.util.c.a("MMM", "ShareHelper registerActivityResult add " + cVar);
            com.cmplay.util.c.a("MMM", "ShareHelper after registerActivityResult size=" + this.f1388b.size());
            return;
        }
        Iterator<c> it = this.f1388b.iterator();
        while (true) {
            if (!it.hasNext()) {
                z = false;
                break;
            } else if (it.next().equals(cVar)) {
                z = true;
                break;
            }
        }
        if (!z) {
            com.cmplay.util.c.a("MMM", "ShareHelper registerActivityResult add " + cVar);
            this.f1388b.add(cVar);
        } else {
            com.cmplay.util.c.a("MMM", "ShareHelper registerActivityResult exist,not add" + cVar);
        }
        com.cmplay.util.c.a("MMM", "ShareHelper after registerActivityResult size=" + this.f1388b.size());
    }

    public void b(c cVar) {
        int i;
        if (this.f1388b.size() != 0) {
            com.cmplay.util.c.a("MMM", "ShareHelper unRegisterActivityResult " + cVar);
            com.cmplay.util.c.a("MMM", "ShareHelper before unRegisterActivityResult size=" + this.f1388b.size());
            int i2 = 0;
            while (true) {
                i = i2;
                if (i >= this.f1388b.size()) {
                    i = -1;
                    break;
                } else if (!this.f1388b.get(i).equals(cVar)) {
                    i2 = i + 1;
                } else {
                    com.cmplay.util.c.a("MMM", "ShareHelper unRegisterActivityResult remove" + cVar);
                    break;
                }
            }
            if (i >= 0) {
                this.f1388b.remove(i);
            }
            com.cmplay.util.c.a("MMM", "ShareHelper after unRegisterActivityResult size=" + this.f1388b.size());
        }
    }

    public void c() {
        this.f1388b.clear();
        com.cmplay.util.c.a("MMM", "ShareHelper mActivityResultList destory ");
    }

    private void b(Activity activity, final String str) {
        activity.runOnUiThread(new Runnable() { // from class: com.cmplay.h.f.1
            @Override // java.lang.Runnable
            public void run() {
                Toast.makeText(GameApp.f1598a, str, 0).show();
            }
        });
    }

    private boolean i() {
        return t.c(GameApp.f1598a);
    }

    public void a(int i) {
        Activity activity = (Activity) Cocos2dxActivity.getContext();
        String languageTextByKey = NativeUtil.getLanguageTextByKey("share_how_fast");
        e eVar = new e();
        eVar.a(i, 4);
        eVar.b(languageTextByKey);
        f(activity, eVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0052  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x01da  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void a(java.lang.String r10, java.lang.String r11, java.lang.String r12, int r13) {
        /*
            Method dump skipped, instructions count: 570
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.cmplay.h.f.a(java.lang.String, java.lang.String, java.lang.String, int):void");
    }

    public void b(String str, String str2, String str3, int i) {
        if (!NativeUtil.isNetworkAvailable()) {
            NativeUtil.toastTip(NativeUtil.getLanguageTextByKey("share_fb_have_no_network"));
            NativeUtil.shareCallbackOnGLThread(i, 0);
            return;
        }
        d.e = str2;
        d.f = str;
        com.cmplay.util.e.a("chmod 777 " + str3);
        String format = String.format(NativeUtil.getLanguageTextByKey("share_msg"), str2);
        int c = d.c();
        e eVar = new e();
        eVar.b(format);
        eVar.c(str3);
        eVar.c(c);
        j.a((String) null);
        Activity activity = (Activity) Cocos2dxActivity.getContext();
        if (NativeUtil.isFacebookInstalled()) {
            eVar.a(2, c);
            a(activity, eVar, 2);
        } else if (NativeUtil.isWeChatInstalled()) {
            eVar.a(7, c);
            eVar.c((String) null);
            d(activity, eVar);
        } else {
            eVar.a(5, c);
            eVar.c((String) null);
            e(activity, eVar);
        }
    }

    public void d() {
        if (!NativeUtil.isNetworkAvailable()) {
            NativeUtil.toastTip(NativeUtil.getLanguageTextByKey("share_fb_have_no_network"));
            NativeUtil.shareCallbackOnGLThread(2, 0);
            return;
        }
        j.a();
        String languageTextByKey = NativeUtil.getLanguageTextByKey("Share_collection_txt");
        e eVar = new e();
        eVar.b(languageTextByKey);
        Activity activity = (Activity) Cocos2dxActivity.getContext();
        if (NativeUtil.isFacebookInstalled()) {
            eVar.a(2, 20);
            a(activity, eVar, 2);
        } else if (NativeUtil.isWeChatInstalled()) {
            eVar.a(7, 20);
            eVar.c((String) null);
            d(activity, eVar);
        } else {
            eVar.a(5, 20);
            eVar.c((String) null);
            e(activity, eVar);
        }
    }

    public void e() {
        long currentTimeMillis = System.currentTimeMillis();
        if (currentTimeMillis - this.d >= 500) {
            this.d = currentTimeMillis;
            if (!NativeUtil.isNetworkAvailable()) {
                NativeUtil.toastTip(NativeUtil.getLanguageTextByKey("share_fb_have_no_network"));
                NativeUtil.shareCallbackOnGLThread(2, 0);
            } else {
                j.a("warmup", new j.a() { // from class: com.cmplay.h.f.2
                    @Override // com.cmplay.util.j.a
                    public void a() {
                        String b2 = aa.b("key_share_h5_url", "");
                        if (!TextUtils.isEmpty(b2)) {
                            String b3 = aa.b("key_share_bannner_url", "");
                            if (TextUtils.isEmpty(b3)) {
                                b3 = "http://board.cmcm.com/beta/tmp/001-1.png";
                            }
                            String format = String.format(NativeUtil.getLanguageTextByKey("Presale_share"), new Object[0]);
                            e eVar = new e();
                            eVar.b(format);
                            eVar.a(b2);
                            eVar.e(b3);
                            eVar.c(19);
                            eVar.d(GameApp.f1598a.getString(2131034150));
                            Activity activity = (Activity) Cocos2dxActivity.getContext();
                            if (NativeUtil.isFacebookInstalled()) {
                                eVar.b(2);
                                f.this.a(activity, eVar, 2);
                            } else {
                                eVar.b(5);
                                eVar.c((String) null);
                                f.this.e(activity, eVar);
                            }
                        }
                    }
                });
            }
        }
    }

    public void a(String str, int i, String str2) {
        String format;
        if (!NativeUtil.isNetworkAvailable()) {
            NativeUtil.toastTip(NativeUtil.getLanguageTextByKey("share_fb_have_no_network"));
            NativeUtil.shareCallbackOnGLThread(i, 0);
            return;
        }
        d.e = NativeUtil.getSongName();
        d.f = NativeUtil.getScore();
        com.cmplay.util.e.a("chmod 777 " + str);
        if (!TextUtils.isEmpty(str2)) {
            format = String.format(NativeUtil.getLanguageTextByKey("share_valentine_fb_name"), str2);
        } else {
            format = String.format(NativeUtil.getLanguageTextByKey("share_valentine_fb"), new Object[0]);
        }
        int c = d.c();
        e eVar = new e();
        eVar.b(format);
        eVar.c(str);
        eVar.c(c);
        j.a((String) null);
        Activity activity = (Activity) Cocos2dxActivity.getContext();
        if (NativeUtil.isFacebookInstalled()) {
            eVar.a(2, c);
            a(activity, eVar, 2);
        } else if (NativeUtil.isWeChatInstalled()) {
            eVar.a(6, c);
            eVar.c((String) null);
            c(activity, eVar);
        } else {
            eVar.a(5, c);
            e(activity, eVar);
        }
    }

    public void a(Activity activity, String str, String str2, String str3, int i) {
        if (!NativeUtil.isNetworkAvailable()) {
            NativeUtil.toastTip(NativeUtil.getLanguageTextByKey("share_fb_have_no_network"));
            NativeUtil.shareCallbackOnGLThread(i, 0);
            return;
        }
        d.e = str;
        com.cmplay.util.e.a("chmod 777 " + str3);
        String languageTextByKey = NativeUtil.getLanguageTextByKey("favorites_diy_share_txt2");
        int c = d.c();
        e eVar = new e();
        eVar.b(languageTextByKey);
        eVar.c(str3);
        eVar.c(c);
        j.a("song_mix");
        if (NativeUtil.isFacebookInstalled()) {
            eVar.a(2, c);
            a(activity, eVar, 2);
        } else if (NativeUtil.isWeChatInstalled()) {
            eVar.a(6, c);
            eVar.c((String) null);
            c(activity, eVar);
        } else {
            eVar.a(5, c);
            e(activity, eVar);
        }
    }

    public void a(int i, String str) {
        int i2;
        int i3;
        if (!NativeUtil.isNetworkAvailable()) {
            NativeUtil.toastTip(NativeUtil.getLanguageTextByKey("share_fb_have_no_network"));
            NativeUtil.shareCallbackOnGLThread(2, 0);
            return;
        }
        List<com.cmplay.a.d> list = null;
        if (6 == i || 8 == i) {
            list = com.cmplay.a.c.a().d();
        } else if (7 == i || 9 == i) {
            list = com.cmplay.a.c.a().e();
        }
        int i4 = -1;
        com.cmplay.a.e c = com.cmplay.a.c.a().c();
        if (c != null) {
            i4 = com.cmplay.a.c.a().a(c.a(), list) + 1;
        }
        if (i4 >= 0) {
            i3 = i4;
            i2 = list.size() - i4;
        } else {
            i2 = 0;
            i3 = 0;
        }
        String str2 = null;
        if (6 == i || 8 == i) {
            str2 = String.format(NativeUtil.getLanguageTextByKey("shareshow_text5"), Integer.valueOf(i2), Integer.valueOf(i3));
        } else if (7 == i || 9 == i) {
            str2 = String.format(NativeUtil.getLanguageTextByKey("shareshow_text4"), NativeUtil.getSongName(), Integer.valueOf(i3));
        }
        com.cmplay.util.e.a("chmod 777 " + str);
        e eVar = new e();
        eVar.b(str2);
        eVar.c(str);
        Activity activity = (Activity) Cocos2dxActivity.getContext();
        if (NativeUtil.isFacebookInstalled()) {
            eVar.a(2, i);
            a(activity, eVar, 2);
        } else {
            eVar.a(5, i);
            e(activity, eVar);
        }
    }

    public void b(int i, String str) {
        if (!NativeUtil.isNetworkAvailable()) {
            NativeUtil.toastTip(NativeUtil.getLanguageTextByKey("share_fb_have_no_network"));
            NativeUtil.shareCallbackOnGLThread(2, 0);
            return;
        }
        com.cmplay.util.e.a("chmod 777 " + str);
        e eVar = new e();
        eVar.b(" ");
        eVar.c(str);
        Activity activity = (Activity) Cocos2dxActivity.getContext();
        if (NativeUtil.isFacebookInstalled()) {
            eVar.a(2, i);
            a(activity, eVar, 2);
        } else {
            eVar.a(5, i);
            e(activity, eVar);
        }
    }

    public void a(int i, String str, String str2) {
        if (!NativeUtil.isNetworkAvailable()) {
            NativeUtil.toastTip(NativeUtil.getLanguageTextByKey("share_fb_have_no_network"));
            NativeUtil.shareCallbackOnGLThread(2, 0);
            return;
        }
        com.cmplay.util.e.a("chmod 777 " + str);
        e eVar = new e();
        eVar.b(str2);
        eVar.c(str);
        Activity activity = (Activity) Cocos2dxActivity.getContext();
        if (NativeUtil.isFacebookInstalled()) {
            eVar.a(2, i);
            a(activity, eVar, 2);
        } else {
            eVar.a(5, i);
            e(activity, eVar);
        }
    }

    public void b(int i, String str, String str2) {
        if (!NativeUtil.isNetworkAvailable()) {
            NativeUtil.toastTip(NativeUtil.getLanguageTextByKey("share_fb_have_no_network"));
            NativeUtil.shareCallbackOnGLThread(2, 0);
            return;
        }
        com.cmplay.util.e.a("chmod 777 " + str);
        e eVar = new e();
        eVar.b(str2);
        eVar.c(str);
        Activity activity = (Activity) Cocos2dxActivity.getContext();
        if (NativeUtil.isFacebookInstalled()) {
            eVar.a(2, i);
            eVar.d(2);
            a(activity, eVar, 2);
        } else {
            eVar.a(5, i);
            e(activity, eVar);
        }
    }

    public void c(int i, String str) {
        if (!NativeUtil.isNetworkAvailable()) {
            NativeUtil.toastTip(NativeUtil.getLanguageTextByKey("share_fb_have_no_network"));
            NativeUtil.shareCallbackOnGLThread(2, 0);
            return;
        }
        com.cmplay.util.e.a("chmod 777 " + str);
        String languageTextByKey = NativeUtil.getLanguageTextByKey("share_xmas_puzzle");
        e eVar = new e();
        eVar.b(languageTextByKey);
        eVar.c(str);
        Activity activity = (Activity) Cocos2dxActivity.getContext();
        if (NativeUtil.isFacebookInstalled()) {
            eVar.a(2, i);
            a(activity, eVar, 2);
        } else {
            eVar.a(5, i);
            e(activity, eVar);
        }
    }

    public void a(int i, String str, String str2, String str3, String str4) {
        if (WebViewActivity.f1969a != null && WebViewActivity.f1969a.get() != null) {
            WebViewActivity webViewActivity = WebViewActivity.f1969a.get();
            e eVar = new e();
            eVar.d(str);
            eVar.b(str2);
            eVar.e(str3);
            eVar.a(str4);
            eVar.c(i);
            eVar.b(2);
            a(webViewActivity, eVar, 2);
        }
    }

    public void f(Activity activity, e eVar) {
        switch (eVar.f()) {
            case 1:
                a(activity, eVar, 1);
                break;
            case 2:
                a(activity, eVar, 2);
                break;
            case 3:
                a(activity, eVar);
                break;
            case 4:
                b(activity, eVar);
                break;
            case 5:
                e(activity, eVar);
                break;
            case 6:
                c(activity, eVar);
                break;
            case 7:
                d(activity, eVar);
                break;
            case 9:
                a(activity, eVar, 4);
                break;
        }
    }

    public boolean b(final int i) {
        final Activity activity = (Activity) Cocos2dxActivity.getContext();
        activity.runOnUiThread(new Runnable() { // from class: com.cmplay.h.f.3
            @Override // java.lang.Runnable
            public void run() {
                e eVar = new e();
                eVar.b(NativeUtil.getLanguageTextByKey("share_how_fast"));
                eVar.a(d.a(1, i));
                if (NativeUtil.isFacebookInstalled()) {
                    eVar.a(1, i);
                    f.this.a(activity, eVar, 1);
                } else if (NativeUtil.isWeChatInstalled()) {
                    eVar.a(6, i);
                    f.this.c(activity, eVar);
                } else {
                    eVar.a(5, i);
                    f.this.e(activity, eVar);
                }
            }
        });
        return true;
    }

    public boolean c(final int i) {
        final Activity activity = (Activity) Cocos2dxActivity.getContext();
        activity.runOnUiThread(new Runnable() { // from class: com.cmplay.h.f.4
            @Override // java.lang.Runnable
            public void run() {
                e eVar = new e();
                eVar.b(NativeUtil.getLanguageTextByKey("share_how_fast"));
                eVar.a(d.a(1, i));
                eVar.a(1, i);
                f.this.a(activity, eVar, 1);
            }
        });
        return true;
    }

    public boolean d(final int i, final String str) {
        final Activity activity = (Activity) Cocos2dxActivity.getContext();
        activity.runOnUiThread(new Runnable() { // from class: com.cmplay.h.f.5
            @Override // java.lang.Runnable
            public void run() {
                e eVar = new e();
                eVar.f(str);
                eVar.b(NativeUtil.getLanguageTextByKey("invite_index"));
                eVar.c(i);
                eVar.b(9);
                f.this.a(activity, eVar, 4);
            }
        });
        return true;
    }

    public void a(a aVar) {
        this.f1387a = aVar;
    }

    public void a(int i, int i2, int i3, int i4) {
        int i5 = 0;
        if (i == 600 || i == 601) {
            i5 = j.f1777a ? 4 : 3;
        }
        if (i == 930 && i2 == 6300 && (i4 == 3 || i4 == 4 || i4 == 5)) {
            if (SongMixShareActivity.f1653a) {
                i2 = 6352;
            } else {
                i2 = 6351;
            }
        }
        NativeUtil.reportShareData(i, i2, i3, i4, i5);
    }

    public void a(int i, String str, String str2, long j) {
        NativeUtil.reportHttpException(i, str, str2, (int) j, t.a(GameApp.f1598a), t.b(t.a(str2)));
    }

    public void a(String str, String str2, int i) {
        NativeUtil.reportMessagePush(str, str2, i);
    }

    public void b(int i, int i2, int i3, int i4) {
        NativeUtil.reportWhitetile2Class(i, i2, i3, i4);
    }

    public boolean f() {
        return i.c() == 0;
    }

    public long g() {
        return this.c;
    }

    public void a(long j) {
        this.c = j;
    }

    public static String h() {
        return e.format(new Date());
    }
}
