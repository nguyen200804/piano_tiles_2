package com.cmplay.internalpush.video;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.media.MediaMetadataRetriever;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import com.cmplay.base.util.g;
import com.cmplay.base.util.q;
import com.cmplay.base.util.t;
import com.cmplay.internalpush.R;
import com.cmplay.internalpush.o;
import java.lang.ref.WeakReference;
import java.text.NumberFormat;
import java.util.Random;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class VideoAdDetailActivity extends Activity implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    private static a f1527a;

    /* renamed from: b, reason: collision with root package name */
    private static b f1528b;
    private static WeakReference<Bitmap> c;
    private static WeakReference<Bitmap> d;
    private Bitmap e;
    private Button f;
    private ImageView g;
    private ImageView h;
    private TextView i;
    private ImageView j;
    private ImageView k;
    private ImageView l;
    private TextView m;

    public static boolean a(Context context, a aVar, b bVar, Bitmap bitmap, Bitmap bitmap2) {
        if (context == null || aVar == null || bVar == null) {
            return false;
        }
        f1527a = aVar;
        f1528b = bVar;
        if (bitmap != null) {
            c = new WeakReference<>(bitmap);
        } else {
            c = null;
        }
        if (bitmap2 != null) {
            d = new WeakReference<>(bitmap2);
        } else {
            d = null;
        }
        Intent intent = new Intent(context, (Class<?>) VideoAdDetailActivity.class);
        intent.setFlags(268435456);
        context.startActivity(intent);
        return true;
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        getWindow().setFlags(1024, 1024);
        int i = R.layout.cm_activity_video_detail;
        if (f1528b != null) {
            i = a(f1528b.i());
        }
        setContentView(i);
        if (f1527a == null || f1528b == null) {
            finish();
        } else {
            d();
            o.a().a(4, 1, f1528b.f(), f1528b.d(), "", 0, f1528b.x(), (int) f1528b.m());
        }
    }

    private int a(int i) {
        int i2;
        switch (i) {
            case 1:
                i2 = R.layout.cm_activity_video_detail;
                break;
            case 2:
                i2 = R.layout.cm_activity_video_detail_unityads_style;
                break;
            case 3:
                i2 = R.layout.cm_activity_video_detail_vungle_style;
                break;
            case 4:
                i2 = R.layout.cm_activity_video_detail_land;
                break;
            default:
                g.a("internal_push", "getLayoutIdByDisplayType default");
                i2 = R.layout.cm_activity_video_detail;
                break;
        }
        g.a("internal_push", "getLayoutIdByDisplayType displayType:" + i + "    layoutId:" + i2);
        return i2;
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        e();
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration newConfig) {
        super.onConfigurationChanged(newConfig);
        c();
    }

    private void c() {
        int i;
        if (f1528b != null) {
            if (4 == f1528b.i()) {
                i = 0;
            } else {
                i = 1;
            }
            setRequestedOrientation(i);
        }
    }

    private void d() {
        this.g = (ImageView) findViewById(R.id.iv_replay);
        this.h = (ImageView) findViewById(R.id.iv_close);
        this.i = (TextView) findViewById(R.id.tv_title);
        this.j = (ImageView) findViewById(R.id.iv_icon);
        this.k = (ImageView) findViewById(R.id.iv_cover_image);
        this.l = (ImageView) findViewById(R.id.vast_pic_star);
        this.m = (TextView) findViewById(R.id.tv_download_num);
        this.f = (Button) findViewById(R.id.btn_calltoaction);
        this.g.setOnClickListener(this);
        this.h.setOnClickListener(this);
        this.f.setOnClickListener(this);
        this.k.setOnClickListener(this);
        this.j.setOnClickListener(this);
        c();
    }

    private void e() {
        String w;
        if (f1527a != null) {
            Bitmap bitmap = null;
            if (c != null && c.get() != null) {
                this.k.setImageBitmap(c.get());
                bitmap = c.get();
            } else {
                if (this.e == null) {
                    this.e = a();
                }
                if (this.e != null) {
                    this.k.setImageBitmap(this.e);
                    bitmap = this.e;
                }
            }
            this.i.setText(f1528b.o());
            if (d != null && d.get() != null) {
                this.j.setImageBitmap(d.get());
            } else if (bitmap != null) {
                this.j.setImageBitmap(bitmap);
            }
        }
        if (f1528b.v() > 0) {
            g.a("internal_push", "ivStarImage :" + this.l + "   tvDownLoadNum:" + this.m);
            if (this.l != null) {
                this.l.setVisibility(0);
            }
            if (TextUtils.isEmpty(f1528b.w())) {
                w = f1527a.c();
                if (TextUtils.isEmpty(w)) {
                    w = "(" + NumberFormat.getInstance().format(new Random().nextInt(9999999) + 1000000) + ")";
                    f1527a.a(w);
                }
            } else {
                w = f1528b.w();
            }
            this.m.setText(w);
            this.m.setVisibility(0);
        } else {
            this.l.setVisibility(8);
            this.m.setVisibility(8);
        }
        if (3 != f1528b.i()) {
            this.f.setText(f1528b.p());
        }
    }

    @TargetApi(10)
    public Bitmap a() {
        Bitmap bitmap;
        Exception e;
        IllegalArgumentException e2;
        MediaMetadataRetriever mediaMetadataRetriever;
        try {
            mediaMetadataRetriever = new MediaMetadataRetriever();
            mediaMetadataRetriever.setDataSource(f1528b.r());
            bitmap = mediaMetadataRetriever.getFrameAtTime();
        } catch (IllegalArgumentException e3) {
            bitmap = null;
            e2 = e3;
        } catch (Exception e4) {
            bitmap = null;
            e = e4;
        }
        try {
            mediaMetadataRetriever.release();
        } catch (IllegalArgumentException e5) {
            e2 = e5;
            e2.printStackTrace();
            g.a("detail_page", "createVideoThumbnail  exception");
            return bitmap;
        } catch (Exception e6) {
            e = e6;
            e.printStackTrace();
            g.a("detail_page", "createVideoThumbnail  exception");
            return bitmap;
        }
        return bitmap;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id == R.id.iv_replay) {
            Boolean valueOf = Boolean.valueOf(f1527a.e());
            f1527a.a(true);
            f1527a.d(valueOf.booleanValue());
            IncentiveVideoPlayActivity.a(this, true, f1528b.a());
            finish();
            return;
        }
        if (id == R.id.iv_close) {
            o.a().a(4, 3, f1528b.f(), f1528b.d(), "", 0, f1528b.x(), (int) f1528b.m());
            finish();
            a(true);
        } else if (id == R.id.btn_calltoaction || id == R.id.iv_cover_image || id == R.id.iv_icon) {
            f();
            o.a().a(4, 2, f1528b.f(), f1528b.d(), "", 0, f1528b.x(), (int) f1528b.m());
        }
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        super.onBackPressed();
        o.a().a(4, 3, f1528b.f(), f1528b.d(), "", 0, f1528b.x(), (int) f1528b.m());
        a(true);
    }

    private void f() {
        f1527a.a(getApplication(), f1528b, new t() { // from class: com.cmplay.internalpush.video.VideoAdDetailActivity.1
            @Override // com.cmplay.base.util.t
            public void a(boolean z) {
                VideoAdDetailActivity.this.a(true);
                VideoAdDetailActivity.this.finish();
            }
        });
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        Intent intent = new Intent();
        intent.setAction("com.cmplay.libinnerpushvideo.video.Progress_notify");
        intent.putExtra("video_progress_status", 5);
        sendBroadcast(intent);
        if (this.e != null && !this.e.isRecycled()) {
            this.e.recycle();
            this.e = null;
            System.gc();
        }
        super.onDestroy();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(boolean z) {
        g.a("internal_push_VideoDetai", "VideoAdDetailActivity.sendBroadcast  onVideoComplete");
        Intent intent = new Intent();
        intent.setAction("com.cmplay.libinnerpushvideo.video.Progress_notify");
        intent.putExtra("video_progress_status", 2);
        intent.putExtra("is_complete_view", f1527a.d());
        sendBroadcast(intent);
        if (z) {
            b();
        }
    }

    public static void b() {
        if (!q.f1259a.getPackageName().contains("tiles2")) {
            com.cmplay.base.util.d.a(new Runnable() { // from class: com.cmplay.internalpush.video.VideoAdDetailActivity.2
                @Override // java.lang.Runnable
                public void run() {
                    g.a("internal_push_VideoDetai", "退出视频播放进程");
                    System.exit(0);
                }
            }, 500L);
        }
    }
}
