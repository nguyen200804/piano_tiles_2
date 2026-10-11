package com.cmcm.orion.picks.impl.b;

import android.content.Context;
import android.text.TextUtils;
import com.cmcm.orion.adsdk.d;
import com.cmcm.orion.picks.impl.a;
import com.cmcm.orion.utils.e;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;

/* compiled from: FileFetcher.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class a {

    /* renamed from: a, reason: collision with root package name */
    private static final String f944a = a.class.getSimpleName();

    /* renamed from: b, reason: collision with root package name */
    private static com.cmcm.orion.picks.impl.a.a f945b = new com.cmcm.orion.picks.impl.a.a();
    private static HashMap<String, C0022a> c = new HashMap<>();

    private a() {
    }

    public static void a(Context context, String str, boolean z, a.InterfaceC0019a interfaceC0019a) {
        if (TextUtils.isEmpty(str)) {
            interfaceC0019a.a(str, d.NETWORK_URL_ERROR);
            return;
        }
        if (b(str)) {
            C0022a c2 = c(str);
            if (c2 != null) {
                c2.a(interfaceC0019a);
                return;
            }
            return;
        }
        C0022a c0022a = new C0022a(str);
        synchronized (c) {
            c.put(str, c0022a);
        }
        c0022a.a(z);
        c0022a.a(interfaceC0019a);
        c0022a.a(context);
    }

    private static boolean b(String str) {
        boolean containsKey;
        synchronized (c) {
            containsKey = c.containsKey(str);
        }
        return containsKey;
    }

    private static C0022a c(String str) {
        C0022a c0022a;
        synchronized (c) {
            c0022a = c.get(str);
        }
        return c0022a;
    }

    /* compiled from: FileFetcher.java */
    /* renamed from: com.cmcm.orion.picks.impl.b.a$a, reason: collision with other inner class name */
    static class C0022a {

        /* renamed from: a, reason: collision with root package name */
        private String f946a;

        /* renamed from: b, reason: collision with root package name */
        private File f947b = null;
        private ArrayList<a.InterfaceC0019a> c = new ArrayList<>();
        private boolean d;

        public C0022a(String str) {
            this.f946a = str;
        }

        public final void a(boolean z) {
            this.d = z;
        }

        public final void a(final a.InterfaceC0019a interfaceC0019a) {
            e.a(new Runnable() { // from class: com.cmcm.orion.picks.impl.b.a.a.1
                @Override // java.lang.Runnable
                public final void run() {
                    if (interfaceC0019a != null && !C0022a.this.c.contains(interfaceC0019a)) {
                        C0022a.this.c.add(interfaceC0019a);
                    }
                }
            });
        }

        public final void a(Context context) {
            com.cmcm.orion.picks.impl.a.a unused = a.f945b;
            if (!com.cmcm.orion.picks.impl.a.a.a(context)) {
                a(d.LUR_INIT_ERROR);
                return;
            }
            if (!TextUtils.isEmpty(this.f946a)) {
                String unused2 = a.f944a;
                new StringBuilder("start: mDownloadUrl = ").append(this.f946a);
                com.cmcm.orion.picks.impl.a.a unused3 = a.f945b;
                if (com.cmcm.orion.picks.impl.a.a.b(this.f946a)) {
                    com.cmcm.orion.picks.impl.a.a unused4 = a.f945b;
                    a(com.cmcm.orion.picks.impl.a.a.c(this.f946a), true);
                    return;
                } else if (this.d) {
                    a(d.UNKNOWN_ERROR.a("Only cache error"));
                    return;
                } else {
                    com.cmcm.orion.utils.d.a(this.f946a, new a.InterfaceC0019a() { // from class: com.cmcm.orion.picks.impl.b.a.a.2
                        @Override // com.cmcm.orion.picks.impl.a.InterfaceC0019a
                        public final void a(int i, InputStream inputStream, String str, int i2) {
                            FileOutputStream fileOutputStream;
                            FileOutputStream fileOutputStream2;
                            BufferedOutputStream bufferedOutputStream;
                            BufferedOutputStream bufferedOutputStream2 = null;
                            if (i != 200) {
                                C0022a.this.a(d.NETWORK_OTHER_ERROR);
                                return;
                            }
                            if (i2 >= 31457280) {
                                C0022a.this.a(d.NETWORK_MAX_SIZE_ERROR);
                                return;
                            }
                            String unused5 = a.f944a;
                            com.cmcm.orion.picks.impl.a.a unused6 = a.f945b;
                            File a2 = com.cmcm.orion.picks.impl.a.a.a();
                            if (i2 != -1 && (a2 == null || a.AnonymousClass1.b(a2) < i2 * 2)) {
                                C0022a.this.a(d.NETWORK_DISK_SPACE_ERROR);
                                return;
                            }
                            try {
                                if (!a2.isDirectory()) {
                                    a2.delete();
                                }
                                if (!a2.exists()) {
                                    a2.mkdirs();
                                }
                                C0022a.this.f947b = new File(a2.getAbsolutePath() + File.separator + System.currentTimeMillis());
                                fileOutputStream2 = new FileOutputStream(C0022a.this.f947b);
                                try {
                                    bufferedOutputStream = new BufferedOutputStream(fileOutputStream2);
                                } catch (Throwable th) {
                                    th = th;
                                }
                            } catch (Throwable th2) {
                                th = th2;
                                fileOutputStream = null;
                            }
                            try {
                                a.AnonymousClass1.a(inputStream, (OutputStream) bufferedOutputStream);
                                com.cmcm.orion.picks.impl.a.a unused7 = a.f945b;
                                com.cmcm.orion.picks.impl.a.a.a(C0022a.this.f946a, C0022a.this.f947b, new a.InterfaceC0019a() { // from class: com.cmcm.orion.picks.impl.b.a.a.2.1
                                    @Override // com.cmcm.orion.picks.impl.a.InterfaceC0019a
                                    public final void a(String str2, int i3) {
                                        if (i3 == 1) {
                                            com.cmcm.orion.picks.impl.a.a unused8 = a.f945b;
                                            String c = com.cmcm.orion.picks.impl.a.a.c(str2);
                                            String unused9 = a.f944a;
                                            C0022a.this.a(c, false);
                                        } else {
                                            C0022a.this.a(d.LRU_PUT_ERROR);
                                        }
                                        C0022a.this.f947b.delete();
                                    }
                                });
                                a.AnonymousClass1.a(fileOutputStream2);
                                a.AnonymousClass1.a(bufferedOutputStream);
                            } catch (Throwable th3) {
                                th = th3;
                                bufferedOutputStream2 = bufferedOutputStream;
                                a.AnonymousClass1.a(fileOutputStream2);
                                a.AnonymousClass1.a(bufferedOutputStream2);
                                throw th;
                            }
                        }

                        @Override // com.cmcm.orion.picks.impl.a.InterfaceC0019a
                        public final void a(int i, d dVar) {
                            C0022a.this.a(dVar);
                        }
                    });
                    return;
                }
            }
            a(d.NETWORK_URL_ERROR);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a(final d dVar) {
            a.a(this.f946a);
            e.a(new Runnable() { // from class: com.cmcm.orion.picks.impl.b.a.a.3
                @Override // java.lang.Runnable
                public final void run() {
                    Iterator it = C0022a.this.c.iterator();
                    while (it.hasNext()) {
                        ((a.InterfaceC0019a) it.next()).a(C0022a.this.f946a, dVar);
                    }
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a(final String str, final boolean z) {
            a.a(this.f946a);
            e.a(new Runnable() { // from class: com.cmcm.orion.picks.impl.b.a.a.4
                @Override // java.lang.Runnable
                public final void run() {
                    Iterator it = C0022a.this.c.iterator();
                    while (it.hasNext()) {
                        ((a.InterfaceC0019a) it.next()).a(C0022a.this.f946a, str, z);
                    }
                }
            });
        }
    }

    static /* synthetic */ void a(String str) {
        synchronized (c) {
            c.remove(str);
        }
    }
}
