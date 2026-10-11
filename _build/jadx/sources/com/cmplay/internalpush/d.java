package com.cmplay.internalpush;

import android.content.Context;
import android.graphics.Bitmap;
import com.cmplay.webview.ui.WebViewActivity;

/* compiled from: CMPPromotionVideoCallBack.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class d implements com.cmplay.base.util.c.c, com.cmplay.internalpush.video.b.a, com.cmplay.internalpush.video.b.c, com.cmplay.internalpush.video.b.d {

    /* renamed from: a, reason: collision with root package name */
    private Context f1420a;

    /* renamed from: b, reason: collision with root package name */
    private m f1421b = null;

    /* compiled from: CMPPromotionVideoCallBack.java */
    private static class a {

        /* renamed from: a, reason: collision with root package name */
        private static d f1424a = new d();
    }

    public static d c() {
        return a.f1424a;
    }

    @Override // com.cmplay.internalpush.video.b.a
    public String c(String str) {
        return com.ijinshan.cloudconfig.a.b(com.cmplay.base.util.i.b(), str);
    }

    @Override // com.cmplay.base.util.b.a
    public void a(String str, String str2, boolean z) {
        e.a(str, str2, z);
        com.cmplay.base.util.g.a("视频埋点：" + str2);
    }

    @Override // com.cmplay.base.util.c.c
    public void a(String str, final com.cmplay.base.util.c.b bVar) {
        com.cmplay.base.util.c.d.a(e.f1466a).a(str, new com.cmplay.base.util.c.b() { // from class: com.cmplay.internalpush.d.1
            @Override // com.cmplay.base.util.c.b
            public void a(String str2, String str3) {
                bVar.a(str2, str3);
            }

            @Override // com.cmplay.base.util.c.b
            public void a(Bitmap bitmap, String str2, String str3) {
                bVar.a(bitmap, str2, str3);
            }
        });
    }

    @Override // com.cmplay.base.util.b.a
    public boolean b(String str) {
        com.cmplay.base.util.g.a("zzb", "innerPushJumpWebView --> " + str);
        WebViewActivity.a(e.f1466a, str, 0);
        return true;
    }

    @Override // com.cmplay.base.util.b.a
    public void a(int i) {
        com.cmplay.base.util.g.a("zzb", "CMPPromotionVideoCallBack.onDataUpdate  sceneType:" + i);
    }

    public void a(Context context) {
        if (com.cmplay.base.util.q.b()) {
            this.f1420a = context.getApplicationContext();
            com.cmplay.internalpush.video.e.a((com.cmplay.internalpush.video.b.c) this);
            com.cmplay.internalpush.video.e.a((com.cmplay.internalpush.video.b.d) this);
        }
    }

    @Override // com.cmplay.internalpush.video.b.c
    public void d() {
        e.f1467b = true;
    }

    @Override // com.cmplay.internalpush.video.b.c
    public void a(int i, String str) {
    }

    @Override // com.cmplay.internalpush.video.b.d
    public void a() {
    }

    @Override // com.cmplay.internalpush.video.b.d
    public void a(String str) {
    }

    @Override // com.cmplay.internalpush.video.b.d
    public void a(boolean z) {
        if (this.f1421b != null) {
            this.f1421b.a();
        }
    }

    @Override // com.cmplay.internalpush.video.b.d
    public void b() {
    }
}
