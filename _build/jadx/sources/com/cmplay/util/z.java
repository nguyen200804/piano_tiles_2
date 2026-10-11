package com.cmplay.util;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.os.Environment;
import android.provider.MediaStore;
import java.io.File;
import java.io.IOException;
import org.cocos2dx.lib.GameControllerDelegate;

/* compiled from: PictureSelector.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class z implements com.cmplay.h.c {

    /* renamed from: b, reason: collision with root package name */
    private Activity f1921b;
    private Uri d;

    /* renamed from: a, reason: collision with root package name */
    private a f1920a = null;
    private int c = -1;

    /* compiled from: PictureSelector.java */
    public interface a {
        void a(boolean z, String str);
    }

    public z(Activity activity) {
        this.f1921b = activity;
    }

    @Override // com.cmplay.h.c
    public void a(int i, int i2, Intent intent) {
        switch (i) {
            case 1002:
                if (i2 == -1 && intent != null) {
                    this.d = intent.getData();
                    a(this.d);
                    break;
                } else {
                    a(false, null);
                    break;
                }
            case GameControllerDelegate.THUMBSTICK_RIGHT_Y /* 1003 */:
            case GameControllerDelegate.BUTTON_B /* 1005 */:
                if (i2 == -1 && intent != null) {
                    File f = f();
                    if (f.exists()) {
                        File e = e();
                        try {
                            a(f.getAbsolutePath());
                            g.a(f, e);
                            a(true, f.getAbsolutePath());
                            j.c();
                            if (this.f1920a != null) {
                                this.f1920a.a(true, f.getAbsolutePath());
                                break;
                            }
                        } catch (IOException e2) {
                            e2.printStackTrace();
                            a(true, f.getAbsolutePath());
                            if (this.f1920a != null) {
                                this.f1920a.a(true, f.getAbsolutePath());
                                return;
                            }
                            return;
                        }
                    } else {
                        a(false, null);
                        break;
                    }
                } else {
                    a(false, null);
                    break;
                }
                break;
            case GameControllerDelegate.BUTTON_A /* 1004 */:
                if (i2 == -1) {
                    File f2 = f();
                    if (f2.exists()) {
                        this.d = Uri.fromFile(f2);
                        a(this.d);
                        break;
                    } else {
                        a(false, null);
                        break;
                    }
                } else {
                    a(false, null);
                    break;
                }
        }
    }

    public void a(int i, String[] strArr, int[] iArr) {
        switch (i) {
            case 60000:
                if (iArr.length > 0 && iArr[0] == 0) {
                    b();
                    break;
                }
                break;
            case 60001:
                if (iArr.length > 0 && iArr[0] == 0) {
                    b(this.d);
                    break;
                }
                break;
        }
    }

    private int d() {
        return com.cmplay.h.b.b(com.cmplay.h.d.c());
    }

    public void a(Uri uri) {
        if (!e.c("android.permission.READ_EXTERNAL_STORAGE")) {
            e.a(this.f1921b, "android.permission.READ_EXTERNAL_STORAGE", 60001);
        } else {
            b(uri);
        }
    }

    public void a() {
        if (!e.c("android.permission.CAMERA")) {
            e.a(this.f1921b, "android.permission.CAMERA", 60000);
        } else {
            b();
        }
    }

    public void b() {
        try {
            File f = f();
            int d = d();
            Intent intent = new Intent("android.media.action.IMAGE_CAPTURE");
            intent.putExtra("output", Uri.fromFile(f));
            e.a(this.f1921b, intent, GameControllerDelegate.BUTTON_A);
            this.c = GameControllerDelegate.BUTTON_A;
            com.cmplay.h.b.a().a("clk_camera");
            com.cmplay.h.f.b().a(d, 6353, 0, 2);
        } catch (Exception e) {
            c.a("Camera", "exception " + e.getMessage());
        }
    }

    public void c() {
        f();
        int d = d();
        e.a(this.f1921b, new Intent("android.intent.action.PICK", MediaStore.Images.Media.EXTERNAL_CONTENT_URI), 1002);
        this.c = 1002;
        com.cmplay.h.b.a().a("clk_Gallery");
        com.cmplay.h.f.b().a(d, 6354, 0, 2);
    }

    private File e() {
        return this.f1921b.getFileStreamPath("share_CD_bg.jpg");
    }

    private File f() {
        File file = new File(Environment.getExternalStorageDirectory().getAbsolutePath() + File.separator + "piano2/share_CD_bg.jpg");
        File parentFile = file.getParentFile();
        if (parentFile != null && !parentFile.exists()) {
            parentFile.mkdirs();
        }
        if (!file.exists()) {
            try {
                file.createNewFile();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        return file;
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x004b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void a(java.lang.String r5) {
        /*
            r4 = this;
            r3 = 1
            r2 = 400(0x190, float:5.6E-43)
            android.graphics.BitmapFactory$Options r0 = new android.graphics.BitmapFactory$Options
            r0.<init>()
            r0.inJustDecodeBounds = r3
            android.graphics.BitmapFactory.decodeFile(r5, r0)
            int r1 = r0.outWidth
            if (r1 != r2) goto L12
        L11:
            return
        L12:
            r1 = 0
            r0.inJustDecodeBounds = r1
            android.graphics.Bitmap r0 = android.graphics.BitmapFactory.decodeFile(r5, r0)
            if (r0 == 0) goto L11
            android.graphics.Bitmap r0 = android.graphics.Bitmap.createScaledBitmap(r0, r2, r2, r3)
            r2 = 0
            java.io.FileOutputStream r1 = new java.io.FileOutputStream     // Catch: java.io.FileNotFoundException -> L37 java.lang.Throwable -> L47
            r1.<init>(r5)     // Catch: java.io.FileNotFoundException -> L37 java.lang.Throwable -> L47
            android.graphics.Bitmap$CompressFormat r2 = android.graphics.Bitmap.CompressFormat.JPEG     // Catch: java.lang.Throwable -> L54 java.io.FileNotFoundException -> L56
            r3 = 100
            r0.compress(r2, r3, r1)     // Catch: java.lang.Throwable -> L54 java.io.FileNotFoundException -> L56
            if (r1 == 0) goto L11
            r1.close()     // Catch: java.io.IOException -> L32
            goto L11
        L32:
            r0 = move-exception
            r0.printStackTrace()
            goto L11
        L37:
            r0 = move-exception
            r1 = r2
        L39:
            r0.printStackTrace()     // Catch: java.lang.Throwable -> L54
            if (r1 == 0) goto L11
            r1.close()     // Catch: java.io.IOException -> L42
            goto L11
        L42:
            r0 = move-exception
            r0.printStackTrace()
            goto L11
        L47:
            r0 = move-exception
            r1 = r2
        L49:
            if (r1 == 0) goto L4e
            r1.close()     // Catch: java.io.IOException -> L4f
        L4e:
            throw r0
        L4f:
            r1 = move-exception
            r1.printStackTrace()
            goto L4e
        L54:
            r0 = move-exception
            goto L49
        L56:
            r0 = move-exception
            goto L39
        */
        throw new UnsupportedOperationException("Method not decompiled: com.cmplay.util.z.a(java.lang.String):void");
    }

    public void b(Uri uri) {
        e.a(this.f1921b, com.cmplay.util.crop.a.a(uri, Uri.fromFile(f())).a().a(400, 400).a(this.f1921b), GameControllerDelegate.BUTTON_B);
    }

    public void a(boolean z, String str) {
        if (this.f1920a != null) {
            this.f1920a.a(false, null);
        }
        int d = d();
        if (z) {
            switch (this.c) {
                case 1002:
                    com.cmplay.h.b.a().a("at_change_cd_cover_success_ga");
                    com.cmplay.h.f.b().a(d, 6354, 0, 3);
                    break;
                case GameControllerDelegate.BUTTON_A /* 1004 */:
                    com.cmplay.h.b.a().a("at_change_cd_cover_success_ca");
                    com.cmplay.h.f.b().a(d, 6353, 0, 3);
                    break;
            }
        }
        switch (this.c) {
            case 1002:
                com.cmplay.h.b.a().a("at_change_cd_cover_fail_ga");
                com.cmplay.h.f.b().a(d, 6354, 0, 4);
                break;
            case GameControllerDelegate.BUTTON_A /* 1004 */:
                com.cmplay.h.b.a().a("at_change_cd_cover_fail_ca");
                com.cmplay.h.f.b().a(d, 6353, 0, 4);
                break;
        }
    }

    public void a(a aVar) {
        this.f1920a = aVar;
    }
}
