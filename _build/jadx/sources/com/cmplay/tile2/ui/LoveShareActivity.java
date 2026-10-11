package com.cmplay.tile2.ui;

import android.animation.ObjectAnimator;
import android.annotation.TargetApi;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.BitmapDrawable;
import android.os.Build;
import android.os.Bundle;
import android.support.v4.view.PagerAdapter;
import android.support.v4.view.ViewPager;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.LinearInterpolator;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import com.cmplay.h.b;
import com.cmplay.h.d;
import com.cmplay.h.f;
import com.cmplay.tile2.ui.view.CircularImageView;
import com.cmplay.tiles4.R;
import com.cmplay.util.NativeUtil;
import com.cmplay.util.c;
import com.cmplay.util.j;
import com.cmplay.util.o;
import com.cmplay.util.p;
import com.cmplay.util.z;
import java.io.File;
import java.util.HashMap;
import org.cocos2dx.lib.Cocos2dxHelper;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class LoveShareActivity extends Activity implements View.OnClickListener, f.a, z.a {

    /* renamed from: a, reason: collision with root package name */
    public static int f1634a = -1;

    /* renamed from: b, reason: collision with root package name */
    public static String[] f1635b = new String[3];
    private static int w = 800;
    private ImageView c;
    private ImageView d;
    private ImageView e;
    private ImageView f;
    private ImageView g;
    private ImageView h;
    private TextView i;
    private TextView j;
    private TextView k;
    private CircularImageView l;
    private ViewPager m;
    private EditText n;
    private View o;
    private View p;
    private Bitmap q;
    private String[] t;
    private String[] u;
    private int x;
    private z r = null;
    private a s = null;
    private long v = 0;

    @Override // android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        c.a("LoveShareActivity", "onCreate");
        a(getIntent());
        if (AppActivity.c() == null) {
            finish();
            return;
        }
        setContentView(R.layout.activity_love);
        a();
        b();
        f.b().a(b.b(d.c()), 6300, 0, 1);
    }

    @Override // android.app.Activity
    protected void onNewIntent(Intent intent) {
        a(intent);
    }

    void a() {
        this.d = (ImageView) findViewById(R.id.img_arrow_left);
        this.d.setBackgroundDrawable(getResources().getDrawable(i(this.x)));
        this.e = (ImageView) findViewById(R.id.img_arrow_right);
        this.e.setBackgroundDrawable(getResources().getDrawable(j(this.x)));
        this.c = (ImageView) findViewById(R.id.img_btn_close);
        this.f = (ImageView) findViewById(R.id.img_open_camera);
        this.g = (ImageView) findViewById(R.id.img_open_gallery);
        this.h = (ImageView) findViewById(R.id.cd_shadow);
        this.h.setBackgroundDrawable(getResources().getDrawable(g(this.x)));
        this.i = (TextView) findViewById(R.id.btn_share);
        this.j = (TextView) findViewById(R.id.txt_dear);
        this.j.setTextColor(getResources().getColor(c(this.x)));
        this.k = (TextView) findViewById(R.id.txt_song_name);
        this.k.setTextColor(getResources().getColor(c(this.x)));
        this.o = findViewById(2131230778);
        this.o.setBackgroundDrawable(getResources().getDrawable(e(this.x)));
        this.p = findViewById(R.id.view_dash_line);
        this.p.setBackgroundDrawable(getResources().getDrawable(h(this.x)));
        this.l = (CircularImageView) findViewById(R.id.img_CD);
        this.l.setImageBitmap(((BitmapDrawable) getResources().getDrawable(f(this.x))).getBitmap());
        this.m = (ViewPager) findViewById(R.id.viewpager_bless);
        this.n = (EditText) findViewById(R.id.edt_send_bless_to);
        this.n.setTextColor(getResources().getColor(c(this.x)));
        this.d.setOnClickListener(this);
        this.f.setOnClickListener(this);
        this.g.setOnClickListener(this);
        this.e.setOnClickListener(this);
        this.l.setOnClickListener(this);
        this.i.setOnClickListener(this);
        this.c.setOnClickListener(this);
    }

    void b() {
        b.a().a("active_share_activity");
        Cocos2dxHelper.init(AppActivity.c());
        p.a().a(d.c);
        p.a().b();
        this.j.setText(NativeUtil.getLanguageTextByKey("shareh5_cm_dear_valentine") + ":");
        this.i.setText(NativeUtil.getLanguageTextByKey("shareh5_cm_button_valentine"));
        this.k.setText(NativeUtil.getLanguageTextByKey("share_valentine_tit"));
        f1634a = 1;
        this.t = a(this.x);
        this.u = b(this.x);
        this.s = new a();
        this.m.setAdapter(this.s);
        this.m.setCurrentItem(1);
        this.m.addOnPageChangeListener(new ViewPager.OnPageChangeListener() { // from class: com.cmplay.tile2.ui.LoveShareActivity.1
            @Override // android.support.v4.view.ViewPager.OnPageChangeListener
            public void onPageScrolled(int position, float positionOffset, int positionOffsetPixels) {
            }

            @Override // android.support.v4.view.ViewPager.OnPageChangeListener
            public void onPageSelected(int position) {
                if (position == 0) {
                    LoveShareActivity.this.d.setVisibility(4);
                } else {
                    LoveShareActivity.this.d.setVisibility(0);
                }
                if (position == LoveShareActivity.this.t.length - 1) {
                    LoveShareActivity.this.e.setVisibility(4);
                } else {
                    LoveShareActivity.this.e.setVisibility(0);
                }
            }

            @Override // android.support.v4.view.ViewPager.OnPageChangeListener
            public void onPageScrollStateChanged(int state) {
            }
        });
    }

    public static void a(Context context, int i) {
        Intent intent = new Intent(context, (Class<?>) LoveShareActivity.class);
        intent.putExtra("key_type", i);
        context.startActivity(intent);
    }

    private void a(Intent intent) {
        if (intent != null) {
            this.x = intent.getIntExtra("key_type", 0);
        }
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        c();
        g();
        com.b.a.a.a.b(this);
        c.a("LoveShareActivity", "onResume");
        o.a("LoveShareActivity onResume ", this);
        a(this.l);
        p.a().d();
    }

    @Override // android.app.Activity
    protected void onPause() {
        super.onPause();
        g();
        com.b.a.a.a.a(this);
        o.a("LoveShareActivity onPause", this);
        p.a().c();
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        if (this.q != null && !this.q.isRecycled()) {
            this.q.recycle();
            this.q = null;
            System.gc();
        }
    }

    @Override // android.app.Activity
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        f.b().a(requestCode, resultCode, data);
        if (this.r != null) {
            this.r.a(requestCode, resultCode, data);
        }
    }

    @Override // android.app.Activity
    public void onRequestPermissionsResult(int requestCode, String[] permissions, int[] grantResults) {
        super.onRequestPermissionsResult(requestCode, permissions, grantResults);
        if (this.r != null) {
            this.r.a(requestCode, permissions, grantResults);
        }
    }

    @Override // android.app.Activity
    public void finish() {
        NativeUtil.onShareH5ViewClosed();
        c.a("LoveShareActivity", "finish");
        f1634a = -1;
        super.finish();
    }

    @Override // android.app.Activity
    public boolean onTouchEvent(MotionEvent event) {
        ((InputMethodManager) getSystemService("input_method")).hideSoftInputFromWindow(this.n.getWindowToken(), 0);
        return super.onTouchEvent(event);
    }

    private void c() {
        File fileStreamPath = getFileStreamPath("share_CD_bg.jpg");
        if (fileStreamPath.exists()) {
            this.l.setImageDrawable(new BitmapDrawable(getResources(), BitmapFactory.decodeFile(fileStreamPath.getAbsolutePath(), null)));
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View v) {
        final String str = null;
        boolean z = true;
        switch (v.getId()) {
            case R.id.img_CD /* 2131230760 */:
                f();
                this.r.c();
                break;
            case R.id.btn_share /* 2131230763 */:
                final String obj = this.n.getText().toString();
                b.a().a("clk_quit_chg_cd_cover_pg");
                int b2 = b.b(d.c());
                f.b().a(b2, 6300, 0, 2);
                if (!TextUtils.isEmpty(obj)) {
                    f.b().a(b2, 9101, 0, 2);
                }
                String a2 = this.s.a();
                f1635b[0] = obj;
                f1635b[1] = a2;
                f1635b[2] = this.j.getText().toString();
                if (!this.u[this.m.getCurrentItem()].equals(a2)) {
                    f.b().a(b2, 9102, 0, 2);
                }
                d.a();
                j.a("valentine_2017", (j.a) null);
                if (NativeUtil.isFacebookInstalled()) {
                    j.b();
                } else {
                    z = false;
                }
                long currentTimeMillis = System.currentTimeMillis();
                if (currentTimeMillis - this.v > w) {
                    this.v = currentTimeMillis;
                    if (z) {
                        com.cmplay.base.util.d.a(new Runnable() { // from class: com.cmplay.tile2.ui.LoveShareActivity.2
                            @Override // java.lang.Runnable
                            public void run() {
                                f.b().a(str, 2, obj);
                                b.a().a("clk_share_btn_h5_pg");
                            }
                        }, 2000L);
                        break;
                    } else {
                        f.b().a((String) null, 2, obj);
                        b.a().a("clk_share_btn_h5_pg");
                        break;
                    }
                }
                break;
            case R.id.img_btn_close /* 2131230764 */:
                b.a().a("clk_quit_chg_cd_cover_pg");
                f.b().a(b.b(d.c()), 6355, 0, 2);
                finish();
                break;
            case R.id.img_open_gallery /* 2131230784 */:
                f();
                this.r.c();
                break;
            case R.id.img_open_camera /* 2131230785 */:
                f();
                this.r.a();
                break;
            case R.id.img_arrow_left /* 2131230790 */:
                d();
                break;
            case R.id.img_arrow_right /* 2131230791 */:
                e();
                break;
        }
    }

    private void d() {
        int currentItem = this.m.getCurrentItem();
        if (currentItem > 0) {
            this.m.setCurrentItem(currentItem - 1);
        }
    }

    private void e() {
        int currentItem = this.m.getCurrentItem();
        if (currentItem < this.t.length - 1) {
            this.m.setCurrentItem(currentItem + 1);
        }
    }

    private void f() {
        if (this.r == null) {
            this.r = new z(this);
            this.r.a(this);
        }
    }

    @Override // com.cmplay.util.z.a
    public void a(boolean z, String str) {
        if (z && !TextUtils.isEmpty(str)) {
            this.l.setImageDrawable(new BitmapDrawable(getResources(), BitmapFactory.decodeFile(str, null)));
        }
        if (Build.VERSION.SDK_INT > 10) {
            a(this.l);
        }
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

    private void g() {
        if (Build.VERSION.SDK_INT > 18) {
            View decorView = getWindow().getDecorView();
            decorView.setSystemUiVisibility(8);
            decorView.setSystemUiVisibility(5895);
        }
    }

    class a extends PagerAdapter {

        /* renamed from: a, reason: collision with root package name */
        HashMap<Integer, EditText> f1639a = new HashMap<>(5);

        a() {
        }

        @Override // android.support.v4.view.PagerAdapter
        public int getCount() {
            return LoveShareActivity.this.t.length;
        }

        @Override // android.support.v4.view.PagerAdapter
        public Object instantiateItem(ViewGroup container, int position) {
            String str = LoveShareActivity.this.t[position];
            EditText a2 = a(position);
            a2.setText(str);
            container.addView(a2);
            return a2;
        }

        @Override // android.support.v4.view.PagerAdapter
        public void destroyItem(ViewGroup container, int position, Object object) {
            EditText editText = this.f1639a.get(Integer.valueOf(position));
            if (editText != null) {
                LoveShareActivity.this.t[position] = editText.getText().toString();
            }
            container.removeView((View) object);
        }

        @Override // android.support.v4.view.PagerAdapter
        public boolean isViewFromObject(View view, Object object) {
            return view == object;
        }

        EditText a(int i) {
            if (this.f1639a.get(Integer.valueOf(i)) != null) {
                return this.f1639a.get(Integer.valueOf(i));
            }
            EditText editText = new EditText(LoveShareActivity.this);
            editText.setTextColor(LoveShareActivity.this.getResources().getColor(LoveShareActivity.this.d(LoveShareActivity.this.x)));
            editText.setBackgroundDrawable(null);
            editText.setPadding(0, 0, 0, 0);
            editText.setTextSize(20.0f);
            editText.setGravity(17);
            editText.getPaint().setFakeBoldText(true);
            this.f1639a.put(Integer.valueOf(i), editText);
            return editText;
        }

        public String a() {
            EditText editText = this.f1639a.get(Integer.valueOf(LoveShareActivity.this.m.getCurrentItem()));
            return editText != null ? editText.getText().toString() : "";
        }
    }

    private String[] a(int i) {
        switch (i) {
        }
        return new String[]{NativeUtil.getLanguageTextByKey("share_valentine_word11"), NativeUtil.getLanguageTextByKey("share_valentine_word12"), NativeUtil.getLanguageTextByKey("share_valentine_word13"), NativeUtil.getLanguageTextByKey("shareh5_cm_words_5")};
    }

    private String[] b(int i) {
        switch (i) {
        }
        return new String[]{NativeUtil.getLanguageTextByKey("share_valentine_word11"), NativeUtil.getLanguageTextByKey("share_valentine_word12"), NativeUtil.getLanguageTextByKey("share_valentine_word13"), NativeUtil.getLanguageTextByKey("shareh5_cm_words_5")};
    }

    private int c(int i) {
        switch (i) {
            case 1:
            default:
                return R.color.lov_type_1;
            case 2:
                return R.color.lov_type_2;
            case 3:
                return R.color.lov_type_3;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int d(int i) {
        switch (i) {
            case 1:
            default:
                return R.color.lov_defaultBlesses_type_1;
            case 2:
                return R.color.lov_defaultBlesses_type_2;
            case 3:
                return R.color.lov_defaultBlesses_type_3;
        }
    }

    private int e(int i) {
        switch (i) {
            case 1:
            default:
                return R.drawable.love_bg_1;
            case 2:
                return R.drawable.love_bg_2;
            case 3:
                return R.drawable.love_bg_3;
        }
    }

    private int f(int i) {
        switch (i) {
            case 1:
            default:
                return R.drawable.lov_cd_bg_1;
            case 2:
                return R.drawable.lov_cd_bg_2;
            case 3:
                return R.drawable.lov_cd_bg_3;
        }
    }

    private int g(int i) {
        switch (i) {
            case 1:
            default:
                return R.drawable.love_share_cd_shadow_1;
            case 2:
                return R.drawable.love_share_cd_shadow_2;
            case 3:
                return R.drawable.love_share_cd_shadow_3;
        }
    }

    private int h(int i) {
        switch (i) {
            case 1:
            default:
                return R.drawable.lov_line_interval_1;
            case 2:
                return R.drawable.lov_line_interval_2;
            case 3:
                return R.drawable.lov_line_interval_3;
        }
    }

    private int i(int i) {
        switch (i) {
            case 1:
            default:
                return R.drawable.love_arrow_left_1;
            case 2:
                return R.drawable.love_arrow_left_2;
            case 3:
                return R.drawable.love_arrow_left_3;
        }
    }

    private int j(int i) {
        switch (i) {
            case 1:
            default:
                return R.drawable.love_arrow_right_1;
            case 2:
                return R.drawable.love_arrow_right_2;
            case 3:
                return R.drawable.love_arrow_right_3;
        }
    }
}
