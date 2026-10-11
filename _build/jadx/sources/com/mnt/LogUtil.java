package com.mnt;

import android.content.Context;
import android.os.Environment;
import com.mnt.impl.e;
import java.io.File;
import java.io.FileOutputStream;
import java.text.SimpleDateFormat;
import java.util.Date;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class LogUtil {
    public static final String ROOT_FILE_PATH = Environment.getExternalStorageDirectory().getAbsolutePath() + File.separator + e.pX;

    /* renamed from: a, reason: collision with root package name */
    private static byte[] f3888a = e.pY.getBytes();

    /* renamed from: b, reason: collision with root package name */
    private static final String f3889b = e.pZ;

    public static void out(String str) {
        out(f3889b, str, null, 4);
    }

    public static void out(String str, int i) {
        out(f3889b, str, null, i);
    }

    public static void out(String str, Throwable th, int i) {
        out(f3889b, str, null, i);
    }

    public static void out(String str, String str2) {
        out(str, str2, null, 4);
    }

    public static void out(String str, String str2, int i) {
        out(str, str2, null, i);
    }

    public static void out(String str, String str2, Throwable th, int i) {
    }

    public static void showToast(Context context, String str) {
    }

    public static synchronized void writeFile(String str) {
        synchronized (LogUtil.class) {
            if (Environment.getExternalStorageState().equals("mounted")) {
                String str2 = new SimpleDateFormat(e.qa).format(new Date(System.currentTimeMillis())) + " " + str;
                try {
                    String str3 = ROOT_FILE_PATH + File.separator + e.qb;
                    File file = new File(str3);
                    if (!file.exists()) {
                        file.mkdirs();
                    }
                    File file2 = new File(str3 + File.separator + e.qc);
                    if (!file2.exists()) {
                        file2.createNewFile();
                    }
                    FileOutputStream fileOutputStream = new FileOutputStream(file2, true);
                    fileOutputStream.write(str2.getBytes());
                    fileOutputStream.write(f3888a);
                    fileOutputStream.close();
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }
    }
}
