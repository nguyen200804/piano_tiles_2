package com.cmcm.orion.picks.impl;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.media.MediaPlayer;
import android.os.AsyncTask;
import android.os.Build;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.widget.ImageButton;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.cmcm.orion.adsdk.R;
import com.cmcm.orion.adsdk.b;
import com.cmcm.orion.picks.b.a;
import com.cmcm.orion.picks.impl.a;
import com.cmcm.orion.picks.impl.f;
import com.cmcm.orion.picks.impl.g;
import com.cmcm.orion.picks.impl.player.Mp4Viewer;
import java.util.HashMap;

/* compiled from: BrandVCViewL.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class c extends b implements View.OnClickListener, a.InterfaceC0019a {

    /* renamed from: a, reason: collision with root package name */
    private static final String f956a = com.cmcm.orion.picks.b.a.class.getSimpleName() + " : " + c.class.getSimpleName();
    private String A;
    private AspectRatioRelativeLayout B;
    private Runnable C;
    private boolean D;
    private boolean E;
    private boolean F;
    private boolean G;

    /* renamed from: b, reason: collision with root package name */
    private Mp4Viewer f957b;
    private TextView c;
    private TextView d;
    private a.InterfaceC0013a e;
    private ImageButton f;
    private TextView g;
    private ProgressBar h;
    private boolean i;
    private int j;
    private g k;
    private h l;
    private int m;
    private int n;
    private boolean o;
    private boolean p;
    private com.cmcm.orion.picks.a.a.a q;
    private String r;
    private TextView s;
    private boolean t;
    private com.cmcm.orion.picks.b.a u;
    private int v;
    private f w;
    private RelativeLayout x;
    private View y;
    private View z;

    static /* synthetic */ boolean i(c cVar) {
        cVar.t = false;
        return false;
    }

    public c(Context context, f fVar) {
        super(context);
        this.v = 0;
        this.C = new Runnable() { // from class: com.cmcm.orion.picks.impl.c.5
            @Override // java.lang.Runnable
            public final void run() {
                if (c.this.j == 3) {
                    c.this.k.a(g.a.RESUME, c.this.m, c.this.n);
                    String unused = c.f956a;
                    new StringBuilder("onStateInUiThread: seekTo = ").append(c.this.n);
                    c.this.f957b.c(c.this.n);
                    c.i(c.this);
                }
            }
        };
        this.D = false;
        this.E = false;
        this.F = false;
        this.G = true;
        if (fVar != null) {
            this.w = fVar;
        } else {
            this.w = new f();
        }
        LayoutInflater.from(context).inflate(R.layout.brand_vc_video_landscape, this).setOnTouchListener(new View.OnTouchListener() { // from class: com.cmcm.orion.picks.impl.c.1
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View v, MotionEvent event) {
                return true;
            }
        });
        this.f957b = (Mp4Viewer) findViewById(R.id.brand_vc_mp4_viewer);
        this.c = (TextView) findViewById(R.id.button_skip);
        this.d = (TextView) findViewById(R.id.brand_vc_button_seconds);
        this.g = (TextView) findViewById(R.id.brand_vc_button_learn_more);
        this.h = (ProgressBar) findViewById(R.id.brand_vc_progress_bar);
        this.s = (TextView) findViewById(R.id.brand_vc_sponsored_view);
        this.f = (ImageButton) findViewById(R.id.brand_vc_button_mute_unmute);
        this.x = (RelativeLayout) findViewById(R.id.brand_vc_replay_layout);
        this.y = findViewById(R.id.brand_vc_mp4_viewer_cover);
        this.z = findViewById(R.id.brand_vc_mp4_viewer_shadow);
        this.B = (AspectRatioRelativeLayout) findViewById(R.id.brand_vc_mp4_viewer_container);
        findViewById(R.id.brand_vc_replay_button).setOnClickListener(this);
        this.g.setOnClickListener(this);
        this.f.setOnClickListener(this);
        this.c.setOnClickListener(this);
        this.f957b.setOnClickListener(this);
        this.f957b.c(new a.InterfaceC0019a() { // from class: com.cmcm.orion.picks.impl.c.2
            @Override // com.cmcm.orion.picks.impl.a.InterfaceC0019a
            public final void f() {
                if (i.a(c.this.getContext()) / i.b(c.this.getContext()) == 0.0f) {
                    c.this.g();
                } else {
                    c.this.b_();
                }
            }
        });
        this.f957b.a(new MediaPlayer.OnErrorListener() { // from class: com.cmcm.orion.picks.impl.c.3
            @Override // android.media.MediaPlayer.OnErrorListener
            public final boolean onError(MediaPlayer mp, int what, int extra) {
                if (c.this.u != null) {
                    c.this.u.a(b.a.BS_PLAYBACK_ERROR, what, 0L);
                    return false;
                }
                return false;
            }
        });
    }

    @Override // com.cmcm.orion.picks.impl.b
    public final void a() {
        l();
    }

    @Override // com.cmcm.orion.picks.impl.b
    public final void a_() {
        long f = i.f(this.A);
        if (this.m == 0 || this.n < f) {
            k();
        } else if (this.n > 0 && this.n >= f) {
            this.y.setVisibility(0);
            this.z.setVisibility(0);
        }
    }

    public final void a(a.InterfaceC0013a interfaceC0013a) {
        this.e = interfaceC0013a;
    }

    public final boolean a(com.cmcm.orion.picks.b.a aVar, String str, com.cmcm.orion.picks.a.a.a aVar2, HashMap<String, String> hashMap, h hVar, String str2) {
        if (aVar2 == null || hashMap == null || hVar == null) {
            return false;
        }
        this.u = aVar;
        this.q = aVar2;
        this.r = str;
        this.l = hVar;
        this.k = new g(hVar);
        this.k.a(str2);
        String str3 = hashMap.get(aVar2.E());
        if (!a.AnonymousClass1.a(str3) || !this.f957b.a(str3)) {
            return false;
        }
        this.A = str3;
        this.f957b.j();
        this.f957b.b((int) this.l.j());
        this.f957b.a(0.0f, 0.0f);
        this.i = true;
        if (!this.i) {
            this.f.setImageResource(R.drawable.brand_volume_on);
        } else {
            this.f.setImageResource(R.drawable.brand_volume_off);
        }
        this.f957b.a(this);
        this.f957b.b(this);
        if (i()) {
            String h = hVar.h();
            if (TextUtils.isEmpty(h)) {
                try {
                    h = getContext().getString(R.string.brand_learn_more_text);
                } catch (Exception e) {
                    h = "LEARN MORE";
                }
            }
            this.g.setText(h);
        }
        int e2 = i.e(str3);
        this.v = e2;
        this.d.setText(String.format("%ds", Integer.valueOf(this.v)));
        if (this.w.h.f975b == -1) {
            this.w.h.f975b = e2;
        }
        if (this.w.f973b.f975b == -1) {
            this.w.f973b.f975b = e2;
        }
        a(this.x, this.w.h, 8);
        a(this.g, this.w.f973b, 8);
        a(this.f, this.w.c, 0);
        a(this.h, this.w.d, 0);
        a(this.s, this.w.e, 0);
        a(this.c, this.w.g, 0);
        a(this.d, this.w.f, 0);
        com.cmcm.orion.utils.a.a(new AsyncTask<Object, Object, Object>() { // from class: com.cmcm.orion.picks.impl.c.4
            @Override // android.os.AsyncTask
            protected final Object doInBackground(Object... params) {
                try {
                    return i.d(c.this.A);
                } catch (Throwable th) {
                    return null;
                }
            }

            @Override // android.os.AsyncTask
            protected final void onPostExecute(Object o) {
                if (o != null && (o instanceof Bitmap)) {
                    if (Build.VERSION.SDK_INT >= 16) {
                        c.this.y.setBackground(new BitmapDrawable((Bitmap) o));
                    } else {
                        c.this.y.setBackgroundDrawable(new BitmapDrawable((Bitmap) o));
                    }
                }
            }
        }, new Object[0]);
        return true;
    }

    private void a(View view, f.a aVar, int i) {
        if (view != null && aVar != null) {
            if (aVar.f974a) {
                if (i != 0) {
                    view.setVisibility(i);
                } else if (this.n >= aVar.f975b) {
                    view.setVisibility(0);
                }
                RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) view.getLayoutParams();
                if (layoutParams != null) {
                    layoutParams.setMargins(aVar.c != -1 ? aVar.c : layoutParams.leftMargin, aVar.e != -1 ? aVar.e : layoutParams.topMargin, aVar.d != -1 ? aVar.d : layoutParams.rightMargin, aVar.f != -1 ? aVar.f : layoutParams.bottomMargin);
                    return;
                }
                return;
            }
            view.setVisibility(8);
        }
    }

    private boolean i() {
        return !TextUtils.isEmpty(this.l.k());
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id == R.id.button_skip) {
            if (this.u.m() || this.n >= this.v * 1000) {
                if (this.e != null) {
                    this.e.b();
                }
                if (!this.p) {
                    this.k.a(g.a.SKIP, this.m, this.n);
                    this.u.a(b.a.BS_SKIP, 0, this.n);
                    this.p = true;
                }
                l();
                return;
            }
            return;
        }
        if (id == R.id.brand_vc_button_learn_more) {
            j();
            return;
        }
        if (id == R.id.brand_vc_button_mute_unmute) {
            if (m()) {
                if (this.i) {
                    b_();
                    return;
                } else {
                    g();
                    return;
                }
            }
            return;
        }
        if (id == R.id.brand_vc_replay_button) {
            removeCallbacks(this.C);
            this.n = 0;
            this.y.setVisibility(8);
            this.z.setVisibility(8);
            k();
            a(this.x, this.w.h, 8);
            a(this.g, this.w.f973b, 8);
            a(this.f, this.w.c, 0);
            if (this.e != null) {
                this.e.c();
                return;
            }
            return;
        }
        if (id == R.id.brand_vc_mp4_viewer && this.u.k() && m()) {
            j();
        }
    }

    private void j() {
        if (i()) {
            if (this.k != null) {
                if (this.e != null) {
                    this.e.a(this.l.k());
                }
                if (!this.u.b()) {
                    this.k.a(getContext());
                }
                this.k.a(g.a.CLICK_TRACKING, this.m, this.n);
                this.u.a(b.a.CLICKED, 0, this.n);
            }
            l();
        }
    }

    private void k() {
        if (this.f957b != null) {
            this.f957b.g();
        }
    }

    private void l() {
        if (this.f957b != null) {
            this.f957b.h();
        }
    }

    public final void g() {
        if (!this.i) {
            this.f957b.a(0.0f, 0.0f);
            this.i = true;
            this.f.setImageResource(R.drawable.brand_volume_off);
            this.k.a(g.a.MUTE, this.m, this.n);
        }
    }

    @Override // com.cmcm.orion.picks.impl.b
    public final void b_() {
        if (!this.i) {
            float a2 = i.a(getContext()) / i.b(getContext());
            this.f957b.a(a2, a2);
            return;
        }
        float a3 = i.a(getContext()) / i.b(getContext());
        this.f957b.a(a3, a3);
        this.i = a3 <= 0.0f;
        if (!this.i) {
            this.f.setImageResource(R.drawable.brand_volume_on);
            this.k.a(g.a.UNMUTE, this.m, this.n);
        }
    }

    @Override // com.cmcm.orion.picks.impl.a.InterfaceC0019a
    public final void a(int i) {
        if (i == 3) {
            if (this.n == 0) {
                this.t = false;
            } else if (this.f957b.i() == 3) {
                postDelayed(this.C, 100L);
            } else {
                this.t = true;
            }
        }
        if (this.j == 3 && !this.t && ((i == 8 || i == 4 || i == 7 || i == 6) && this.m != this.n && this.n > 0 && !this.k.c())) {
            this.k.a(g.a.PAUSE, this.m, this.n);
        }
        if (i == 5) {
            this.k.a(this.m);
            if (this.e != null) {
                this.e.d();
            }
            a(this.x, this.w.h, 0);
            a(this.f, this.w.c, 8);
            if (i()) {
                a(this.g, this.w.f973b, 0);
            }
            a(this.d, this.w.f, 8);
            this.z.setVisibility(0);
        }
        this.j = i;
    }

    @Override // com.cmcm.orion.picks.impl.a.InterfaceC0019a
    public final void a(int i, int i2) {
        int i3;
        new StringBuilder("onProgressInUiThread: totalLength = ").append(i).append("; currentPosition = ").append(i2);
        this.m = i;
        if (this.n == 0 || i2 >= this.n) {
            if (this.n != 0 || i2 <= 500) {
                this.n = i2;
                int i4 = this.m;
                if (i4 > 0 && i2 > 0) {
                    float f = ((i2 * 1.0f) / 1000.0f) / ((i4 * 1.0f) / 1000.0f);
                    if (f >= 0.25f && f < 0.5f) {
                        this.k.a(g.a.FIRSTQUARTILE, i4, i2);
                        if (!this.D) {
                            this.D = true;
                        }
                    } else if (f >= 0.5f && f < 0.75f) {
                        this.k.a(g.a.MIDPOINT, i4, i2);
                        if (!this.E) {
                            this.E = true;
                        }
                    } else if (f >= 0.75f && f <= 1.0f) {
                        this.k.a(g.a.THIRDQUARTILE, i4, i2);
                        if (!this.F) {
                            this.F = true;
                        }
                    }
                }
                if (!this.o) {
                    this.o = true;
                    this.k.a(g.a.CREATE_VIEW, this.m, 0L);
                    this.k.b(this.m);
                }
                if (this.j == 3 || this.j == 5) {
                    this.k.a(i, i2);
                }
                if (i2 != 0 && (i3 = this.v - (i2 / 1000)) > 0) {
                    this.d.setText(String.format("%ds", Integer.valueOf(i3)));
                    a(this.d, this.w.f, 0);
                }
                if (this.m > 0) {
                    this.h.setMax(this.m);
                    this.h.setProgress(i2);
                }
            }
        }
    }

    private boolean m() {
        return this.j == 3;
    }

    @Override // android.view.View
    protected void onWindowVisibilityChanged(int visibility) {
        super.onWindowVisibilityChanged(visibility);
        if (visibility == 0 && this.G) {
            this.G = false;
            this.u.a(b.a.GET_VIEW, 0, 0L);
            if (this.l != null) {
                this.l.i();
            }
            if (this.e != null) {
                this.e.a();
            }
        }
        a(this.u.g());
    }

    @Override // com.cmcm.orion.picks.impl.b
    public final void a(float f) {
        this.B.a(f);
    }

    @Override // com.cmcm.orion.picks.impl.b
    public final g d() {
        return this.k;
    }
}
