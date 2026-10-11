package com.cmplay.h.a;

import android.content.Context;
import android.content.Intent;
import android.graphics.BitmapFactory;
import com.cmplay.sharebase.g;
import com.cmplay.tiles4.R;

/* compiled from: WeChatPlatform.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class f extends c implements com.cmplay.sharebase.b.b {
    private com.cmplay.h.e c;

    public f(Context context) {
        super(context, com.cmplay.h.a.WeChat);
    }

    @Override // com.cmplay.h.a.c
    public void a(com.cmplay.h.e eVar) {
        this.c = eVar;
        g gVar = new g();
        gVar.e("wx6be15490dde8144a");
        gVar.c(eVar.c());
        gVar.a(eVar.a());
        gVar.a(BitmapFactory.decodeResource(this.f1379b.getResources(), R.drawable.app_thumb));
        gVar.b(eVar.b());
        gVar.d(eVar.b());
        com.cmplay.sharebase.e a2 = com.cmplay.sharebase.e.a();
        a2.a(this);
        com.cmplay.sharebase.b.d b2 = a2.b();
        if (b2 != null) {
            b2.onShareWechat(this.f1379b, gVar);
        }
        String a3 = com.cmplay.h.b.a(this.c.g());
        a("clk_wechat");
        a("clk_wechat" + a3);
        com.cmplay.h.f.b().a(com.cmplay.h.b.b(this.c.g()), com.cmplay.h.b.e(), com.cmplay.h.b.a(this.c.g(), this.c.f()), 2);
    }

    @Override // com.cmplay.h.c
    public void a(int i, int i2, Intent intent) {
        if (i == -1) {
            int b2 = com.cmplay.h.b.b(this.c.g());
            int e = com.cmplay.h.b.e();
            int a2 = com.cmplay.h.b.a(this.c.g(), this.c.f());
            String a3 = com.cmplay.h.b.a(this.c.g());
            switch (i2) {
                case 1:
                    a(7, 1);
                    com.cmplay.h.b.a().a("at_wechat_success");
                    com.cmplay.h.b.a().a("at_wechat_success" + a3);
                    com.cmplay.h.f.b().a(b2, e, a2, 3);
                    break;
                case 2:
                    a(7, 2);
                    com.cmplay.h.b.a().a("at_wechat_cancel");
                    com.cmplay.h.b.a().a("at_wechat_cancel" + a3);
                    com.cmplay.h.f.b().a(b2, e, a2, 5);
                    break;
                case 3:
                    a(7, 0);
                    com.cmplay.h.b.a().a("at_wechat_faild");
                    com.cmplay.h.b.a().a("at_wechat_faild" + a3);
                    com.cmplay.h.f.b().a(b2, e, a2, 4);
                    break;
            }
            com.cmplay.h.f.b().b(this);
            b();
        }
    }

    @Override // com.cmplay.sharebase.b.b
    public void a(int i) {
        a(-1, i, null);
    }
}
