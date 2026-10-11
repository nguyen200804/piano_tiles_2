package a;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.util.Log;
import java.lang.reflect.Method;
import java.util.Collection;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

/* compiled from: MeasurementEvent.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class b {

    /* renamed from: a, reason: collision with root package name */
    private Context f3a;

    /* renamed from: b, reason: collision with root package name */
    private String f4b;
    private Bundle c;

    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    static void a(android.content.Context r5, java.lang.String r6, android.content.Intent r7, java.util.Map<java.lang.String, java.lang.String> r8) {
        /*
            android.os.Bundle r1 = new android.os.Bundle
            r1.<init>()
            if (r7 == 0) goto L70
            android.os.Bundle r0 = a.a.a(r7)
            if (r0 == 0) goto L32
            android.os.Bundle r0 = a(r5, r6, r0, r7)
            r2 = r0
        L12:
            if (r8 == 0) goto L67
            java.util.Set r0 = r8.keySet()
            java.util.Iterator r3 = r0.iterator()
        L1c:
            boolean r0 = r3.hasNext()
            if (r0 == 0) goto L67
            java.lang.Object r0 = r3.next()
            java.lang.String r0 = (java.lang.String) r0
            java.lang.Object r1 = r8.get(r0)
            java.lang.String r1 = (java.lang.String) r1
            r2.putString(r0, r1)
            goto L1c
        L32:
            android.net.Uri r0 = r7.getData()
            if (r0 == 0) goto L41
            java.lang.String r2 = "intentData"
            java.lang.String r0 = r0.toString()
            r1.putString(r2, r0)
        L41:
            android.os.Bundle r2 = r7.getExtras()
            if (r2 == 0) goto L70
            java.util.Set r0 = r2.keySet()
            java.util.Iterator r3 = r0.iterator()
        L4f:
            boolean r0 = r3.hasNext()
            if (r0 == 0) goto L70
            java.lang.Object r0 = r3.next()
            java.lang.String r0 = (java.lang.String) r0
            java.lang.Object r4 = r2.get(r0)
            java.lang.String r4 = a(r4)
            r1.putString(r0, r4)
            goto L4f
        L67:
            a.b r0 = new a.b
            r0.<init>(r5, r6, r2)
            r0.a()
            return
        L70:
            r2 = r1
            goto L12
        */
        throw new UnsupportedOperationException("Method not decompiled: a.b.a(android.content.Context, java.lang.String, android.content.Intent, java.util.Map):void");
    }

    private b(Context context, String str, Bundle bundle) {
        this.f3a = context.getApplicationContext();
        this.f4b = str;
        this.c = bundle;
    }

    private void a() {
        if (this.f4b == null) {
            Log.d(getClass().getName(), "Event name is required");
        }
        try {
            Class<?> cls = Class.forName("android.support.v4.content.LocalBroadcastManager");
            Method method = cls.getMethod(com.cmplay.base.util.ipc.a.FORCE_STATIC_METHOD, Context.class);
            Method method2 = cls.getMethod("sendBroadcast", Intent.class);
            Object invoke = method.invoke(null, this.f3a);
            Intent intent = new Intent("com.parse.bolts.measurement_event");
            intent.putExtra("event_name", this.f4b);
            intent.putExtra("event_args", this.c);
            method2.invoke(invoke, intent);
        } catch (Exception e) {
            Log.d(getClass().getName(), "LocalBroadcastManager in android support library is required to raise bolts event.");
        }
    }

    private static Bundle a(Context context, String str, Bundle bundle, Intent intent) {
        Bundle bundle2 = new Bundle();
        ComponentName resolveActivity = intent.resolveActivity(context.getPackageManager());
        if (resolveActivity != null) {
            bundle2.putString("class", resolveActivity.getShortClassName());
        }
        if ("al_nav_out".equals(str)) {
            if (resolveActivity != null) {
                bundle2.putString("package", resolveActivity.getPackageName());
            }
            if (intent.getData() != null) {
                bundle2.putString("outputURL", intent.getData().toString());
            }
            if (intent.getScheme() != null) {
                bundle2.putString("outputURLScheme", intent.getScheme());
            }
        } else if ("al_nav_in".equals(str)) {
            if (intent.getData() != null) {
                bundle2.putString("inputURL", intent.getData().toString());
            }
            if (intent.getScheme() != null) {
                bundle2.putString("inputURLScheme", intent.getScheme());
            }
        }
        for (String str2 : bundle.keySet()) {
            Object obj = bundle.get(str2);
            if (obj instanceof Bundle) {
                for (String str3 : ((Bundle) obj).keySet()) {
                    String a2 = a(((Bundle) obj).get(str3));
                    if (str2.equals("referer_app_link")) {
                        if (str3.equalsIgnoreCase("url")) {
                            bundle2.putString("refererURL", a2);
                        } else if (str3.equalsIgnoreCase("app_name")) {
                            bundle2.putString("refererAppName", a2);
                        } else if (str3.equalsIgnoreCase("package")) {
                            bundle2.putString("sourceApplication", a2);
                        }
                    }
                    bundle2.putString(str2 + "/" + str3, a2);
                }
            } else {
                String a3 = a(obj);
                if (str2.equals("target_url")) {
                    Uri parse = Uri.parse(a3);
                    bundle2.putString("targetURL", parse.toString());
                    bundle2.putString("targetURLHost", parse.getHost());
                } else {
                    bundle2.putString(str2, a3);
                }
            }
        }
        return bundle2;
    }

    private static String a(Object obj) {
        String str = null;
        if (obj == null) {
            return null;
        }
        if ((obj instanceof JSONArray) || (obj instanceof JSONObject)) {
            return obj.toString();
        }
        try {
            if (obj instanceof Collection) {
                str = new JSONArray((Collection) obj).toString();
            } else if (obj instanceof Map) {
                str = new JSONObject((Map) obj).toString();
            } else {
                str = obj.toString();
            }
            return str;
        } catch (Exception e) {
            return str;
        }
    }
}
