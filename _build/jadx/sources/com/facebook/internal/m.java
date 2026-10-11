package com.facebook.internal;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import com.facebook.internal.ad;
import com.facebook.internal.n;
import java.io.Closeable;
import java.io.InputStream;
import java.util.HashMap;
import java.util.Map;

/* compiled from: ImageDownloader.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class m {

    /* renamed from: a, reason: collision with root package name */
    private static Handler f3224a;

    /* renamed from: b, reason: collision with root package name */
    private static ad f3225b = new ad(8);
    private static ad c = new ad(2);
    private static final Map<d, c> d = new HashMap();

    public static void a(n nVar) {
        if (nVar != null) {
            d dVar = new d(nVar.b(), nVar.e());
            synchronized (d) {
                c cVar = d.get(dVar);
                if (cVar != null) {
                    cVar.f3233b = nVar;
                    cVar.c = false;
                    cVar.f3232a.b();
                } else {
                    a(nVar, dVar, nVar.d());
                }
            }
        }
    }

    public static boolean b(n nVar) {
        boolean z;
        d dVar = new d(nVar.b(), nVar.e());
        synchronized (d) {
            c cVar = d.get(dVar);
            if (cVar == null) {
                z = false;
            } else if (cVar.f3232a.a()) {
                d.remove(dVar);
                z = true;
            } else {
                cVar.c = true;
                z = true;
            }
        }
        return z;
    }

    private static void a(n nVar, d dVar, boolean z) {
        a(nVar, dVar, c, new a(nVar.a(), dVar, z));
    }

    private static void a(n nVar, d dVar) {
        a(nVar, dVar, f3225b, new b(nVar.a(), dVar));
    }

    private static void a(n nVar, d dVar, ad adVar, Runnable runnable) {
        synchronized (d) {
            c cVar = new c();
            cVar.f3233b = nVar;
            d.put(dVar, cVar);
            cVar.f3232a = adVar.a(runnable);
        }
    }

    private static void a(d dVar, final Exception exc, final Bitmap bitmap, final boolean z) {
        final n nVar;
        final n.b c2;
        c a2 = a(dVar);
        if (a2 != null && !a2.c && (c2 = (nVar = a2.f3233b).c()) != null) {
            a().post(new Runnable() { // from class: com.facebook.internal.m.1
                @Override // java.lang.Runnable
                public void run() {
                    c2.a(new o(n.this, exc, z, bitmap));
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(d dVar, Context context, boolean z) {
        boolean z2;
        InputStream inputStream;
        Uri a2;
        if (!z || (a2 = z.a(dVar.f3234a)) == null) {
            z2 = false;
            inputStream = null;
        } else {
            InputStream a3 = p.a(a2, context);
            inputStream = a3;
            z2 = a3 != null;
        }
        if (!z2) {
            inputStream = p.a(dVar.f3234a, context);
        }
        if (inputStream != null) {
            Bitmap decodeStream = BitmapFactory.decodeStream(inputStream);
            aa.a((Closeable) inputStream);
            a(dVar, (Exception) null, decodeStream, z2);
        } else {
            c a4 = a(dVar);
            if (a4 != null && !a4.c) {
                a(a4.f3233b, dVar);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Failed to find 'out' block for switch in B:8:0x001c. Please report as an issue. */
    /* JADX WARN: Not initialized variable reg: 5, insn: 0x00a1: MOVE (r3 I:??[OBJECT, ARRAY]) = (r5 I:??[OBJECT, ARRAY]), block:B:45:0x00a1 */
    /* JADX WARN: Removed duplicated region for block: B:21:0x004d  */
    /* JADX WARN: Removed duplicated region for block: B:24:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void b(com.facebook.internal.m.d r11, android.content.Context r12) {
        /*
            Method dump skipped, instructions count: 226
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.internal.m.b(com.facebook.internal.m$d, android.content.Context):void");
    }

    private static synchronized Handler a() {
        Handler handler;
        synchronized (m.class) {
            if (f3224a == null) {
                f3224a = new Handler(Looper.getMainLooper());
            }
            handler = f3224a;
        }
        return handler;
    }

    private static c a(d dVar) {
        c remove;
        synchronized (d) {
            remove = d.remove(dVar);
        }
        return remove;
    }

    /* compiled from: ImageDownloader.java */
    private static class d {

        /* renamed from: a, reason: collision with root package name */
        Uri f3234a;

        /* renamed from: b, reason: collision with root package name */
        Object f3235b;

        d(Uri uri, Object obj) {
            this.f3234a = uri;
            this.f3235b = obj;
        }

        public int hashCode() {
            return ((this.f3234a.hashCode() + 1073) * 37) + this.f3235b.hashCode();
        }

        public boolean equals(Object o) {
            if (o == null || !(o instanceof d)) {
                return false;
            }
            d dVar = (d) o;
            return dVar.f3234a == this.f3234a && dVar.f3235b == this.f3235b;
        }
    }

    /* compiled from: ImageDownloader.java */
    private static class c {

        /* renamed from: a, reason: collision with root package name */
        ad.a f3232a;

        /* renamed from: b, reason: collision with root package name */
        n f3233b;
        boolean c;

        private c() {
        }
    }

    /* compiled from: ImageDownloader.java */
    private static class a implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        private Context f3228a;

        /* renamed from: b, reason: collision with root package name */
        private d f3229b;
        private boolean c;

        a(Context context, d dVar, boolean z) {
            this.f3228a = context;
            this.f3229b = dVar;
            this.c = z;
        }

        @Override // java.lang.Runnable
        public void run() {
            m.b(this.f3229b, this.f3228a, this.c);
        }
    }

    /* compiled from: ImageDownloader.java */
    private static class b implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        private Context f3230a;

        /* renamed from: b, reason: collision with root package name */
        private d f3231b;

        b(Context context, d dVar) {
            this.f3230a = context;
            this.f3231b = dVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            m.b(this.f3231b, this.f3230a);
        }
    }
}
