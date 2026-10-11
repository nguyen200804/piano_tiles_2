package com.facebook.notifications.internal.asset.a;

import android.content.Context;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.facebook.notifications.internal.asset.a;
import com.facebook.notifications.internal.asset.a.c;
import java.io.File;
import java.net.URL;
import java.nio.charset.Charset;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* compiled from: ContentCache.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class b implements a.InterfaceC0089a {

    /* renamed from: a, reason: collision with root package name */
    private static final String f3378a = b.class.getCanonicalName();

    /* renamed from: b, reason: collision with root package name */
    @NonNull
    private final Context f3379b;

    @NonNull
    private final d e;

    @Nullable
    private Set<String> h;

    @NonNull
    private final c c = new c();

    @NonNull
    private final Thread d = new Thread(this.c);

    @NonNull
    private final Object f = new Object();

    @NonNull
    private final Map<String, Set<com.facebook.notifications.internal.asset.a.a>> g = new HashMap();

    /* compiled from: ContentCache.java */
    public interface a {
        void a(@NonNull Set<URL> set);
    }

    public b(@NonNull Context context) {
        this.f3379b = context;
        this.e = new d(context);
        this.d.start();
    }

    public void a() {
        this.d.interrupt();
        try {
            this.d.join();
        } catch (InterruptedException e) {
            this.d.interrupt();
        }
    }

    public void a(@NonNull Set<URL> set, @NonNull a aVar) {
        com.facebook.notifications.internal.asset.a.a aVar2 = new com.facebook.notifications.internal.asset.a.a(set, aVar);
        synchronized (this.f) {
            Iterator<URL> it = aVar2.a().iterator();
            int i = 0;
            while (it.hasNext()) {
                URL next = it.next();
                final String b2 = b(next);
                if (a(b2)) {
                    it.remove();
                } else if (this.g.containsKey(b2)) {
                    this.g.get(b2).add(aVar2);
                } else {
                    final HashSet hashSet = new HashSet();
                    hashSet.add(aVar2);
                    this.g.put(b2, hashSet);
                    this.c.a(next, new c.a() { // from class: com.facebook.notifications.internal.asset.a.b.1
                        @Override // com.facebook.notifications.internal.asset.a.c.a
                        public void a(@NonNull URL url, @Nullable byte[] bArr) {
                            HashSet hashSet2;
                            if (bArr != null) {
                                b.this.e.a(b2, bArr);
                            }
                            synchronized (b.this.f) {
                                hashSet2 = new HashSet(hashSet);
                            }
                            Iterator it2 = hashSet2.iterator();
                            while (it2.hasNext()) {
                                ((com.facebook.notifications.internal.asset.a.a) it2.next()).a(url, bArr);
                            }
                        }
                    });
                    i++;
                }
            }
            if (i == 0) {
                aVar.a(set);
            }
        }
    }

    public void a(@NonNull Set<URL> set) {
        synchronized (this.f) {
            Iterator<URL> it = set.iterator();
            while (it.hasNext()) {
                String b2 = b(it.next());
                this.e.a(b2);
                if (this.h != null) {
                    this.h.remove(b2);
                }
            }
        }
    }

    @Override // com.facebook.notifications.internal.asset.a.InterfaceC0089a
    @Nullable
    public File a(@NonNull URL url) {
        return this.e.b(b(url));
    }

    @NonNull
    private static String b(@NonNull URL url) {
        String url2 = url.toString();
        try {
            byte[] digest = MessageDigest.getInstance("MD5").digest(url2.getBytes(Charset.forName("UTF-8")));
            return String.format("%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x", Byte.valueOf(digest[0]), Byte.valueOf(digest[1]), Byte.valueOf(digest[2]), Byte.valueOf(digest[3]), Byte.valueOf(digest[4]), Byte.valueOf(digest[5]), Byte.valueOf(digest[6]), Byte.valueOf(digest[7]), Byte.valueOf(digest[8]), Byte.valueOf(digest[9]), Byte.valueOf(digest[10]), Byte.valueOf(digest[11]), Byte.valueOf(digest[12]), Byte.valueOf(digest[13]), Byte.valueOf(digest[14]), Byte.valueOf(digest[15]));
        } catch (NoSuchAlgorithmException e) {
            return Integer.toHexString(url2.hashCode());
        }
    }

    private boolean a(@NonNull String str) {
        boolean contains;
        synchronized (this.f) {
            if (this.h == null) {
                this.h = this.e.a();
            }
            contains = this.h.contains(str);
        }
        return contains;
    }
}
