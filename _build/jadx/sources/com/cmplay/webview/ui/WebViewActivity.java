package com.cmplay.webview.ui;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.os.Bundle;
import android.os.Process;
import com.cmplay.base.util.webview.ipc.data.WebConfigManager;
import com.cmplay.h.f;
import com.cmplay.tile2.GameApp;
import com.cmplay.tile2.NullProvider;
import com.cmplay.util.NativeUtil;
import com.cmplay.util.aa;
import com.cmplay.webview.broadcast.GameBroadcast;
import com.cmplay.webview.ipc.a.b;
import com.facebook.e;
import com.facebook.g;
import com.facebook.i;
import java.lang.ref.WeakReference;
import org.cocos2dx.lib.Cocos2dxHelper;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class WebViewActivity extends Activity implements SensorEventListener {

    /* renamed from: a, reason: collision with root package name */
    public static WeakReference<WebViewActivity> f1969a;

    /* renamed from: b, reason: collision with root package name */
    private e f1970b;
    private WebViewLayout c;
    private boolean d = false;
    private String e;
    private int f;
    private SensorManager g;
    private Sensor h;
    private SensorEvent i;

    public static void a(Context context, String str, int i) {
        b.a(GameApp.f1598a).b(WebConfigManager.LOADING_ID, NativeUtil.getLanguageTextByKey(WebConfigManager.LOADING_ID));
        b.a(GameApp.f1598a).b("diamond_count", NativeUtil.getDiamond(false));
        b.a(GameApp.f1598a).b("coin_count", NativeUtil.getCurCoin(false));
        b.a(GameApp.f1598a).b("life_count", NativeUtil.getCurHP(false));
        com.cmplay.util.b.b.b();
        Intent intent = new Intent(context, (Class<?>) WebViewActivity.class);
        intent.putExtra(com.cmplay.base.util.webview.ui.WebViewActivity.WEBVIEW_URL, str);
        intent.putExtra(com.cmplay.base.util.webview.ui.WebViewActivity.WEBVIEW_TYPE, i);
        com.cmplay.util.e.a(context, intent);
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        requestWindowFeature(1);
        a(getIntent());
        if (this.f == 3) {
            getWindow().setFlags(2048, 2048);
        } else {
            getWindow().setFlags(1024, 1024);
        }
        Cocos2dxHelper.initByService(this);
        f1969a = new WeakReference<>(this);
        aa.a("key_h5_login", true);
        this.c = new WebViewLayout(this, this.e, this.f);
        setContentView(this.c);
        NullProvider.a(this);
        if (this.f == 1) {
            a();
        }
        this.g = (SensorManager) getSystemService("sensor");
        this.h = this.g.getDefaultSensor(1);
    }

    private void a(Intent intent) {
        this.e = intent.getStringExtra(com.cmplay.base.util.webview.ui.WebViewActivity.WEBVIEW_URL);
        this.f = intent.getIntExtra(com.cmplay.base.util.webview.ui.WebViewActivity.WEBVIEW_TYPE, -1);
    }

    @Override // android.app.Activity
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        f.b().a(requestCode, resultCode, data);
        if (this.f == 1 && this.f1970b != null) {
            this.f1970b.a(requestCode, resultCode, data);
        }
    }

    @Override // android.app.Activity
    protected void onPause() {
        super.onPause();
        try {
            Class.forName("android.webkit.WebView").getMethod("onPause", (Class[]) null).invoke(this.c.f(), (Object[]) null);
        } catch (Exception e) {
        }
        this.g.unregisterListener(this);
        this.i = null;
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        try {
            Class.forName("android.webkit.WebView").getMethod("onResume", (Class[]) null).invoke(this.c.f(), (Object[]) null);
        } catch (Exception e) {
        }
        this.g.registerListener(this, this.h, 3);
    }

    public void a() {
        if (this.f1970b == null) {
            this.f1970b = e.a.a();
            com.facebook.login.e.a().a(this.f1970b, new g<com.facebook.login.f>() { // from class: com.cmplay.webview.ui.WebViewActivity.1
                @Override // com.facebook.g
                public void a(com.facebook.login.f fVar) {
                    GameBroadcast.a(WebViewActivity.this, 1, "");
                }

                @Override // com.facebook.g
                public void a() {
                    GameBroadcast.a(WebViewActivity.this, 2, "");
                    WebViewActivity.this.a(false);
                }

                @Override // com.facebook.g
                public void a(i iVar) {
                    String str = "unknow facebook login error!";
                    if (iVar != null) {
                        str = iVar.getMessage();
                    }
                    GameBroadcast.a(WebViewActivity.this, 3, str);
                    WebViewActivity.this.a(false);
                }
            });
        }
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        f1969a = null;
        NullProvider.b(this);
        aa.a("key_h5_login", false);
        if (this.c != null) {
            this.c.e();
        }
        GameBroadcast.a(GameApp.f1598a, Process.myPid());
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        if (!this.d) {
            if (this.c == null || !this.c.g()) {
                super.onBackPressed();
            }
        }
    }

    public WebViewLayout b() {
        return this.c;
    }

    public void a(boolean z) {
        this.d = z;
    }

    @Override // android.hardware.SensorEventListener
    public void onSensorChanged(SensorEvent event) {
        this.i = event;
    }

    @Override // android.hardware.SensorEventListener
    public void onAccuracyChanged(Sensor sensor, int accuracy) {
    }

    public SensorEvent c() {
        return this.i;
    }
}
