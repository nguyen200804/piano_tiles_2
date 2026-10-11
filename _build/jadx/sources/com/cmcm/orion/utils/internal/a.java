package com.cmcm.orion.utils.internal;

import android.content.ContentResolver;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.database.ContentObserver;
import android.database.Cursor;
import android.net.Uri;
import android.support.v7.widget.helper.ItemTouchHelper;
import android.text.TextUtils;
import android.util.Base64;
import com.cmcm.orion.picks.a.a.f;
import com.cmcm.orion.picks.a.a.h;
import com.cmcm.orion.picks.a.a.i;
import com.cmcm.orion.picks.a.a.m;
import com.cmcm.orion.picks.impl.a;
import com.cmcm.orion.utils.b;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.Serializable;
import java.net.URI;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.Set;

/* compiled from: AppInstallationTracker.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class a {

    /* renamed from: a, reason: collision with root package name */
    private static a f1078a;

    /* renamed from: b, reason: collision with root package name */
    private List<String> f1079b = new ArrayList();
    private HashMap<String, String> c = new HashMap<>();
    private ArrayList<String> d;

    /* compiled from: AppInstallationTracker.java */
    /* renamed from: com.cmcm.orion.utils.internal.a$a, reason: collision with other inner class name */
    interface InterfaceC0026a {
        void a(com.cmcm.orion.picks.a.a.a aVar);
    }

    /* compiled from: AppInstallationTracker.java */
    static class d implements Serializable {

        /* renamed from: a, reason: collision with root package name */
        public String f1115a;

        /* renamed from: b, reason: collision with root package name */
        public long f1116b;
        public boolean c;
    }

    private a() {
    }

    public static a a() {
        if (f1078a == null) {
            synchronized (a.class) {
                if (f1078a == null) {
                    f1078a = new a();
                }
            }
        }
        return f1078a;
    }

    public final void b() {
        com.cmcm.orion.utils.a.a(new Runnable() { // from class: com.cmcm.orion.utils.internal.a.1
            @Override // java.lang.Runnable
            public final void run() {
                a.a(a.this);
                ArrayList c2 = a.c();
                a.this.d = a.b(a.this, c2);
                a.b(a.this);
            }
        });
    }

    public final void a(final List<com.cmcm.orion.picks.a.a.a> list) {
        if (!list.isEmpty()) {
            com.cmcm.orion.utils.a.a(new Runnable() { // from class: com.cmcm.orion.utils.internal.a.10
                @Override // java.lang.Runnable
                public final void run() {
                    for (com.cmcm.orion.picks.a.a.a aVar : list) {
                        if (aVar != null) {
                            a.a(a.this, aVar);
                        }
                    }
                }
            });
        }
    }

    public final void a(final com.cmcm.orion.picks.a.a.a aVar, final int i, final boolean z) {
        if (aVar != null && aVar.l() != null) {
            new StringBuilder("onAdClicked: ad.getPkg() = ").append(aVar.l());
            com.cmcm.orion.utils.a.a(new Runnable() { // from class: com.cmcm.orion.utils.internal.a.11
                @Override // java.lang.Runnable
                public final void run() {
                    a.b(a.this, aVar);
                    a.a(a.this, aVar, i, z);
                }
            });
        }
    }

    public final void a(final String str) {
        if (!TextUtils.isEmpty(str) && com.cmcm.orion.utils.c.c(com.cmcm.orion.adsdk.e.a())) {
            com.cmcm.orion.utils.a.a(new Runnable() { // from class: com.cmcm.orion.utils.internal.a.12
                @Override // java.lang.Runnable
                public final void run() {
                    boolean z = false;
                    if (a.this.d != null && a.this.d.contains(str)) {
                        a.this.d.clear();
                        return;
                    }
                    ArrayList arrayList = new ArrayList();
                    arrayList.add(new c(null, str, System.currentTimeMillis()));
                    ArrayList b2 = a.b(a.this, arrayList);
                    if (b2 != null && !b2.isEmpty()) {
                        z = true;
                    }
                    Set keySet = a.this.c.keySet();
                    if (keySet != null && keySet.contains(str)) {
                        a.this.f1079b.remove((String) a.this.c.get(str));
                        a.this.c.remove(str);
                    } else {
                        if (!h.n()) {
                            new StringBuilder("onAppInstalled: isReportInstalled = ").append(h.n()).append(" canReportByPriority:").append(h.l());
                            return;
                        }
                        h.l();
                        if (!z) {
                            a.a(a.this, str, (String) null, 2);
                        }
                    }
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean b(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        ArrayList<c> d2 = d();
        if (d2 != null && d2.size() > 0) {
            Iterator<c> it = d2.iterator();
            while (it.hasNext()) {
                c next = it.next();
                if (next != null && !next.d && next.f1113a != null && next.f1113a.equals(str)) {
                    return true;
                }
            }
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:6:0x0052  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x005a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.net.URI a(java.lang.String r5, int r6, java.lang.String r7) {
        /*
            r3 = 0
            com.cmcm.orion.picks.a.a.g$b r2 = new com.cmcm.orion.picks.a.a.g$b
            r2.<init>()
            java.lang.String r0 = ""
            com.cmcm.orion.picks.a.a.g$b r0 = r2.a(r0)
            com.cmcm.orion.picks.a.a.g$b r0 = r0.b(r3)
            r1 = 1
            r0.a(r1)
            r2.d(r3)
            java.lang.String r0 = "0"
            r2.b(r0)
            r0 = 100
            r2.e(r0)
            r2.a(r5, r7)
            java.lang.String r0 = "1"
            r2.c(r0)
            r2.g(r6)
            r1 = 0
            java.lang.String r0 = com.cmcm.orion.picks.a.a.h.p()
            boolean r3 = android.text.TextUtils.isEmpty(r0)
            if (r3 != 0) goto L60
            java.lang.String r3 = "7069636b733230313531313034"
            byte[] r3 = r3.getBytes()     // Catch: java.lang.Exception -> L5f
            byte[] r0 = com.cmcm.orion.utils.b.b(r0)     // Catch: java.lang.Exception -> L5f
            byte[] r3 = com.cmcm.orion.utils.b.b(r3, r0)     // Catch: java.lang.Exception -> L5f
            java.lang.String r0 = new java.lang.String     // Catch: java.lang.Exception -> L5f
            java.lang.String r4 = "UTF-8"
            r0.<init>(r3, r4)     // Catch: java.lang.Exception -> L5f
        L4c:
            boolean r1 = android.text.TextUtils.isEmpty(r0)
            if (r1 == 0) goto L54
            java.lang.String r0 = "https://xsdk.adkmob.com/b/?"
        L54:
            java.net.URI r0 = r2.d(r0)
            if (r0 != 0) goto L5e
            java.net.URI r0 = r2.a()
        L5e:
            return r0
        L5f:
            r0 = move-exception
        L60:
            r0 = r1
            goto L4c
        */
        throw new UnsupportedOperationException("Method not decompiled: com.cmcm.orion.utils.internal.a.a(java.lang.String, int, java.lang.String):java.net.URI");
    }

    private synchronized ArrayList<c> d() {
        ArrayList<c> arrayList;
        Object a2;
        File f = f();
        if (f != null) {
            try {
                a2 = a.AnonymousClass1.a((InputStream) new FileInputStream(f.getAbsolutePath() + File.separator + "pkg_clicked_in_ad"));
            } catch (Exception e) {
                new StringBuilder("init: Exception: ").append(e.getMessage());
            }
            if (a2 != null && (a2 instanceof List)) {
                arrayList = (ArrayList) a2;
            }
        }
        arrayList = null;
        return arrayList;
    }

    private synchronized void a(ArrayList<c> arrayList) {
        if (arrayList != null) {
            if (arrayList.size() > 0) {
                for (int size = arrayList.size() - 1; size >= 0; size--) {
                    c cVar = arrayList.get(size);
                    if (cVar == null || cVar.d) {
                        arrayList.remove(size);
                    }
                }
                File f = f();
                if (f != null) {
                    try {
                        a.AnonymousClass1.a(arrayList, new FileOutputStream(f.getAbsolutePath() + File.separator + "pkg_clicked_in_ad"));
                    } catch (Exception e) {
                        new StringBuilder("saveDataToCache: Exception: ").append(e.getMessage());
                    }
                }
            }
        }
    }

    private synchronized ArrayList<d> e() {
        ArrayList<d> arrayList;
        Object a2;
        File f = f();
        if (f != null) {
            try {
                a2 = a.AnonymousClass1.a((InputStream) new FileInputStream(f.getAbsolutePath() + File.separator + "pkg_shown_in_ad"));
            } catch (Exception e) {
                new StringBuilder("init: Exception: ").append(e.getMessage());
            }
            if (a2 != null && (a2 instanceof List)) {
                arrayList = (ArrayList) a2;
            }
        }
        arrayList = null;
        return arrayList;
    }

    private synchronized void b(ArrayList<d> arrayList) {
        if (arrayList != null) {
            if (arrayList.size() > 0) {
                for (int size = arrayList.size() - 1; size >= 0; size--) {
                    d dVar = arrayList.get(size);
                    if (dVar == null || dVar.c) {
                        arrayList.remove(size);
                    }
                }
                File f = f();
                if (f != null) {
                    try {
                        a.AnonymousClass1.a(arrayList, new FileOutputStream(f.getAbsolutePath() + File.separator + "pkg_shown_in_ad"));
                    } catch (Exception e) {
                        new StringBuilder("saveDataToCache: Exception: ").append(e.getMessage());
                    }
                }
            }
        }
    }

    private static File f() {
        File filesDir;
        Context a2 = com.cmcm.orion.adsdk.e.a();
        if (a2 != null && (filesDir = a2.getFilesDir()) != null) {
            String absolutePath = filesDir.getAbsolutePath();
            if (!TextUtils.isEmpty(absolutePath)) {
                File file = new File(absolutePath + File.separator + "orion_ad");
                if (!file.exists()) {
                    file.mkdirs();
                    return file;
                }
                if (file.isFile()) {
                    if (file.delete()) {
                        file.mkdirs();
                        return file;
                    }
                    new StringBuilder("Already exist file with name = ").append(file.getAbsolutePath()).append("; And it can not be deleted!");
                    return file;
                }
                return file;
            }
        }
        return null;
    }

    private static void a(String str, com.cmcm.orion.picks.a.a.a aVar, boolean z, Map<String, String> map, final a.InterfaceC0019a interfaceC0019a) {
        if (aVar != null && !TextUtils.isEmpty(str)) {
            if (!z) {
                f a2 = com.cmcm.orion.picks.a.b.a(str, "", aVar.d(), 0, aVar.H());
                if (a2 != null) {
                    if ("view".equals(str) || "click".equals(str)) {
                        a2.a("click".equals(str) ? com.cmcm.orion.picks.a.b.b(aVar) : 0);
                    }
                    a2.a(map);
                    com.cmcm.orion.picks.a.a.e a3 = com.cmcm.orion.picks.a.b.a(aVar);
                    a3.a(null, null);
                    try {
                        com.cmcm.orion.utils.internal.b bVar = new com.cmcm.orion.utils.internal.b();
                        bVar.a(a3, a2);
                        bVar.a(interfaceC0019a);
                        com.cmcm.orion.utils.a.a(bVar, new Void[0]);
                    } catch (Throwable th) {
                    }
                } else {
                    return;
                }
            } else {
                com.cmcm.orion.utils.a.a(new Runnable() { // from class: com.cmcm.orion.utils.internal.a.8
                    @Override // java.lang.Runnable
                    public final void run() {
                        if (a.InterfaceC0019a.this != null) {
                            a.InterfaceC0019a.this.a(ItemTouchHelper.Callback.DEFAULT_DRAG_ANIMATION_DURATION, null, null, 0);
                        }
                    }
                }, 1000L);
            }
            if ("view".equals(str)) {
                com.cmcm.orion.picks.a.b.a(aVar.c());
            } else if ("click".equals(str)) {
                com.cmcm.orion.picks.a.b.a(aVar.b());
            } else if ("world_install".equals(str)) {
                com.cmcm.orion.picks.a.b.a(aVar.K());
            }
        }
    }

    /* compiled from: AppInstallationTracker.java */
    static class c implements Serializable {

        /* renamed from: a, reason: collision with root package name */
        public String f1113a;

        /* renamed from: b, reason: collision with root package name */
        public long f1114b;
        public b c;
        public boolean d = false;
        public String e = null;

        public c(b bVar, String str, long j) {
            this.c = bVar;
            this.f1113a = str;
            this.f1114b = j;
        }
    }

    /* compiled from: AppInstallationTracker.java */
    static class b implements Serializable {

        /* renamed from: a, reason: collision with root package name */
        private com.cmcm.orion.picks.a.a.a f1109a;

        /* renamed from: b, reason: collision with root package name */
        private int f1110b;
        private boolean c;

        /* synthetic */ b(com.cmcm.orion.picks.a.a.a aVar, int i, boolean z, byte b2) {
            this(aVar, i, z);
        }

        private b(com.cmcm.orion.picks.a.a.a aVar, int i, boolean z) {
            this.f1109a = aVar;
            this.f1110b = i;
            this.c = z;
        }
    }

    static /* synthetic */ void a(a aVar) {
        ArrayList<d> e = aVar.e();
        if (e != null && !e.isEmpty()) {
            Iterator<d> it = e.iterator();
            while (it.hasNext()) {
                d next = it.next();
                if (next != null && System.currentTimeMillis() - next.f1116b > h.k()) {
                    next.c = true;
                }
            }
        }
        aVar.b(e);
        ArrayList<c> d2 = aVar.d();
        if (d2 != null && !d2.isEmpty()) {
            Iterator<c> it2 = d2.iterator();
            while (it2.hasNext()) {
                c next2 = it2.next();
                if (next2 != null && System.currentTimeMillis() - next2.f1114b > h.k()) {
                    next2.d = true;
                }
            }
        }
        aVar.a(d2);
    }

    static /* synthetic */ ArrayList c() {
        List<PackageInfo> c2 = com.cmcm.orion.utils.internal.c.a().c();
        ArrayList<PackageInfo> arrayList = new ArrayList();
        if (c2 != null) {
            arrayList.addAll(c2);
        }
        ArrayList arrayList2 = new ArrayList();
        if (arrayList.size() > 0) {
            for (PackageInfo packageInfo : arrayList) {
                if (packageInfo != null) {
                    arrayList2.add(new c(null, packageInfo.packageName, packageInfo.lastUpdateTime));
                }
            }
        }
        return arrayList2;
    }

    static /* synthetic */ ArrayList b(a aVar, ArrayList arrayList) {
        ArrayList<c> d2;
        if (arrayList == null || arrayList.size() <= 0 || (d2 = aVar.d()) == null || d2.size() <= 0) {
            return null;
        }
        ArrayList arrayList2 = new ArrayList();
        Iterator<c> it = d2.iterator();
        while (it.hasNext()) {
            c next = it.next();
            Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                c cVar = (c) it2.next();
                if (cVar != null && next != null && cVar.f1113a != null && cVar.f1113a.equals(next.f1113a) && !next.d) {
                    if (next.f1114b < cVar.f1114b && System.currentTimeMillis() - next.f1114b < h.k() && next.c != null) {
                        final b bVar = next.c;
                        if (bVar != null) {
                            HashMap hashMap = new HashMap();
                            hashMap.put("itime", String.valueOf(System.currentTimeMillis()));
                            hashMap.put("vext", String.valueOf(bVar.f1110b));
                            a("world_install", bVar.f1109a, bVar.c, hashMap, new a.InterfaceC0019a() { // from class: com.cmcm.orion.utils.internal.a.7
                                @Override // com.cmcm.orion.picks.impl.a.InterfaceC0019a
                                public final void a(int i, InputStream inputStream, String str, int i2) {
                                    a.b(a.this, bVar.f1109a);
                                    a.e(a.this, bVar.f1109a);
                                }

                                @Override // com.cmcm.orion.picks.impl.a.InterfaceC0019a
                                public final void a(int i, com.cmcm.orion.adsdk.d dVar) {
                                }
                            });
                        }
                        arrayList2.add(next.f1113a);
                    }
                    next.d = true;
                }
            }
        }
        aVar.a(d2);
        return arrayList2;
    }

    static /* synthetic */ void b(a aVar) {
        ContentResolver contentResolver;
        Context a2 = com.cmcm.orion.adsdk.e.a();
        if (a2 == null || (contentResolver = a2.getContentResolver()) == null) {
            return;
        }
        contentResolver.registerContentObserver(Uri.parse("content://downloads"), true, new ContentObserver() { // from class: com.cmcm.orion.utils.internal.a.9
            @Override // android.database.ContentObserver
            public final void onChange(boolean selfChange, final Uri uri) {
                super.onChange(selfChange);
                com.cmcm.orion.utils.a.a(new Runnable() { // from class: com.cmcm.orion.utils.internal.a.9.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        a.a(a.this, uri);
                    }
                });
            }
        });
    }

    static /* synthetic */ void a(a aVar, final com.cmcm.orion.picks.a.a.a aVar2) {
        HashMap hashMap = new HashMap();
        hashMap.put("vext", "100");
        final long L = aVar2.L();
        a("view", aVar2, true, hashMap, new a.InterfaceC0019a() { // from class: com.cmcm.orion.utils.internal.a.3
            @Override // com.cmcm.orion.picks.impl.a.InterfaceC0019a
            public final void a(int i, InputStream inputStream, String str, int i2) {
                if (a.a(aVar2)) {
                    com.cmcm.orion.utils.a.a(new Runnable() { // from class: com.cmcm.orion.utils.internal.a.3.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            a.c(a.this, aVar2);
                        }
                    }, L > 0 ? L : 0L);
                }
            }

            @Override // com.cmcm.orion.picks.impl.a.InterfaceC0019a
            public final void a(int i, com.cmcm.orion.adsdk.d dVar) {
            }
        });
    }

    static /* synthetic */ void b(a aVar, com.cmcm.orion.picks.a.a.a aVar2) {
        ArrayList<d> e;
        if (aVar2 == null || (e = aVar.e()) == null || e.isEmpty()) {
            return;
        }
        Iterator<d> it = e.iterator();
        while (it.hasNext()) {
            d next = it.next();
            if (next != null && aVar2.l() != null && aVar2.l().equals(next.f1115a)) {
                next.c = true;
            }
        }
        aVar.b(e);
    }

    static /* synthetic */ void a(a aVar, com.cmcm.orion.picks.a.a.a aVar2, int i, boolean z) {
        if (aVar2 == null) {
            return;
        }
        ArrayList<c> d2 = aVar.d();
        ArrayList<c> arrayList = d2 == null ? new ArrayList<>() : d2;
        Iterator<c> it = arrayList.iterator();
        while (it.hasNext()) {
            c next = it.next();
            if (next != null && next.f1113a != null && next.f1113a.equals(aVar2.l())) {
                next.d = true;
            }
        }
        arrayList.add(new c(new b(aVar2, i, z, (byte) 0), aVar2.l(), System.currentTimeMillis()));
        aVar.a(arrayList);
    }

    static /* synthetic */ void a(a aVar, String str, String str2, int i) {
        i a2;
        if (h.m()) {
            InterfaceC0026a interfaceC0026a = new InterfaceC0026a() { // from class: com.cmcm.orion.utils.internal.a.2
                @Override // com.cmcm.orion.utils.internal.a.InterfaceC0026a
                public final void a(com.cmcm.orion.picks.a.a.a aVar2) {
                    if (aVar2 != null) {
                        a.a(a.this, aVar2);
                    }
                }
            };
            try {
                URI a3 = a(str, i, str2);
                if (a3 != null) {
                    b.AnonymousClass1 b2 = com.cmcm.orion.utils.d.b(a3.toString());
                    if (b2.f1064b == 200) {
                        String str3 = b2.f1063a;
                        if (!TextUtils.isEmpty(str3) && (a2 = i.a("", "0", str3, new m())) != null) {
                            List<com.cmcm.orion.picks.a.a.a> b3 = a2.b();
                            ArrayList arrayList = new ArrayList();
                            if (b3 != null && !b3.isEmpty()) {
                                for (com.cmcm.orion.picks.a.a.a aVar2 : b3) {
                                    if (aVar2 != null && (aVar2.s() == 8 || aVar2.s() == 512)) {
                                        if (TextUtils.isEmpty(aVar2.E()) && aVar2.q() != 80 && !aVar.b(aVar2.l()) && (i != 1 || !com.cmcm.orion.utils.b.a(com.cmcm.orion.adsdk.e.a(), aVar2.l()))) {
                                            arrayList.add(aVar2);
                                        }
                                    }
                                }
                            }
                            if (!arrayList.isEmpty()) {
                                com.cmcm.orion.picks.a.a.a aVar3 = (com.cmcm.orion.picks.a.a.a) arrayList.get(0);
                                String str4 = aVar.c.get(a2.c());
                                if (!TextUtils.isEmpty(str4)) {
                                    aVar.c.put(aVar3.l(), str4);
                                }
                                interfaceC0026a.a(aVar3);
                            }
                        }
                    }
                }
            } catch (Exception e) {
            }
        }
    }

    static /* synthetic */ boolean a(com.cmcm.orion.picks.a.a.a aVar) {
        return aVar != null && new Random().nextInt(100) < aVar.O();
    }

    static /* synthetic */ void c(a aVar, final com.cmcm.orion.picks.a.a.a aVar2) {
        HashMap hashMap = new HashMap();
        hashMap.put("vext", "100");
        a("click", aVar2, true, hashMap, new a.InterfaceC0019a() { // from class: com.cmcm.orion.utils.internal.a.4
            @Override // com.cmcm.orion.picks.impl.a.InterfaceC0019a
            public final void a(int i, InputStream inputStream, String str, int i2) {
                a.d(a.this, aVar2);
            }

            @Override // com.cmcm.orion.picks.impl.a.InterfaceC0019a
            public final void a(int i, com.cmcm.orion.adsdk.d dVar) {
                new StringBuilder("onError: report CLICK error : ").append(dVar.b());
            }
        });
        com.cmcm.orion.utils.a.a(new Runnable() { // from class: com.cmcm.orion.utils.internal.a.5

            /* renamed from: b, reason: collision with root package name */
            final /* synthetic */ boolean f1096b = true;

            @Override // java.lang.Runnable
            public final void run() {
                a.this.a(aVar2, 100, this.f1096b);
                Set keySet = a.this.c.keySet();
                if (keySet == null || !keySet.contains(aVar2.l())) {
                    a.this.a(aVar2.l());
                }
            }
        });
    }

    static /* synthetic */ void d(a aVar, com.cmcm.orion.picks.a.a.a aVar2) {
        new com.cmcm.orion.utils.internal.d(aVar2.m(), new a.InterfaceC0019a() { // from class: com.cmcm.orion.utils.internal.a.6
            @Override // com.cmcm.orion.picks.impl.a.InterfaceC0019a
            public final void a(com.cmcm.orion.picks.webview.e eVar) {
            }
        }).a();
    }

    static /* synthetic */ void e(a aVar, com.cmcm.orion.picks.a.a.a aVar2) {
        ArrayList<c> d2;
        if (aVar2 == null || (d2 = aVar.d()) == null || d2.isEmpty()) {
            return;
        }
        Iterator<c> it = d2.iterator();
        while (it.hasNext()) {
            c next = it.next();
            if (next != null && aVar2.l() != null && aVar2.l().equals(next.f1113a)) {
                next.d = true;
            }
        }
        aVar.a(d2);
    }

    static /* synthetic */ void a(a aVar, Uri uri) {
        Context a2 = com.cmcm.orion.adsdk.e.a();
        if (a2 != null && uri != null) {
            try {
                List<String> pathSegments = uri.getPathSegments();
                if (pathSegments != null && pathSegments.size() > 1) {
                    final String str = pathSegments.get(1);
                    if (!TextUtils.isEmpty(str) && !aVar.f1079b.contains(str)) {
                        aVar.f1079b.add(str);
                        Cursor query = a2.getContentResolver().query(Uri.parse("content://downloads/public_downloads/" + str), null, null, null, null);
                        if (query != null) {
                            while (query.moveToNext()) {
                                query.getString(9);
                                String string = query.getString(15);
                                final String string2 = query.getString(13);
                                if (!TextUtils.isEmpty(string)) {
                                    final String queryParameter = Uri.parse(string).getQueryParameter("packageName");
                                    if (!com.cmcm.orion.utils.b.a(a2, queryParameter)) {
                                        if (!TextUtils.isEmpty(string2) && string2.startsWith("Additional file for:")) {
                                            string2 = string2.substring(20);
                                            if (!TextUtils.isEmpty(string2)) {
                                                string2 = string2.trim();
                                            }
                                        }
                                        if (!TextUtils.isEmpty(queryParameter) || !TextUtils.isEmpty(string2)) {
                                            new StringBuilder("onDownloadEvent: title = ").append(string2).append("; pkg = ").append(queryParameter);
                                            com.cmcm.orion.utils.a.a(new Runnable() { // from class: com.cmcm.orion.utils.internal.a.13
                                                @Override // java.lang.Runnable
                                                public final void run() {
                                                    boolean b2 = a.this.b(queryParameter);
                                                    if (h.o()) {
                                                        h.l();
                                                        if (!TextUtils.isEmpty(queryParameter)) {
                                                            a.this.c.put(queryParameter, str);
                                                        } else {
                                                            try {
                                                                a.this.c.put(Base64.encodeToString(string2.getBytes("UTF-8"), 2), str);
                                                            } catch (Exception e) {
                                                            }
                                                        }
                                                        if (!b2) {
                                                            a.a(a.this, queryParameter, string2, 1);
                                                        }
                                                    }
                                                }
                                            });
                                        }
                                    }
                                }
                            }
                            query.close();
                        }
                    }
                }
            } catch (Throwable th) {
                new StringBuilder("onDownloadEvent: error = ").append(th.getMessage());
            }
        }
    }
}
