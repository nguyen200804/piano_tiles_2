package com.duapps.ad.base.a;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Environment;
import com.duapps.ad.base.h;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;

/* compiled from: ImageUtils.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class d {
    public static void a(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException e) {
                h.a("ImageUtils", "Failed to close the target", e);
            }
        }
    }

    private static boolean b(String str) {
        if (!a()) {
            return false;
        }
        File file = new File(str);
        if (file.exists()) {
            if (!file.isDirectory()) {
                file.mkdirs();
            }
        } else {
            file.mkdirs();
        }
        return true;
    }

    private static Bitmap c(String str) {
        FileInputStream fileInputStream;
        Throwable th;
        Bitmap bitmap = null;
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inPreferredConfig = Bitmap.Config.RGB_565;
        options.inPurgeable = true;
        options.inInputShareable = true;
        try {
            fileInputStream = new FileInputStream(str);
        } catch (FileNotFoundException e) {
            fileInputStream = null;
        } catch (Throwable th2) {
            fileInputStream = null;
            th = th2;
        }
        try {
            bitmap = BitmapFactory.decodeStream(fileInputStream, null, options);
            a(fileInputStream);
        } catch (FileNotFoundException e2) {
            a(fileInputStream);
            return bitmap;
        } catch (Throwable th3) {
            th = th3;
            a(fileInputStream);
            throw th;
        }
        return bitmap;
    }

    public static boolean a(String str, String str2) {
        return new File(str + str2).exists();
    }

    public static void b(String str, String str2) {
        new File(str, str2).delete();
    }

    public static Bitmap a(String str) {
        if (a()) {
            return c(str);
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v0, types: [android.graphics.Bitmap] */
    /* JADX WARN: Type inference failed for: r1v12 */
    /* JADX WARN: Type inference failed for: r1v13 */
    /* JADX WARN: Type inference failed for: r1v14 */
    /* JADX WARN: Type inference failed for: r1v15, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r1v16, types: [java.io.FileInputStream] */
    /* JADX WARN: Type inference failed for: r1v17 */
    /* JADX WARN: Type inference failed for: r1v18 */
    /* JADX WARN: Type inference failed for: r1v19 */
    public static boolean a(String str, String str2, Bitmap bitmap, long j) {
        FileOutputStream fileOutputStream;
        Closeable closeable;
        ?? r1;
        FileOutputStream fileOutputStream2 = null;
        if (!a()) {
            return false;
        }
        b(str);
        File file = new File(str + str2);
        if (bitmap == 0) {
            return false;
        }
        if (file.exists()) {
            file.delete();
        }
        try {
            file.createNewFile();
            fileOutputStream = new FileOutputStream(file);
            try {
                bitmap.compress(Bitmap.CompressFormat.PNG, 100, fileOutputStream);
                fileOutputStream.flush();
                fileOutputStream.close();
                if (file != null) {
                    r1 = new FileInputStream(file);
                    try {
                        int available = r1.available();
                        r1 = r1;
                        if (available == 0) {
                            r1 = r1;
                            if (file.exists()) {
                                file.delete();
                                r1 = r1;
                            }
                        }
                    } catch (IOException e) {
                        fileOutputStream2 = fileOutputStream;
                        closeable = r1;
                        a(fileOutputStream2);
                        a(closeable);
                        return false;
                    } catch (Throwable th) {
                        th = th;
                        fileOutputStream2 = r1;
                        a(fileOutputStream);
                        a(fileOutputStream2);
                        throw th;
                    }
                } else {
                    r1 = 0;
                }
                if (j > 0) {
                    file.setLastModified(j);
                }
                a(fileOutputStream);
                a((Closeable) r1);
                return true;
            } catch (IOException e2) {
                closeable = null;
                fileOutputStream2 = fileOutputStream;
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (IOException e3) {
            closeable = null;
        } catch (Throwable th3) {
            th = th3;
            fileOutputStream = null;
        }
    }

    public static boolean a() {
        return Environment.getExternalStorageState().equals("mounted");
    }
}
