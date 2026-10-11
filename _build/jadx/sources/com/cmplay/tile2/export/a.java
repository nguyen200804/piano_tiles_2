package com.cmplay.tile2.export;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.zip.ZipEntry;
import java.util.zip.ZipOutputStream;

/* compiled from: CompressedFileUtil.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class a {
    /* JADX WARN: Removed duplicated region for block: B:27:0x0045  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x007f A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:70:0x007a A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean a(java.util.ArrayList<java.lang.String> r9, java.lang.String r10) {
        /*
            Method dump skipped, instructions count: 183
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.cmplay.tile2.export.a.a(java.util.ArrayList, java.lang.String):boolean");
    }

    public boolean a(ZipOutputStream zipOutputStream, File file, String str) {
        FileInputStream fileInputStream;
        boolean z = true;
        if (file.isDirectory()) {
            try {
                File[] listFiles = file.listFiles();
                zipOutputStream.putNextEntry(new ZipEntry(str + "/"));
                String str2 = str.length() == 0 ? "" : str + "/";
                int i = 0;
                while (i < listFiles.length) {
                    boolean a2 = a(zipOutputStream, listFiles[i], str2 + listFiles[i].getName()) | z;
                    i++;
                    z = a2;
                }
                return z;
            } catch (IOException e) {
                e.printStackTrace();
                return false;
            }
        }
        if (file.exists()) {
            FileInputStream fileInputStream2 = null;
            try {
                fileInputStream = new FileInputStream(file);
            } catch (Exception e2) {
                fileInputStream = null;
            } catch (Throwable th) {
                th = th;
            }
            try {
                zipOutputStream.putNextEntry(new ZipEntry(str));
                byte[] bArr = new byte[1024];
                while (true) {
                    int read = fileInputStream.read(bArr);
                    if (read <= 0) {
                        break;
                    }
                    zipOutputStream.write(bArr, 0, read);
                }
                if (fileInputStream != null) {
                    try {
                        fileInputStream.close();
                        return true;
                    } catch (IOException e3) {
                        e3.printStackTrace();
                        return true;
                    }
                }
            } catch (Exception e4) {
                if (fileInputStream == null) {
                    return false;
                }
                try {
                    fileInputStream.close();
                    return false;
                } catch (IOException e5) {
                    e5.printStackTrace();
                    return false;
                }
            } catch (Throwable th2) {
                fileInputStream2 = fileInputStream;
                th = th2;
                if (fileInputStream2 != null) {
                    try {
                        fileInputStream2.close();
                    } catch (IOException e6) {
                        e6.printStackTrace();
                    }
                }
                throw th;
            }
        }
        return true;
    }
}
