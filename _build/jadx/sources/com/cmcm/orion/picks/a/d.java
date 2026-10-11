package com.cmcm.orion.picks.a;

import android.content.ComponentCallbacks;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Build;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

/* compiled from: MarketContext.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class d extends ContextWrapper {
    public d(Context context) {
        super(context);
    }

    private List<ResolveInfo> a(Intent intent) {
        List<ResolveInfo> list;
        PackageManager packageManager = getPackageManager();
        if (packageManager == null) {
            return null;
        }
        try {
            list = packageManager.queryIntentActivities(intent, 0);
            if (list == null) {
                return null;
            }
        } catch (Exception e) {
            list = null;
        }
        return list;
    }

    private void a(Intent intent, String str) {
        ResolveInfo resolveInfo;
        boolean z;
        List<ResolveInfo> a2 = a(intent);
        if (a2 == null) {
            return;
        }
        if (a2 != null) {
            Iterator<ResolveInfo> it = a2.iterator();
            while (it.hasNext()) {
                resolveInfo = it.next();
                if (resolveInfo != null && resolveInfo.isDefault) {
                    break;
                }
            }
        }
        resolveInfo = null;
        if (resolveInfo != null) {
            intent.setClassName(resolveInfo.activityInfo.packageName, resolveInfo.activityInfo.name);
            return;
        }
        Iterator<ResolveInfo> it2 = a2.iterator();
        while (true) {
            if (!it2.hasNext()) {
                z = false;
                break;
            }
            ResolveInfo next = it2.next();
            if (next.activityInfo != null && next.activityInfo.packageName.equalsIgnoreCase(str)) {
                intent.setClassName(next.activityInfo.packageName, next.activityInfo.name);
                z = true;
                break;
            }
        }
        if (!z) {
            ResolveInfo resolveInfo2 = a2.get(0);
            intent.setClassName(resolveInfo2.activityInfo.packageName, resolveInfo2.activityInfo.name);
        }
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final void startActivity(Intent intent) {
        if (intent == null) {
            super.startActivity(intent);
            return;
        }
        Uri data = intent.getData();
        intent.addFlags(268435456);
        intent.addFlags(65536);
        Intent intent2 = new Intent(intent);
        if (data != null) {
            try {
                if (data.toString() != null) {
                    String lowerCase = data.toString().toLowerCase(Locale.getDefault());
                    if (!intent.getAction().equals("android.intent.action.VIEW")) {
                        throw new Exception("not view action");
                    }
                    if (lowerCase.startsWith("http://") || lowerCase.startsWith("https://")) {
                        if (lowerCase.startsWith("https://play.google.com/store/apps/details") || lowerCase.startsWith("http://play.google.com/store/apps/details")) {
                            a(intent, "com.android.vending");
                        } else {
                            a(intent, "com.android.browser");
                        }
                    } else if (lowerCase.startsWith("market://")) {
                        a(intent, "com.android.vending");
                    }
                    super.startActivity(intent);
                    return;
                }
            } catch (Exception e) {
                super.startActivity(intent2);
                return;
            }
        }
        throw new Exception("null uri");
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final void registerComponentCallbacks(ComponentCallbacks callback) {
        if (Build.VERSION.SDK_INT >= 14) {
            com.cmcm.orion.adsdk.e.a().registerComponentCallbacks(callback);
        }
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final void unregisterComponentCallbacks(ComponentCallbacks callback) {
        if (Build.VERSION.SDK_INT >= 14) {
            com.cmcm.orion.adsdk.e.a().unregisterComponentCallbacks(callback);
        }
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final Context getApplicationContext() {
        return this;
    }
}
