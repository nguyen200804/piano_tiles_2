package b.a;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.zip.Deflater;

/* compiled from: DeflaterHelper.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class au {

    /* renamed from: a, reason: collision with root package name */
    public static int f73a;

    public static byte[] a(String str, String str2) throws IOException {
        if (av.c(str)) {
            return null;
        }
        return a(str.getBytes(str2));
    }

    public static byte[] a(byte[] bArr) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream;
        Throwable th;
        if (bArr == null || bArr.length <= 0) {
            return null;
        }
        Deflater deflater = new Deflater();
        deflater.setInput(bArr);
        deflater.finish();
        byte[] bArr2 = new byte[8192];
        f73a = 0;
        try {
            byteArrayOutputStream = new ByteArrayOutputStream();
            while (!deflater.finished()) {
                try {
                    int deflate = deflater.deflate(bArr2);
                    f73a += deflate;
                    byteArrayOutputStream.write(bArr2, 0, deflate);
                } catch (Throwable th2) {
                    th = th2;
                    if (byteArrayOutputStream != null) {
                        byteArrayOutputStream.close();
                    }
                    throw th;
                }
            }
            deflater.end();
            if (byteArrayOutputStream != null) {
                byteArrayOutputStream.close();
            }
            return byteArrayOutputStream.toByteArray();
        } catch (Throwable th3) {
            byteArrayOutputStream = null;
            th = th3;
        }
    }
}
