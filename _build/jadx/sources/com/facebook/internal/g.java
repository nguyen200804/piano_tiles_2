package com.facebook.internal;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import com.facebook.FacebookActivity;
import com.facebook.internal.aa;

/* compiled from: DialogPresenter.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class g {

    /* compiled from: DialogPresenter.java */
    public interface a {
        Bundle a();

        Bundle b();
    }

    public static void a(com.facebook.internal.a aVar) {
        a(aVar, new com.facebook.i("Unable to show the provided content via the web or the installed version of the Facebook app. Some dialogs are only supported starting API 14."));
    }

    public static void a(com.facebook.internal.a aVar, com.facebook.i iVar) {
        b(aVar, iVar);
    }

    public static void a(com.facebook.internal.a aVar, Activity activity) {
        activity.startActivityForResult(aVar.b(), aVar.d());
        aVar.e();
    }

    public static void a(com.facebook.internal.a aVar, l lVar) {
        lVar.a(aVar.b(), aVar.d());
        aVar.e();
    }

    public static boolean a(f fVar) {
        return c(fVar) != -1;
    }

    public static boolean b(f fVar) {
        return d(fVar) != null;
    }

    public static void b(com.facebook.internal.a aVar, com.facebook.i iVar) {
        if (iVar != null) {
            ab.b(com.facebook.l.f());
            Intent intent = new Intent();
            intent.setClass(com.facebook.l.f(), FacebookActivity.class);
            intent.setAction(FacebookActivity.f2403a);
            v.a(intent, aVar.c().toString(), (String) null, v.a(), v.a(iVar));
            aVar.a(intent);
        }
    }

    public static void a(com.facebook.internal.a aVar, String str, Bundle bundle) {
        ab.b(com.facebook.l.f());
        ab.a(com.facebook.l.f());
        Bundle bundle2 = new Bundle();
        bundle2.putString("action", str);
        bundle2.putBundle("params", bundle);
        Intent intent = new Intent();
        v.a(intent, aVar.c().toString(), str, v.a(), bundle2);
        intent.setClass(com.facebook.l.f(), FacebookActivity.class);
        intent.setAction("FacebookDialogFragment");
        aVar.a(intent);
    }

    public static void a(com.facebook.internal.a aVar, Bundle bundle, f fVar) {
        Uri a2;
        ab.b(com.facebook.l.f());
        ab.a(com.facebook.l.f());
        String name = fVar.name();
        Uri d = d(fVar);
        if (d == null) {
            throw new com.facebook.i("Unable to fetch the Url for the DialogFeature : '" + name + "'");
        }
        Bundle a3 = y.a(aVar.c().toString(), v.a(), bundle);
        if (a3 == null) {
            throw new com.facebook.i("Unable to fetch the app's key-hash");
        }
        if (d.isRelative()) {
            a2 = aa.a(y.a(), d.toString(), a3);
        } else {
            a2 = aa.a(d.getAuthority(), d.getPath(), a3);
        }
        Bundle bundle2 = new Bundle();
        bundle2.putString("url", a2.toString());
        bundle2.putBoolean("is_fallback", true);
        Intent intent = new Intent();
        v.a(intent, aVar.c().toString(), fVar.a(), v.a(), bundle2);
        intent.setClass(com.facebook.l.f(), FacebookActivity.class);
        intent.setAction("FacebookDialogFragment");
        aVar.a(intent);
    }

    public static void a(com.facebook.internal.a aVar, a aVar2, f fVar) {
        Bundle b2;
        Context f = com.facebook.l.f();
        String a2 = fVar.a();
        int c = c(fVar);
        if (c == -1) {
            throw new com.facebook.i("Cannot present this dialog. This likely means that the Facebook app is not installed.");
        }
        if (v.a(c)) {
            b2 = aVar2.a();
        } else {
            b2 = aVar2.b();
        }
        if (b2 == null) {
            b2 = new Bundle();
        }
        Intent a3 = v.a(f, aVar.c().toString(), a2, c, b2);
        if (a3 == null) {
            throw new com.facebook.i("Unable to create Intent; this likely means theFacebook app is not installed.");
        }
        aVar.a(a3);
    }

    private static Uri d(f fVar) {
        String name = fVar.name();
        aa.a a2 = aa.a(com.facebook.l.i(), fVar.a(), name);
        if (a2 == null) {
            return null;
        }
        return a2.c();
    }

    public static int c(f fVar) {
        String i = com.facebook.l.i();
        String a2 = fVar.a();
        return v.a(a2, a(i, a2, fVar));
    }

    private static int[] a(String str, String str2, f fVar) {
        aa.a a2 = aa.a(str, str2, fVar.name());
        return a2 != null ? a2.d() : new int[]{fVar.b()};
    }
}
