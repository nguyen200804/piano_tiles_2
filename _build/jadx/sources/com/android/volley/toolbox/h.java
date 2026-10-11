package com.android.volley.toolbox;

import android.graphics.Bitmap;
import android.os.Handler;
import android.os.Looper;
import android.widget.ImageView;
import com.android.volley.l;
import com.android.volley.m;
import com.android.volley.n;
import com.android.volley.s;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;

/* compiled from: ImageLoader.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class h {

    /* renamed from: a, reason: collision with root package name */
    private final m f281a;
    private final b c;
    private Runnable g;

    /* renamed from: b, reason: collision with root package name */
    private int f282b = 100;
    private final HashMap<String, a> d = new HashMap<>();
    private final HashMap<String, a> e = new HashMap<>();
    private final Handler f = new Handler(Looper.getMainLooper());

    /* compiled from: ImageLoader.java */
    public interface b {
        Bitmap a(String str);

        void a(String str, Bitmap bitmap);
    }

    /* compiled from: ImageLoader.java */
    public interface d extends n.a {
        void a(c cVar, boolean z);
    }

    public h(m mVar, b bVar) {
        this.f281a = mVar;
        this.c = bVar;
    }

    public c a(String str, d dVar) {
        return a(str, dVar, 0, 0);
    }

    public c a(String str, d dVar, int i, int i2) {
        return a(str, dVar, i, i2, ImageView.ScaleType.CENTER_INSIDE);
    }

    public c a(String str, d dVar, int i, int i2, ImageView.ScaleType scaleType) {
        a();
        String a2 = a(str, i, i2, scaleType);
        Bitmap a3 = this.c.a(a2);
        if (a3 != null) {
            c cVar = new c(a3, str, null, null);
            dVar.a(cVar, true);
            return cVar;
        }
        c cVar2 = new c(null, str, a2, dVar);
        dVar.a(cVar2, true);
        a aVar = this.d.get(a2);
        if (aVar != null) {
            aVar.a(cVar2);
            return cVar2;
        }
        l<Bitmap> a4 = a(str, i, i2, scaleType, a2);
        this.f281a.a(a4);
        this.d.put(a2, new a(a4, cVar2));
        return cVar2;
    }

    protected l<Bitmap> a(String str, int i, int i2, ImageView.ScaleType scaleType, final String str2) {
        return new e(str, new n.b<Bitmap>() { // from class: com.android.volley.toolbox.h.1
            @Override // com.android.volley.n.b
            public void a(Bitmap bitmap) {
                h.this.a(str2, bitmap);
            }
        }, i, i2, scaleType, Bitmap.Config.RGB_565, new n.a() { // from class: com.android.volley.toolbox.h.2
            @Override // com.android.volley.n.a
            public void a(s sVar) {
                h.this.a(str2, sVar);
            }
        });
    }

    /* compiled from: ImageLoader.java */
    private static class e extends i {
        public e(String str, n.b<Bitmap> bVar, int i, int i2, ImageView.ScaleType scaleType, Bitmap.Config config, n.a aVar) {
            super(str, bVar, i, i2, scaleType, config, aVar);
        }

        @Override // com.android.volley.toolbox.i, com.android.volley.l
        protected n<Bitmap> a(com.android.volley.i iVar) {
            n<Bitmap> a2 = super.a(iVar);
            if (a2 != null && a2.f254b != null) {
                a2.f254b.f = Long.MAX_VALUE;
                a2.f254b.e = Long.MAX_VALUE;
            }
            return a2;
        }
    }

    protected void a(String str, Bitmap bitmap) {
        this.c.a(str, bitmap);
        a remove = this.d.remove(str);
        if (remove == null) {
            return;
        }
        remove.c = bitmap;
        a(str, remove);
    }

    protected void a(String str, s sVar) {
        a remove = this.d.remove(str);
        if (remove != null) {
            remove.a(sVar);
            a(str, remove);
        }
    }

    /* compiled from: ImageLoader.java */
    public class c {

        /* renamed from: b, reason: collision with root package name */
        private Bitmap f291b;
        private final d c;
        private final String d;
        private final String e;

        public c(Bitmap bitmap, String str, String str2, d dVar) {
            this.f291b = bitmap;
            this.e = str;
            this.d = str2;
            this.c = dVar;
        }

        public void a() {
            if (this.c != null) {
                a aVar = (a) h.this.d.get(this.d);
                if (aVar == null) {
                    a aVar2 = (a) h.this.e.get(this.d);
                    if (aVar2 != null) {
                        aVar2.b(this);
                        if (aVar2.e.size() == 0) {
                            h.this.e.remove(this.d);
                            return;
                        }
                        return;
                    }
                    return;
                }
                if (aVar.b(this)) {
                    h.this.d.remove(this.d);
                }
            }
        }

        public Bitmap b() {
            return this.f291b;
        }

        public String c() {
            return this.e;
        }
    }

    /* compiled from: ImageLoader.java */
    private class a {

        /* renamed from: b, reason: collision with root package name */
        private final l<?> f289b;
        private Bitmap c;
        private s d;
        private final LinkedList<c> e = new LinkedList<>();

        public a(l<?> lVar, c cVar) {
            this.f289b = lVar;
            this.e.add(cVar);
        }

        public void a(s sVar) {
            this.d = sVar;
        }

        public s a() {
            return this.d;
        }

        public void a(c cVar) {
            this.e.add(cVar);
        }

        public boolean b(c cVar) {
            this.e.remove(cVar);
            if (this.e.size() != 0) {
                return false;
            }
            this.f289b.f();
            return true;
        }
    }

    private void a(String str, a aVar) {
        this.e.put(str, aVar);
        if (this.g == null) {
            this.g = new Runnable() { // from class: com.android.volley.toolbox.h.3
                @Override // java.lang.Runnable
                public void run() {
                    for (a aVar2 : h.this.e.values()) {
                        Iterator it = aVar2.e.iterator();
                        while (it.hasNext()) {
                            c cVar = (c) it.next();
                            if (cVar.c != null) {
                                if (aVar2.a() == null) {
                                    cVar.f291b = aVar2.c;
                                    cVar.c.a(cVar, false);
                                } else {
                                    cVar.c.a(aVar2.a());
                                }
                            }
                        }
                    }
                    h.this.e.clear();
                    h.this.g = null;
                }
            };
            this.f.postDelayed(this.g, this.f282b);
        }
    }

    private void a() {
        if (Looper.myLooper() != Looper.getMainLooper()) {
            throw new IllegalStateException("ImageLoader must be invoked from the main thread.");
        }
    }

    private static String a(String str, int i, int i2, ImageView.ScaleType scaleType) {
        return new StringBuilder(str.length() + 12).append("#W").append(i).append("#H").append(i2).append("#S").append(scaleType.ordinal()).append(str).toString();
    }
}
