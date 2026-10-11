package com.cmplay.tile2.ui;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapRegionDecoder;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.cmplay.h.b;
import com.cmplay.h.d;
import com.cmplay.h.f;
import com.cmplay.tiles4.R;
import com.cmplay.util.NativeUtil;
import com.cmplay.util.c;
import com.cmplay.util.g;
import com.cmplay.util.j;
import com.cmplay.util.o;
import java.io.IOException;
import java.io.InputStream;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class ChristmasShareActivity extends Activity implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public static int f1630a = -1;
    private static int k = 800;

    /* renamed from: b, reason: collision with root package name */
    private TextView f1631b;
    private ImageView c;
    private TextView d;
    private View e;
    private RelativeLayout f;
    private EditText g;
    private Bitmap h;
    private Bitmap i;
    private long j = 0;

    @Override // android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        c.a("ChristmasShareActivity", "onCreate");
        if (AppActivity.c() == null) {
            finish();
            return;
        }
        setContentView(R.layout.activity_christmas);
        a();
        b();
        f.b().a(b.b(16), 0, 0, 1);
    }

    void a() {
        this.f1631b = (TextView) findViewById(R.id.img_words);
        this.c = (ImageView) findViewById(R.id.img_btn_close);
        this.d = (TextView) findViewById(R.id.btn_share);
        this.f = (RelativeLayout) findViewById(R.id.img_CD);
        this.g = (EditText) findViewById(R.id.edt_send_bless_to);
        this.e = findViewById(R.id.christmas_share);
        this.d.setOnClickListener(this);
        this.c.setOnClickListener(this);
        this.h = c();
        this.e.setBackgroundDrawable(new BitmapDrawable(this.h));
    }

    void b() {
        b.a().a("active_share_activity");
        this.f1631b.setText(NativeUtil.getLanguageTextByKey("easter_collect_share"));
        this.d.setText(NativeUtil.getLanguageTextByKey("shareh5_cm_button_valentine"));
        this.g.setHint(NativeUtil.getLanguageTextByKey("share_xmas_sb"));
        f1630a = 1;
    }

    public static void a(Context context) {
        context.startActivity(new Intent(context, (Class<?>) ChristmasShareActivity.class));
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        g();
        com.b.a.a.a.b(this);
        c.a("ChristmasShareActivity", "onResume");
        o.a("ChristmasShareActivity onResume ", this);
    }

    @Override // android.app.Activity
    protected void onPause() {
        super.onPause();
        g();
        com.b.a.a.a.a(this);
        o.a("ChristmasShareActivity onPause", this);
    }

    @Override // android.app.Activity
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        f.b().a(requestCode, resultCode, data);
    }

    @Override // android.app.Activity
    public void finish() {
        c.a("ChristmasShareActivity", "finish");
        f1630a = -1;
        super.finish();
    }

    @Override // android.app.Activity
    public boolean onTouchEvent(MotionEvent event) {
        ((InputMethodManager) getSystemService("input_method")).hideSoftInputFromWindow(this.g.getWindowToken(), 0);
        return super.onTouchEvent(event);
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        if (this.h != null && !this.h.isRecycled()) {
            this.h.recycle();
            this.h = null;
            System.gc();
        }
        if (this.i != null && !this.i.isRecycled()) {
            this.i.recycle();
            this.i = null;
            System.gc();
        }
        super.onDestroy();
    }

    private Bitmap c() {
        InputStream inputStream;
        Throwable th;
        Bitmap bitmap = null;
        try {
            try {
                inputStream = getAssets().open("res/UI/ActivityMap/bg_map.png");
                try {
                    BitmapRegionDecoder newInstance = BitmapRegionDecoder.newInstance(inputStream, false);
                    bitmap = newInstance.decodeRegion(new Rect(0, 0, newInstance.getWidth(), newInstance.getHeight()), new BitmapFactory.Options());
                    g.a(inputStream);
                } catch (IOException e) {
                    e = e;
                    e.printStackTrace();
                    g.a(inputStream);
                    return bitmap;
                }
            } catch (Throwable th2) {
                th = th2;
                g.a(inputStream);
                throw th;
            }
        } catch (IOException e2) {
            e = e2;
            inputStream = null;
        } catch (Throwable th3) {
            inputStream = null;
            th = th3;
            g.a(inputStream);
            throw th;
        }
        return bitmap;
    }

    /* JADX WARN: Removed duplicated region for block: B:5:0x007d A[ORIG_RETURN, RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x008d A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.lang.String d() {
        /*
            r7 = this;
            r2 = 1
            r3 = 0
            java.text.SimpleDateFormat r0 = new java.text.SimpleDateFormat
            java.lang.String r1 = "yyyy-MM-dd_HH-mm-ss"
            java.util.Locale r4 = java.util.Locale.US
            r0.<init>(r1, r4)
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.io.File r4 = r7.getFilesDir()
            java.lang.String r4 = r4.getAbsolutePath()
            java.lang.StringBuilder r1 = r1.append(r4)
            java.lang.String r4 = "/screenCap"
            java.lang.StringBuilder r1 = r1.append(r4)
            java.util.Date r4 = new java.util.Date
            r4.<init>()
            java.lang.String r0 = r0.format(r4)
            java.lang.StringBuilder r0 = r1.append(r0)
            java.lang.String r1 = ".png"
            java.lang.StringBuilder r0 = r0.append(r1)
            java.lang.String r0 = r0.toString()
            android.view.View r1 = r7.e
            r1.setDrawingCacheEnabled(r2)
            android.view.View r1 = r7.e
            r1.buildDrawingCache()
            android.view.View r1 = r7.e
            android.graphics.Bitmap r1 = r1.getDrawingCache()
            r7.i = r1
            android.graphics.Bitmap r1 = r7.i
            if (r1 == 0) goto L84
            java.io.FileOutputStream r1 = new java.io.FileOutputStream     // Catch: java.lang.Exception -> L7e
            r1.<init>(r0)     // Catch: java.lang.Exception -> L7e
            android.graphics.Bitmap r4 = r7.i     // Catch: java.lang.Exception -> L7e
            android.graphics.Bitmap$CompressFormat r5 = android.graphics.Bitmap.CompressFormat.PNG     // Catch: java.lang.Exception -> L7e
            r6 = 100
            r4.compress(r5, r6, r1)     // Catch: java.lang.Exception -> L7e
            java.lang.String r1 = "ChristmasShareActivity"
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> L8f
            r3.<init>()     // Catch: java.lang.Exception -> L8f
            java.lang.String r4 = "filePath:"
            java.lang.StringBuilder r3 = r3.append(r4)     // Catch: java.lang.Exception -> L8f
            java.lang.StringBuilder r3 = r3.append(r0)     // Catch: java.lang.Exception -> L8f
            java.lang.String r4 = "output  done."
            java.lang.StringBuilder r3 = r3.append(r4)     // Catch: java.lang.Exception -> L8f
            java.lang.String r3 = r3.toString()     // Catch: java.lang.Exception -> L8f
            com.cmplay.util.c.a(r1, r3)     // Catch: java.lang.Exception -> L8f
        L7b:
            if (r2 == 0) goto L8d
        L7d:
            return r0
        L7e:
            r1 = move-exception
            r2 = r3
        L80:
            r1.printStackTrace()
            goto L7b
        L84:
            java.lang.String r1 = "ChristmasShareActivity"
            java.lang.String r2 = "bitmap  is NULL !"
            com.cmplay.util.c.a(r1, r2)
            r2 = r3
            goto L7b
        L8d:
            r0 = 0
            goto L7d
        L8f:
            r1 = move-exception
            goto L80
        */
        throw new UnsupportedOperationException("Method not decompiled: com.cmplay.tile2.ui.ChristmasShareActivity.d():java.lang.String");
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View v) {
        switch (v.getId()) {
            case R.id.btn_share /* 2131230763 */:
                d.a();
                String obj = this.g.getText().toString();
                j.d(obj);
                e();
                String d = d();
                f();
                int b2 = b.b(16);
                if (!TextUtils.isEmpty(obj)) {
                    f.b().a(b2, 9101, 0, 2);
                }
                long currentTimeMillis = System.currentTimeMillis();
                if (currentTimeMillis - this.j > k) {
                    this.j = currentTimeMillis;
                    f.b().c(16, d);
                    b.a().a("clk_chr_cd_share_btn");
                    break;
                }
                break;
            case R.id.img_btn_close /* 2131230764 */:
                b.a().a("clk_quit_chg_cd_cover_pg");
                f.b().a(b.b(16), 6355, 0, 2);
                finish();
                break;
        }
    }

    private void e() {
        this.d.setVisibility(8);
        this.c.setVisibility(8);
    }

    private void f() {
        this.d.setVisibility(0);
        this.c.setVisibility(0);
    }

    private void g() {
        if (Build.VERSION.SDK_INT > 18) {
            View decorView = getWindow().getDecorView();
            decorView.setSystemUiVisibility(8);
            decorView.setSystemUiVisibility(5895);
        }
    }
}
