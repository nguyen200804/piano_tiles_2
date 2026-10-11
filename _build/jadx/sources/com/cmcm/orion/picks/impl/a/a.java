package com.cmcm.orion.picks.impl.a;

import android.content.Context;
import android.os.Environment;
import android.support.annotation.NonNull;
import android.text.TextUtils;
import com.cmcm.orion.adsdk.e;
import com.cmcm.orion.picks.impl.a;
import com.cmcm.orion.picks.impl.a.b;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectOutputStream;
import java.io.OutputStream;
import java.io.Serializable;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* compiled from: CacheUtil.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class a {
    private static b c;
    private static File e;
    private static File f;

    /* renamed from: b, reason: collision with root package name */
    private static final String f921b = a.class.getSimpleName();
    private static Executor d = new ThreadPoolExecutor(0, 1, 60, TimeUnit.MILLISECONDS, new LinkedBlockingQueue(), Executors.defaultThreadFactory());

    /* renamed from: a, reason: collision with root package name */
    public static boolean f920a = false;

    public static boolean a(Context context) {
        File externalFilesDir;
        if (f920a) {
            return true;
        }
        if (context == null) {
            return false;
        }
        try {
            if (c != null) {
                f920a = true;
                return true;
            }
            Context a2 = e.a();
            if (a2 != null) {
                if ("mounted".equals(Environment.getExternalStorageState()) && (externalFilesDir = a2.getExternalFilesDir(null)) != null) {
                    e(externalFilesDir.getAbsolutePath() + File.separator);
                }
                File filesDir = a2.getFilesDir();
                if (filesDir != null) {
                    e(filesDir.getAbsolutePath() + File.separator);
                }
            }
            if ("mounted".equals(Environment.getExternalStorageState())) {
                return a(context.getExternalFilesDir(null)) || a(context.getFilesDir());
            }
            return a(context.getFilesDir());
        } catch (Exception e2) {
            return false;
        }
    }

    private static boolean a(File file) {
        if (file == null) {
            return false;
        }
        try {
            File file2 = new File(file.getAbsolutePath() + File.separator + "VAST_CACHE");
            if (file2.isFile() && !file2.delete()) {
                return false;
            }
            b a2 = b.a(file2);
            long b2 = a2.b();
            long b3 = a.AnonymousClass1.b(file2);
            new StringBuilder("Current disk:").append(file2.getAbsolutePath());
            new StringBuilder("Already used size = ").append((b2 / 1024) / 1024).append("M");
            new StringBuilder("Remain free size = ").append((b3 / 1024) / 1024).append("M");
            long j = (b2 + b3) - 104857600;
            if (j < 68157440) {
                return false;
            }
            long min = Math.min(j, 157286400L);
            new StringBuilder("Finally determined lruCache size = ").append((min / 1024) / 1024).append("M");
            a2.a(min);
            e = file2;
            c = a2;
            return true;
        } catch (Exception e2) {
            new StringBuilder("Lru initialize error:").append(e2.getMessage());
            return false;
        }
    }

    public static void a(final String str) {
        if (c != null) {
            d.execute(new Runnable() { // from class: com.cmcm.orion.picks.impl.a.a.1
                @Override // java.lang.Runnable
                public final void run() {
                    try {
                        a.c.c(a.AnonymousClass1.b(str));
                    } catch (IOException e2) {
                    }
                }
            });
        }
    }

    public static boolean b(String str) {
        if (c != null) {
            AutoCloseable autoCloseable = null;
            try {
                b.c a2 = c.a(a.AnonymousClass1.b(str));
                r0 = a2 != null;
                if (a2 != null) {
                    a2.close();
                }
            } catch (Exception e2) {
                if (0 != 0) {
                    autoCloseable.close();
                }
            } catch (Throwable th) {
                if (0 != 0) {
                    autoCloseable.close();
                }
                throw th;
            }
        }
        return r0;
    }

    public static String c(String str) {
        if (c == null) {
            return null;
        }
        return c.a() + File.separator + a.AnonymousClass1.b(str) + ".0";
    }

    public static void a(@NonNull final String str, @NonNull final a.InterfaceC0019a interfaceC0019a) {
        if (c == null) {
            interfaceC0019a.a(str, (InputStream) null);
        } else {
            d.execute(new Runnable() { // from class: com.cmcm.orion.picks.impl.a.a.2
                /* JADX WARN: Multi-variable type inference failed */
                /* JADX WARN: Type inference failed for: r0v0 */
                /* JADX WARN: Type inference failed for: r0v10, types: [java.io.IOException] */
                /* JADX WARN: Type inference failed for: r0v11 */
                /* JADX WARN: Type inference failed for: r0v12 */
                /* JADX WARN: Type inference failed for: r0v13 */
                /* JADX WARN: Type inference failed for: r0v14 */
                /* JADX WARN: Type inference failed for: r0v15 */
                /* JADX WARN: Type inference failed for: r0v16 */
                /* JADX WARN: Type inference failed for: r0v2, types: [java.io.InputStream] */
                /* JADX WARN: Type inference failed for: r0v5 */
                /* JADX WARN: Type inference failed for: r0v6 */
                /* JADX WARN: Type inference failed for: r0v8, types: [java.io.InputStream] */
                /* JADX WARN: Type inference failed for: r2v9, types: [com.cmcm.orion.picks.impl.a$a] */
                @Override // java.lang.Runnable
                public final void run() {
                    b.c cVar;
                    Throwable th;
                    InputStream inputStream;
                    b.c cVar2;
                    ?? e2 = 0;
                    e2 = 0;
                    e2 = 0;
                    e2 = 0;
                    e2 = 0;
                    try {
                        cVar2 = a.c.a(a.AnonymousClass1.b(str));
                        try {
                            try {
                                if (cVar2 == null) {
                                    interfaceC0019a.a(str, (InputStream) null);
                                    if (cVar2 != null) {
                                        cVar2.close();
                                    }
                                } else {
                                    e2 = cVar2.a();
                                    try {
                                        interfaceC0019a.a(str, e2);
                                        if (e2 != 0) {
                                            try {
                                                e2.close();
                                            } catch (IOException e3) {
                                                e2 = e3;
                                            }
                                        }
                                        if (cVar2 != null) {
                                            cVar2.close();
                                        }
                                    } catch (Throwable th2) {
                                        cVar = cVar2;
                                        inputStream = e2;
                                        th = th2;
                                        if (inputStream != null) {
                                            try {
                                                inputStream.close();
                                            } catch (IOException e4) {
                                            }
                                        }
                                        if (cVar == null) {
                                            throw th;
                                        }
                                        cVar.close();
                                        throw th;
                                    }
                                }
                            } catch (Throwable th3) {
                                cVar = cVar2;
                                inputStream = e2;
                                th = th3;
                            }
                        } catch (Exception e5) {
                            if (e2 != 0) {
                                try {
                                    e2.close();
                                } catch (IOException e6) {
                                }
                            }
                            if (cVar2 != null) {
                                cVar2.close();
                            }
                        }
                    } catch (Exception e7) {
                        cVar2 = null;
                    } catch (Throwable th4) {
                        cVar = null;
                        th = th4;
                        inputStream = null;
                    }
                }
            });
        }
    }

    public static void a(final String str, final File file, final a.InterfaceC0019a interfaceC0019a) {
        if (c == null || TextUtils.isEmpty(str) || file == null) {
            b(interfaceC0019a, str, 2);
        } else {
            d.execute(new Runnable() { // from class: com.cmcm.orion.picks.impl.a.a.3
                /* JADX WARN: Multi-variable type inference failed */
                /* JADX WARN: Type inference failed for: r2v10, types: [java.io.Closeable, java.io.FileInputStream, java.io.InputStream] */
                /* JADX WARN: Type inference failed for: r2v2 */
                /* JADX WARN: Type inference failed for: r2v3, types: [java.io.Closeable] */
                /* JADX WARN: Type inference failed for: r2v5 */
                /* JADX WARN: Type inference failed for: r2v9 */
                @Override // java.lang.Runnable
                public final void run() {
                    OutputStream outputStream;
                    Throwable th;
                    OutputStream outputStream2;
                    b.a aVar;
                    ?? r2;
                    OutputStream outputStream3 = null;
                    if (!file.exists() || file.isDirectory()) {
                        a.b(interfaceC0019a, str, 2);
                        return;
                    }
                    try {
                        try {
                            aVar = a.c.b(a.AnonymousClass1.b(str));
                            try {
                                if (aVar == null) {
                                    a.b(interfaceC0019a, str, 2);
                                    a.AnonymousClass1.a((Closeable) null);
                                    a.AnonymousClass1.a((Closeable) null);
                                } else {
                                    r2 = new FileInputStream(file);
                                    try {
                                        try {
                                            outputStream3 = aVar.a();
                                        } catch (Throwable th2) {
                                            outputStream2 = null;
                                            th = th2;
                                            outputStream = r2;
                                            a.AnonymousClass1.a(outputStream);
                                            a.AnonymousClass1.a(outputStream2);
                                            throw th;
                                        }
                                        try {
                                            a.AnonymousClass1.a((InputStream) r2, outputStream3);
                                            a.c.c();
                                            aVar.b();
                                            a.b(interfaceC0019a, str, 1);
                                            a.AnonymousClass1.a((Closeable) r2);
                                            a.AnonymousClass1.a(outputStream3);
                                        } catch (Throwable th3) {
                                            outputStream2 = outputStream3;
                                            th = th3;
                                            outputStream = r2;
                                            a.AnonymousClass1.a(outputStream);
                                            a.AnonymousClass1.a(outputStream2);
                                            throw th;
                                        }
                                    } catch (Exception e2) {
                                        if (aVar != null) {
                                            try {
                                                aVar.c();
                                            } catch (IOException e3) {
                                            }
                                        }
                                        a.b(interfaceC0019a, str, 2);
                                        a.AnonymousClass1.a((Closeable) r2);
                                        a.AnonymousClass1.a(outputStream3);
                                    }
                                }
                            } catch (Exception e4) {
                                r2 = outputStream3;
                            }
                        } catch (Exception e5) {
                            aVar = null;
                            r2 = 0;
                        }
                    } catch (Throwable th4) {
                        outputStream = outputStream3;
                        OutputStream outputStream4 = outputStream3;
                        th = th4;
                        outputStream2 = outputStream4;
                    }
                }
            });
        }
    }

    public static void a(final String str, final Serializable serializable, final a.InterfaceC0019a interfaceC0019a) {
        if (c == null || TextUtils.isEmpty(str) || serializable == null) {
            b(interfaceC0019a, str, 2);
        } else {
            d.execute(new Runnable() { // from class: com.cmcm.orion.picks.impl.a.a.4
                @Override // java.lang.Runnable
                public final void run() {
                    OutputStream outputStream;
                    Throwable th;
                    b.a aVar;
                    OutputStream outputStream2 = null;
                    try {
                        try {
                            aVar = a.c.b(a.AnonymousClass1.b(str));
                            try {
                                if (aVar == null) {
                                    a.b(interfaceC0019a, str, 2);
                                    a.AnonymousClass1.a((Closeable) null);
                                } else {
                                    outputStream2 = aVar.a();
                                    try {
                                        a.a(serializable, outputStream2);
                                        a.c.c();
                                        aVar.b();
                                        a.b(interfaceC0019a, str, 1);
                                        a.AnonymousClass1.a(outputStream2);
                                    } catch (Throwable th2) {
                                        outputStream = outputStream2;
                                        th = th2;
                                        a.AnonymousClass1.a(outputStream);
                                        throw th;
                                    }
                                }
                            } catch (Exception e2) {
                                if (aVar != null) {
                                    try {
                                        aVar.c();
                                    } catch (IOException e3) {
                                    }
                                }
                                a.b(interfaceC0019a, str, 2);
                                a.AnonymousClass1.a(outputStream2);
                            }
                        } catch (Exception e4) {
                            aVar = null;
                        }
                    } catch (Throwable th3) {
                        outputStream = outputStream2;
                        th = th3;
                        a.AnonymousClass1.a(outputStream);
                        throw th;
                    }
                }
            });
        }
    }

    public static boolean a(Object obj, OutputStream outputStream) {
        ObjectOutputStream objectOutputStream;
        Throwable th;
        boolean z;
        try {
            objectOutputStream = new ObjectOutputStream(outputStream);
        } catch (Exception e2) {
            objectOutputStream = null;
        } catch (Throwable th2) {
            objectOutputStream = null;
            th = th2;
        }
        try {
            objectOutputStream.writeObject(obj);
            objectOutputStream.flush();
            z = true;
            try {
                objectOutputStream.close();
                if (outputStream != null) {
                    outputStream.close();
                }
            } catch (Exception e3) {
            }
        } catch (Exception e4) {
            z = false;
            if (objectOutputStream != null) {
                try {
                    objectOutputStream.close();
                } catch (Exception e5) {
                }
            }
            if (outputStream != null) {
                outputStream.close();
            }
            return z;
        } catch (Throwable th3) {
            th = th3;
            if (objectOutputStream != null) {
                try {
                    objectOutputStream.close();
                } catch (Exception e6) {
                    throw th;
                }
            }
            if (outputStream != null) {
                outputStream.close();
            }
            throw th;
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(a.InterfaceC0019a interfaceC0019a, String str, int i) {
        if (interfaceC0019a != null) {
            interfaceC0019a.a(str, i);
        }
    }

    private static void e(String str) {
        a.AnonymousClass1.a(new File(str + "VAST_CACHE"));
        a.AnonymousClass1.a(new File(str + "VIDEO_DOWNLOAD_TMP"));
        a.AnonymousClass1.a(new File(str + "VastVideo"));
        a.AnonymousClass1.a(new File(str + "BRAND_SPLASH_CACHE"));
        a.AnonymousClass1.a(new File(str + "BRAND_SPLASH_CACHE_TMP"));
    }

    public static File a() {
        if (f != null) {
            return f;
        }
        if (e == null) {
            return null;
        }
        File file = new File(e.getParentFile().getAbsolutePath() + File.separator + "VIDEO_DOWNLOAD_TMP");
        if (file.isFile() && !file.delete()) {
            return null;
        }
        if (!file.exists() && !file.mkdirs()) {
            return null;
        }
        f = file;
        return file;
    }
}
