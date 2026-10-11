package com.cmplay.h.a;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import android.util.Log;
import com.cmplay.util.NativeUtil;
import java.io.File;

/* compiled from: DefaultPlatform.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class a extends c {
    private long c;
    private com.cmplay.h.e d;

    public a(Context context) {
        super(context);
    }

    @Override // com.cmplay.h.a.c
    public void a(com.cmplay.h.e eVar) {
        File file;
        this.d = eVar;
        Intent intent = new Intent("android.intent.action.SEND");
        StringBuilder sb = new StringBuilder();
        if (!TextUtils.isEmpty(eVar.b())) {
            sb.append(eVar.b());
        }
        if (eVar.a() != null) {
            if (sb.length() > 0) {
                sb.append("#pianotiles2");
                sb.append("->");
            }
            sb.append(eVar.a());
        }
        String sb2 = sb.toString();
        intent.putExtra("android.intent.extra.TEXT", sb2);
        intent.putExtra("sms_body", sb2);
        intent.putExtra("Kdescription", sb2);
        intent.setType("text/plain");
        String c = eVar.c();
        if (!TextUtils.isEmpty(c) && (file = new File(c)) != null && file.exists() && file.isFile()) {
            intent.setType("image/*");
            intent.putExtra("android.intent.extra.STREAM", Uri.fromFile(file));
        }
        intent.setFlags(268435456);
        com.cmplay.util.e.a((Activity) this.f1379b, Intent.createChooser(intent, NativeUtil.getLanguageTextByKey("share_title")), 1001);
        this.c = System.currentTimeMillis();
        String a2 = com.cmplay.h.b.a(this.d.g());
        a("clk_system_share");
        a("clk_system_share" + a2);
        com.cmplay.h.f.b().a(com.cmplay.h.b.b(this.d.g()), com.cmplay.h.b.e(), com.cmplay.h.b.a(this.d.g(), this.d.f()), 2);
    }

    @Override // com.cmplay.h.c
    public void a(int i, int i2, Intent intent) {
        if (i == 1001) {
            Log.e("MMM", "DefaultPlatform onActivityResult result code is " + i2 + ",data=null is " + (intent == null));
            String a2 = com.cmplay.h.b.a(this.d.g());
            int b2 = com.cmplay.h.b.b(this.d.g());
            int e = com.cmplay.h.b.e();
            int a3 = com.cmplay.h.b.a(this.d.g(), this.d.f());
            if (System.currentTimeMillis() - this.c > 4000) {
                a(5, 1);
                a("at_sys_share_valid");
                a("at_sys_share_valid" + a2);
                com.cmplay.h.f.b().a(b2, e, a3, 3);
            } else {
                a(5, 2);
                a("at_sys_share_invalid");
                a("at_sys_share_invalid" + a2);
                com.cmplay.h.f.b().a(b2, e, a3, 4);
            }
            com.cmplay.h.f.b().b(this);
            b();
        }
    }
}
