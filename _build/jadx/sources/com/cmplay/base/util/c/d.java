package com.cmplay.base.util.c;

import android.content.Context;
import android.graphics.Bitmap;
import android.text.TextUtils;
import com.cmplay.base.util.c.a;
import com.cmplay.base.util.g;
import com.mopub.common.Constants;
import java.util.ArrayList;
import java.util.Iterator;

/* compiled from: ImageDownloadManager.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class d {

    /* renamed from: b, reason: collision with root package name */
    private static d f1230b = null;

    /* renamed from: a, reason: collision with root package name */
    public Context f1231a;
    private a c;
    private String d = "";
    private boolean e = false;

    private d(Context context) {
        b(context);
    }

    public static d a(Context context) {
        if (f1230b == null) {
            f1230b = new d(context);
        }
        return f1230b;
    }

    public void b(Context context) {
        this.f1231a = context;
        if (!this.e) {
            this.c = a.a(this.f1231a);
            if (this.f1231a.getCacheDir() != null) {
                this.d = this.f1231a.getCacheDir().getAbsolutePath();
                this.c.a(true);
                this.c.a(this.d);
            }
        }
        this.e = true;
    }

    public void a(ArrayList<String> arrayList, b bVar) {
        Iterator<String> it = arrayList.iterator();
        while (it.hasNext()) {
            a(it.next(), bVar);
        }
    }

    public synchronized void a(final String str, final b bVar) {
        if (!TextUtils.isEmpty(str) && (str.startsWith(Constants.HTTP) || str.startsWith(Constants.HTTPS))) {
            this.c.a(str, true, new a.InterfaceC0034a() { // from class: com.cmplay.base.util.c.d.1
                @Override // com.cmplay.base.util.c.a.InterfaceC0034a
                public void a(Bitmap bitmap, String str2) {
                    if (bitmap != null) {
                        String str3 = d.this.d + "/" + e.b(str);
                        try {
                            Runtime.getRuntime().exec("chmod 777 " + str3);
                        } catch (Exception e) {
                        }
                        if (bVar != null) {
                            bVar.a(bitmap, str2, str3);
                            return;
                        }
                        return;
                    }
                    if (bVar != null) {
                        bVar.a(str2, "Download image fail  imageUrl:" + str2);
                    }
                    g.a("图片下载失败  imageUrl:" + str2);
                }
            });
        }
    }
}
