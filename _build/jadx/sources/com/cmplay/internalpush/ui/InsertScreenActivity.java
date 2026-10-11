package com.cmplay.internalpush.ui;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.a.a.g;
import com.a.a.i;
import com.cmplay.internalpush.R;
import com.cmplay.internalpush.data.f;
import com.cmplay.internalpush.j;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class InsertScreenActivity extends Activity implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    g f1497a;

    /* renamed from: b, reason: collision with root package name */
    private RelativeLayout f1498b = null;
    private RelativeLayout c = null;
    private ImageView d = null;
    private ImageView e = null;
    private ImageView f = null;
    private f g = null;
    private Bitmap h = null;
    private Bitmap i = null;

    public static void a(Context context, String str) {
        Intent intent = new Intent(context, (Class<?>) InsertScreenActivity.class);
        intent.putExtra("info_for_show", str);
        context.startActivity(intent);
    }

    @Override // android.app.Activity
    protected void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        a(intent);
    }

    public void a(ImageView imageView, ImageView imageView2, boolean z, int i, float f) {
        int intrinsicWidth = imageView.getDrawable().getIntrinsicWidth();
        float width = imageView.getWidth() / intrinsicWidth;
        float height = imageView.getHeight() / imageView.getDrawable().getIntrinsicHeight();
        if (width < height) {
            height = width;
        }
        int i2 = (int) ((intrinsicWidth * height) + 0.5f);
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) imageView2.getLayoutParams();
        if (z) {
            if (layoutParams.width < 0 || layoutParams.height < 0) {
                layoutParams.width = imageView2.getMeasuredWidth();
                layoutParams.height = imageView2.getMeasuredHeight();
            }
            layoutParams.width = (int) ((layoutParams.width * height) + 0.5f);
            layoutParams.height = (int) ((height * layoutParams.height) + 0.5f);
        }
        float width2 = (imageView.getWidth() * 0.5f) + 0.5f;
        if (i == 1) {
            imageView2.setX(((width2 + ((i2 * 0.5f) + 0.5f)) - imageView2.getMeasuredWidth()) - layoutParams.rightMargin);
        } else if (i == 2) {
            imageView2.setX(width2 - (imageView2.getMeasuredWidth() * 0.5f));
        }
        if (f > 0.0f) {
            imageView2.setY(imageView.getHeight() * f);
        }
    }

    @SuppressLint({"NewApi"})
    private void a(Intent intent) {
        if (intent != null) {
            String stringExtra = intent.getStringExtra("info_for_show");
            com.cmplay.base.util.g.b("internal_push", "InsertScreenActivity.parseIntent strInfoForShow:" + stringExtra);
            if (!TextUtils.isEmpty(stringExtra)) {
                this.g = new f(stringExtra);
            }
            if (this.g != null) {
                if (!TextUtils.isEmpty(this.g.o())) {
                    this.h = BitmapFactory.decodeFile(this.g.o());
                    if (this.h != null) {
                        this.d.setImageBitmap(this.h);
                    }
                }
                if (!TextUtils.isEmpty(this.g.p())) {
                    this.i = BitmapFactory.decodeFile(this.g.p());
                    if (this.i != null) {
                        this.e.setImageBitmap(this.i);
                        a(this.e, 1000);
                    }
                }
                this.d.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.cmplay.internalpush.ui.InsertScreenActivity.1
                    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
                    public void onGlobalLayout() {
                        InsertScreenActivity.this.d.getViewTreeObserver().removeGlobalOnLayoutListener(this);
                        float f = 0.79f;
                        if (InsertScreenActivity.this.g != null) {
                            f = (float) InsertScreenActivity.this.g.q();
                        }
                        InsertScreenActivity.this.a(InsertScreenActivity.this.d, InsertScreenActivity.this.e, true, 2, f);
                        InsertScreenActivity.this.a(InsertScreenActivity.this.d, InsertScreenActivity.this.f, false, 1, 0.0f);
                    }
                });
                switch (this.g.h()) {
                    case 4:
                        this.e.setOnClickListener(this);
                        break;
                    default:
                        this.f1498b.setOnClickListener(this);
                        this.c.setOnClickListener(this);
                        this.d.setOnClickListener(this);
                        this.e.setOnClickListener(this);
                        break;
                }
            }
        }
        a();
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(LayoutInflater.from(this).inflate(R.layout.activity_insert_screen, (ViewGroup) null));
        this.f1498b = (RelativeLayout) findViewById(R.id.root_view);
        this.f1498b.setId(1);
        this.f1498b.setOnClickListener(this);
        this.c = (RelativeLayout) findViewById(R.id.bg_layout);
        this.c.setId(5);
        this.c.setOnClickListener(this);
        this.d = (ImageView) findViewById(R.id.ad_bg_image);
        this.d.setId(3);
        this.d.setOnClickListener(this);
        this.e = (ImageView) findViewById(R.id.try_btn);
        this.e.setId(4);
        this.e.setOnClickListener(this);
        this.f = (ImageView) findViewById(R.id.close_btn);
        this.f.setId(2);
        this.f.setOnClickListener(this);
        a(getIntent());
    }

    @Override // android.app.Activity
    protected void onStart() {
        super.onStart();
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
    }

    @Override // android.app.Activity
    protected void onStop() {
        super.onStop();
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        if (this.f1497a != null) {
            this.f1497a.b();
        }
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

    @Override // android.app.Activity
    @SuppressLint({"NewApi"})
    public void onBackPressed() {
        super.onBackPressed();
        j.a().b(getApplicationContext(), this.g);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View v) {
        switch (v.getId()) {
            case 1:
            case 3:
            case 4:
            case 5:
                j.a().a(getApplicationContext(), this.g);
                finish();
                break;
            case 2:
                j.a().c(getApplicationContext(), this.g);
                finish();
                break;
        }
    }

    @SuppressLint({"NewApi"})
    public void a(View view, int i) {
        this.f1497a = g.a(view, i.a("scaleX", 1.0f, 0.7f, 1.0f), i.a("scaleY", 1.0f, 0.7f, 1.0f), i.a("alpha", 1.0f, 0.5f, 1.0f));
        this.f1497a.a(-1);
        this.f1497a.b(-1);
        this.f1497a.b(i);
        this.f1497a.a();
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration newConfig) {
        super.onConfigurationChanged(newConfig);
        a();
    }

    private void a() {
        int i;
        if (this.g != null) {
            com.cmplay.base.util.g.a("mInfoForShow.getDisplayType() =" + this.g.i());
            if (12 == this.g.i()) {
                i = 0;
            } else {
                i = 1;
            }
            setRequestedOrientation(i);
        }
    }
}
