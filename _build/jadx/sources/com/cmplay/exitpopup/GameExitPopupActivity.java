package com.cmplay.exitpopup;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextPaint;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.animation.Animation;
import android.view.animation.TranslateAnimation;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.cmplay.base.util.g;
import com.cmplay.tiles4.R;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class GameExitPopupActivity extends Activity implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    private RelativeLayout f1336a;

    /* renamed from: b, reason: collision with root package name */
    private ImageView f1337b;
    private TextView c;
    private TextView d;
    private TextView e;
    private Bitmap f;
    private Bitmap g;
    private RelativeLayout h;
    private TextView i;
    private ImageView j;
    private TextView k;
    private Button l;
    private Button m;
    private c p;
    private boolean n = false;
    private int o = 0;
    private boolean q = false;
    private String r = "3";
    private BroadcastReceiver s = new BroadcastReceiver() { // from class: com.cmplay.exitpopup.GameExitPopupActivity.3
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if ("android.intent.action.CLOSE_SYSTEM_DIALOGS".equals(intent.getAction()) && GameExitPopupActivity.this.n && "homekey".equals(intent.getStringExtra("reason"))) {
                GameExitPopupActivity.this.n = false;
                g.a("按home键销毁-----");
                GameExitPopupActivity.this.r = "4";
                GameExitPopupActivity.this.finish();
            }
        }
    };

    public static void a(final Context context, final String str, final int i, final String[] strArr) {
        new Handler().postDelayed(new Runnable() { // from class: com.cmplay.exitpopup.GameExitPopupActivity.1
            @Override // java.lang.Runnable
            public void run() {
                g.a("Exit game ReporstService------");
                Intent intent = new Intent(context, (Class<?>) GameExitPopupActivity.class);
                intent.addFlags(268435456);
                intent.putExtra("game_exit_data", str);
                intent.putExtra("game_exit_songs_num", i);
                intent.putExtra("game_exit_playedsongs_text", strArr);
                context.getApplicationContext().startActivity(intent);
            }
        }, 100L);
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.gameexit_popup_layout);
        a();
        b();
    }

    public void a() {
        this.f1336a = (RelativeLayout) findViewById(R.id.page1);
        this.f1337b = (ImageView) findViewById(R.id.img_music_bg);
        this.d = (TextView) findViewById(R.id.tv_song_num);
        this.c = (TextView) findViewById(R.id.tv_songnum_start);
        this.e = (TextView) findViewById(R.id.tv_songnum_end);
        this.h = (RelativeLayout) findViewById(R.id.page2);
        this.i = (TextView) findViewById(2131230841);
        this.j = (ImageView) findViewById(R.id.img_app_icon);
        this.k = (TextView) findViewById(R.id.tv_app_name);
        this.l = (Button) findViewById(R.id.btn_cancel);
        this.m = (Button) findViewById(R.id.btn_ok);
        this.l.setOnClickListener(this);
        this.m.setOnClickListener(this);
        this.j.setOnClickListener(this);
    }

    public void b() {
        Intent intent = getIntent();
        if (intent == null) {
            finish();
            return;
        }
        this.n = true;
        registerReceiver(this.s, new IntentFilter("android.intent.action.CLOSE_SYSTEM_DIALOGS"));
        this.p = new c(intent.getStringExtra("game_exit_data"));
        a(intent, this.p);
        a(this.p);
        a(this.f1336a, 0.0f, -1.0f);
        new d().a(1039, 0, 1, (int) this.p.d(), this.o, "");
    }

    @Override // android.app.Activity
    protected void onStop() {
        super.onStop();
    }

    public void a(Intent intent, c cVar) {
        this.o = intent.getIntExtra("game_exit_songs_num", 0);
        String[] stringArrayExtra = intent.getStringArrayExtra("game_exit_playedsongs_text");
        if (this.o <= 1) {
            if (!TextUtils.isEmpty(stringArrayExtra[0])) {
                this.c.setText(stringArrayExtra[0]);
            }
            if (!TextUtils.isEmpty(stringArrayExtra[1])) {
                this.e.setText(stringArrayExtra[1]);
            }
        } else {
            if (!TextUtils.isEmpty(stringArrayExtra[2])) {
                this.c.setText(stringArrayExtra[2]);
            }
            if (!TextUtils.isEmpty(stringArrayExtra[3])) {
                this.e.setText(stringArrayExtra[3]);
            }
        }
        a(this.c);
        a(this.e);
        this.d.setText(this.o + "");
        this.f = a(cVar.f1352b);
        if (this.f != null) {
            this.f1337b.setImageBitmap(this.f);
        }
    }

    public void a(c cVar) {
        this.i.setText(TextUtils.isEmpty(cVar.c) ? "Try our other games" : cVar.c);
        this.g = a(this.p.f1351a);
        if (this.g != null) {
            this.j.setImageBitmap(this.g);
        }
        this.k.setText(TextUtils.isEmpty(this.p.d) ? "" : this.p.d);
        a(this.k);
        if (!TextUtils.isEmpty(cVar.e)) {
            this.l.setText(cVar.e.contains("||") ? cVar.e.split("\\|\\|")[0] : cVar.e);
            this.m.setText(cVar.e.contains("||") ? cVar.e.split("\\|\\|")[1] : cVar.e);
            a(this.l);
            a(this.m);
        }
    }

    public void a(final TextView textView) {
        if (textView != null) {
            textView.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.cmplay.exitpopup.GameExitPopupActivity.2
                @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
                public void onGlobalLayout() {
                    textView.getViewTreeObserver().removeGlobalOnLayoutListener(this);
                    String charSequence = textView.getText().toString();
                    int width = (textView.getWidth() - textView.getPaddingLeft()) - textView.getPaddingRight();
                    TextPaint paint = textView.getPaint();
                    float textSize = paint.getTextSize();
                    g.a("文案宽：" + paint.measureText(charSequence) + ", 控件宽：" + width + ", 原有size= " + textSize);
                    while (paint.measureText(charSequence) > width && textSize > 10.0f) {
                        textSize -= 1.0f;
                        paint.setTextSize(textSize);
                    }
                    g.a("文案宽：" + paint.measureText(charSequence) + ", 新有size= " + textSize);
                    textView.setText(charSequence);
                }
            });
        }
    }

    public Bitmap a(String str) {
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inDensity = 320;
        options.inTargetDensity = getResources().getDisplayMetrics().densityDpi;
        options.inScaled = true;
        return BitmapFactory.decodeFile(str, options);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View v) {
        switch (v.getId()) {
            case R.id.btn_cancel /* 2131230891 */:
                this.r = "2";
                a.a().b(this, this.p);
                finish();
                break;
            case R.id.btn_ok /* 2131230897 */:
                this.q = true;
                new d().a(1039, 0, 2, (int) this.p.d(), this.o, "");
                a.a().a(this, this.p);
                finish();
                break;
            case R.id.img_app_icon /* 2131230971 */:
                this.q = true;
                new d().a(1039, 0, 22, (int) this.p.d(), this.o, "");
                a.a().a(this, this.p);
                finish();
                break;
        }
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        this.r = "1";
        super.onBackPressed();
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        if (!this.q) {
            new d().a(1039, 0, 19, (int) this.p.d(), this.o, this.r);
        }
        this.n = false;
        unregisterReceiver(this.s);
        this.f1336a.clearAnimation();
        if (this.f != null) {
            this.f.recycle();
        }
        if (this.g != null) {
            this.g.recycle();
        }
        super.onDestroy();
    }

    public void a(final View view, float f, float f2) {
        TranslateAnimation translateAnimation = new TranslateAnimation(1, f, 1, f2, 1, 0.0f, 1, 0.0f);
        translateAnimation.setDuration(200L);
        translateAnimation.setStartOffset(1500L);
        translateAnimation.setAnimationListener(new Animation.AnimationListener() { // from class: com.cmplay.exitpopup.GameExitPopupActivity.4
            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationStart(Animation animation) {
                g.a("zzb_pop_exit", "动画开始");
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationRepeat(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation) {
                g.a("zzb_pop_exit", "动画结束");
                if (view != null) {
                    view.setVisibility(8);
                    view.clearAnimation();
                }
            }
        });
        view.setVisibility(0);
        view.startAnimation(translateAnimation);
        g.a("zzb_pop_exit", "startAnimation");
    }
}
