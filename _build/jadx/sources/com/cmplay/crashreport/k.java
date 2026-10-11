package com.cmplay.crashreport;

import android.content.Context;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.zip.ZipEntry;
import java.util.zip.ZipOutputStream;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class k {

    /* renamed from: a, reason: collision with root package name */
    private static k f1302a = null;

    /* renamed from: b, reason: collision with root package name */
    private Boolean f1303b = false;
    private Object c = new Object();

    private k() {
    }

    public static synchronized k a() {
        k kVar;
        synchronized (k.class) {
            if (f1302a == null) {
                f1302a = new k();
            }
            kVar = f1302a;
        }
        return kVar;
    }

    private String a(String str) {
        return str != null ? com.cmplay.crashreport.a.d.a(str) + "crash.zip" : str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Context context, File[] fileArr, String str, String str2) {
        String a2;
        if (fileArr == null || fileArr.length == 0 || (a2 = a(str)) == null) {
            return;
        }
        File file = new File(a2);
        file.delete();
        if (a(fileArr, file)) {
            if (u.a("mobileduba___" + com.cmplay.crashreport.a.c.a(context) + "___" + new SimpleDateFormat("yyyyMMdd_HHmmss").format(new Date()) + ".zip", str2, file)) {
                m.a().a(true, fileArr);
            }
        }
        file.delete();
    }

    private boolean a(File[] fileArr, File file) {
        try {
            byte[] bArr = new byte[1024];
            ZipOutputStream zipOutputStream = new ZipOutputStream(new FileOutputStream(file));
            for (int i = 0; i < fileArr.length; i++) {
                if (fileArr[i].exists()) {
                    FileInputStream fileInputStream = new FileInputStream(fileArr[i]);
                    zipOutputStream.putNextEntry(new ZipEntry(fileArr[i].getName()));
                    while (true) {
                        int read = fileInputStream.read(bArr, 0, 1024);
                        if (read <= 0) {
                            break;
                        }
                        zipOutputStream.write(bArr, 0, read);
                    }
                    fileInputStream.close();
                }
            }
            zipOutputStream.flush();
            zipOutputStream.close();
            return true;
        } catch (FileNotFoundException e) {
            return false;
        } catch (IOException e2) {
            return false;
        }
    }

    public void a(Context context) {
        synchronized (this.c) {
            if (this.f1303b.booleanValue()) {
                return;
            }
            this.f1303b = true;
            if (com.cmplay.crashreport.a.e.a(context) && com.cmplay.crashreport.a.e.b(context)) {
                new l(this, context).start();
            }
        }
    }
}
