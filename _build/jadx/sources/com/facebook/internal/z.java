package com.facebook.internal;

import android.net.Uri;
import com.facebook.internal.k;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;

/* compiled from: UrlRedirectCache.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class z {

    /* renamed from: a, reason: collision with root package name */
    static final String f3268a = z.class.getSimpleName();

    /* renamed from: b, reason: collision with root package name */
    private static final String f3269b = f3268a + "_Redirect";
    private static volatile k c;

    z() {
    }

    static synchronized k a() throws IOException {
        k kVar;
        synchronized (z.class) {
            if (c == null) {
                c = new k(f3268a, new k.d());
            }
            kVar = c;
        }
        return kVar;
    }

    static Uri a(Uri uri) {
        InputStreamReader inputStreamReader;
        Throwable th;
        Uri uri2 = null;
        boolean z = false;
        if (uri != null) {
            String uri3 = uri.toString();
            try {
                k a2 = a();
                String str = uri3;
                InputStreamReader inputStreamReader2 = null;
                while (true) {
                    try {
                        InputStream a3 = a2.a(str, f3269b);
                        if (a3 == null) {
                            break;
                        }
                        inputStreamReader = new InputStreamReader(a3);
                        try {
                            char[] cArr = new char[128];
                            StringBuilder sb = new StringBuilder();
                            while (true) {
                                int read = inputStreamReader.read(cArr, 0, cArr.length);
                                if (read <= 0) {
                                    break;
                                }
                                sb.append(cArr, 0, read);
                            }
                            aa.a(inputStreamReader);
                            str = sb.toString();
                            inputStreamReader2 = inputStreamReader;
                            z = true;
                        } catch (IOException e) {
                            aa.a(inputStreamReader);
                            return uri2;
                        } catch (Throwable th2) {
                            th = th2;
                            aa.a(inputStreamReader);
                            throw th;
                        }
                    } catch (IOException e2) {
                        inputStreamReader = inputStreamReader2;
                    } catch (Throwable th3) {
                        th = th3;
                        inputStreamReader = inputStreamReader2;
                    }
                }
                if (z) {
                    uri2 = Uri.parse(str);
                    aa.a(inputStreamReader2);
                } else {
                    aa.a(inputStreamReader2);
                }
            } catch (IOException e3) {
                inputStreamReader = null;
            } catch (Throwable th4) {
                inputStreamReader = null;
                th = th4;
            }
        }
        return uri2;
    }

    static void a(Uri uri, Uri uri2) {
        OutputStream outputStream;
        Throwable th;
        if (uri != null && uri2 != null) {
            try {
                try {
                    OutputStream b2 = a().b(uri.toString(), f3269b);
                    try {
                        b2.write(uri2.toString().getBytes());
                        aa.a(b2);
                    } catch (Throwable th2) {
                        outputStream = b2;
                        th = th2;
                        aa.a(outputStream);
                        throw th;
                    }
                } catch (IOException e) {
                    aa.a((Closeable) null);
                }
            } catch (Throwable th3) {
                outputStream = null;
                th = th3;
            }
        }
    }
}
