package com.tencent.mm.sdk.a.a;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.tencent.mm.sdk.b.e;
import com.tencent.mm.sdk.constants.ConstantsAPI;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class a {

    /* renamed from: com.tencent.mm.sdk.a.a.a$a, reason: collision with other inner class name */
    public static class C0215a {
        public String m;
        public Bundle n;
        public String o;
        public String p;
    }

    public static boolean a(Context context, C0215a c0215a) {
        if (context == null || c0215a == null) {
            com.tencent.mm.sdk.b.a.a("MicroMsg.SDK.MMessage", "send fail, invalid argument");
            return false;
        }
        if (e.j(c0215a.p)) {
            com.tencent.mm.sdk.b.a.a("MicroMsg.SDK.MMessage", "send fail, action is null");
            return false;
        }
        String str = e.j(c0215a.o) ? null : c0215a.o + ".permission.MM_MESSAGE";
        Intent intent = new Intent(c0215a.p);
        if (c0215a.n != null) {
            intent.putExtras(c0215a.n);
        }
        String packageName = context.getPackageName();
        intent.putExtra(ConstantsAPI.SDK_VERSION, 570490883);
        intent.putExtra(ConstantsAPI.APP_PACKAGE, packageName);
        intent.putExtra(ConstantsAPI.CONTENT, c0215a.m);
        intent.putExtra(ConstantsAPI.CHECK_SUM, b.a(c0215a.m, 570490883, packageName));
        context.sendBroadcast(intent, str);
        com.tencent.mm.sdk.b.a.d("MicroMsg.SDK.MMessage", "send mm message, intent=" + intent + ", perm=" + str);
        return true;
    }
}
