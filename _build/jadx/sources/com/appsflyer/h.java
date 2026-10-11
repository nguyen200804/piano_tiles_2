package com.appsflyer;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.util.Random;
import java.util.UUID;

/* compiled from: Installation.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class h {

    /* renamed from: a, reason: collision with root package name */
    private static String f596a = null;

    public static synchronized String a(Context context) {
        String str;
        synchronized (h.class) {
            if (f596a == null) {
                File file = new File(context.getFilesDir(), "AF_INSTALLATION");
                try {
                    if (!file.exists()) {
                        a(file, context);
                    }
                    f596a = a(file);
                } catch (Exception e) {
                    throw new RuntimeException(e);
                }
            }
            str = f596a;
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

    private static void a(File file, Context context) throws IOException, PackageManager.NameNotFoundException {
        String uuid;
        FileOutputStream fileOutputStream = new FileOutputStream(file);
        PackageInfo packageInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 0);
        if (Build.VERSION.SDK_INT >= 9) {
            uuid = packageInfo.firstInstallTime + "-" + Math.abs(new Random().nextLong());
        } else {
            uuid = UUID.randomUUID().toString();
        }
        fileOutputStream.write(uuid.getBytes());
        fileOutputStream.close();
    }
}
