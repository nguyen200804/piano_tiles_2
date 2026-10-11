package com.facebook.internal;

import android.graphics.Bitmap;
import android.net.Uri;
import android.util.Log;
import com.applovin.sdk.AppLovinEventTypes;
import com.facebook.FacebookContentProvider;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.UUID;

/* compiled from: NativeAppCallAttachmentStore.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class u {

    /* renamed from: a, reason: collision with root package name */
    private static final String f3254a = u.class.getName();

    /* renamed from: b, reason: collision with root package name */
    private static File f3255b;

    private u() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static a a(UUID uuid, Bitmap bitmap) {
        ab.a(uuid, "callId");
        ab.a(bitmap, "attachmentBitmap");
        return new a(uuid, bitmap, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static a a(UUID uuid, Uri uri) {
        ab.a(uuid, "callId");
        ab.a(uri, "attachmentUri");
        return new a(uuid, null, uri);
    }

    private static void a(Bitmap bitmap, File file) throws IOException {
        FileOutputStream fileOutputStream = new FileOutputStream(file);
        try {
            bitmap.compress(Bitmap.CompressFormat.JPEG, 100, fileOutputStream);
        } finally {
            aa.a(fileOutputStream);
        }
    }

    private static void a(Uri uri, boolean z, File file) throws IOException {
        InputStream openInputStream;
        FileOutputStream fileOutputStream = new FileOutputStream(file);
        try {
            if (!z) {
                openInputStream = new FileInputStream(uri.getPath());
            } else {
                openInputStream = com.facebook.l.f().getContentResolver().openInputStream(uri);
            }
            aa.a(openInputStream, (OutputStream) fileOutputStream);
        } finally {
            aa.a(fileOutputStream);
        }
    }

    public static void a(Collection<a> collection) {
        if (collection != null && collection.size() != 0) {
            if (f3255b == null) {
                c();
            }
            b();
            ArrayList arrayList = new ArrayList();
            try {
                for (a aVar : collection) {
                    if (aVar.g) {
                        File a2 = a(aVar.f3256a, aVar.c, true);
                        arrayList.add(a2);
                        if (aVar.d != null) {
                            a(aVar.d, a2);
                        } else if (aVar.e != null) {
                            a(aVar.e, aVar.f, a2);
                        }
                    }
                }
            } catch (IOException e) {
                Log.e(f3254a, "Got unexpected exception:" + e);
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    try {
                        ((File) it.next()).delete();
                    } catch (Exception e2) {
                    }
                }
                throw new com.facebook.i(e);
            }
        }
    }

    public static void a(UUID uuid) {
        File a2 = a(uuid, false);
        if (a2 != null) {
            aa.a(a2);
        }
    }

    public static File a(UUID uuid, String str) throws FileNotFoundException {
        if (aa.a(str) || uuid == null) {
            throw new FileNotFoundException();
        }
        try {
            return a(uuid, str, false);
        } catch (IOException e) {
            throw new FileNotFoundException();
        }
    }

    static synchronized File a() {
        File file;
        synchronized (u.class) {
            if (f3255b == null) {
                f3255b = new File(com.facebook.l.f().getCacheDir(), "com.facebook.NativeAppCallAttachmentStore.files");
            }
            file = f3255b;
        }
        return file;
    }

    static File b() {
        File a2 = a();
        a2.mkdirs();
        return a2;
    }

    static File a(UUID uuid, boolean z) {
        if (f3255b == null) {
            return null;
        }
        File file = new File(f3255b, uuid.toString());
        if (z && !file.exists()) {
            file.mkdirs();
            return file;
        }
        return file;
    }

    static File a(UUID uuid, String str, boolean z) throws IOException {
        File a2 = a(uuid, z);
        if (a2 == null) {
            return null;
        }
        try {
            return new File(a2, URLEncoder.encode(str, "UTF-8"));
        } catch (UnsupportedEncodingException e) {
            return null;
        }
    }

    public static void c() {
        aa.a(a());
    }

    /* compiled from: NativeAppCallAttachmentStore.java */
    public static final class a {

        /* renamed from: a, reason: collision with root package name */
        private final UUID f3256a;

        /* renamed from: b, reason: collision with root package name */
        private final String f3257b;
        private final String c;
        private Bitmap d;
        private Uri e;
        private boolean f;
        private boolean g;

        private a(UUID uuid, Bitmap bitmap, Uri uri) {
            this.f3256a = uuid;
            this.d = bitmap;
            this.e = uri;
            if (uri != null) {
                String scheme = uri.getScheme();
                if (AppLovinEventTypes.USER_VIEWED_CONTENT.equalsIgnoreCase(scheme)) {
                    this.f = true;
                    this.g = (uri.getAuthority() == null || uri.getAuthority().startsWith("media")) ? false : true;
                } else if ("file".equalsIgnoreCase(uri.getScheme())) {
                    this.g = true;
                } else if (!aa.b(uri)) {
                    throw new com.facebook.i("Unsupported scheme for media Uri : " + scheme);
                }
            } else if (bitmap != null) {
                this.g = true;
            } else {
                throw new com.facebook.i("Cannot share media without a bitmap or Uri set");
            }
            this.c = !this.g ? null : UUID.randomUUID().toString();
            this.f3257b = !this.g ? this.e.toString() : FacebookContentProvider.a(com.facebook.l.i(), uuid, this.c);
        }

        public String a() {
            return this.f3257b;
        }
    }
}
