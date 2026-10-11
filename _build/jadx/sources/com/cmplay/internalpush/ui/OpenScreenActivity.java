package com.cmplay.internalpush.ui;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import com.a.a.i;
import com.cmplay.base.util.gif.GifDrawable;
import com.cmplay.base.util.gif.GifImageView;
import com.cmplay.internalpush.R;
import com.cmplay.internalpush.data.g;
import com.cmplay.internalpush.n;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class OpenScreenActivity extends Activity implements View.OnClickListener {
    private static WeakReference<Activity> o;

    /* renamed from: a, reason: collision with root package name */
    private RelativeLayout f1500a = null;

    /* renamed from: b, reason: collision with root package name */
    private RelativeLayout f1501b = null;
    private GifImageView c = null;
    private ImageView d = null;
    private ImageView e = null;
    private ImageView f = null;
    private ImageView g = null;
    private LinearLayout h = null;
    private g i = null;
    private GifDrawable j = null;
    private Bitmap k = null;
    private Bitmap l = null;
    private Bitmap m = null;
    private List<com.a.a.g> n = new ArrayList();

    public static void a(Context context, String str) {
        Intent intent = new Intent(context, (Class<?>) OpenScreenActivity.class);
        intent.putExtra("info_for_show", str);
        context.startActivity(intent);
    }

    @Override // android.app.Activity
    protected void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        a(intent);
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x015d  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x019a  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x01cb  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x01ee  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x025b  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0255  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0089  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x00fe  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0124  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x023e  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0262  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0231  */
    @android.annotation.SuppressLint({"NewApi"})
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void a(android.content.Intent r14) {
        /*
            Method dump skipped, instructions count: 620
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.cmplay.internalpush.ui.OpenScreenActivity.a(android.content.Intent):void");
    }

    private void a(float f, ImageView imageView, Bitmap bitmap) {
        float f2 = (float) (f * 0.12d);
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) imageView.getLayoutParams();
        layoutParams.width = (int) ((f2 / bitmap.getHeight()) * bitmap.getWidth());
        layoutParams.height = (int) f2;
        imageView.setLayoutParams(layoutParams);
        imageView.setImageBitmap(bitmap);
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        o = new WeakReference<>(this);
        super.onCreate(savedInstanceState);
        setContentView(LayoutInflater.from(this).inflate(R.layout.activity_open_screen, (ViewGroup) null));
        this.f1500a = (RelativeLayout) findViewById(R.id.root_view);
        this.f1500a.setId(1);
        this.f1500a.setOnClickListener(this);
        this.f1501b = (RelativeLayout) findViewById(R.id.bg_layout);
        this.f1501b.setId(5);
        this.f1501b.setOnClickListener(this);
        this.c = (GifImageView) findViewById(R.id.ad_bg_image);
        this.c.setId(3);
        this.c.setOnClickListener(this);
        this.h = (LinearLayout) findViewById(R.id.try_parent);
        this.d = (ImageView) findViewById(R.id.try_btn);
        this.d.setId(4);
        this.d.setOnClickListener(this);
        this.e = (ImageView) findViewById(R.id.try_btn2);
        this.e.setId(6);
        this.e.setOnClickListener(this);
        this.f = (ImageView) findViewById(R.id.close_btn);
        this.f.setId(2);
        this.f.setOnClickListener(this);
        this.g = (ImageView) findViewById(R.id.ad_tag);
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
        for (com.a.a.g gVar : this.n) {
            if (gVar != null) {
                gVar.b();
            }
        }
        this.n.clear();
        if (this.k != null && !this.k.isRecycled()) {
            this.k.recycle();
            this.k = null;
            System.gc();
        }
        if (this.j != null && !this.j.isRecycled()) {
            this.j.stop();
            this.j.recycle();
            this.j = null;
            System.gc();
        }
        if (this.l != null && !this.l.isRecycled()) {
            this.l.recycle();
            this.l = null;
            System.gc();
        }
        if (this.m != null && !this.m.isRecycled()) {
            this.m.recycle();
            this.m = null;
            System.gc();
        }
        super.onDestroy();
    }

    @Override // android.app.Activity
    @SuppressLint({"NewApi"})
    public void onBackPressed() {
        n.a().c(getApplicationContext(), this.i);
        super.onBackPressed();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View v) {
        switch (v.getId()) {
            case 1:
            case 3:
            case 4:
            case 5:
                n.a().a(getApplicationContext(), this.i);
                finish();
                break;
            case 2:
                a();
                break;
            case 6:
                n.a().b(this, this.i);
                break;
        }
    }

    public void a() {
        n.a().d(getApplicationContext(), this.i);
        finish();
    }

    @SuppressLint({"NewApi"})
    public void a(View view, int i) {
        com.a.a.g a2 = com.a.a.g.a(view, i.a("scaleX", 1.0f, 0.7f, 1.0f), i.a("scaleY", 1.0f, 0.7f, 1.0f), i.a("alpha", 1.0f, 0.5f, 1.0f));
        a2.a(-1);
        a2.b(-1);
        a2.b(i);
        a2.a();
        this.n.add(a2);
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration newConfig) {
        super.onConfigurationChanged(newConfig);
        c();
    }

    private void c() {
        int i;
        if (this.i != null) {
            if (12 == this.i.i()) {
                i = 0;
            } else {
                i = 1;
            }
            setRequestedOrientation(i);
        }
    }

    public static Activity b() {
        if (o == null) {
            return null;
        }
        return o.get();
    }
}
