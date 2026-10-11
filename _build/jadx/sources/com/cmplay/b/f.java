package com.cmplay.b;

import android.graphics.Bitmap;
import android.os.Handler;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* compiled from: ImageRequest.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class f {

    /* renamed from: a, reason: collision with root package name */
    private static f f1190a;

    /* renamed from: b, reason: collision with root package name */
    private ExecutorService f1191b;
    private Handler c;

    /* compiled from: ImageRequest.java */
    public interface a {
        void a(Bitmap bitmap);
    }

    public static f a() {
        if (f1190a == null) {
            synchronized (f.class) {
                if (f1190a == null) {
                    f1190a = new f();
                }
            }
        }
        return f1190a;
    }

    public f() {
        this(1);
    }

    public f(int i) {
        this(i, new Handler());
    }

    public f(int i, Handler handler) {
        this.f1191b = Executors.newFixedThreadPool(i);
        this.c = handler;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00a7  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00ac A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r0v10, types: [java.net.HttpURLConnection] */
    /* JADX WARN: Type inference failed for: r0v11 */
    /* JADX WARN: Type inference failed for: r0v13 */
    /* JADX WARN: Type inference failed for: r0v16 */
    /* JADX WARN: Type inference failed for: r0v17, types: [android.graphics.Bitmap] */
    /* JADX WARN: Type inference failed for: r0v21 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.graphics.Bitmap a(java.lang.String r11, com.cmplay.b.a r12) {
        /*
            Method dump skipped, instructions count: 204
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.cmplay.b.f.a(java.lang.String, com.cmplay.b.a):android.graphics.Bitmap");
    }

    public void a(String str, com.cmplay.b.a aVar, a aVar2) {
        a(str, aVar, aVar2, this.c);
    }

    public void a(final String str, final com.cmplay.b.a aVar, final a aVar2, final Handler handler) {
        this.f1191b.execute(new Runnable() { // from class: com.cmplay.b.f.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    final Bitmap a2 = f.this.a(str, aVar);
                    handler.post(new Runnable() { // from class: com.cmplay.b.f.1.1
                        @Override // java.lang.Runnable
                        public void run() {
                            aVar2.a(a2);
                        }
                    });
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        });
    }
}
