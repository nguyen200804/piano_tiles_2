package com.cmcm.orion.picks.impl.player;

import android.annotation.TargetApi;
import android.content.Context;
import android.media.MediaPlayer;
import android.os.Build;
import android.os.Handler;
import android.os.HandlerThread;
import android.text.TextUtils;
import android.view.Surface;
import com.cmcm.orion.picks.impl.a;
import java.io.FileInputStream;
import java.util.HashMap;

/* compiled from: Mp4Player.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    private Context f1005a;
    private String d;
    private a.InterfaceC0019a e;
    private a.InterfaceC0019a f;
    private MediaPlayer.OnErrorListener g;
    private int m;
    private boolean h = true;

    /* renamed from: b, reason: collision with root package name */
    private MediaPlayer f1006b = new MediaPlayer();
    private j c = new j();
    private boolean i = true;
    private boolean j = false;
    private float k = 0.5f;
    private float l = 0.5f;

    public a(Context context) {
        this.f1005a = context;
    }

    public final void a(int i2) {
        this.m = i2;
    }

    public final void a(String str) {
        if (!TextUtils.isEmpty(str)) {
            this.d = str;
            if (this.i && this.c.e == 0) {
                b(3);
                j.a(this.c, 0);
            } else {
                this.c.b();
            }
        }
    }

    public final void b(int i2) {
        this.c.a(i2);
    }

    public final int a() {
        return this.c.e;
    }

    public final void a(Surface surface) {
        this.c.a(surface);
    }

    public final void a(a.InterfaceC0019a interfaceC0019a) {
        this.e = interfaceC0019a;
    }

    public final void b(a.InterfaceC0019a interfaceC0019a) {
        this.f = interfaceC0019a;
    }

    public final void b() {
        this.h = true;
    }

    public final void a(float f2, float f3) {
        if (f2 < 0.0f) {
            this.k = 0.0f;
        } else if (f2 > 1.0f) {
            this.k = 1.0f;
        } else {
            this.k = f2;
        }
        if (f3 < 0.0f) {
            this.l = 0.0f;
        } else if (f3 > 1.0f) {
            this.l = 1.0f;
        } else {
            this.l = f3;
        }
        if (this.f1006b != null) {
            try {
                this.f1006b.setVolume(f2, f3);
            } catch (Exception e2) {
            }
        }
    }

    public final void c(int i2) {
        try {
            if (this.f1006b != null) {
                this.f1006b.seekTo(i2);
            }
        } catch (Exception e2) {
        }
    }

    public final int c() {
        if (this.f1006b != null) {
            return this.f1006b.getCurrentPosition();
        }
        return 0;
    }

    public final void a(MediaPlayer.OnErrorListener onErrorListener) {
        this.g = onErrorListener;
    }

    /* compiled from: Mp4Player.java */
    class j {
        private l c;
        private Surface f;
        private Runnable g = new Runnable() { // from class: com.cmcm.orion.picks.impl.player.a.j.1
            @Override // java.lang.Runnable
            public final void run() {
                a.a(a.this, a.this.m, a.this.c());
                if (j.this.d == 3) {
                    l.a(j.this.c, this);
                } else {
                    l.b(j.this.c, this);
                }
            }
        };

        /* renamed from: b, reason: collision with root package name */
        private HashMap<Integer, i> f1025b = new HashMap<>();
        private int d = 0;
        private int e = 0;

        final void a(boolean z) {
            if (z) {
                l.c(this.c, this.g);
            } else {
                l.b(this.c, this.g);
            }
        }

        public final void a(final int i) {
            l.c(this.c, new Runnable() { // from class: com.cmcm.orion.picks.impl.player.a.j.3
                @Override // java.lang.Runnable
                public final void run() {
                    j.this.e = i;
                    j.this.b();
                }
            });
        }

        public final void a(final Surface surface) {
            l.c(this.c, new Runnable() { // from class: com.cmcm.orion.picks.impl.player.a.j.4
                @Override // java.lang.Runnable
                public final void run() {
                    j.this.f = surface;
                    if (j.this.f == null) {
                        j.a(j.this, 8);
                    } else {
                        j.this.b();
                    }
                }
            });
        }

        public final Surface a() {
            return this.f;
        }

        public j() {
            this.c = new l(a.this, (byte) 0);
        }

        public final void b() {
            l.c(this.c, new Runnable() { // from class: com.cmcm.orion.picks.impl.player.a.j.6
                @Override // java.lang.Runnable
                public final void run() {
                    i d = j.d(j.this, j.this.d);
                    if (d != null) {
                        d.b();
                    }
                }
            });
        }

        public final void c() {
            if (this.f != null) {
                if (Build.VERSION.SDK_INT >= 14) {
                    this.f.release();
                }
                this.f = null;
            }
        }

        static /* synthetic */ void a(j jVar, final int i) {
            l.c(jVar.c, new Runnable() { // from class: com.cmcm.orion.picks.impl.player.a.j.5
                @Override // java.lang.Runnable
                public final void run() {
                    i d = j.d(j.this, i);
                    if (d != null && d.a()) {
                        d.b();
                    }
                }
            });
        }

        static /* synthetic */ i d(j jVar, int i) {
            i c0023a;
            byte b2 = 0;
            if (jVar.f1025b.containsKey(Integer.valueOf(i))) {
                return jVar.f1025b.get(Integer.valueOf(i));
            }
            switch (i) {
                case 0:
                    c0023a = new b(a.this, b2);
                    break;
                case 1:
                    c0023a = new c(a.this, b2);
                    break;
                case 2:
                    c0023a = new f(a.this, b2);
                    break;
                case 3:
                    c0023a = new h(a.this, b2);
                    break;
                case 4:
                    c0023a = new d(a.this, b2);
                    break;
                case 5:
                    c0023a = new e(a.this, b2);
                    break;
                case 6:
                    c0023a = new k(a.this, b2);
                    break;
                case 7:
                    c0023a = new g(a.this, b2);
                    break;
                case 8:
                    c0023a = new C0023a(a.this, b2);
                    break;
                default:
                    c0023a = null;
                    break;
            }
            if (c0023a == null) {
                return c0023a;
            }
            jVar.f1025b.put(Integer.valueOf(i), c0023a);
            return c0023a;
        }

        static /* synthetic */ void e(j jVar, final int i) {
            l.c(jVar.c, new Runnable() { // from class: com.cmcm.orion.picks.impl.player.a.j.2
                @Override // java.lang.Runnable
                public final void run() {
                    j.this.d = i;
                }
            });
        }
    }

    /* compiled from: Mp4Player.java */
    class l {

        /* renamed from: b, reason: collision with root package name */
        private HandlerThread f1038b;
        private Handler c;

        /* synthetic */ l(a aVar, byte b2) {
            this();
        }

        private l() {
            this.f1038b = new HandlerThread("Mp4Thread_" + System.currentTimeMillis());
            this.f1038b.start();
            this.c = new Handler(this.f1038b.getLooper());
        }

        static /* synthetic */ void a(l lVar, Runnable runnable) {
            lVar.c.postDelayed(runnable, 200L);
        }

        static /* synthetic */ void b(l lVar, Runnable runnable) {
            lVar.c.removeCallbacks(runnable);
        }

        static /* synthetic */ void c(l lVar, Runnable runnable) {
            if (lVar.f1038b.getId() == Thread.currentThread().getId()) {
                runnable.run();
            } else {
                lVar.c.post(runnable);
            }
        }
    }

    /* compiled from: Mp4Player.java */
    abstract class i {
        public abstract boolean a();

        public abstract boolean b();

        private i() {
        }

        /* synthetic */ i(a aVar, byte b2) {
            this();
        }

        public final void a(final int i) {
            j.e(a.this.c, i);
            final a aVar = a.this;
            com.cmcm.orion.utils.e.b(new Runnable() { // from class: com.cmcm.orion.picks.impl.player.a.1
                @Override // java.lang.Runnable
                public final void run() {
                    if (a.this.e != null) {
                        a.this.e.a(i);
                    }
                }
            });
            if (i == 3) {
                a.this.c.a(true);
            } else {
                a.this.c.a(false);
            }
            if (i == 8) {
                c();
            }
        }

        public final void b(int i) {
            if (a.this.c != null) {
                j.a(a.this.c, i);
            }
        }

        public final synchronized void c() {
            if (a.this.f1006b != null) {
                a.this.f1006b.reset();
                a.this.f1006b.release();
                a.this.f1006b = null;
                a.this.c.c();
            }
        }
    }

    /* compiled from: Mp4Player.java */
    class b extends i {
        private b() {
            super(a.this, (byte) 0);
        }

        /* synthetic */ b(a aVar, byte b2) {
            this();
        }

        @Override // com.cmcm.orion.picks.impl.player.a.i
        public final boolean a() {
            if (a.this.f1006b == null) {
                a.this.f1006b = new MediaPlayer();
            }
            if (a.this.c.d != 0) {
                a.this.f1006b.reset();
                a(0);
                return true;
            }
            return true;
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        /* JADX WARN: Code restructure failed: missing block: B:3:0x000e, code lost:
        
            return true;
         */
        @Override // com.cmcm.orion.picks.impl.player.a.i
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final boolean b() {
            /*
                r2 = this;
                r1 = 1
                com.cmcm.orion.picks.impl.player.a r0 = com.cmcm.orion.picks.impl.player.a.this
                com.cmcm.orion.picks.impl.player.a$j r0 = com.cmcm.orion.picks.impl.player.a.d(r0)
                int r0 = com.cmcm.orion.picks.impl.player.a.j.a(r0)
                switch(r0) {
                    case 0: goto Le;
                    case 1: goto Lf;
                    case 2: goto Lf;
                    case 3: goto Lf;
                    case 4: goto Lf;
                    case 5: goto Lf;
                    case 6: goto Lf;
                    case 7: goto L13;
                    default: goto Le;
                }
            Le:
                return r1
            Lf:
                r2.b(r1)
                goto Le
            L13:
                r0 = 7
                r2.b(r0)
                goto Le
            */
            throw new UnsupportedOperationException("Method not decompiled: com.cmcm.orion.picks.impl.player.a.b.b():boolean");
        }
    }

    /* compiled from: Mp4Player.java */
    class c extends i {
        private c() {
            super(a.this, (byte) 0);
        }

        /* synthetic */ c(a aVar, byte b2) {
            this();
        }

        @Override // com.cmcm.orion.picks.impl.player.a.i
        @TargetApi(14)
        public final boolean a() {
            Surface a2 = a.this.c.a();
            if (a.this.f1006b == null || a.this.c.d != 0 || a2 == null || !a.AnonymousClass1.a(a.this.d)) {
                return false;
            }
            try {
                if (!a.this.h || (a.this.k <= 0.0f && a.this.l <= 0.0f)) {
                    a.this.f1006b.setVolume(0.0f, 0.0f);
                } else {
                    a.this.f1006b.setAudioStreamType(3);
                    a.this.f1006b.setVolume(a.this.k, a.this.l);
                }
                a.this.f1006b.setLooping(a.this.j);
                a.this.f1006b.setOnErrorListener(new MediaPlayer.OnErrorListener() { // from class: com.cmcm.orion.picks.impl.player.a.c.1
                    @Override // android.media.MediaPlayer.OnErrorListener
                    public final boolean onError(MediaPlayer mp, int what, int extra) {
                        l.c(a.this.c.c, new Runnable() { // from class: com.cmcm.orion.picks.impl.player.a.c.1.1
                            @Override // java.lang.Runnable
                            public final void run() {
                                c.this.a(8);
                            }
                        });
                        try {
                            if (a.this.g != null) {
                                a.this.g.onError(mp, what, extra);
                                return false;
                            }
                            return false;
                        } catch (Throwable th) {
                            new StringBuilder("media player onError: ").append(th.getMessage());
                            return false;
                        }
                    }
                });
                a.this.f1006b.setOnCompletionListener(new MediaPlayer.OnCompletionListener() { // from class: com.cmcm.orion.picks.impl.player.a.c.2
                    @Override // android.media.MediaPlayer.OnCompletionListener
                    public final void onCompletion(MediaPlayer mp) {
                        l.c(a.this.c.c, new Runnable() { // from class: com.cmcm.orion.picks.impl.player.a.c.2.1
                            @Override // java.lang.Runnable
                            public final void run() {
                                c.this.a(5);
                            }
                        });
                        a.a(a.this, a.this.m, a.this.m);
                    }
                });
                a.this.f1006b.setSurface(a2);
                FileInputStream fileInputStream = new FileInputStream(a.this.d);
                a.this.f1006b.setDataSource(fileInputStream.getFD());
                fileInputStream.close();
                a(1);
                return true;
            } catch (Exception e) {
                e.printStackTrace();
                a(8);
                return false;
            }
        }

        @Override // com.cmcm.orion.picks.impl.player.a.i
        public final boolean b() {
            switch (a.this.c.e) {
                case 0:
                    b(0);
                    break;
                case 2:
                case 3:
                case 4:
                case 5:
                case 6:
                    b(2);
                    break;
                case 7:
                    b(7);
                    break;
            }
            return true;
        }
    }

    /* compiled from: Mp4Player.java */
    class f extends i {
        private f() {
            super(a.this, (byte) 0);
        }

        /* synthetic */ f(a aVar, byte b2) {
            this();
        }

        @Override // com.cmcm.orion.picks.impl.player.a.i
        public final boolean a() {
            if (a.this.f1006b == null || !(a.this.c.d == 1 || a.this.c.d == 6)) {
                return false;
            }
            try {
                a.this.f1006b.prepare();
                if (a.this.m <= 0) {
                    a.this.m = a.this.f1006b.getDuration();
                    if (a.this.m >= 86400000) {
                        a.this.m = 0;
                    }
                    new StringBuilder("media player getDuration ").append(a.this.m);
                }
                a(2);
                return true;
            } catch (Exception e) {
                e.printStackTrace();
                a(8);
                return false;
            }
        }

        @Override // com.cmcm.orion.picks.impl.player.a.i
        public final boolean b() {
            switch (a.this.c.e) {
                case 0:
                case 1:
                    b(0);
                    break;
                case 3:
                case 4:
                case 5:
                    b(3);
                    break;
                case 6:
                    b(6);
                    break;
                case 7:
                    b(7);
                    break;
            }
            return true;
        }
    }

    /* compiled from: Mp4Player.java */
    class h extends i {
        private h() {
            super(a.this, (byte) 0);
        }

        /* synthetic */ h(a aVar, byte b2) {
            this();
        }

        @Override // com.cmcm.orion.picks.impl.player.a.i
        public final boolean a() {
            if (a.this.f1006b != null && (a.this.c.d == 2 || a.this.c.d == 4 || a.this.c.d == 5)) {
                a.this.f1006b.start();
                a(3);
                return true;
            }
            if (a.this.c.d == 3) {
                return true;
            }
            a(8);
            return false;
        }

        @Override // com.cmcm.orion.picks.impl.player.a.i
        public final boolean b() {
            switch (a.this.c.e) {
                case 0:
                case 1:
                    b(0);
                    break;
                case 2:
                case 6:
                    b(6);
                    break;
                case 4:
                    b(4);
                    break;
                case 7:
                    b(7);
                    break;
            }
            return true;
        }
    }

    /* compiled from: Mp4Player.java */
    class d extends i {
        private d() {
            super(a.this, (byte) 0);
        }

        /* synthetic */ d(a aVar, byte b2) {
            this();
        }

        @Override // com.cmcm.orion.picks.impl.player.a.i
        public final boolean a() {
            if (a.this.f1006b != null && a.this.c.d == 3) {
                a.this.f1006b.pause();
                a(4);
                return true;
            }
            a(8);
            return false;
        }

        @Override // com.cmcm.orion.picks.impl.player.a.i
        public final boolean b() {
            switch (a.this.c.e) {
                case 0:
                case 1:
                    b(0);
                    break;
                case 2:
                case 6:
                    b(6);
                    break;
                case 3:
                case 5:
                    b(3);
                    break;
                case 7:
                    b(7);
                    break;
            }
            return true;
        }
    }

    /* compiled from: Mp4Player.java */
    class e extends i {
        private e() {
            super(a.this, (byte) 0);
        }

        /* synthetic */ e(a aVar, byte b2) {
            this();
        }

        @Override // com.cmcm.orion.picks.impl.player.a.i
        public final boolean a() {
            if (a.this.f1006b != null && a.this.c.d == 3) {
                a(5);
                return true;
            }
            a(8);
            return false;
        }

        @Override // com.cmcm.orion.picks.impl.player.a.i
        public final boolean b() {
            switch (a.this.c.e) {
                case 0:
                case 1:
                    b(0);
                    break;
                case 2:
                case 6:
                    b(6);
                    break;
                case 3:
                case 4:
                    b(3);
                    break;
                case 7:
                    b(7);
                    break;
            }
            return true;
        }
    }

    /* compiled from: Mp4Player.java */
    class k extends i {
        private k() {
            super(a.this, (byte) 0);
        }

        /* synthetic */ k(a aVar, byte b2) {
            this();
        }

        @Override // com.cmcm.orion.picks.impl.player.a.i
        public final boolean a() {
            if (a.this.f1006b != null && (a.this.c.d == 2 || a.this.c.d == 3 || a.this.c.d == 4 || a.this.c.d == 5)) {
                a.this.f1006b.stop();
                a(6);
                return true;
            }
            a(8);
            return false;
        }

        @Override // com.cmcm.orion.picks.impl.player.a.i
        public final boolean b() {
            switch (a.this.c.e) {
                case 0:
                case 1:
                    b(0);
                    break;
                case 2:
                case 3:
                case 4:
                case 5:
                    b(2);
                    break;
                case 7:
                    b(7);
                    break;
            }
            return true;
        }
    }

    /* compiled from: Mp4Player.java */
    class g extends i {
        private g() {
            super(a.this, (byte) 0);
        }

        /* synthetic */ g(a aVar, byte b2) {
            this();
        }

        @Override // com.cmcm.orion.picks.impl.player.a.i
        public final boolean a() {
            if (a.this.c.d != 7) {
                c();
                a(7);
                return true;
            }
            return true;
        }

        @Override // com.cmcm.orion.picks.impl.player.a.i
        public final boolean b() {
            switch (a.this.c.e) {
                case 0:
                case 1:
                case 2:
                case 3:
                case 4:
                case 5:
                case 6:
                    b(0);
                    break;
            }
            return true;
        }
    }

    /* compiled from: Mp4Player.java */
    /* renamed from: com.cmcm.orion.picks.impl.player.a$a, reason: collision with other inner class name */
    class C0023a extends i {
        private C0023a() {
            super(a.this, (byte) 0);
        }

        /* synthetic */ C0023a(a aVar, byte b2) {
            this();
        }

        @Override // com.cmcm.orion.picks.impl.player.a.i
        public final boolean a() {
            if (a.this.c.d != 8) {
                a(8);
                return true;
            }
            return true;
        }

        @Override // com.cmcm.orion.picks.impl.player.a.i
        public final boolean b() {
            switch (a.this.c.e) {
                case 0:
                case 1:
                case 2:
                case 3:
                case 4:
                case 5:
                case 6:
                case 7:
                    b(0);
                    break;
            }
            return true;
        }
    }

    static /* synthetic */ void a(a aVar, final int i2, final int i3) {
        com.cmcm.orion.utils.e.b(new Runnable() { // from class: com.cmcm.orion.picks.impl.player.a.2
            @Override // java.lang.Runnable
            public final void run() {
                if (a.this.f != null) {
                    a.this.f.a(i2, i3);
                }
            }
        });
    }
}
