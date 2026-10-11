package com.cmplay.h.a;

import android.app.Activity;
import android.content.Context;
import com.cmplay.tile2.ui.LoveShareActivity;
import com.cmplay.tile2.ui.ShareActivity;
import com.cmplay.tile2.ui.SongMixShareActivity;
import com.cmplay.util.NativeUtil;

/* compiled from: SharePlatform.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public abstract class c implements com.cmplay.h.c {

    /* renamed from: a, reason: collision with root package name */
    protected com.cmplay.h.a f1378a;

    /* renamed from: b, reason: collision with root package name */
    protected Context f1379b;

    public abstract void a(com.cmplay.h.e eVar);

    public c(Context context, com.cmplay.h.a aVar) {
        this.f1378a = aVar;
        this.f1379b = context;
    }

    public String a() {
        return this.f1378a.a();
    }

    public c(Context context) {
        this.f1379b = context;
    }

    protected void a(int i, int i2) {
        NativeUtil.shareCallbackOnGLThread(i, i2);
    }

    protected void b() {
        Activity activity = (Activity) this.f1379b;
        if ((activity instanceof ShareActivity) || (activity instanceof LoveShareActivity) || (activity instanceof SongMixShareActivity)) {
            ((Activity) this.f1379b).finish();
        }
    }

    protected void a(String str) {
        com.cmplay.h.b.a().a(str);
    }
}
