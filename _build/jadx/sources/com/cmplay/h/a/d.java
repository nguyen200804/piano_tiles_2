package com.cmplay.h.a;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import java.io.File;

/* compiled from: TwitterPlatform.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class d extends c implements com.cmplay.h.c {
    private String c;
    private String d;
    private Uri e;
    private com.cmplay.h.e f;

    public d(Context context) {
        super(context, com.cmplay.h.a.Twitter);
    }

    @Override // com.cmplay.h.a.c
    public void a(com.cmplay.h.e eVar) {
        this.f = eVar;
        this.c = eVar.b();
        this.d = eVar.a();
        if (!TextUtils.isEmpty(eVar.c())) {
            this.e = Uri.fromFile(new File(eVar.c()));
        }
        com.cmplay.util.e.a((Activity) this.f1379b, c(), 1000);
        String a2 = com.cmplay.h.b.a(this.f.g());
        com.cmplay.h.b.a().a("clk_twitter_share");
        com.cmplay.h.b.a().a("clk_twitter_share" + a2);
        com.cmplay.h.f.b().a(com.cmplay.h.b.b(this.f.g()), com.cmplay.h.b.e(), com.cmplay.h.b.a(this.f.g(), this.f.f()), 2);
    }

    public Intent c() {
        return d();
    }

    Intent d() {
        Intent intent = new Intent("android.intent.action.SEND");
        StringBuilder sb = new StringBuilder();
        if (!TextUtils.isEmpty(this.c)) {
            sb.append(this.c);
        }
        if (this.d != null) {
            if (sb.length() > 0) {
                sb.append("->");
            }
            sb.append(this.d.toString());
        }
        intent.putExtra("android.intent.extra.TEXT", sb.toString());
        intent.setType("text/plain");
        if (this.e != null) {
            intent.putExtra("android.intent.extra.STREAM", this.e);
            intent.setType("image/*");
        }
        intent.setClassName(this.f1378a.a(), this.f1378a.b());
        return intent;
    }

    @Override // com.cmplay.h.c
    public void a(int i, int i2, Intent intent) {
        if (i == 1000) {
            String a2 = com.cmplay.h.b.a(this.f.g());
            int b2 = com.cmplay.h.b.b(this.f.g());
            int e = com.cmplay.h.b.e();
            int a3 = com.cmplay.h.b.a(this.f.g(), this.f.f());
            if (i2 == -1) {
                a(4, 1);
                com.cmplay.h.b.a().a("at_twitter_share_success");
                com.cmplay.h.b.a().a("at_twitter_share_success" + a2);
                com.cmplay.h.f.b().a(b2, e, a3, 3);
            } else {
                a(4, 0);
                com.cmplay.h.b.a().a("at_twitter_share_faild");
                com.cmplay.h.b.a().a("at_twitter_share_faild" + a2);
                com.cmplay.h.f.b().a(b2, e, a3, 4);
            }
            com.cmplay.h.f.b().b(this);
            b();
        }
    }
}
