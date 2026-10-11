package com.cmplay.ad.c;

import android.app.Activity;
import com.cmplay.ad.b;
import com.cmplay.ad.c;
import com.cmplay.internalpush.video.b.d;
import com.cmplay.internalpush.video.e;

/* compiled from: InnerPushVideoAds.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class a extends b {

    /* renamed from: a, reason: collision with root package name */
    private c f1152a;

    /* compiled from: InnerPushVideoAds.java */
    /* renamed from: com.cmplay.ad.c.a$a, reason: collision with other inner class name */
    private static class C0029a {

        /* renamed from: a, reason: collision with root package name */
        private static a f1154a = new a();
    }

    public static a a() {
        return C0029a.f1154a;
    }

    public void a(boolean z) {
        e.a(z);
    }

    @Override // com.cmplay.ad.b, com.cmplay.ad.d
    public void onCreate(Activity activity) {
        super.onCreate(activity);
        e.a(new d() { // from class: com.cmplay.ad.c.a.1
            @Override // com.cmplay.internalpush.video.b.d
            public void a() {
                if (a.this.f1152a != null) {
                    a.this.f1152a.a();
                    com.cmplay.util.c.a("zzb", "开始播放");
                }
            }

            @Override // com.cmplay.internalpush.video.b.d
            public void a(String str) {
                if (a.this.f1152a != null) {
                    a.this.f1152a.a(true);
                    com.cmplay.util.c.a("zzb", "播放失败:" + str);
                }
            }

            @Override // com.cmplay.internalpush.video.b.d
            public void a(boolean z) {
                if (a.this.f1152a != null) {
                    a.this.f1152a.a(!z);
                    com.cmplay.util.c.a("zzb", "播放完成");
                }
            }

            @Override // com.cmplay.internalpush.video.b.d
            public void b() {
            }
        });
    }

    @Override // com.cmplay.ad.b, com.cmplay.ad.d
    public void onResume(Activity activity) {
    }

    @Override // com.cmplay.ad.b, com.cmplay.ad.d
    public boolean canShow(int reportFrom) {
        return com.cmplay.internalpush.b.a(reportFrom, com.cmplay.ad.a.g);
    }

    @Override // com.cmplay.ad.b, com.cmplay.ad.d
    public boolean show(int reportFrom) {
        return com.cmplay.internalpush.b.a(reportFrom);
    }

    @Override // com.cmplay.ad.b, com.cmplay.ad.d
    public void setListener(c l) {
        this.f1152a = l;
    }
}
