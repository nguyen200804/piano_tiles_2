package com.cmplay.tile2.ui;

import android.animation.ObjectAnimator;
import android.annotation.TargetApi;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.graphics.BitmapFactory;
import android.graphics.drawable.BitmapDrawable;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.animation.LinearInterpolator;
import android.widget.ImageView;
import android.widget.TextView;
import com.cmplay.h.b;
import com.cmplay.h.d;
import com.cmplay.h.f;
import com.cmplay.tile2.ui.view.CircularImageView;
import com.cmplay.tiles4.R;
import com.cmplay.util.NativeUtil;
import com.cmplay.util.j;
import com.cmplay.util.p;
import com.cmplay.util.z;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class SongMixShareActivity extends Activity implements z.a {

    /* renamed from: a, reason: collision with root package name */
    public static boolean f1653a = false;

    /* renamed from: b, reason: collision with root package name */
    private CircularImageView f1654b;
    private TextView c;
    private TextView d;
    private TextView e;
    private ImageView f;
    private ImageView g;
    private ImageView h;
    private z i = null;
    private boolean j = true;
    private long k = 0;
    private String l = null;
    private String m = null;

    public static void a(Context context, String str, String str2) {
        Intent intent = new Intent(context, (Class<?>) SongMixShareActivity.class);
        if (!(context instanceof Activity)) {
            intent.addFlags(268435456);
        }
        intent.putExtra("extra_share_title", str);
        intent.putExtra("extra_share_desc", str2);
        context.startActivity(intent);
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_song_mix_share);
        a();
        b();
        d();
        p.a().a(d.c);
        p.a().b();
        d.m = 8;
        f.b().a(b.b(18), 0, 0, 1);
    }

    private void a() {
        Intent intent = getIntent();
        if (intent != null) {
            this.l = intent.getStringExtra("extra_share_title");
            this.m = intent.getStringExtra("extra_share_desc");
        }
    }

    private void b() {
        this.f1654b = (CircularImageView) findViewById(R.id.img_CD);
        this.c = (TextView) findViewById(R.id.song_name);
        this.c.setText(this.l);
        this.d = (TextView) findViewById(R.id.description);
        this.d.setText(this.m);
        this.e = (TextView) findViewById(R.id.btn_share);
        this.e.setText(NativeUtil.getLanguageTextByKey("shareh5_cm_button_valentine"));
        this.e.setOnClickListener(new View.OnClickListener() { // from class: com.cmplay.tile2.ui.SongMixShareActivity.1
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                if (SongMixShareActivity.this.j) {
                    SongMixShareActivity.this.e();
                }
            }
        });
        this.f = (ImageView) findViewById(R.id.img_btn_close);
        this.f.setOnClickListener(new View.OnClickListener() { // from class: com.cmplay.tile2.ui.SongMixShareActivity.2
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                b.a().a("clk_quit_chg_cd_cover_pg");
                f.b().a(b.b(18), 6355, 0, 2);
                NativeUtil.onShareH5ViewClosed();
                SongMixShareActivity.this.finish();
            }
        });
        this.g = (ImageView) findViewById(R.id.btn_camera);
        this.g.setOnClickListener(new View.OnClickListener() { // from class: com.cmplay.tile2.ui.SongMixShareActivity.3
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                SongMixShareActivity.this.c();
                SongMixShareActivity.this.i.a();
            }
        });
        this.h = (ImageView) findViewById(R.id.btn_gallery);
        this.h.setOnClickListener(new View.OnClickListener() { // from class: com.cmplay.tile2.ui.SongMixShareActivity.4
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                SongMixShareActivity.this.c();
                SongMixShareActivity.this.i.c();
            }
        });
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        com.b.a.a.a.b(this);
        p.a().d();
        a(this.f1654b);
    }

    @Override // android.app.Activity
    protected void onPause() {
        super.onPause();
        com.b.a.a.a.a(this);
        p.a().c();
    }

    @Override // android.app.Activity
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        f.b().a(requestCode, resultCode, data);
        if (this.i != null) {
            this.i.a(requestCode, resultCode, data);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        if (this.i == null) {
            this.i = new z(this);
            this.i.a(this);
        }
    }

    private void d() {
        if (Build.VERSION.SDK_INT > 18) {
            View decorView = getWindow().getDecorView();
            decorView.setSystemUiVisibility(8);
            decorView.setSystemUiVisibility(5895);
        }
    }

    @Override // com.cmplay.util.z.a
    public void a(boolean z, String str) {
        if (z && !TextUtils.isEmpty(str)) {
            this.f1654b.setImageDrawable(new BitmapDrawable(getResources(), BitmapFactory.decodeFile(str, null)));
            f1653a = true;
        }
        a(this.f1654b);
    }

    @TargetApi(11)
    private void a(View view) {
        if (Build.VERSION.SDK_INT >= 11) {
            ObjectAnimator ofFloat = ObjectAnimator.ofFloat(view, "rotation", 0.0f, 360.0f);
            ofFloat.setDuration(15000L);
            ofFloat.setRepeatMode(1);
            ofFloat.setRepeatCount(-1);
            ofFloat.setInterpolator(new LinearInterpolator());
            ofFloat.start();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e() {
        d.a();
        this.j = false;
        j.a("song_mix", new j.a() { // from class: com.cmplay.tile2.ui.SongMixShareActivity.5
            @Override // com.cmplay.util.j.a
            public void a() {
                boolean z = true;
                SongMixShareActivity.this.j = true;
                if (NativeUtil.isFacebookInstalled()) {
                    j.b(SongMixShareActivity.this.c.getText().toString(), SongMixShareActivity.this.d.getText().toString());
                } else {
                    z = false;
                }
                final String str = null;
                if (!z) {
                    f.b().a(SongMixShareActivity.this, SongMixShareActivity.this.c.getText().toString(), SongMixShareActivity.this.d.getText().toString(), (String) null, 2);
                    b.a().a("clk_share_btn_h5_pg");
                    return;
                }
                com.cmplay.base.util.d.a(new Runnable() { // from class: com.cmplay.tile2.ui.SongMixShareActivity.5.1
                    @Override // java.lang.Runnable
                    public void run() {
                        f.b().a(SongMixShareActivity.this, SongMixShareActivity.this.c.getText().toString(), SongMixShareActivity.this.d.getText().toString(), str, 2);
                        b.a().a("clk_share_btn_h5_pg");
                    }
                }, 2000L);
            }
        });
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        f1653a = false;
    }
}
