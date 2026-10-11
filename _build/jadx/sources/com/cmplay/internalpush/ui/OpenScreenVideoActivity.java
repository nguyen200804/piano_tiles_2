package com.cmplay.internalpush.ui;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.SurfaceTexture;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.TextureView;
import android.view.View;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.a.a.i;
import com.cmplay.internalpush.R;
import com.cmplay.internalpush.data.g;
import com.cmplay.internalpush.n;
import com.cmplay.internalpush.o;
import com.cmplay.internalpush.video.AspectRatioRelativeLayout;
import com.cmplay.internalpush.video.InnerPushReceiver;
import com.cmplay.internalpush.video.InnerPushTextureView;
import com.cmplay.internalpush.video.a;
import com.cmplay.internalpush.video.c;
import com.cmplay.internalpush.video.d;
import com.google.android.gms.auth.api.proxy.AuthApiStatusCodes;
import java.util.Timer;
import java.util.TimerTask;

@TargetApi(14)
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class OpenScreenVideoActivity extends Activity implements TextureView.SurfaceTextureListener, View.OnClickListener, InnerPushReceiver.a {

    /* renamed from: b, reason: collision with root package name */
    private InnerPushTextureView f1503b;
    private SurfaceTexture c;
    private a d;
    private c e;
    private g f;
    private Timer j;
    private TimerTask k;
    private ProgressBar l;
    private ImageView o;
    private TextView q;
    private ImageView r;
    private int u;
    private int v;
    private boolean x;
    private boolean y;
    private com.a.a.g z;

    /* renamed from: a, reason: collision with root package name */
    private final String f1502a = "internal_push_open_Video";
    private Bitmap g = null;
    private Bitmap h = null;
    private boolean i = false;
    private ImageView m = null;
    private ImageView n = null;
    private ImageView p = null;
    private ImageView s = null;
    private Bitmap t = null;
    private boolean w = true;
    private Runnable A = new Runnable() { // from class: com.cmplay.internalpush.ui.OpenScreenVideoActivity.1
        @Override // java.lang.Runnable
        public void run() {
            if (OpenScreenVideoActivity.this.e != null && OpenScreenVideoActivity.this.l != null) {
                OpenScreenVideoActivity.this.u = OpenScreenVideoActivity.this.e.getCurrentPosition();
                OpenScreenVideoActivity.this.l.setProgress(OpenScreenVideoActivity.this.u);
                OpenScreenVideoActivity.this.l.postDelayed(OpenScreenVideoActivity.this.A, 200L);
            }
        }
    };

    public static boolean a(Context context, String str) {
        if (context == null) {
            return false;
        }
        Intent intent = new Intent(context, (Class<?>) OpenScreenVideoActivity.class);
        intent.setFlags(268435456);
        intent.putExtra("info_for_show", str);
        context.startActivity(intent);
        return true;
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        com.cmplay.base.util.g.a("internal_push_open_Video", "onCreate");
        e(getIntent());
        int i = R.layout.cm_activity_open_screen_video;
        if (this.f != null) {
            i = b(this.f.i());
        }
        setContentView(i);
        getWindow().addFlags(128);
        WindowManager.LayoutParams attributes = getWindow().getAttributes();
        attributes.flags |= 1024;
        getWindow().setAttributes(attributes);
        e();
        this.d = new a();
        if (this.d.e()) {
            a(0.0f, false);
        } else {
            a(d.a(this), false);
        }
    }

    private int b(int i) {
        com.cmplay.base.util.g.a("internal_push", "getLayoutIdByDisplayType displayType:" + i);
        switch (i) {
            case 12:
                return R.layout.cm_activity_open_screen_video_land;
            default:
                return R.layout.cm_activity_open_screen_video;
        }
    }

    @Override // android.app.Activity
    protected void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        setIntent(intent);
        e(intent);
    }

    private void e() {
        this.e = new c();
        this.e.setAudioStreamType(3);
        this.f1503b = (InnerPushTextureView) findViewById(R.id.video_full_screen);
        this.f1503b.setSurfaceTextureListener(this);
        this.s = (ImageView) findViewById(R.id.video_image);
        this.l = (ProgressBar) findViewById(R.id.video_full_screen_progress);
        this.n = (ImageView) findViewById(R.id.try_btn);
        this.n.setOnClickListener(this);
        this.m = (ImageView) findViewById(R.id.close_btn);
        this.m.setOnClickListener(this);
        this.o = (ImageView) findViewById(R.id.btn_play);
        this.o.setVisibility(8);
        this.o.setOnClickListener(this);
        this.p = (ImageView) findViewById(R.id.ad_tag);
        this.q = (TextView) findViewById(R.id.tv_title);
        this.r = (ImageView) findViewById(R.id.iv_icon);
        if (this.f != null) {
            ((AspectRatioRelativeLayout) findViewById(R.id.vast_video_view_container)).a(1.0f);
            f();
            this.p.setVisibility(this.f.u() ? 0 : 8);
            if (!TextUtils.isEmpty(this.f.q())) {
                this.t = BitmapFactory.decodeFile(this.f.q());
                if (this.t != null) {
                    this.s.setImageBitmap(this.t);
                }
            }
            if (!TextUtils.isEmpty(this.f.o())) {
                this.g = BitmapFactory.decodeFile(this.f.o());
                if (this.g != null) {
                    this.r.setImageBitmap(this.g);
                }
            }
            if (!TextUtils.isEmpty(this.f.r())) {
                this.h = BitmapFactory.decodeFile(this.f.r());
                if (this.h != null) {
                    this.n.setImageBitmap(this.h);
                    if (this.f.b()) {
                        a(this.n, 1000);
                    }
                }
            }
            this.q.setText(this.f.p());
            o.a().a(1, 9, this.f.f(), this.f.d(), "", n.a().b(), 0, this.f.m());
        }
    }

    @SuppressLint({"NewApi"})
    public void a(View view, int i) {
        this.z = com.a.a.g.a(view, i.a("scaleX", 1.0f, 0.7f, 1.0f), i.a("scaleY", 1.0f, 0.7f, 1.0f), i.a("alpha", 1.0f, 0.5f, 1.0f));
        this.z.a(-1);
        this.z.b(-1);
        this.z.b(i);
        this.z.a();
    }

    private void f() {
        int i;
        if (this.f != null) {
            if (12 == this.f.i()) {
                i = 0;
            } else {
                i = 1;
            }
            setRequestedOrientation(i);
        }
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration newConfig) {
        super.onConfigurationChanged(newConfig);
        f();
    }

    @Override // android.app.Activity
    protected void onStart() {
        super.onStart();
        com.cmplay.base.util.g.a("internal_push_open_Video", "onStart");
        if (this.d != null) {
            this.d.c(true);
        }
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        com.cmplay.base.util.g.a("internal_push_open_Video", "onResume");
        InnerPushReceiver.a((Context) this);
        InnerPushReceiver.a((InnerPushReceiver.a) this);
        if (this.d != null) {
            this.d.b(false);
            g();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x007f A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void a() {
        /*
            r3 = this;
            r0 = 1
            r3.x = r0
            android.graphics.SurfaceTexture r0 = r3.c
            if (r0 != 0) goto Lf
            java.lang.String r0 = "internal_push_open_Video"
            java.lang.String r1 = "play mTexture is null"
            com.cmplay.base.util.g.a(r0, r1)
        Le:
            return
        Lf:
            com.cmplay.internalpush.data.g r0 = r3.f
            if (r0 != 0) goto L1b
            java.lang.String r0 = "internal_push_open_Video"
            java.lang.String r1 = "play Model is null"
            com.cmplay.base.util.g.a(r0, r1)
            goto Le
        L1b:
            r2 = 0
            com.cmplay.internalpush.video.c r0 = r3.e     // Catch: java.lang.Exception -> L67 java.lang.Throwable -> L7b
            r0.reset()     // Catch: java.lang.Exception -> L67 java.lang.Throwable -> L7b
            com.cmplay.internalpush.video.c r0 = r3.e     // Catch: java.lang.Exception -> L67 java.lang.Throwable -> L7b
            android.graphics.SurfaceTexture r1 = r3.c     // Catch: java.lang.Exception -> L67 java.lang.Throwable -> L7b
            r0.a(r1)     // Catch: java.lang.Exception -> L67 java.lang.Throwable -> L7b
            java.io.FileInputStream r1 = new java.io.FileInputStream     // Catch: java.lang.Exception -> L67 java.lang.Throwable -> L7b
            com.cmplay.internalpush.data.g r0 = r3.f     // Catch: java.lang.Exception -> L67 java.lang.Throwable -> L7b
            java.lang.String r0 = r0.v()     // Catch: java.lang.Exception -> L67 java.lang.Throwable -> L7b
            r1.<init>(r0)     // Catch: java.lang.Exception -> L67 java.lang.Throwable -> L7b
            com.cmplay.internalpush.video.c r0 = r3.e     // Catch: java.lang.Throwable -> L85 java.lang.Exception -> L87
            java.io.FileDescriptor r2 = r1.getFD()     // Catch: java.lang.Throwable -> L85 java.lang.Exception -> L87
            r0.setDataSource(r2)     // Catch: java.lang.Throwable -> L85 java.lang.Exception -> L87
            com.cmplay.internalpush.video.c r0 = r3.e     // Catch: java.lang.Throwable -> L85 java.lang.Exception -> L87
            com.cmplay.internalpush.ui.OpenScreenVideoActivity$2 r2 = new com.cmplay.internalpush.ui.OpenScreenVideoActivity$2     // Catch: java.lang.Throwable -> L85 java.lang.Exception -> L87
            r2.<init>()     // Catch: java.lang.Throwable -> L85 java.lang.Exception -> L87
            r0.setOnErrorListener(r2)     // Catch: java.lang.Throwable -> L85 java.lang.Exception -> L87
            com.cmplay.internalpush.video.c r0 = r3.e     // Catch: java.lang.Throwable -> L85 java.lang.Exception -> L87
            com.cmplay.internalpush.ui.OpenScreenVideoActivity$3 r2 = new com.cmplay.internalpush.ui.OpenScreenVideoActivity$3     // Catch: java.lang.Throwable -> L85 java.lang.Exception -> L87
            r2.<init>()     // Catch: java.lang.Throwable -> L85 java.lang.Exception -> L87
            r0.setOnCompletionListener(r2)     // Catch: java.lang.Throwable -> L85 java.lang.Exception -> L87
            com.cmplay.internalpush.video.c r0 = r3.e     // Catch: java.lang.Throwable -> L85 java.lang.Exception -> L87
            com.cmplay.internalpush.ui.OpenScreenVideoActivity$4 r2 = new com.cmplay.internalpush.ui.OpenScreenVideoActivity$4     // Catch: java.lang.Throwable -> L85 java.lang.Exception -> L87
            r2.<init>()     // Catch: java.lang.Throwable -> L85 java.lang.Exception -> L87
            r0.setOnPreparedListener(r2)     // Catch: java.lang.Throwable -> L85 java.lang.Exception -> L87
            com.cmplay.internalpush.video.c r0 = r3.e     // Catch: java.lang.Throwable -> L85 java.lang.Exception -> L87
            r0.prepare()     // Catch: java.lang.Throwable -> L85 java.lang.Exception -> L87
            if (r1 == 0) goto Le
            r1.close()     // Catch: java.io.IOException -> L65
            goto Le
        L65:
            r0 = move-exception
            goto Le
        L67:
            r0 = move-exception
            r1 = r2
        L69:
            r0.printStackTrace()     // Catch: java.lang.Throwable -> L85
            java.lang.String r0 = "internal_push_open_Video"
            java.lang.String r2 = "Exception  MediaPlayer"
            com.cmplay.base.util.g.a(r0, r2)     // Catch: java.lang.Throwable -> L85
            if (r1 == 0) goto Le
            r1.close()     // Catch: java.io.IOException -> L79
            goto Le
        L79:
            r0 = move-exception
            goto Le
        L7b:
            r0 = move-exception
            r1 = r2
        L7d:
            if (r1 == 0) goto L82
            r1.close()     // Catch: java.io.IOException -> L83
        L82:
            throw r0
        L83:
            r1 = move-exception
            goto L82
        L85:
            r0 = move-exception
            goto L7d
        L87:
            r0 = move-exception
            goto L69
        */
        throw new UnsupportedOperationException("Method not decompiled: com.cmplay.internalpush.ui.OpenScreenVideoActivity.a():void");
    }

    @Override // android.app.Activity
    protected void onPause() {
        super.onPause();
        com.cmplay.base.util.g.a("internal_push_open_Video", "onPause");
        InnerPushReceiver.b((InnerPushReceiver.a) this);
        InnerPushReceiver.b((Context) this);
        if (this.d != null && !this.d.d()) {
            b();
        }
    }

    protected void b() {
        this.x = false;
        if (!this.d.b()) {
            this.d.b(true);
            this.l.removeCallbacks(this.A);
            if (this.e != null) {
                com.cmplay.base.util.g.a("internal_push_open_Video", "pause: set play time =" + this.e.getCurrentPosition());
                this.d.a(this.e.getCurrentPosition());
                this.e.pause();
            }
        }
    }

    private void g() {
        com.cmplay.base.util.g.a("internal_push_open_Video", "resumePlay    mPlayer:" + this.e + "  mTexture:" + this.c + "  mSurfaceChanged:" + this.y);
        if (this.e != null && this.c != null && !this.y) {
            this.e.start();
            this.l.post(this.A);
        } else {
            com.cmplay.base.util.g.a("internal_push_open_Video", "resumePlay --> play");
            a();
        }
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        n.a().c(getApplicationContext(), this.f);
        super.onBackPressed();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (R.id.btn_play == id) {
            this.e.start();
            a(this.v);
            this.o.setVisibility(8);
            this.s.setVisibility(8);
            return;
        }
        if (R.id.try_btn == id) {
            n.a().a(getApplicationContext(), this.f);
            finish();
        } else if (R.id.close_btn == id) {
            c();
        }
    }

    public void c() {
        n.a().d(getApplicationContext(), this.f);
        finish();
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        com.cmplay.base.util.g.a("internal_push_open_Video", "onDestroy");
        if (this.z != null) {
            this.z.b();
        }
        if (this.t != null) {
            this.t.recycle();
            this.t = null;
            System.gc();
        }
        if (this.e != null) {
            this.e.release();
            this.e = null;
        }
        if (this.g != null && !this.g.isRecycled()) {
            this.g.recycle();
            this.g = null;
            System.gc();
        }
        if (this.h != null && !this.h.isRecycled()) {
            this.h.recycle();
            this.h = null;
            System.gc();
        }
        super.onDestroy();
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int keyCode, KeyEvent event) {
        if (keyCode != 82) {
            return super.onKeyDown(keyCode, event);
        }
        b();
        return false;
    }

    @Override // android.app.Activity
    public void finish() {
        com.cmplay.base.util.g.a("internal_push_open_Video", "finish");
        o.a().a(1, 10, this.f.f(), this.f.d(), "", n.a().b(), 0, this.f.m());
        super.finish();
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i, int i2) {
        com.cmplay.base.util.g.a("internal_push_open_Video", "on SurfaceTextureAvailable -- >");
        this.y = this.c != surfaceTexture;
        this.c = surfaceTexture;
        if (this.e != null && this.x) {
            com.cmplay.base.util.g.a("internal_push_open_Video", "onSurfaceTextureAvailable --> play");
            a();
        }
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i, int i2) {
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
        com.cmplay.base.util.g.a("internal_push_open_Video", "on onSurfaceTextureDestroyed -- >");
        this.y = true;
        this.c = null;
        return false;
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
    }

    protected void a(float f, boolean z) {
        this.w = f == 0.0f;
        this.d.d(this.w);
        this.u = this.e.getCurrentPosition();
        float b2 = d.b(this);
        float f2 = b2 == 0.0f ? 0.0f : f / b2;
        this.e.setVolume(f2, f2);
    }

    @Override // com.cmplay.internalpush.video.InnerPushReceiver.a
    public void a(Intent intent) {
        b();
    }

    @Override // com.cmplay.internalpush.video.InnerPushReceiver.a
    public void b(Intent intent) {
    }

    @Override // com.cmplay.internalpush.video.InnerPushReceiver.a
    public void c(Intent intent) {
        float a2 = d.a(this);
        a(a2, !this.w && a2 == 0.0f);
    }

    @Override // com.cmplay.internalpush.video.InnerPushReceiver.a
    public void d(Intent intent) {
    }

    private void e(Intent intent) {
        if (intent != null) {
            String stringExtra = intent.getStringExtra("info_for_show");
            com.cmplay.base.util.g.a("internal_push_open_Video", "parseIntent   dataJson:" + stringExtra);
            if (!TextUtils.isEmpty(stringExtra)) {
                this.f = new g(stringExtra);
            }
        }
    }

    public void a(int i) {
        com.cmplay.base.util.g.a("internal_push_open_Video", "startTimer");
        d();
        h();
        if (i < 0) {
            i = 0;
        }
        this.j.schedule(this.k, i + AuthApiStatusCodes.AUTH_API_INVALID_CREDENTIALS);
    }

    private void h() {
        if (this.j == null) {
            this.j = new Timer();
        }
        if (this.k == null) {
            this.k = new TimerTask() { // from class: com.cmplay.internalpush.ui.OpenScreenVideoActivity.5
                @Override // java.util.TimerTask, java.lang.Runnable
                public void run() {
                    com.cmplay.base.util.g.a("internal_push_open_Video", "TimerTask    mIsCompletion:" + OpenScreenVideoActivity.this.i);
                    if (!OpenScreenVideoActivity.this.i) {
                        OpenScreenVideoActivity.this.i = true;
                        com.cmplay.base.util.g.a("internal_push_open_Video", "TimerTask    finish()");
                    }
                }
            };
        }
    }

    public void d() {
        if (this.j != null) {
            this.j.cancel();
            this.j = null;
        }
        if (this.k != null) {
            this.k.cancel();
            this.k = null;
        }
    }
}
