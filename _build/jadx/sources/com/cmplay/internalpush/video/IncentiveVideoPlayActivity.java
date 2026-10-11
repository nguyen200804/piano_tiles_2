package com.cmplay.internalpush.video;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.SurfaceTexture;
import android.media.MediaPlayer;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.TextureView;
import android.view.View;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.cmplay.base.util.g;
import com.cmplay.base.util.t;
import com.cmplay.internalpush.R;
import com.cmplay.internalpush.data.ParseCloudDataVideo;
import com.cmplay.internalpush.o;
import com.cmplay.internalpush.video.InnerPushReceiver;
import com.google.android.gms.auth.api.proxy.AuthApiStatusCodes;
import java.lang.ref.WeakReference;
import java.util.Timer;
import java.util.TimerTask;

@TargetApi(14)
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class IncentiveVideoPlayActivity extends Activity implements TextureView.SurfaceTextureListener, View.OnClickListener, InnerPushReceiver.a {
    private static b f;
    private static boolean x = false;

    /* renamed from: b, reason: collision with root package name */
    private InnerPushTextureView f1517b;
    private SurfaceTexture c;
    private a d;
    private c e;
    private Timer h;
    private TimerTask i;
    private ImageView j;
    private ImageView k;
    private ImageView l;
    private ImageView m;
    private TextView n;
    private TextView o;
    private WeakReference<Bitmap> p;
    private WeakReference<Bitmap> q;
    private ProgressBar r;
    private int s;
    private int t;
    private boolean v;
    private boolean w;

    /* renamed from: a, reason: collision with root package name */
    private final String f1516a = "internal_push_VideoPlay";
    private boolean g = false;
    private boolean u = true;
    private Runnable y = new Runnable() { // from class: com.cmplay.internalpush.video.IncentiveVideoPlayActivity.1
        @Override // java.lang.Runnable
        public void run() {
            if (IncentiveVideoPlayActivity.this.e != null && IncentiveVideoPlayActivity.this.r != null) {
                IncentiveVideoPlayActivity.this.s = IncentiveVideoPlayActivity.this.e.getCurrentPosition();
                IncentiveVideoPlayActivity.this.r.setProgress(IncentiveVideoPlayActivity.this.s);
                IncentiveVideoPlayActivity.this.h();
                IncentiveVideoPlayActivity.this.i();
                IncentiveVideoPlayActivity.this.r.postDelayed(IncentiveVideoPlayActivity.this.y, 200L);
            }
        }
    };

    public static boolean a(Context context, boolean z, String str) {
        if (context == null) {
            return false;
        }
        x = z;
        Intent intent = new Intent(context, (Class<?>) IncentiveVideoPlayActivity.class);
        intent.setFlags(268435456);
        intent.putExtra("info_for_show", str);
        context.startActivity(intent);
        return true;
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        g.a("internal_push_VideoPlay", "onCreate");
        setContentView(R.layout.cm_activity_incentive_video);
        getWindow().addFlags(128);
        WindowManager.LayoutParams attributes = getWindow().getAttributes();
        attributes.flags |= 1024;
        getWindow().setAttributes(attributes);
        e(getIntent());
        e();
        this.d = new a();
        if (this.d.e()) {
            a(0.0f, false);
        } else {
            a(d.a(this), false);
        }
        j();
    }

    @Override // android.app.Activity
    protected void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        e(intent);
    }

    private void e() {
        this.e = new c();
        this.e.setAudioStreamType(3);
        this.f1517b = (InnerPushTextureView) findViewById(R.id.video_full_screen);
        this.f1517b.setSurfaceTextureListener(this);
        this.j = (ImageView) findViewById(R.id.vast_img_close_portrait);
        this.j.setOnClickListener(this);
        this.l = (ImageView) findViewById(R.id.vast_img_volume_portrait);
        this.l.setOnClickListener(this);
        this.k = (ImageView) findViewById(R.id.vast_img_close_landscape);
        this.k.setOnClickListener(this);
        this.m = (ImageView) findViewById(R.id.vast_img_volume_landscape);
        this.m.setOnClickListener(this);
        this.r = (ProgressBar) findViewById(R.id.video_full_screen_progress);
        this.o = (TextView) findViewById(R.id.learn_more_landscape);
        this.o.setOnClickListener(this);
        this.n = (TextView) findViewById(R.id.learn_more_portrait);
        this.n.setOnClickListener(this);
        if (f != null) {
            ((AspectRatioRelativeLayout) findViewById(R.id.vast_video_view_container)).a(f.t() / f.u());
            f();
            o.a().a(4, 9, f.f(), f.d(), "", 0, f.x(), (int) f.m());
            g.a("internal_push_VideoPlay", "ParseCloudDataVideo  当前内推视频展示  @@@proId:" + f.d() + "   pkgName:" + f.f() + "    是否爆款：" + f.n() + "   当前展示时间:" + com.cmplay.internalpush.a.d.a("last_show_hit_top_time" + ParseCloudDataVideo.a(this).a(), 0L));
            if (!x) {
                g.a("internal_push_VideoPlay", "sendBroadcast  onVideoShow");
                Intent intent = new Intent();
                intent.setAction("com.cmplay.libinnerpushvideo.video.Progress_notify");
                intent.putExtra("video_progress_status", 1);
                sendBroadcast(intent);
            }
        }
    }

    private void f() {
        int i;
        if (f != null) {
            if (f.t() > f.u()) {
                i = 0;
            } else {
                i = 1;
            }
            setRequestedOrientation(i);
        }
        g();
        i();
        h();
    }

    private void g() {
        if (d.c(this)) {
            this.m.setVisibility(0);
            this.m.setImageResource(this.u ? R.drawable.vast_volume_off : R.drawable.vast_volume_on);
            this.l.setVisibility(8);
        } else {
            this.m.setVisibility(8);
            this.l.setVisibility(0);
            this.l.setImageResource(this.u ? R.drawable.vast_volume_off : R.drawable.vast_volume_on);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h() {
        this.k.setVisibility(8);
        this.j.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i() {
        this.o.setVisibility(8);
        this.n.setVisibility(8);
    }

    private void j() {
        if (e.c() != null && f != null) {
            e.c().a(f.s(), new com.cmplay.base.util.c.b() { // from class: com.cmplay.internalpush.video.IncentiveVideoPlayActivity.2
                @Override // com.cmplay.base.util.c.b
                public void a(String str, String str2) {
                    g.a("internal_push_VideoPlay", "preloadImageForLandingPage  加载背景图片失败  errorCode:" + str2);
                    IncentiveVideoPlayActivity.this.p = null;
                }

                @Override // com.cmplay.base.util.c.b
                public void a(Bitmap bitmap, String str, String str2) {
                    g.a("internal_push_VideoPlay", "preloadImageForLandingPage  加载背景图片成功   bitmap:" + bitmap);
                    if (bitmap == null) {
                        IncentiveVideoPlayActivity.this.p = null;
                    } else {
                        IncentiveVideoPlayActivity.this.p = new WeakReference(bitmap);
                    }
                }
            });
            e.c().a(f.q(), new com.cmplay.base.util.c.b() { // from class: com.cmplay.internalpush.video.IncentiveVideoPlayActivity.3
                @Override // com.cmplay.base.util.c.b
                public void a(String str, String str2) {
                    g.a("internal_push_VideoPlay", "preloadImageForLandingPage  加载icon图片失败  errorCode:" + str2);
                    IncentiveVideoPlayActivity.this.q = null;
                }

                @Override // com.cmplay.base.util.c.b
                public void a(Bitmap bitmap, String str, String str2) {
                    g.a("internal_push_VideoPlay", "preloadImageForLandingPage  加载icon图片成功   bitmap:" + bitmap);
                    if (bitmap == null) {
                        IncentiveVideoPlayActivity.this.q = null;
                    } else {
                        IncentiveVideoPlayActivity.this.q = new WeakReference(bitmap);
                    }
                }
            });
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
        g.a("internal_push_VideoPlay", "onStart");
        if (this.d != null) {
            this.d.c(true);
        }
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        g.a("internal_push_VideoPlay", "onResume");
        InnerPushReceiver.a((Context) this);
        InnerPushReceiver.a((InnerPushReceiver.a) this);
        if (this.d != null) {
            this.d.b(false);
            k();
        }
    }

    protected void a() {
        this.v = true;
        if (this.c == null) {
            g.a("internal_push_VideoPlay", "play mTexture is null");
            return;
        }
        if (f == null) {
            g.a("internal_push_VideoPlay", "play Model is null");
            if (!x) {
                g.a("internal_push_VideoPlay", "sendBroadcast  onVideoShowFail   play Model is null");
                Intent intent = new Intent();
                intent.setAction("com.cmplay.libinnerpushvideo.video.Progress_notify");
                intent.putExtra("video_progress_status", 4);
                intent.putExtra("error_info", "play Model is null");
                sendBroadcast(intent);
            }
            finish();
            return;
        }
        try {
            this.e.reset();
            this.e.a(this.c);
            this.e.setDataSource(f.r());
            this.e.setOnErrorListener(new MediaPlayer.OnErrorListener() { // from class: com.cmplay.internalpush.video.IncentiveVideoPlayActivity.4
                @Override // android.media.MediaPlayer.OnErrorListener
                public boolean onError(MediaPlayer mp, int what, int extra) {
                    String str = "Error code: " + what + " Extra code: " + extra;
                    g.a("internal_push_VideoPlay", str);
                    if (!IncentiveVideoPlayActivity.x) {
                        g.a("internal_push_VideoPlay", "sendBroadcast  onVideoShowFail  errorStr:" + str);
                        Intent intent2 = new Intent();
                        intent2.setAction("com.cmplay.libinnerpushvideo.video.Progress_notify");
                        intent2.putExtra("video_progress_status", 4);
                        intent2.putExtra("error_info", str);
                        IncentiveVideoPlayActivity.this.sendBroadcast(intent2);
                        return false;
                    }
                    return false;
                }
            });
            this.e.setOnCompletionListener(new MediaPlayer.OnCompletionListener() { // from class: com.cmplay.internalpush.video.IncentiveVideoPlayActivity.5
                @Override // android.media.MediaPlayer.OnCompletionListener
                public void onCompletion(MediaPlayer mediaPlayer) {
                    IncentiveVideoPlayActivity.this.g = true;
                    IncentiveVideoPlayActivity.this.d.a(true, IncentiveVideoPlayActivity.this.t, true);
                    g.a("internal_push_VideoPlay", "onCompletion");
                    IncentiveVideoPlayActivity.this.finish();
                }
            });
            this.e.setOnPreparedListener(new MediaPlayer.OnPreparedListener() { // from class: com.cmplay.internalpush.video.IncentiveVideoPlayActivity.6
                @Override // android.media.MediaPlayer.OnPreparedListener
                public void onPrepared(MediaPlayer mediaPlayer) {
                    IncentiveVideoPlayActivity.this.t = IncentiveVideoPlayActivity.this.e.getDuration();
                    g.a("internal_push_VideoPlay", "mVideoLength:" + IncentiveVideoPlayActivity.this.t);
                    IncentiveVideoPlayActivity.this.r.setMax(IncentiveVideoPlayActivity.this.t);
                    IncentiveVideoPlayActivity.this.e.seekTo(IncentiveVideoPlayActivity.this.d.a());
                    g.a("internal_push_VideoPlay", "seekTo:" + IncentiveVideoPlayActivity.this.d.a());
                    IncentiveVideoPlayActivity.this.e.start();
                    IncentiveVideoPlayActivity.this.r.post(IncentiveVideoPlayActivity.this.y);
                    IncentiveVideoPlayActivity.this.a(IncentiveVideoPlayActivity.this.t);
                }
            });
            this.e.prepare();
        } catch (Exception e) {
            e.printStackTrace();
            g.a("internal_push_VideoPlay", "Exception  MediaPlayer");
            finish();
        }
    }

    @Override // android.app.Activity
    protected void onPause() {
        super.onPause();
        g.a("internal_push_VideoPlay", "onPause");
        InnerPushReceiver.b((InnerPushReceiver.a) this);
        InnerPushReceiver.b((Context) this);
        if (this.d != null && !this.d.d()) {
            b();
        }
        c();
    }

    protected void b() {
        this.v = false;
        if (!this.d.b()) {
            this.d.b(true);
            this.r.removeCallbacks(this.y);
            if (this.e != null) {
                g.a("internal_push_VideoPlay", "pause: set play time =" + this.e.getCurrentPosition());
                this.d.a(this.e.getCurrentPosition());
                this.e.pause();
            }
        }
    }

    private void k() {
        g.a("internal_push_VideoPlay", "resumePlay    mPlayer:" + this.e + "  mTexture:" + this.c + "  mSurfaceChanged:" + this.w);
        if (this.e != null && this.c != null && !this.w) {
            this.e.start();
            this.r.post(this.y);
        } else {
            g.a("internal_push_VideoPlay", "resumePlay --> play");
            a();
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id == R.id.learn_more_portrait || id == R.id.learn_more_landscape) {
            if (f != null) {
                this.d.a(this, f, (t) null);
            }
            if (!x) {
                g.a("internal_push_VideoPlay", "sendBroadcast  onVideoClick");
                Intent intent = new Intent();
                intent.setAction("com.cmplay.libinnerpushvideo.video.Progress_notify");
                intent.putExtra("video_progress_status", 3);
                sendBroadcast(intent);
                return;
            }
            return;
        }
        if (id == R.id.vast_img_close_portrait || id == R.id.vast_img_close_landscape) {
            finish();
        } else if (id == R.id.vast_img_volume_portrait || id == R.id.vast_img_volume_landscape) {
            a(this.u ? d.a(this) : 0.0f, d.a(this) != 0.0f);
        }
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        g.a("internal_push_VideoPlay", "onDestroy");
        if (this.e != null) {
            this.e.release();
            this.e = null;
        }
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int keyCode, KeyEvent event) {
        if (keyCode == 4) {
            return false;
        }
        if (keyCode == 82) {
            b();
            return false;
        }
        return super.onKeyDown(keyCode, event);
    }

    @Override // android.app.Activity
    public void finish() {
        g.a("internal_push_VideoPlay", "finish");
        if (this.d != null && f != null) {
            VideoAdDetailActivity.a(this, this.d, f, this.p != null ? this.p.get() : null, this.q != null ? this.q.get() : null);
            o.a().a(4, 10, f.f(), f.d(), "", 0, f.x(), (int) f.m());
        }
        x = false;
        super.finish();
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i, int i2) {
        g.a("internal_push_VideoPlay", "on SurfaceTextureAvailable -- >");
        this.w = this.c != surfaceTexture;
        this.c = surfaceTexture;
        if (this.e != null && this.v) {
            g.a("internal_push_VideoPlay", "onSurfaceTextureAvailable --> play");
            a();
        }
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i, int i2) {
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
        g.a("internal_push_VideoPlay", "on onSurfaceTextureDestroyed -- >");
        this.w = true;
        this.c = null;
        return false;
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
    }

    protected void a(float f2, boolean z) {
        this.u = f2 == 0.0f;
        this.d.d(this.u);
        this.s = this.e.getCurrentPosition();
        float b2 = d.b(this);
        float f3 = b2 == 0.0f ? 0.0f : f2 / b2;
        this.e.setVolume(f3, f3);
        g();
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
        a(a2, !this.u && a2 == 0.0f);
    }

    @Override // com.cmplay.internalpush.video.InnerPushReceiver.a
    public void d(Intent intent) {
    }

    private void e(Intent intent) {
        if (intent != null) {
            String stringExtra = intent.getStringExtra("info_for_show");
            g.a("internal_push_VideoPlay", "parseIntent   dataJson:" + stringExtra);
            if (!TextUtils.isEmpty(stringExtra)) {
                f = new b(stringExtra);
            }
        }
    }

    public void a(int i) {
        g.a("internal_push_VideoPlay", "startTimer");
        c();
        l();
        if (i < 0) {
            i = 0;
        }
        this.h.schedule(this.i, i + AuthApiStatusCodes.AUTH_API_INVALID_CREDENTIALS);
    }

    private void l() {
        if (this.h == null) {
            this.h = new Timer();
        }
        if (this.i == null) {
            this.i = new TimerTask() { // from class: com.cmplay.internalpush.video.IncentiveVideoPlayActivity.7
                @Override // java.util.TimerTask, java.lang.Runnable
                public void run() {
                    g.a("internal_push_VideoPlay", "TimerTask    mIsCompletion:" + IncentiveVideoPlayActivity.this.g);
                    if (!IncentiveVideoPlayActivity.this.g) {
                        IncentiveVideoPlayActivity.this.g = true;
                        IncentiveVideoPlayActivity.this.finish();
                        g.a("internal_push_VideoPlay", "TimerTask    finish()");
                    }
                }
            };
        }
    }

    public void c() {
        g.a("internal_push_VideoPlay", "resetTimer()");
        if (this.h != null) {
            this.h.cancel();
            this.h = null;
        }
        if (this.i != null) {
            this.i.cancel();
            this.i = null;
        }
    }
}
