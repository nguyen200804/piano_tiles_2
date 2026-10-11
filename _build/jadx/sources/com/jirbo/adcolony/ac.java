package com.jirbo.adcolony;

import android.content.Context;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.util.UUID;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class ac {

    /* renamed from: a, reason: collision with root package name */
    private static String f3696a = null;

    public static synchronized String a(Context context) {
        String str;
        synchronized (ac.class) {
            if (f3696a == null) {
                File file = new File(context.getFilesDir(), "INSTALLATION");
                try {
                    if (!file.exists()) {
                        b(file);
                    }
                    f3696a = a(file);
                } catch (Exception e) {
                    throw new j(e.toString());
                }
            }
            str = f3696a;
        }
        return str;
    }

    private static String a(File file) throws IOException {
        RandomAccessFile randomAccessFile = new RandomAccessFile(file, "r");
        byte[] bArr = new byte[(int) randomAccessFile.length()];
        randomAccessFile.readFully(bArr);
        randomAccessFile.close();
        return new String(bArr);
    }

    private static void b(File file) throws IOException {
        FileOutputStream fileOutputStream = new FileOutputStream(file);
        fileOutputStream.write(UUID.randomUUID().toString().getBytes());
        fileOutputStream.close();
    }
}
