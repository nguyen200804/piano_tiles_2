package com.cmcm.orion.picks.impl;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RatingBar;
import android.widget.TextView;
import com.cmcm.orion.adsdk.R;
import com.cmcm.orion.adsdk.b;
import com.cmcm.orion.picks.b.b;
import com.cmcm.orion.picks.impl.a;
import com.cmcm.orion.picks.impl.g;
import com.cmcm.orion.picks.impl.h;
import java.lang.ref.WeakReference;
import java.text.NumberFormat;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Random;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class VideoAdDetailActivity extends Activity implements View.OnClickListener {
    private static g c;
    private static b.a o;

    /* renamed from: a, reason: collision with root package name */
    private WeakReference<Bitmap> f897a;

    /* renamed from: b, reason: collision with root package name */
    private WeakReference<Bitmap> f898b;
    private Button d;
    private ImageView e;
    private ImageView f;
    private TextView g;
    private ImageView h;
    private ImageView i;
    private TextView j;
    private RatingBar k;
    private ViewGroup l;
    private FrameLayout m;
    private FrameLayout n;
    private long p;

    public static void a(b.a aVar) {
        o = aVar;
    }

    public static boolean a(Context context, g gVar) {
        if (context == null || gVar == null) {
            return false;
        }
        c = gVar;
        Intent intent = new Intent(context, (Class<?>) VideoAdDetailActivity.class);
        intent.setFlags(268435456);
        context.startActivity(intent);
        return true;
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        h.a aVar;
        float f;
        super.onCreate(savedInstanceState);
        getWindow().setFlags(1024, 1024);
        setContentView(R.layout.orion_activity_video_detail);
        if (c == null) {
            finish();
            return;
        }
        this.e = (ImageView) findViewById(R.id.iv_replay);
        this.e.setVisibility(8);
        this.f = (ImageView) findViewById(R.id.iv_close);
        this.g = (TextView) findViewById(R.id.tv_title);
        this.h = (ImageView) findViewById(R.id.iv_icon);
        this.i = (ImageView) findViewById(R.id.iv_cover_image);
        this.j = (TextView) findViewById(R.id.tv_download_num);
        this.d = (Button) findViewById(R.id.btn_calltoaction);
        this.k = (RatingBar) findViewById(R.id.item_rating);
        this.l = (ViewGroup) findViewById(R.id.app_download_info);
        this.n = (FrameLayout) findViewById(R.id.iv_icon_layout);
        this.m = (FrameLayout) findViewById(R.id.tv_title_layout);
        this.h.setOnClickListener(this);
        findViewById(R.id.close_layout).setOnClickListener(this);
        this.f.setOnClickListener(this);
        this.d.setOnClickListener(this);
        this.i.setOnClickListener(this);
        if (c.d() != null) {
            a(g.a.CREATE_VIEW);
        }
        this.p = System.currentTimeMillis();
        h a2 = c.a();
        if (a2 != null) {
            List<h.a> m = a2.m();
            if (m != null && m.size() > 0) {
                float f2 = Float.MAX_VALUE;
                Iterator<h.a> it = m.iterator();
                h.a aVar2 = null;
                while (true) {
                    if (!it.hasNext()) {
                        aVar = aVar2;
                        break;
                    }
                    aVar = it.next();
                    if (aVar.a() >= 300 && aVar.b() >= 250 && aVar.c() != null && aVar.c().size() >= 0) {
                        float a3 = aVar.a() / aVar.b();
                        if (a3 == 1.2f) {
                            break;
                        }
                        if (Math.abs(a3 - 1.2f) < f2) {
                            f = a3 - 1.2f;
                        } else {
                            aVar = aVar2;
                            f = f2;
                        }
                        f2 = f;
                        aVar2 = aVar;
                    }
                }
                if (aVar != null) {
                    c.a(aVar);
                    List<String> c2 = aVar.c();
                    if (c2 != null && c2.size() > 0 && !TextUtils.isEmpty(c2.get(0))) {
                        com.cmcm.orion.picks.impl.b.a.a(com.cmcm.orion.adsdk.e.a(), c2.get(0), false, new a.InterfaceC0019a() { // from class: com.cmcm.orion.picks.impl.VideoAdDetailActivity.1
                            @Override // com.cmcm.orion.picks.impl.a.InterfaceC0019a
                            public final void a(String str, String str2, boolean z) {
                                try {
                                    Bitmap decodeFile = BitmapFactory.decodeFile(str2);
                                    if (decodeFile == null) {
                                        VideoAdDetailActivity.this.f897a = null;
                                    } else {
                                        VideoAdDetailActivity.this.f897a = new WeakReference(decodeFile);
                                    }
                                } catch (Throwable th) {
                                }
                            }

                            @Override // com.cmcm.orion.picks.impl.a.InterfaceC0019a
                            public final void a(String str, com.cmcm.orion.adsdk.d dVar) {
                                VideoAdDetailActivity.this.f897a = null;
                            }
                        });
                    } else {
                        this.f897a = null;
                    }
                }
            }
            if (!TextUtils.isEmpty(a2.n())) {
                com.cmcm.orion.picks.impl.b.a.a(com.cmcm.orion.adsdk.e.a(), a2.n(), false, new a.InterfaceC0019a() { // from class: com.cmcm.orion.picks.impl.VideoAdDetailActivity.2
                    @Override // com.cmcm.orion.picks.impl.a.InterfaceC0019a
                    public final void a(String str, String str2, boolean z) {
                        try {
                            Bitmap decodeFile = BitmapFactory.decodeFile(str2);
                            if (decodeFile == null) {
                                VideoAdDetailActivity.this.f898b = null;
                            } else {
                                VideoAdDetailActivity.this.f898b = new WeakReference(decodeFile);
                            }
                        } catch (Throwable th) {
                        }
                    }

                    @Override // com.cmcm.orion.picks.impl.a.InterfaceC0019a
                    public final void a(String str, com.cmcm.orion.adsdk.d dVar) {
                        VideoAdDetailActivity.this.f898b = null;
                    }
                });
            } else {
                this.f898b = null;
            }
        }
    }

    private static void a(g.a aVar) {
        if (c != null) {
            c.a(aVar);
        }
    }

    @Override // android.app.Activity
    protected void onResume() {
        Bitmap d;
        super.onResume();
        if (c != null && c.a() != null) {
            if (this.f897a != null && this.f897a.get() != null) {
                this.i.setImageBitmap(this.f897a.get());
                d = this.f897a.get();
            } else {
                d = i.d(com.cmcm.orion.picks.impl.a.a.c(c.a().a(this)));
                if (d == null) {
                    d = null;
                } else {
                    this.i.setImageBitmap(d);
                }
            }
            String h = c.a().h();
            if (!TextUtils.isEmpty(h) && !"null".equals(h.trim())) {
                this.d.setText(h);
            }
            String f = c.a().f();
            if (TextUtils.isEmpty(f) || "null".equals(f.trim())) {
                f = c.a().g();
            }
            this.g.setText(f);
            if (this.f898b != null && this.f898b.get() != null) {
                this.h.setImageBitmap(this.f898b.get());
            } else if (d != null) {
                this.h.setImageBitmap(d);
            }
            h a2 = c.a();
            if (a2 != null && a2.p() != null && (a2.p().v() || a2.p().u())) {
                float a3 = (float) a2.a();
                if (a3 == 0.0d) {
                    a3 = (float) (4.0d + (new Random().nextFloat() * 1.0f));
                    a2.a(String.valueOf(a3));
                }
                if (a3 >= 3.0d) {
                    this.k.setRating(a3);
                    this.l.setVisibility(0);
                    String b2 = a2.b();
                    if (TextUtils.isEmpty(b2)) {
                        b2 = "(" + NumberFormat.getInstance().format(new Random().nextInt(9999999) + 1000000) + ")";
                        a2.b(b2);
                    }
                    this.j.setText(b2);
                    return;
                }
                this.l.setVisibility(8);
                return;
            }
            this.l.setVisibility(8);
            this.n.setVisibility(8);
            if (this.m == null) {
                return;
            }
            this.m.setLayoutParams(new LinearLayout.LayoutParams(-1, -2, 4.0f));
        }
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int keyCode, KeyEvent event) {
        if (keyCode == 4 && o != null) {
            com.cmcm.orion.utils.e.b(new Runnable() { // from class: com.cmcm.orion.picks.impl.VideoAdDetailActivity.3
                @Override // java.lang.Runnable
                public final void run() {
                    VideoAdDetailActivity.c.a(g.a.EXIT_FULL_SCREEN, VideoAdDetailActivity.c.b(), 0L);
                    VideoAdDetailActivity.o.b();
                }
            });
        }
        return super.onKeyDown(keyCode, event);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int i = 1;
        int id = view.getId();
        if (id == R.id.iv_close || id == R.id.close_layout) {
            if (o != null) {
                com.cmcm.orion.utils.e.b(new Runnable() { // from class: com.cmcm.orion.picks.impl.VideoAdDetailActivity.4
                    @Override // java.lang.Runnable
                    public final void run() {
                        VideoAdDetailActivity.c.a(g.a.EXIT_FULL_SCREEN, VideoAdDetailActivity.c.b(), 0L);
                        VideoAdDetailActivity.o.b();
                        VideoAdDetailActivity.this.finish();
                    }
                });
                return;
            }
            return;
        }
        if (id == R.id.btn_calltoaction || id == R.id.iv_cover_image || id == R.id.iv_icon) {
            if (id == R.id.btn_calltoaction) {
                i = 3;
            } else if (id != R.id.iv_cover_image && id == R.id.iv_icon) {
                i = 2;
            }
            if (c.a().p() == null || TextUtils.isEmpty(c.a().p().m())) {
                return;
            }
            c.a(this);
            a(g.a.CLICK_TRACKING);
            com.cmcm.orion.picks.a.a.a p = c.a().p();
            long currentTimeMillis = System.currentTimeMillis() - this.p;
            HashMap hashMap = new HashMap();
            hashMap.put("click_from", String.valueOf(i));
            a.AnonymousClass1.a(b.a.REPORT_CLICK, p, p.d(), 0, currentTimeMillis, hashMap);
        }
    }
}
