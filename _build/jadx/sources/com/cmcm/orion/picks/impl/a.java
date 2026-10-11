package com.cmcm.orion.picks.impl;

import android.content.Context;
import android.os.Build;
import android.os.PowerManager;
import android.os.StatFs;
import android.support.annotation.NonNull;
import android.text.TextUtils;
import com.cmcm.orion.adsdk.b;
import com.cmcm.orion.picks.impl.h;
import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.OutputStream;
import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

/* compiled from: BrandVCAdMaterialLoader.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class a {

    /* renamed from: a, reason: collision with root package name */
    private static final String f903a = com.cmcm.orion.picks.b.a.class.getSimpleName() + ":" + a.class.getSimpleName();

    /* renamed from: b, reason: collision with root package name */
    private static long f904b;
    private static long c;

    /* compiled from: BrandVCAdMaterialLoader.java */
    /* renamed from: com.cmcm.orion.picks.impl.a$a, reason: collision with other inner class name */
    public interface InterfaceC0019a {
        void a(int i);

        void a(int i, int i2);

        void a(int i, com.cmcm.orion.adsdk.d dVar);

        void a(int i, InputStream inputStream, String str, int i2);

        void a(com.cmcm.orion.adsdk.d dVar);

        void a(com.cmcm.orion.picks.a.b bVar);

        void a(h hVar);

        void a(h hVar, com.cmcm.orion.adsdk.d dVar, int i);

        void a(com.cmcm.orion.picks.webview.e eVar);

        void a(String str, int i);

        void a(String str, com.cmcm.orion.adsdk.d dVar);

        void a(String str, InputStream inputStream);

        void a(String str, String str2, boolean z);

        void a(HashMap<String, String> hashMap, h hVar);

        void b();

        void b(com.cmcm.orion.picks.a.b bVar);

        void b(h hVar);

        void b(com.cmcm.orion.picks.webview.e eVar);

        void c();

        void c_();

        void d_();

        void e();

        void f();
    }

    public static void a(final com.cmcm.orion.picks.b.a aVar, final Context context, final com.cmcm.orion.picks.a.a.a aVar2, InterfaceC0019a interfaceC0019a) {
        new StringBuilder("loadMaterialInternal: ad title = ").append(aVar2.i());
        HashMap hashMap = new HashMap();
        switch (aVar2.t()) {
            case 50012:
            case 50013:
                try {
                    final String a2 = i.a(aVar2.E());
                    final AnonymousClass1 anonymousClass1 = new AnonymousClass1(context, aVar2, interfaceC0019a, aVar, hashMap);
                    c = System.currentTimeMillis();
                    final String str = a2 + aVar2.d();
                    com.cmcm.orion.picks.impl.a.a.a(str, new InterfaceC0019a() { // from class: com.cmcm.orion.picks.impl.a.3
                        @Override // com.cmcm.orion.picks.impl.a.InterfaceC0019a
                        public final void a(String str2, InputStream inputStream) {
                            Object a3;
                            if (inputStream != null && !TextUtils.isEmpty(str2) && (a3 = i.a(inputStream)) != null && (a3 instanceof h)) {
                                h hVar = (h) a3;
                                boolean m = h.m(str2);
                                String unused = a.f903a;
                                new StringBuilder("vast:model has expired:").append(m).append(",key =").append(AnonymousClass1.b(str2));
                                if (!m) {
                                    com.cmcm.orion.picks.b.a.this.a(b.a.PARSE_START, 0, 0L);
                                    com.cmcm.orion.picks.b.a.this.a(b.a.PARSE_SUCCESS, 0, 0L);
                                    hVar.g(true);
                                    hVar.a(aVar2);
                                    anonymousClass1.a(hVar);
                                    return;
                                }
                            }
                            String unused2 = a.f903a;
                            new StringBuilder("vast:to remove this key:").append(AnonymousClass1.b(str2));
                            com.cmcm.orion.picks.impl.a.a.a(str2);
                            if (aVar2.q() != 80 && a.a(context, com.cmcm.orion.picks.b.a.this)) {
                                String unused3 = a.f903a;
                                anonymousClass1.a(com.cmcm.orion.adsdk.d.NOT_WIFI_ERROR);
                                com.cmcm.orion.picks.b.a.this.a(b.a.PARSE_FAIL, 100, 0L);
                                return;
                            }
                            com.cmcm.orion.picks.b.a.this.a(b.a.PARSE_START, 0, 0L);
                            final j jVar = new j();
                            jVar.a(aVar2);
                            final String str3 = a2;
                            final InterfaceC0019a interfaceC0019a2 = new InterfaceC0019a() { // from class: com.cmcm.orion.picks.impl.a.3.1
                                @Override // com.cmcm.orion.picks.impl.a.InterfaceC0019a
                                public final void b(h hVar2) {
                                    com.cmcm.orion.picks.b.a.this.a(b.a.PARSE_SUCCESS, 0, System.currentTimeMillis() - a.c);
                                    hVar2.a(aVar2);
                                    hVar2.g(false);
                                    com.cmcm.orion.picks.impl.a.a.a(str, hVar2, new InterfaceC0019a() { // from class: com.cmcm.orion.picks.impl.a.3.1.1
                                        @Override // com.cmcm.orion.picks.impl.a.InterfaceC0019a
                                        public final void a(String str4, int i) {
                                            if (i == 1) {
                                                i.a(AnonymousClass1.b(str4), System.currentTimeMillis());
                                            }
                                        }
                                    });
                                    anonymousClass1.a(hVar2);
                                }

                                @Override // com.cmcm.orion.picks.impl.a.InterfaceC0019a
                                public final void a(h hVar2, com.cmcm.orion.adsdk.d dVar, int i) {
                                    String str4 = null;
                                    if (hVar2 != null) {
                                        str4 = hVar2.a(context);
                                    }
                                    if (hVar2 != null) {
                                        g.a(hVar2, i);
                                    }
                                    com.cmcm.orion.picks.b.a.this.a(b.a.PARSE_FAIL, dVar.a(), System.currentTimeMillis() - a.c, 0L, str4);
                                    anonymousClass1.a(dVar);
                                }
                            };
                            jVar.a();
                            com.cmcm.orion.utils.a.a(new Runnable() { // from class: com.cmcm.orion.picks.impl.j.2
                                @Override // java.lang.Runnable
                                public final void run() {
                                    j.a(j.this, str3, interfaceC0019a2);
                                }
                            });
                        }
                    });
                    break;
                } catch (Exception e) {
                    b(interfaceC0019a, com.cmcm.orion.adsdk.d.EXCEPTION_ERROR.a(e.getMessage()));
                    return;
                }
            default:
                new StringBuilder("loadMaterialInternal: invalid app show type = ").append(aVar2.t());
                b(interfaceC0019a, com.cmcm.orion.adsdk.d.UNKNOWN_ERROR.a("invalid app show type [" + aVar2.t() + "]"));
                break;
        }
    }

    /* compiled from: BrandVCAdMaterialLoader.java */
    /* renamed from: com.cmcm.orion.picks.impl.a$1, reason: invalid class name */
    public static class AnonymousClass1 implements InterfaceC0019a {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ Context f905a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ com.cmcm.orion.picks.a.a.a f906b;
        final /* synthetic */ InterfaceC0019a c;
        final /* synthetic */ com.cmcm.orion.picks.b.a d;
        final /* synthetic */ HashMap e;

        AnonymousClass1(Context context, com.cmcm.orion.picks.a.a.a aVar, InterfaceC0019a interfaceC0019a, com.cmcm.orion.picks.b.a aVar2, HashMap hashMap) {
            this.f905a = context;
            this.f906b = aVar;
            this.c = interfaceC0019a;
            this.d = aVar2;
            this.e = hashMap;
        }

        @Override // com.cmcm.orion.picks.impl.a.InterfaceC0019a
        public final void a(final h hVar) {
            String unused = a.f903a;
            if (hVar == null || (hVar.c() == 8 && com.cmcm.orion.utils.b.a(this.f905a, this.f906b.l()))) {
                String unused2 = a.f903a;
                a.b(this.c, com.cmcm.orion.adsdk.d.APP_EXISTED_ERROR);
                return;
            }
            String a2 = hVar.a(this.f905a);
            if (!a.a(a2)) {
                String unused3 = a.f903a;
                a.b(this.c, com.cmcm.orion.adsdk.d.MEDIA_TYPE_ERROR);
            } else {
                long unused4 = a.f904b = System.currentTimeMillis();
                this.d.a(b.a.DOWNLOAD_START, 0, 0L);
                String unused5 = a.f903a;
                com.cmcm.orion.picks.impl.b.a.a(this.f905a, a2, a.a(this.f905a, this.d), new InterfaceC0019a() { // from class: com.cmcm.orion.picks.impl.a.1.1
                    @Override // com.cmcm.orion.picks.impl.a.InterfaceC0019a
                    public final void a(String str, String str2, boolean z) {
                        String unused6 = a.f903a;
                        AnonymousClass1.this.e.put(AnonymousClass1.this.f906b.E(), str2);
                        File file = new File(str2);
                        AnonymousClass1.this.d.a(b.a.DOWNLOAD_SUCCESS, 0, z ? 0L : System.currentTimeMillis() - a.f904b, file.exists() ? file.length() : 0L, str);
                        a.a(AnonymousClass1.this.f905a, hVar, new InterfaceC0019a() { // from class: com.cmcm.orion.picks.impl.a.1.1.1
                            @Override // com.cmcm.orion.picks.impl.a.InterfaceC0019a
                            public final void b() {
                                a.a(AnonymousClass1.this.c, AnonymousClass1.this.e, hVar);
                            }
                        });
                    }

                    @Override // com.cmcm.orion.picks.impl.a.InterfaceC0019a
                    public final void a(String str, com.cmcm.orion.adsdk.d dVar) {
                        String unused6 = a.f903a;
                        a.b(AnonymousClass1.this.c, dVar);
                        AnonymousClass1.this.d.a(b.a.DOWNLOAD_FAIL, dVar != null ? dVar.a() : -1, System.currentTimeMillis() - a.f904b, 0L, str);
                    }
                });
            }
        }

        @Override // com.cmcm.orion.picks.impl.a.InterfaceC0019a
        public final void a(com.cmcm.orion.adsdk.d dVar) {
            String unused = a.f903a;
            new StringBuilder("onFailed: vast tag parse failed. error = ").append(dVar.b());
            a.b(this.c, dVar);
        }

        public static boolean a(Context context) {
            try {
                return ((PowerManager) context.getSystemService("power")).isScreenOn();
            } catch (Exception e) {
                new StringBuilder("adView exception:").append(e.getMessage());
                e.printStackTrace();
                return false;
            }
        }

        public static void a(b.a aVar, com.cmcm.orion.picks.a.a.a aVar2, String str, int i, long j, Map<String, String> map) {
            try {
                if (com.cmcm.orion.picks.a.a.h.b(str)) {
                    StringBuffer stringBuffer = new StringBuffer();
                    Context a2 = com.cmcm.orion.adsdk.e.a();
                    String a3 = com.cmcm.orion.utils.b.a(a2);
                    String b2 = com.cmcm.orion.utils.b.b(a2);
                    String c = com.cmcm.orion.utils.b.c(com.cmcm.orion.adsdk.e.a());
                    String d = com.cmcm.orion.utils.b.d(com.cmcm.orion.adsdk.e.a());
                    StringBuffer append = stringBuffer.append("sdk=1");
                    StringBuilder sb = new StringBuilder("&mcc=");
                    if (TextUtils.isEmpty(a3)) {
                        a3 = "";
                    }
                    append.append(sb.append(a3).toString()).append("&mnc=" + (TextUtils.isEmpty(b2) ? "" : b2)).append("&brand=" + com.cmcm.orion.utils.b.a("ro.product.brand", "unknow")).append("&model=" + com.cmcm.orion.utils.b.a("ro.product.model", "unknow")).append("&at=" + System.currentTimeMillis()).append("&pos=" + str).append("&mid=" + com.cmcm.orion.adsdk.e.b()).append("&aid=" + com.cmcm.orion.utils.b.a()).append("&gaid=" + com.cmcm.orion.utils.internal.a.a.c().a()).append("&v=25&lv=4.3.4").append("&nt=" + String.valueOf(com.cmcm.orion.utils.c.a(a2) ? 1 : 2)).append("&osl=" + Build.VERSION.SDK_INT).append("&lan=" + String.format("%s_%s", c, d)).append("&pl=2").append("&event=" + aVar.name()).append("&loadtime=" + String.valueOf(j));
                    if (i != 0) {
                        stringBuffer.append("&errorcode=" + i);
                    }
                    if (aVar2 != null) {
                        stringBuffer.append("&adset_id=" + aVar2.x()).append("&aps=" + aVar2.t()).append("&src=" + aVar2.q());
                    }
                    if (!map.isEmpty()) {
                        for (String str2 : map.keySet()) {
                            String str3 = map.get(str2);
                            if (!TextUtils.isEmpty(str3)) {
                                stringBuffer.append("&").append(str2).append("=").append(str3);
                            }
                        }
                    }
                    String stringBuffer2 = stringBuffer.toString();
                    String str4 = "&attach=[" + new com.cmcm.orion.picks.a.a.e("", 131, "", 0, 0).a() + "]";
                    if (!TextUtils.isEmpty(stringBuffer2)) {
                        com.cmcm.orion.utils.d.a(com.cmcm.orion.picks.a.a.h.j(), stringBuffer2 + str4, (InterfaceC0019a) null);
                    }
                }
            } catch (Exception e) {
            }
        }

        public static float b(Context context) {
            return context.getResources().getDisplayMetrics().density;
        }

        public static String c(Context context) {
            try {
                return String.format(Locale.US, "%d*%d", Integer.valueOf(context.getResources().getDisplayMetrics().heightPixels), Integer.valueOf(context.getResources().getDisplayMetrics().widthPixels));
            } catch (Exception e) {
                return "";
            }
        }

        public static void a(File file) {
            File[] listFiles;
            if (file.exists() && !file.isFile() && (listFiles = file.listFiles()) != null) {
                for (File file2 : listFiles) {
                    if (System.currentTimeMillis() - file2.lastModified() > 604800000) {
                        file2.delete();
                    }
                }
            }
        }

        public static long b(File file) {
            long blockSizeLong;
            long availableBlocksLong;
            try {
                StatFs statFs = new StatFs(file.getAbsolutePath());
                if (Build.VERSION.SDK_INT >= 18) {
                    try {
                        blockSizeLong = statFs.getBlockSizeLong();
                        availableBlocksLong = statFs.getAvailableBlocksLong();
                    } catch (NoSuchMethodError e) {
                    }
                    return availableBlocksLong * blockSizeLong;
                }
                blockSizeLong = statFs.getBlockSize();
                availableBlocksLong = statFs.getAvailableBlocks();
                return availableBlocksLong * blockSizeLong;
            } catch (Exception e2) {
                return 0L;
            }
        }

        public static boolean a(String str) {
            if (TextUtils.isEmpty(str)) {
                return false;
            }
            File file = new File(str);
            return file.exists() && !file.isDirectory();
        }

        public static boolean a(Object obj, OutputStream outputStream) {
            ObjectOutputStream objectOutputStream;
            Throwable th;
            boolean z;
            try {
                objectOutputStream = new ObjectOutputStream(outputStream);
                try {
                    objectOutputStream.writeObject(obj);
                    objectOutputStream.flush();
                    z = true;
                    try {
                        objectOutputStream.close();
                        outputStream.close();
                    } catch (Exception e) {
                    }
                } catch (Exception e2) {
                    z = false;
                    if (objectOutputStream != null) {
                        try {
                            objectOutputStream.close();
                        } catch (Exception e3) {
                        }
                    }
                    outputStream.close();
                    return z;
                } catch (Throwable th2) {
                    th = th2;
                    if (objectOutputStream != null) {
                        try {
                            objectOutputStream.close();
                        } catch (Exception e4) {
                            throw th;
                        }
                    }
                    outputStream.close();
                    throw th;
                }
            } catch (Exception e5) {
                objectOutputStream = null;
            } catch (Throwable th3) {
                objectOutputStream = null;
                th = th3;
            }
            return z;
        }

        public static Object a(InputStream inputStream) {
            ObjectInputStream objectInputStream;
            Throwable th;
            Object obj = null;
            try {
                objectInputStream = new ObjectInputStream(inputStream);
                try {
                    obj = objectInputStream.readObject();
                    try {
                        objectInputStream.close();
                        inputStream.close();
                    } catch (IOException e) {
                    }
                } catch (Exception e2) {
                    if (objectInputStream != null) {
                        try {
                            objectInputStream.close();
                        } catch (IOException e3) {
                        }
                    }
                    inputStream.close();
                    return obj;
                } catch (Throwable th2) {
                    th = th2;
                    if (objectInputStream != null) {
                        try {
                            objectInputStream.close();
                        } catch (IOException e4) {
                            throw th;
                        }
                    }
                    inputStream.close();
                    throw th;
                }
            } catch (Exception e5) {
                objectInputStream = null;
            } catch (Throwable th3) {
                objectInputStream = null;
                th = th3;
            }
            return obj;
        }

        public static String b(String str) {
            try {
                MessageDigest messageDigest = MessageDigest.getInstance("MD5");
                messageDigest.update(str.getBytes("UTF-8"));
                byte[] digest = messageDigest.digest();
                if (digest != null && digest.length > 0) {
                    StringBuilder sb = new StringBuilder();
                    for (byte b2 : digest) {
                        sb.append(String.format("%02x", Byte.valueOf(b2)));
                    }
                    return sb.toString();
                }
            } catch (Exception e) {
            }
            return "";
        }

        public static void a(InputStream inputStream, OutputStream outputStream) throws IOException {
            if (inputStream == null || outputStream == null) {
                throw new IOException("Unable to copy from or to a null stream.");
            }
            byte[] bArr = new byte[16384];
            while (true) {
                int read = inputStream.read(bArr);
                if (read != -1) {
                    outputStream.write(bArr, 0, read);
                } else {
                    outputStream.flush();
                    return;
                }
            }
        }

        public static void a(Closeable closeable) {
            if (closeable != null) {
                try {
                    closeable.close();
                } catch (IOException e) {
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(InterfaceC0019a interfaceC0019a) {
        if (interfaceC0019a != null) {
            interfaceC0019a.b();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(final Context context, final ArrayList<String> arrayList, final InterfaceC0019a interfaceC0019a) {
        if (arrayList == null || arrayList.isEmpty()) {
            b(interfaceC0019a);
        } else {
            com.cmcm.orion.picks.impl.b.a.a(context, arrayList.remove(0), false, new InterfaceC0019a() { // from class: com.cmcm.orion.picks.impl.a.2
                @Override // com.cmcm.orion.picks.impl.a.InterfaceC0019a
                public final void a(String str, String str2, boolean z) {
                    g();
                }

                @Override // com.cmcm.orion.picks.impl.a.InterfaceC0019a
                public final void a(String str, com.cmcm.orion.adsdk.d dVar) {
                    g();
                }

                private void g() {
                    if (arrayList.isEmpty()) {
                        a.b(interfaceC0019a);
                    } else {
                        a.b(context, arrayList, interfaceC0019a);
                    }
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(@NonNull final InterfaceC0019a interfaceC0019a, final com.cmcm.orion.adsdk.d dVar) {
        com.cmcm.orion.utils.e.b(new Runnable() { // from class: com.cmcm.orion.picks.impl.a.5
            @Override // java.lang.Runnable
            public final void run() {
                InterfaceC0019a.this.a(dVar);
            }
        });
    }

    static /* synthetic */ boolean a(String str) {
        String trim;
        if (TextUtils.isEmpty(str)) {
            trim = "";
        } else {
            String[] split = str.split("\\.");
            String str2 = "";
            if (split.length > 0) {
                str2 = split[split.length - 1];
            }
            trim = str2.trim();
        }
        return "mp4".equalsIgnoreCase(trim) || "3gp".equalsIgnoreCase(trim) || "webm".equalsIgnoreCase(trim);
    }

    static /* synthetic */ boolean a(Context context, com.cmcm.orion.picks.b.a aVar) {
        return aVar.j() && !com.cmcm.orion.utils.c.a(context);
    }

    static /* synthetic */ void a(final InterfaceC0019a interfaceC0019a, final HashMap hashMap, final h hVar) {
        com.cmcm.orion.utils.e.b(new Runnable() { // from class: com.cmcm.orion.picks.impl.a.4
            @Override // java.lang.Runnable
            public final void run() {
                InterfaceC0019a.this.a(hashMap, hVar);
            }
        });
    }

    static /* synthetic */ void a(Context context, h hVar, InterfaceC0019a interfaceC0019a) {
        if (hVar == null) {
            b(interfaceC0019a);
            return;
        }
        ArrayList arrayList = new ArrayList();
        List<h.a> m = hVar.m();
        if (m != null && m.size() > 0) {
            for (h.a aVar : m) {
                if (aVar.c() != null && aVar.c().size() >= 0) {
                    arrayList.addAll(aVar.c());
                }
            }
        }
        arrayList.add(hVar.n());
        b(context, arrayList, interfaceC0019a);
    }
}
