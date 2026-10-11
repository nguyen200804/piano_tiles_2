package com.mopub.nativesdk.b;

import android.content.Context;
import android.os.Handler;
import android.text.TextUtils;
import com.mopub.nativesdk.d.p;

/* compiled from: JumpLoader.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
final class d implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    private String f4600a;

    /* renamed from: b, reason: collision with root package name */
    private String f4601b;
    private /* synthetic */ b c;

    public d(b bVar, Context context, String str, String str2) {
        this.c = bVar;
        this.f4600a = str;
        this.f4601b = str2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        e eVar;
        h hVar;
        e eVar2;
        e eVar3;
        e eVar4;
        Handler handler;
        e eVar5;
        e eVar6;
        e eVar7;
        e eVar8;
        e eVar9;
        e eVar10;
        e eVar11;
        e eVar12;
        e eVar13;
        e eVar14;
        this.c.f4598b = new e();
        eVar = this.c.f4598b;
        eVar.b(this.f4600a);
        hVar = this.c.c;
        a a2 = hVar.a(this.f4600a, this.f4601b);
        if (a2 == null || !a2.c || TextUtils.isEmpty(a2.f4595a)) {
            eVar2 = this.c.f4598b;
            eVar2.a(false);
            eVar3 = this.c.f4598b;
            eVar3.a("Empty result");
            eVar4 = this.c.f4598b;
            eVar4.a(4);
        } else {
            String replace = a2.f4595a.replace(" ", "%20");
            new StringBuilder("JSEngine isFinalUrl = ").append(replace);
            eVar5 = this.c.f4598b;
            eVar5.a(true);
            eVar6 = this.c.f4598b;
            eVar6.b(replace);
            eVar7 = this.c.f4598b;
            eVar7.a("success");
            if (p.g(replace)) {
                eVar14 = this.c.f4598b;
                eVar14.a(1);
            } else if (p.h(replace)) {
                String i = p.i(replace);
                if (!TextUtils.isEmpty(i)) {
                    eVar12 = this.c.f4598b;
                    eVar12.a(1);
                    eVar13 = this.c.f4598b;
                    eVar13.b(i);
                } else {
                    eVar10 = this.c.f4598b;
                    eVar10.a(2);
                    eVar11 = this.c.f4598b;
                    eVar11.b(replace);
                }
            } else if (p.f(replace) || TextUtils.isEmpty(replace) || !replace.toLowerCase().endsWith(".apk")) {
                eVar8 = this.c.f4598b;
                eVar8.a(2);
            } else {
                eVar9 = this.c.f4598b;
                eVar9.a(3);
            }
        }
        handler = this.c.d;
        handler.sendEmptyMessage(1);
    }
}
