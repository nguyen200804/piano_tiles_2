package com.cmplay.tile2.export;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;

/* compiled from: FormFile.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class b {

    /* renamed from: a, reason: collision with root package name */
    private File f1607a;

    /* renamed from: b, reason: collision with root package name */
    private String f1608b;

    public void a(File file) {
        this.f1607a = file;
    }

    public String a() {
        return this.f1608b;
    }

    public void a(String str) {
        this.f1608b = str;
    }

    public String b() {
        return this.f1607a.getName();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [java.io.FileInputStream] */
    /* JADX WARN: Type inference failed for: r0v10 */
    /* JADX WARN: Type inference failed for: r0v11 */
    /* JADX WARN: Type inference failed for: r0v12 */
    /* JADX WARN: Type inference failed for: r0v13 */
    /* JADX WARN: Type inference failed for: r0v14 */
    public byte[] c() {
        Throwable th;
        FileInputStream fileInputStream;
        byte[] bArr = 0;
        bArr = 0;
        bArr = 0;
        bArr = 0;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            try {
                fileInputStream = new FileInputStream(this.f1607a);
                try {
                    byte[] bArr2 = new byte[1024];
                    while (true) {
                        int read = fileInputStream.read(bArr2, 0, 1024);
                        if (read == -1) {
                            break;
                        }
                        byteArrayOutputStream.write(bArr2, 0, read);
                    }
                    byte[] byteArray = byteArrayOutputStream.toByteArray();
                    try {
                        fileInputStream.close();
                        bArr = byteArray;
                    } catch (IOException e) {
                        e.printStackTrace();
                        bArr = byteArray;
                    }
                } catch (FileNotFoundException e2) {
                    e = e2;
                    e.printStackTrace();
                    try {
                        fileInputStream.close();
                    } catch (IOException e3) {
                        e3.printStackTrace();
                    }
                    return bArr;
                } catch (IOException e4) {
                    e = e4;
                    e.printStackTrace();
                    try {
                        fileInputStream.close();
                    } catch (IOException e5) {
                        e5.printStackTrace();
                    }
                    return bArr;
                }
            } catch (Throwable th2) {
                th = th2;
                try {
                    bArr.close();
                } catch (IOException e6) {
                    e6.printStackTrace();
                }
                throw th;
            }
        } catch (FileNotFoundException e7) {
            e = e7;
            fileInputStream = null;
        } catch (IOException e8) {
            e = e8;
            fileInputStream = null;
        } catch (Throwable th3) {
            th = th3;
            bArr.close();
            throw th;
        }
        return bArr;
    }
}
