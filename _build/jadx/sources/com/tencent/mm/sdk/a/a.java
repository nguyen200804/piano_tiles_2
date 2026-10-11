package com.tencent.mm.sdk.a;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.tencent.mm.sdk.a.a.b;
import com.tencent.mm.sdk.b.e;
import com.tencent.mm.sdk.constants.ConstantsAPI;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class a {

    /* renamed from: com.tencent.mm.sdk.a.a$a, reason: collision with other inner class name */
    public static class C0214a {
        public int flags = -1;
        public String k;
        public String l;
        public String m;
        public Bundle n;
    }

    public static boolean a(Context context, C0214a c0214a) {
        if (context == null || c0214a == null) {
            com.tencent.mm.sdk.b.a.a("MicroMsg.SDK.MMessageAct", "send fail, invalid argument");
            return false;
        }
        if (e.j(c0214a.k)) {
            com.tencent.mm.sdk.b.a.a("MicroMsg.SDK.MMessageAct", "send fail, invalid targetPkgName, targetPkgName = " + c0214a.k);
            return false;
        }
        if (e.j(c0214a.l)) {
            c0214a.l = c0214a.k + ".wxapi.WXEntryActivity";
        }
        com.tencent.mm.sdk.b.a.d("MicroMsg.SDK.MMessageAct", "send, targetPkgName = " + c0214a.k + ", targetClassName = " + c0214a.l);
        Intent intent = new Intent();
        intent.setClassName(c0214a.k, c0214a.l);
        if (c0214a.n != null) {
            intent.putExtras(c0214a.n);
        }
        String packageName = context.getPackageName();
        intent.putExtra(ConstantsAPI.SDK_VERSION, 570490883);
        intent.putExtra(ConstantsAPI.APP_PACKAGE, packageName);
        intent.putExtra(ConstantsAPI.CONTENT, c0214a.m);
        intent.putExtra(ConstantsAPI.CHECK_SUM, b.a(c0214a.m, 570490883, packageName));
        if (c0214a.flags == -1) {
            intent.addFlags(268435456).addFlags(134217728);
        } else {
            intent.setFlags(c0214a.flags);
        }
        try {
            context.startActivity(intent);
            com.tencent.mm.sdk.b.a.d("MicroMsg.SDK.MMessageAct", "send mm message, intent=" + intent);
            return true;
        } catch (Exception e) {
            com.tencent.mm.sdk.b.a.a("MicroMsg.SDK.MMessageAct", "send fail, ex = %s", e.getMessage());
            return false;
        }
    }
}
