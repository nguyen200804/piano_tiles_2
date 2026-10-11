package b.a;

import android.content.Context;
import android.text.TextUtils;
import java.io.File;
import java.io.FileInputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

/* compiled from: IdTracker.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class bm {

    /* renamed from: a, reason: collision with root package name */
    public static bm f98a;
    private File c;
    private long e;
    private a h;

    /* renamed from: b, reason: collision with root package name */
    private final String f99b = "umeng_it.cache";
    private x d = null;
    private Set<b.a.a> g = new HashSet();
    private long f = 86400000;

    bm(Context context) {
        this.h = null;
        this.c = new File(context.getFilesDir(), "umeng_it.cache");
        this.h = new a(context);
        this.h.b();
    }

    public static synchronized bm a(Context context) {
        bm bmVar;
        synchronized (bm.class) {
            if (f98a == null) {
                f98a = new bm(context);
                f98a.a(new cg(context));
                f98a.a(new ci(context));
                f98a.a(new y(context));
                f98a.a(new cl(context));
                f98a.a(new ck(context));
                f98a.a(new cj());
                f98a.d();
            }
            bmVar = f98a;
        }
        return bmVar;
    }

    public boolean a(b.a.a aVar) {
        if (this.h.a(aVar.b())) {
            return this.g.add(aVar);
        }
        return false;
    }

    public void a() {
        long currentTimeMillis = System.currentTimeMillis();
        if (currentTimeMillis - this.e >= this.f) {
            boolean z = false;
            for (b.a.a aVar : this.g) {
                if (aVar.c()) {
                    if (aVar.a()) {
                        z = true;
                        if (!aVar.c()) {
                            this.h.b(aVar.b());
                        }
                    }
                    z = z;
                }
            }
            if (z) {
                f();
                this.h.a();
                e();
            }
            this.e = currentTimeMillis;
        }
    }

    public x b() {
        return this.d;
    }

    private void f() {
        x xVar = new x();
        HashMap hashMap = new HashMap();
        ArrayList arrayList = new ArrayList();
        for (b.a.a aVar : this.g) {
            if (aVar.c()) {
                if (aVar.d() != null) {
                    hashMap.put(aVar.b(), aVar.d());
                }
                if (aVar.e() != null && !aVar.e().isEmpty()) {
                    arrayList.addAll(aVar.e());
                }
            }
        }
        xVar.a(arrayList);
        xVar.a(hashMap);
        synchronized (this) {
            this.d = xVar;
        }
    }

    public void c() {
        boolean z = false;
        for (b.a.a aVar : this.g) {
            if (aVar.c()) {
                if (aVar.e() != null && !aVar.e().isEmpty()) {
                    aVar.a((List<v>) null);
                    z = true;
                }
                z = z;
            }
        }
        if (z) {
            this.d.b(false);
            e();
        }
    }

    public void d() {
        x g = g();
        if (g != null) {
            ArrayList arrayList = new ArrayList(this.g.size());
            synchronized (this) {
                this.d = g;
                for (b.a.a aVar : this.g) {
                    aVar.a(this.d);
                    if (!aVar.c()) {
                        arrayList.add(aVar);
                    }
                }
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    this.g.remove((b.a.a) it.next());
                }
            }
            f();
        }
    }

    public void e() {
        if (this.d != null) {
            a(this.d);
        }
    }

    private x g() {
        FileInputStream fileInputStream;
        Throwable th;
        if (!this.c.exists()) {
            return null;
        }
        try {
            fileInputStream = new FileInputStream(this.c);
            try {
                try {
                    byte[] b2 = av.b(fileInputStream);
                    x xVar = new x();
                    new ba().a(xVar, b2);
                    av.c(fileInputStream);
                    return xVar;
                } catch (Exception e) {
                    e = e;
                    e.printStackTrace();
                    av.c(fileInputStream);
                    return null;
                }
            } catch (Throwable th2) {
                th = th2;
                av.c(fileInputStream);
                throw th;
            }
        } catch (Exception e2) {
            e = e2;
            fileInputStream = null;
        } catch (Throwable th3) {
            fileInputStream = null;
            th = th3;
            av.c(fileInputStream);
            throw th;
        }
    }

    private void a(x xVar) {
        byte[] a2;
        if (xVar != null) {
            try {
                synchronized (this) {
                    a2 = new bd().a(xVar);
                }
                if (a2 != null) {
                    av.a(this.c, a2);
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* compiled from: IdTracker.java */
    public static class a {

        /* renamed from: a, reason: collision with root package name */
        private Context f100a;

        /* renamed from: b, reason: collision with root package name */
        private Set<String> f101b = new HashSet();

        public a(Context context) {
            this.f100a = context;
        }

        public boolean a(String str) {
            return !this.f101b.contains(str);
        }

        public void b(String str) {
            this.f101b.add(str);
        }

        public void a() {
            if (!this.f101b.isEmpty()) {
                StringBuilder sb = new StringBuilder();
                Iterator<String> it = this.f101b.iterator();
                while (it.hasNext()) {
                    sb.append(it.next());
                    sb.append(',');
                }
                sb.deleteCharAt(sb.length() - 1);
                cz.a(this.f100a).edit().putString("invld_id", sb.toString()).commit();
            }
        }

        public void b() {
            String[] split;
            String string = cz.a(this.f100a).getString("invld_id", null);
            if (!TextUtils.isEmpty(string) && (split = string.split(",")) != null) {
                for (String str : split) {
                    if (!TextUtils.isEmpty(str)) {
                        this.f101b.add(str);
                    }
                }
            }
        }
    }
}
