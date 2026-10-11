package com.cmplay.util.crop;

import android.app.ProgressDialog;
import android.content.ContentResolver;
import android.content.Context;
import android.media.ExifInterface;
import android.net.Uri;
import android.os.Handler;
import android.support.annotation.Nullable;
import android.util.Log;
import com.cmplay.util.crop.d;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;

/* compiled from: CropUtil.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class b {
    public static void a(@Nullable Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (Throwable th) {
            }
        }
    }

    public static int a(File file) {
        if (file == null) {
            return 0;
        }
        try {
            switch (new ExifInterface(file.getAbsolutePath()).getAttributeInt("Orientation", 0)) {
            }
        } catch (IOException e) {
            Log.e("Error getting Exif data", e.getMessage());
            return 0;
        }
        return 0;
    }

    public static boolean a(File file, File file2) {
        if (file == null || file2 == null) {
            return false;
        }
        try {
            ExifInterface exifInterface = new ExifInterface(file.getAbsolutePath());
            ExifInterface exifInterface2 = new ExifInterface(file2.getAbsolutePath());
            exifInterface2.setAttribute("Orientation", exifInterface.getAttribute("Orientation"));
            exifInterface2.saveAttributes();
            return true;
        } catch (IOException e) {
            Log.e("Error copying Exif data", e.getMessage());
            return false;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:47:0x0095  */
    @android.support.annotation.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.io.File a(android.content.Context r7, android.content.ContentResolver r8, android.net.Uri r9) {
        /*
            r6 = 0
            if (r9 != 0) goto L5
            r0 = r6
        L4:
            return r0
        L5:
            java.lang.String r0 = "file"
            java.lang.String r1 = r9.getScheme()
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L1b
            java.io.File r0 = new java.io.File
            java.lang.String r1 = r9.getPath()
            r0.<init>(r1)
            goto L4
        L1b:
            java.lang.String r0 = "content"
            java.lang.String r1 = r9.getScheme()
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L7b
            r0 = 2
            java.lang.String[] r2 = new java.lang.String[r0]
            r0 = 0
            java.lang.String r1 = "_data"
            r2[r0] = r1
            r0 = 1
            java.lang.String r1 = "_display_name"
            r2[r0] = r1
            r3 = 0
            r4 = 0
            r5 = 0
            r0 = r8
            r1 = r9
            android.database.Cursor r1 = r0.query(r1, r2, r3, r4, r5)     // Catch: java.lang.IllegalArgumentException -> L7d java.lang.SecurityException -> L89 java.lang.Throwable -> L91
            if (r1 == 0) goto L76
            boolean r0 = r1.moveToFirst()     // Catch: java.lang.Throwable -> L99 java.lang.SecurityException -> L9e java.lang.IllegalArgumentException -> La0
            if (r0 == 0) goto L76
            java.lang.String r0 = r9.toString()     // Catch: java.lang.Throwable -> L99 java.lang.SecurityException -> L9e java.lang.IllegalArgumentException -> La0
            java.lang.String r2 = "content://com.google.android.gallery3d"
            boolean r0 = r0.startsWith(r2)     // Catch: java.lang.Throwable -> L99 java.lang.SecurityException -> L9e java.lang.IllegalArgumentException -> La0
            if (r0 == 0) goto L6f
            java.lang.String r0 = "_display_name"
            int r0 = r1.getColumnIndex(r0)     // Catch: java.lang.Throwable -> L99 java.lang.SecurityException -> L9e java.lang.IllegalArgumentException -> La0
        L57:
            r2 = -1
            if (r0 == r2) goto L76
            java.lang.String r2 = r1.getString(r0)     // Catch: java.lang.Throwable -> L99 java.lang.SecurityException -> L9e java.lang.IllegalArgumentException -> La0
            boolean r0 = android.text.TextUtils.isEmpty(r2)     // Catch: java.lang.Throwable -> L99 java.lang.SecurityException -> L9e java.lang.IllegalArgumentException -> La0
            if (r0 != 0) goto L76
            java.io.File r0 = new java.io.File     // Catch: java.lang.Throwable -> L99 java.lang.SecurityException -> L9e java.lang.IllegalArgumentException -> La0
            r0.<init>(r2)     // Catch: java.lang.Throwable -> L99 java.lang.SecurityException -> L9e java.lang.IllegalArgumentException -> La0
            if (r1 == 0) goto L4
            r1.close()
            goto L4
        L6f:
            java.lang.String r0 = "_data"
            int r0 = r1.getColumnIndex(r0)     // Catch: java.lang.Throwable -> L99 java.lang.SecurityException -> L9e java.lang.IllegalArgumentException -> La0
            goto L57
        L76:
            if (r1 == 0) goto L7b
            r1.close()
        L7b:
            r0 = r6
            goto L4
        L7d:
            r0 = move-exception
        L7e:
            java.io.File r0 = b(r7, r8, r9)     // Catch: java.lang.Throwable -> L9b
            if (r6 == 0) goto L4
            r6.close()
            goto L4
        L89:
            r0 = move-exception
            r1 = r6
        L8b:
            if (r1 == 0) goto L7b
            r1.close()
            goto L7b
        L91:
            r0 = move-exception
            r1 = r6
        L93:
            if (r1 == 0) goto L98
            r1.close()
        L98:
            throw r0
        L99:
            r0 = move-exception
            goto L93
        L9b:
            r0 = move-exception
            r1 = r6
            goto L93
        L9e:
            r0 = move-exception
            goto L8b
        La0:
            r0 = move-exception
            r6 = r1
            goto L7e
        */
        throw new UnsupportedOperationException("Method not decompiled: com.cmplay.util.crop.b.a(android.content.Context, android.content.ContentResolver, android.net.Uri):java.io.File");
    }

    private static String a(Context context) throws IOException {
        return File.createTempFile("image", "tmp", context.getCacheDir()).getAbsolutePath();
    }

    @Nullable
    private static File b(Context context, ContentResolver contentResolver, Uri uri) {
        FileOutputStream fileOutputStream;
        FileInputStream fileInputStream;
        Throwable th;
        FileOutputStream fileOutputStream2;
        FileInputStream fileInputStream2;
        if (uri == null) {
            return null;
        }
        try {
            fileInputStream = new FileInputStream(contentResolver.openFileDescriptor(uri, "r").getFileDescriptor());
            try {
                String a2 = a(context);
                fileOutputStream = new FileOutputStream(a2);
                try {
                    byte[] bArr = new byte[4096];
                    while (true) {
                        int read = fileInputStream.read(bArr);
                        if (read == -1) {
                            File file = new File(a2);
                            a(fileInputStream);
                            a(fileOutputStream);
                            return file;
                        }
                        fileOutputStream.write(bArr, 0, read);
                    }
                } catch (IOException e) {
                    fileOutputStream2 = fileOutputStream;
                    fileInputStream2 = fileInputStream;
                    a(fileInputStream2);
                    a(fileOutputStream2);
                    return null;
                } catch (Throwable th2) {
                    th = th2;
                    a(fileInputStream);
                    a(fileOutputStream);
                    throw th;
                }
            } catch (IOException e2) {
                fileOutputStream2 = null;
                fileInputStream2 = fileInputStream;
            } catch (Throwable th3) {
                fileOutputStream = null;
                th = th3;
            }
        } catch (IOException e3) {
            fileOutputStream2 = null;
            fileInputStream2 = null;
        } catch (Throwable th4) {
            fileOutputStream = null;
            fileInputStream = null;
            th = th4;
        }
    }

    public static void a(d dVar, String str, String str2, Runnable runnable, Handler handler) {
        new Thread(new a(dVar, runnable, ProgressDialog.show(dVar, str, str2, true, false), handler)).start();
    }

    /* compiled from: CropUtil.java */
    private static class a extends d.a implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        private final d f1755a;

        /* renamed from: b, reason: collision with root package name */
        private final ProgressDialog f1756b;
        private final Runnable c;
        private final Handler d;
        private final Runnable e = new Runnable() { // from class: com.cmplay.util.crop.b.a.1
            @Override // java.lang.Runnable
            public void run() {
                a.this.f1755a.a(a.this);
                if (a.this.f1756b.getWindow() != null) {
                    a.this.f1756b.dismiss();
                }
            }
        };

        public a(d dVar, Runnable runnable, ProgressDialog progressDialog, Handler handler) {
            this.f1755a = dVar;
            this.f1756b = progressDialog;
            this.c = runnable;
            this.f1755a.b(this);
            this.d = handler;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                this.c.run();
            } finally {
                this.d.post(this.e);
            }
        }

        @Override // com.cmplay.util.crop.d.a, com.cmplay.util.crop.d.b
        public void a(d dVar) {
            this.e.run();
            this.d.removeCallbacks(this.e);
        }

        @Override // com.cmplay.util.crop.d.a, com.cmplay.util.crop.d.b
        public void b(d dVar) {
            this.f1756b.hide();
        }

        @Override // com.cmplay.util.crop.d.a, com.cmplay.util.crop.d.b
        public void c(d dVar) {
            this.f1756b.show();
        }
    }
}
