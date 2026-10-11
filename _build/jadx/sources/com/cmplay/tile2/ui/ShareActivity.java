package com.cmplay.tile2.ui;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.annotation.TargetApi;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapRegionDecoder;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.graphics.drawable.BitmapDrawable;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.LinearInterpolator;
import android.widget.ImageView;
import android.widget.PopupWindow;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.cmplay.h.b;
import com.cmplay.h.d;
import com.cmplay.h.f;
import com.cmplay.tile2.ui.view.CircularImageView;
import com.cmplay.tile2.ui.view.ScoreRankView;
import com.cmplay.tiles4.R;
import com.cmplay.util.NativeUtil;
import com.cmplay.util.aa;
import com.cmplay.util.c;
import com.cmplay.util.e;
import com.cmplay.util.g;
import com.cmplay.util.i;
import com.cmplay.util.l;
import com.cmplay.util.o;
import com.cmplay.util.p;
import com.cmplay.util.z;
import com.google.android.gms.common.ConnectionResult;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import org.cocos2dx.lib.Cocos2dxHelper;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class ShareActivity extends Activity implements View.OnClickListener, f.a, z.a {
    private static int u = 800;

    /* renamed from: b, reason: collision with root package name */
    private TextView f1649b;
    private TextView c;
    private TextView e;
    private ImageView f;
    private ImageView g;
    private ImageView h;
    private ImageView i;
    private CircularImageView j;
    private ScoreRankView k;
    private String m;

    /* renamed from: a, reason: collision with root package name */
    private int f1648a = 0;
    private Typeface d = null;
    private boolean l = false;
    private z n = null;
    private PopupWindow o = null;
    private boolean p = false;
    private boolean q = false;
    private boolean r = false;
    private boolean s = false;
    private long t = 0;
    private Handler v = new Handler() { // from class: com.cmplay.tile2.ui.ShareActivity.1
        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            if (Build.VERSION.SDK_INT >= 11) {
                if (msg.what == 1) {
                    ShareActivity.this.a(LayoutInflater.from(ShareActivity.this).inflate(R.layout.pop_up_from_right, (ViewGroup) null), ShareActivity.this.getString(R.string.tip_one));
                    ShareActivity.this.a(ShareActivity.this.g);
                    int[] iArr = new int[2];
                    ShareActivity.this.f.getLocationOnScreen(iArr);
                    ShareActivity.this.o.getContentView().getMeasuredWidth();
                    ShareActivity.this.o.showAtLocation(ShareActivity.this.g, 51, (iArr[0] - ShareActivity.this.g.getWidth()) - e.a(15), (iArr[1] - e.a(10)) - ShareActivity.this.f.getHeight());
                    ShareActivity.this.v.sendEmptyMessageDelayed(3, 5000L);
                    ShareActivity.this.q = true;
                    return;
                }
                if (msg.what == 2) {
                    ShareActivity.this.a(LayoutInflater.from(ShareActivity.this).inflate(R.layout.pop_up_from_right, (ViewGroup) null), ShareActivity.this.getString(R.string.tip_two));
                    e.a(20);
                    e.a(100);
                    ShareActivity.this.v.sendEmptyMessageDelayed(4, 5000L);
                    return;
                }
                if (msg.what == 3) {
                    if (ShareActivity.this.o != null && ShareActivity.this.o.isShowing()) {
                        ShareActivity.this.o.dismiss();
                        ShareActivity.this.o = null;
                        return;
                    }
                    return;
                }
                if (msg.what == 4 && ShareActivity.this.o != null && ShareActivity.this.o.isShowing()) {
                    ShareActivity.this.o.dismiss();
                    ShareActivity.this.o = null;
                }
            }
        }
    };

    @Override // android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        View inflate = LayoutInflater.from(this).inflate(R.layout.activity_share, (ViewGroup) null);
        setContentView(inflate);
        a(getIntent());
        this.s = false;
        this.m = d.e;
        this.l = aa.b("key_is_first_shared", true) && f.b().f();
        a();
        f.b().a((f.a) this);
        Cocos2dxHelper.init(this);
        p.a().a(d.c);
        p.a().b();
        b.a().a("active_share_activity");
        inflate.setBackgroundDrawable(new BitmapDrawable(getResources(), f()));
    }

    public static void a(Context context, int i) {
        c.a("ShareActivity", "invokeActivity");
        Intent intent = new Intent(context, (Class<?>) ShareActivity.class);
        intent.putExtra("show_type", i);
        context.startActivity(intent);
    }

    private void a() {
        this.c = (TextView) findViewById(R.id.txt_game_score);
        this.f1649b = (TextView) findViewById(R.id.txt_song_name);
        this.f1649b.setText(this.m);
        a(this.f1649b);
        a(this.c);
        this.c.setText(d.f);
        this.e = (TextView) findViewById(R.id.btn_share);
        this.e.setText(NativeUtil.getLanguageTextByKey("share_title"));
        this.f = (ImageView) findViewById(R.id.img_open_camera);
        this.g = (ImageView) findViewById(R.id.img_open_gallery);
        this.h = (ImageView) findViewById(R.id.img_light);
        this.j = (CircularImageView) findViewById(R.id.img_CD);
        this.i = (ImageView) findViewById(R.id.img_btn_close);
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.e.getLayoutParams();
        if (!this.s) {
            this.e.setBackgroundResource(R.drawable.bnt_share_xmas_h5_normal);
            this.e.setTextColor(getResources().getColor(R.color.share_btn_text_blue));
            layoutParams.bottomMargin = e.a(50);
            this.e.setLayoutParams(layoutParams);
            if (1 == this.f1648a) {
                this.j.setImageDrawable(getResources().getDrawable(R.drawable.cd_default_bg_special_music));
            } else {
                this.j.setImageDrawable(getResources().getDrawable(R.drawable.cd_default_bg));
            }
        } else {
            this.e.setBackgroundResource(R.drawable.bnt_share_xmas_h5);
            this.e.setTextColor(getResources().getColor(R.color.share_btn_text_white));
            layoutParams.bottomMargin = e.a(30);
            this.e.setLayoutParams(layoutParams);
            this.j.setImageDrawable(getResources().getDrawable(R.drawable.cd_default_bg));
        }
        this.k = (ScoreRankView) findViewById(R.id.score_rank_view);
        int e = e();
        boolean z = e < 4;
        this.k.a(z ? R.drawable.icon_star : R.drawable.icon_crown, z ? e % 4 : e - 3);
        this.e.setOnClickListener(this);
        this.j.setOnClickListener(this);
        this.g.setOnClickListener(this);
        this.f.setOnClickListener(this);
        this.i.setOnClickListener(this);
    }

    private void a(TextView textView) {
        if (this.d == null) {
            try {
                this.d = Typeface.createFromAsset(getAssets(), "fonts/Futura condensed.ttf");
            } catch (RuntimeException e) {
                c.c("ShareActivity", e.getMessage());
                this.d = null;
            }
        }
        if (this.d != null) {
            textView.setTypeface(this.d);
        }
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        g();
        c();
        b();
        com.b.a.a.a.b(this);
        c.a("ShareActivity", "onResume");
        o.a("ShareActivity onResume ", this);
        b(this.j);
        if (1 == this.f1648a) {
            this.h.setVisibility(0);
            a(this.h);
            c(this.e);
        } else {
            this.h.setVisibility(8);
        }
        p.a().d();
    }

    @Override // android.app.Activity
    protected void onPause() {
        super.onPause();
        g();
        com.b.a.a.a.a(this);
        o.a("ShareActivity onPause", this);
        this.v.removeCallbacksAndMessages(null);
        if (this.o != null && this.o.isShowing()) {
            this.o.dismiss();
        }
        p.a().c();
    }

    @Override // android.app.Activity
    protected void onStop() {
        super.onStop();
        c.a("ShareActivity", "onStop");
    }

    private void b() {
        File fileStreamPath = getFileStreamPath("share_CD_bg.jpg");
        if (fileStreamPath.exists()) {
            this.j.setImageDrawable(new BitmapDrawable(getResources(), BitmapFactory.decodeFile(fileStreamPath.getAbsolutePath(), null)));
        }
    }

    private void c() {
        this.j.setVisibility(0);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View v) {
        int i = -1;
        switch (v.getId()) {
            case R.id.img_CD /* 2131230760 */:
                d();
                this.n.c();
                this.l = false;
                break;
            case R.id.btn_share /* 2131230763 */:
                i = 5;
                break;
            case R.id.img_btn_close /* 2131230764 */:
                NativeUtil.onShareH5ViewClosed();
                b.a().a("clk_quit_chg_cd_cover_pg");
                f.b().a(b.b(d.c()), 6355, 0, 2);
                finish();
                break;
            case R.id.img_open_gallery /* 2131230784 */:
                this.p = false;
                d();
                this.n.c();
                break;
            case R.id.img_open_camera /* 2131230785 */:
                this.p = false;
                d();
                this.n.a();
                break;
        }
        long currentTimeMillis = System.currentTimeMillis();
        if (i > 0 && currentTimeMillis - this.t > u) {
            this.t = currentTimeMillis;
            f.b().a((f.a) this);
            f.b().a(NativeUtil.getScore(), this.m, (String) null, i);
            b.a().a("clk_share_btn_h5_pg");
        }
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        super.onBackPressed();
        NativeUtil.onShareH5ViewClosed();
    }

    private void d() {
        if (this.n == null) {
            this.n = new z(this);
            this.n.a(this);
        }
    }

    @Override // android.app.Activity
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        f.b().a(requestCode, resultCode, data);
        if (this.n != null) {
            this.n.a(requestCode, resultCode, data);
        }
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        c.a("ShareActivity", "onDestroy");
        f.b().a((f.a) null);
        f.b().c();
        if (this.l) {
            aa.a("key_is_first_shared", false);
        }
        this.n = null;
    }

    @Override // com.cmplay.util.z.a
    public void a(boolean z, String str) {
        if (z && !TextUtils.isEmpty(str)) {
            this.j.setImageDrawable(new BitmapDrawable(getResources(), BitmapFactory.decodeFile(str, null)));
        }
        if (this.l && this.q) {
            this.v.sendEmptyMessageDelayed(2, 500L);
            if (Build.VERSION.SDK_INT > 10) {
                b(this.j);
            }
        }
    }

    private int e() {
        return i.e();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(View view, String str) {
        if (this.o != null) {
            if (this.o.isShowing()) {
                this.o.dismiss();
            }
            this.o = null;
        }
        this.o = new PopupWindow(view, -2, -2);
        this.o.setAnimationStyle(R.style.mypopwindow_anim_style);
        TextView textView = (TextView) view.findViewById(R.id.txt_popup_window_content);
        textView.setText(str);
        a(textView);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @TargetApi(11)
    public void a(View view) {
        if (Build.VERSION.SDK_INT >= 11) {
            AnimatorSet animatorSet = new AnimatorSet();
            ObjectAnimator ofFloat = ObjectAnimator.ofFloat(view, "alpha", 1.0f, 0.6f, 1.0f);
            ofFloat.setRepeatCount(1);
            ofFloat.setRepeatMode(2);
            ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(view, "scaleX", 1.0f, 1.1f, 1.0f);
            ofFloat2.setRepeatCount(1);
            ofFloat2.setRepeatMode(1);
            ObjectAnimator ofFloat3 = ObjectAnimator.ofFloat(view, "scaleY", 1.0f, 1.1f, 1.0f);
            ofFloat3.setRepeatCount(1);
            ofFloat3.setRepeatMode(1);
            animatorSet.setDuration(1500L);
            animatorSet.playTogether(ofFloat, ofFloat2, ofFloat3);
            animatorSet.addListener(new a(view));
            animatorSet.start();
        }
    }

    @TargetApi(11)
    private void b(View view) {
        if (Build.VERSION.SDK_INT >= 11) {
            ObjectAnimator ofFloat = ObjectAnimator.ofFloat(view, "rotation", 0.0f, 360.0f);
            ofFloat.setDuration(15000L);
            ofFloat.setRepeatMode(1);
            ofFloat.setRepeatCount(-1);
            ofFloat.setInterpolator(new LinearInterpolator());
            ofFloat.start();
        }
    }

    private void c(View view) {
        if (Build.VERSION.SDK_INT >= 11) {
            new l(view, ConnectionResult.DRIVE_EXTERNAL_STORAGE_REQUIRED, 0, 500, 0.5f).a();
        }
    }

    @TargetApi(11)
    class a implements Animator.AnimatorListener {

        /* renamed from: b, reason: collision with root package name */
        private View f1652b;

        public a(View view) {
            this.f1652b = view;
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animation) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animation) {
            if (this.f1652b != null) {
                switch (this.f1652b.getId()) {
                    case R.id.img_open_gallery /* 2131230784 */:
                        if (ShareActivity.this.p) {
                            ShareActivity.this.a(ShareActivity.this.f);
                            break;
                        }
                        break;
                    case R.id.img_open_camera /* 2131230785 */:
                        if (ShareActivity.this.p) {
                            ShareActivity.this.a(ShareActivity.this.g);
                            break;
                        }
                        break;
                    case R.id.img_light /* 2131230796 */:
                        ShareActivity.this.a(ShareActivity.this.h);
                        break;
                }
            }
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animation) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animation) {
        }
    }

    private Bitmap f() {
        Throwable th;
        InputStream inputStream;
        BitmapRegionDecoder newInstance;
        Bitmap bitmap = null;
        try {
            try {
                inputStream = null;
                Rect rect = new Rect(0, 0, 0, 0);
                try {
                    if (this.s) {
                        inputStream = getAssets().open("res/UI/UIPlist/bg_share_xmas.png");
                        newInstance = BitmapRegionDecoder.newInstance(inputStream, false);
                        rect.set(20, 0, (newInstance.getWidth() * 31) / 40, (newInstance.getHeight() * 31) / 40);
                    } else if (1 == this.f1648a) {
                        inputStream = getAssets().open("res/UI/UIPlist/bg_share_star_special_music.png");
                        newInstance = BitmapRegionDecoder.newInstance(inputStream, false);
                        rect = new Rect(0, 0, newInstance.getWidth(), newInstance.getHeight());
                    } else {
                        inputStream = getAssets().open("res/UI/UIPlist/bg_share_star.png");
                        newInstance = BitmapRegionDecoder.newInstance(inputStream, false);
                        rect = new Rect(0, 0, (newInstance.getWidth() * 4) / 5, (newInstance.getHeight() * 4) / 5);
                    }
                    bitmap = newInstance.decodeRegion(rect, new BitmapFactory.Options());
                    g.a(inputStream);
                } catch (IOException e) {
                    e = e;
                    e.printStackTrace();
                    g.a(inputStream);
                    return bitmap;
                }
            } catch (Throwable th2) {
                th = th2;
                g.a(null);
                throw th;
            }
        } catch (IOException e2) {
            e = e2;
            inputStream = null;
        } catch (Throwable th3) {
            th = th3;
            g.a(null);
            throw th;
        }
        return bitmap;
    }

    private void g() {
        if (Build.VERSION.SDK_INT > 18) {
            View decorView = getWindow().getDecorView();
            decorView.setSystemUiVisibility(8);
            decorView.setSystemUiVisibility(5895);
        }
    }

    @Override // android.app.Activity
    protected void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        a(intent);
    }

    private void a(Intent intent) {
        if (intent != null) {
            this.f1648a = intent.getIntExtra("show_type", 0);
        }
    }
}
