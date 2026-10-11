package com.mopub.nativesdk.core;

import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.text.TextUtils;
import android.util.Log;
import com.mopub.nativesdk.Campaign;
import com.mopub.nativesdk.a.b;
import com.mopub.nativesdk.a.d;
import com.mopub.nativesdk.c.e;
import java.util.HashMap;
import java.util.Map;

/* compiled from: RRManager.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class n {

    /* renamed from: b, reason: collision with root package name */
    private static n f4669b;
    private static Map<String, Integer> c;

    /* renamed from: a, reason: collision with root package name */
    private Context f4670a;

    private n(Context context) {
        this.f4670a = context;
    }

    public static n a(Context context) {
        if (f4669b == null) {
            f4669b = new n(context);
        }
        if (c == null) {
            c = new HashMap();
        }
        return f4669b;
    }

    public final void a(String str, long j, String str2) {
        x xVar = new x();
        xVar.a(str);
        xVar.b(str2);
        xVar.b(j);
        if (xVar.c() == 0) {
            xVar.a(System.currentTimeMillis());
        }
        b.a(d.a(this.f4670a)).a(xVar);
    }

    public final void a() {
        for (x xVar : b.a(d.a(this.f4670a)).a()) {
            if (System.currentTimeMillis() - xVar.c() > 259200000) {
                b.a(d.a(this.f4670a)).b(xVar.a());
            }
        }
        if (c != null) {
            c.clear();
        }
    }

    public final boolean a(String str) {
        boolean z = false;
        try {
            if (!TextUtils.isEmpty(str)) {
                x a2 = b.a(d.a(this.f4670a)).a(str);
                if (a2 == null) {
                    a(str, new aa(this, str));
                } else {
                    a(str, a2.b());
                    C0219a.d();
                }
            } else if (C0219a.c != null) {
                new e().a(this.f4670a, new ac(this, str));
                z = true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return z;
    }

    public final void a(String str, w wVar) {
        Log.d("RRManager", " getReferFromNetByPkgName()");
        if (!TextUtils.isEmpty(str)) {
            com.mopub.nativesdk.c.d dVar = new com.mopub.nativesdk.c.d(this.f4670a);
            dVar.a(com.mopub.nativesdk.d.q.b(this.f4670a, "ak.native.sdk", "APPID", "5745-186"));
            dVar.b(com.mopub.nativesdk.d.q.b(this.f4670a, "ak.native.sdk", "SUBID", "1"));
            dVar.d(str);
            dVar.a(0, new af(this, str, wVar));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str, String str2) {
        new StringBuilder(" sendReferAndActive() : refer: ").append(str2).append("   pkgName").append(str);
        Context context = this.f4670a;
        Intent intent = new Intent("com.android.vending.INSTALL_REFERRER");
        if (Build.VERSION.SDK_INT >= 13) {
            intent.addFlags(32);
        }
        intent.putExtra("referrer", str2.replace("%3D", "=").replace("%26", "&"));
        intent.setPackage(str);
        context.sendBroadcast(intent);
    }

    static /* synthetic */ void a(n nVar, Campaign campaign, w wVar) {
        if (campaign == null) {
            return;
        }
        new com.mopub.nativesdk.b.b().a(nVar.f4670a, campaign.getClickUrl(), new ah(nVar, campaign, wVar));
    }

    public n() {
    }
}
