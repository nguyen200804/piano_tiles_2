package com.facebook.internal;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.pm.Signature;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeSet;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicBoolean;

/* compiled from: NativeProtocol.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class v {

    /* renamed from: a, reason: collision with root package name */
    private static final c f3258a = new a();

    /* renamed from: b, reason: collision with root package name */
    private static List<c> f3259b = e();
    private static Map<String, List<c>> c = f();
    private static AtomicBoolean d = new AtomicBoolean(false);
    private static final List<Integer> e = Arrays.asList(20141218, 20141107, 20141028, 20141001, 20140701, 20140324, 20140204, 20131107, 20130618, 20130502, 20121101);

    /* compiled from: NativeProtocol.java */
    private static abstract class c {

        /* renamed from: a, reason: collision with root package name */
        private static final HashSet<String> f3260a = c();

        /* renamed from: b, reason: collision with root package name */
        private TreeSet<Integer> f3261b;

        protected abstract String a();

        private c() {
        }

        private static HashSet<String> c() {
            HashSet<String> hashSet = new HashSet<>();
            hashSet.add("8a3c4b262d721acd49a4bf97d5213199c86fa2b9");
            hashSet.add("a4b7452e2ed8f5f191058ca7bbfd26b0d3214bfc");
            hashSet.add("5e8f16062ea3cd2c4a0d547876baa6f38cabf625");
            return hashSet;
        }

        public boolean a(Context context, String str) {
            String str2 = Build.BRAND;
            int i = context.getApplicationInfo().flags;
            if (str2.startsWith("generic") && (i & 2) != 0) {
                return true;
            }
            try {
                for (Signature signature : context.getPackageManager().getPackageInfo(str, 64).signatures) {
                    if (f3260a.contains(aa.a(signature.toByteArray()))) {
                        return true;
                    }
                }
                return false;
            } catch (PackageManager.NameNotFoundException e) {
                return false;
            }
        }

        public TreeSet<Integer> b() {
            if (this.f3261b == null) {
                a(false);
            }
            return this.f3261b;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Code restructure failed: missing block: B:12:0x0005, code lost:
        
            if (r1.f3261b == null) goto L6;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public synchronized void a(boolean r2) {
            /*
                r1 = this;
                monitor-enter(r1)
                if (r2 != 0) goto L7
                java.util.TreeSet<java.lang.Integer> r0 = r1.f3261b     // Catch: java.lang.Throwable -> Lf
                if (r0 != 0) goto Ld
            L7:
                java.util.TreeSet r0 = com.facebook.internal.v.a(r1)     // Catch: java.lang.Throwable -> Lf
                r1.f3261b = r0     // Catch: java.lang.Throwable -> Lf
            Ld:
                monitor-exit(r1)
                return
            Lf:
                r0 = move-exception
                monitor-exit(r1)
                throw r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.facebook.internal.v.c.a(boolean):void");
        }
    }

    /* compiled from: NativeProtocol.java */
    private static class a extends c {
        private a() {
            super();
        }

        @Override // com.facebook.internal.v.c
        protected String a() {
            return "com.facebook.katana";
        }
    }

    /* compiled from: NativeProtocol.java */
    private static class b extends c {
        private b() {
            super();
        }

        @Override // com.facebook.internal.v.c
        protected String a() {
            return "com.facebook.orca";
        }
    }

    /* compiled from: NativeProtocol.java */
    private static class d extends c {
        private d() {
            super();
        }

        @Override // com.facebook.internal.v.c
        protected String a() {
            return "com.facebook.wakizashi";
        }
    }

    private static List<c> e() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(f3258a);
        arrayList.add(new d());
        return arrayList;
    }

    private static Map<String, List<c>> f() {
        HashMap hashMap = new HashMap();
        ArrayList arrayList = new ArrayList();
        arrayList.add(new b());
        hashMap.put("com.facebook.platform.action.request.OGACTIONPUBLISH_DIALOG", f3259b);
        hashMap.put("com.facebook.platform.action.request.FEED_DIALOG", f3259b);
        hashMap.put("com.facebook.platform.action.request.LIKE_DIALOG", f3259b);
        hashMap.put("com.facebook.platform.action.request.APPINVITES_DIALOG", f3259b);
        hashMap.put("com.facebook.platform.action.request.MESSAGE_DIALOG", arrayList);
        hashMap.put("com.facebook.platform.action.request.OGMESSAGEPUBLISH_DIALOG", arrayList);
        return hashMap;
    }

    static Intent a(Context context, Intent intent, c cVar) {
        ResolveInfo resolveActivity;
        if (intent == null || (resolveActivity = context.getPackageManager().resolveActivity(intent, 0)) == null || !cVar.a(context, resolveActivity.activityInfo.packageName)) {
            return null;
        }
        return intent;
    }

    static Intent b(Context context, Intent intent, c cVar) {
        ResolveInfo resolveService;
        if (intent == null || (resolveService = context.getPackageManager().resolveService(intent, 0)) == null || !cVar.a(context, resolveService.serviceInfo.packageName)) {
            return null;
        }
        return intent;
    }

    public static Intent a(Context context, String str, Collection<String> collection, String str2, boolean z, boolean z2, com.facebook.login.a aVar, String str3) {
        for (c cVar : f3259b) {
            Intent putExtra = new Intent().setClassName(cVar.a(), "com.facebook.katana.ProxyAuth").putExtra("client_id", str);
            if (!aa.a(collection)) {
                putExtra.putExtra("scope", TextUtils.join(",", collection));
            }
            if (!aa.a(str2)) {
                putExtra.putExtra("e2e", str2);
            }
            putExtra.putExtra("state", str3);
            putExtra.putExtra("response_type", "token,signed_request");
            putExtra.putExtra("return_scopes", "true");
            if (z2) {
                putExtra.putExtra("default_audience", aVar.a());
            }
            putExtra.putExtra("legacy_override", "v2.5");
            if (z) {
                putExtra.putExtra("auth_type", "rerequest");
            }
            Intent a2 = a(context, putExtra, cVar);
            if (a2 != null) {
                return a2;
            }
        }
        return null;
    }

    public static final int a() {
        return e.get(0).intValue();
    }

    private static Intent a(Context context, String str, String str2) {
        List<c> list = c.get(str2);
        if (list == null) {
            return null;
        }
        Intent intent = null;
        for (c cVar : list) {
            intent = a(context, new Intent().setAction(str).setPackage(cVar.a()).addCategory("android.intent.category.DEFAULT"), cVar);
            if (intent != null) {
                return intent;
            }
        }
        return intent;
    }

    public static boolean a(int i) {
        return e.contains(Integer.valueOf(i)) && i >= 20140701;
    }

    public static Intent a(Context context, String str, String str2, int i, Bundle bundle) {
        Intent a2 = a(context, "com.facebook.platform.PLATFORM_ACTIVITY", str2);
        if (a2 == null) {
            return null;
        }
        a(a2, str, str2, i, bundle);
        return a2;
    }

    public static void a(Intent intent, String str, String str2, int i, Bundle bundle) {
        String i2 = com.facebook.l.i();
        String j = com.facebook.l.j();
        intent.putExtra("com.facebook.platform.protocol.PROTOCOL_VERSION", i).putExtra("com.facebook.platform.protocol.PROTOCOL_ACTION", str2).putExtra("com.facebook.platform.extra.APPLICATION_ID", i2);
        if (a(i)) {
            Bundle bundle2 = new Bundle();
            bundle2.putString("action_id", str);
            aa.a(bundle2, "app_name", j);
            intent.putExtra("com.facebook.platform.protocol.BRIDGE_ARGS", bundle2);
            if (bundle == null) {
                bundle = new Bundle();
            }
            intent.putExtra("com.facebook.platform.protocol.METHOD_ARGS", bundle);
            return;
        }
        intent.putExtra("com.facebook.platform.protocol.CALL_ID", str);
        if (!aa.a(j)) {
            intent.putExtra("com.facebook.platform.extra.APPLICATION_NAME", j);
        }
        intent.putExtras(bundle);
    }

    public static Intent a(Intent intent, Bundle bundle, com.facebook.i iVar) {
        UUID b2 = b(intent);
        if (b2 == null) {
            return null;
        }
        Intent intent2 = new Intent();
        intent2.putExtra("com.facebook.platform.protocol.PROTOCOL_VERSION", a(intent));
        Bundle bundle2 = new Bundle();
        bundle2.putString("action_id", b2.toString());
        if (iVar != null) {
            bundle2.putBundle("error", a(iVar));
        }
        intent2.putExtra("com.facebook.platform.protocol.BRIDGE_ARGS", bundle2);
        if (bundle != null) {
            intent2.putExtra("com.facebook.platform.protocol.RESULT_ARGS", bundle);
            return intent2;
        }
        return intent2;
    }

    public static Intent a(Context context) {
        for (c cVar : f3259b) {
            Intent b2 = b(context, new Intent("com.facebook.platform.PLATFORM_SERVICE").setPackage(cVar.a()).addCategory("android.intent.category.DEFAULT"), cVar);
            if (b2 != null) {
                return b2;
            }
        }
        return null;
    }

    public static int a(Intent intent) {
        return intent.getIntExtra("com.facebook.platform.protocol.PROTOCOL_VERSION", 0);
    }

    public static UUID b(Intent intent) {
        String stringExtra;
        if (intent == null) {
            return null;
        }
        if (a(a(intent))) {
            Bundle bundleExtra = intent.getBundleExtra("com.facebook.platform.protocol.BRIDGE_ARGS");
            stringExtra = bundleExtra != null ? bundleExtra.getString("action_id") : null;
        } else {
            stringExtra = intent.getStringExtra("com.facebook.platform.protocol.CALL_ID");
        }
        if (stringExtra == null) {
            return null;
        }
        try {
            return UUID.fromString(stringExtra);
        } catch (IllegalArgumentException e2) {
            return null;
        }
    }

    public static Bundle c(Intent intent) {
        if (a(a(intent))) {
            return intent.getBundleExtra("com.facebook.platform.protocol.BRIDGE_ARGS");
        }
        return null;
    }

    public static Bundle d(Intent intent) {
        return !a(a(intent)) ? intent.getExtras() : intent.getBundleExtra("com.facebook.platform.protocol.METHOD_ARGS");
    }

    public static Bundle e(Intent intent) {
        int a2 = a(intent);
        Bundle extras = intent.getExtras();
        return (!a(a2) || extras == null) ? extras : extras.getBundle("com.facebook.platform.protocol.RESULT_ARGS");
    }

    public static boolean f(Intent intent) {
        Bundle c2 = c(intent);
        return c2 != null ? c2.containsKey("error") : intent.hasExtra("com.facebook.platform.status.ERROR_TYPE");
    }

    public static Bundle g(Intent intent) {
        if (!f(intent)) {
            return null;
        }
        Bundle c2 = c(intent);
        if (c2 != null) {
            return c2.getBundle("error");
        }
        return intent.getExtras();
    }

    public static com.facebook.i a(Bundle bundle) {
        if (bundle == null) {
            return null;
        }
        String string = bundle.getString("error_type");
        if (string == null) {
            string = bundle.getString("com.facebook.platform.status.ERROR_TYPE");
        }
        String string2 = bundle.getString("error_description");
        if (string2 == null) {
            string2 = bundle.getString("com.facebook.platform.status.ERROR_DESCRIPTION");
        }
        if (string != null && string.equalsIgnoreCase("UserCanceled")) {
            return new com.facebook.j(string2);
        }
        return new com.facebook.i(string2);
    }

    public static Bundle a(com.facebook.i iVar) {
        if (iVar == null) {
            return null;
        }
        Bundle bundle = new Bundle();
        bundle.putString("error_description", iVar.toString());
        if (iVar instanceof com.facebook.j) {
            bundle.putString("error_type", "UserCanceled");
            return bundle;
        }
        return bundle;
    }

    public static int b(int i) {
        return a(f3259b, new int[]{i});
    }

    public static int a(String str, int[] iArr) {
        return a(c.get(str), iArr);
    }

    private static int a(List<c> list, int[] iArr) {
        b();
        if (list == null) {
            return -1;
        }
        Iterator<c> it = list.iterator();
        while (it.hasNext()) {
            int a2 = a(it.next().b(), a(), iArr);
            if (a2 != -1) {
                return a2;
            }
        }
        return -1;
    }

    public static void b() {
        if (d.compareAndSet(false, true)) {
            com.facebook.l.d().execute(new Runnable() { // from class: com.facebook.internal.v.1
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        Iterator it = v.f3259b.iterator();
                        while (it.hasNext()) {
                            ((c) it.next()).a(true);
                        }
                    } finally {
                        v.d.set(false);
                    }
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0075  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.util.TreeSet<java.lang.Integer> b(com.facebook.internal.v.c r8) {
        /*
            r3 = 0
            r6 = 0
            java.util.TreeSet r7 = new java.util.TreeSet
            r7.<init>()
            android.content.Context r0 = com.facebook.l.f()
            android.content.ContentResolver r0 = r0.getContentResolver()
            r1 = 1
            java.lang.String[] r2 = new java.lang.String[r1]
            java.lang.String r1 = "version"
            r2[r3] = r1
            android.net.Uri r1 = c(r8)
            android.content.Context r3 = com.facebook.l.f()     // Catch: java.lang.Throwable -> L72 java.lang.Exception -> L7c
            android.content.pm.PackageManager r3 = r3.getPackageManager()     // Catch: java.lang.Throwable -> L72 java.lang.Exception -> L7c
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L72 java.lang.Exception -> L7c
            r4.<init>()     // Catch: java.lang.Throwable -> L72 java.lang.Exception -> L7c
            java.lang.String r5 = r8.a()     // Catch: java.lang.Throwable -> L72 java.lang.Exception -> L7c
            java.lang.StringBuilder r4 = r4.append(r5)     // Catch: java.lang.Throwable -> L72 java.lang.Exception -> L7c
            java.lang.String r5 = ".provider.PlatformProvider"
            java.lang.StringBuilder r4 = r4.append(r5)     // Catch: java.lang.Throwable -> L72 java.lang.Exception -> L7c
            java.lang.String r4 = r4.toString()     // Catch: java.lang.Throwable -> L72 java.lang.Exception -> L7c
            r5 = 0
            android.content.pm.ProviderInfo r3 = r3.resolveContentProvider(r4, r5)     // Catch: java.lang.Throwable -> L72 java.lang.Exception -> L7c
            if (r3 == 0) goto L6b
            r3 = 0
            r4 = 0
            r5 = 0
            android.database.Cursor r1 = r0.query(r1, r2, r3, r4, r5)     // Catch: java.lang.Throwable -> L72 java.lang.Exception -> L7c
            if (r1 == 0) goto L6c
        L49:
            boolean r0 = r1.moveToNext()     // Catch: java.lang.Exception -> L61 java.lang.Throwable -> L79
            if (r0 == 0) goto L6c
            java.lang.String r0 = "version"
            int r0 = r1.getColumnIndex(r0)     // Catch: java.lang.Exception -> L61 java.lang.Throwable -> L79
            int r0 = r1.getInt(r0)     // Catch: java.lang.Exception -> L61 java.lang.Throwable -> L79
            java.lang.Integer r0 = java.lang.Integer.valueOf(r0)     // Catch: java.lang.Exception -> L61 java.lang.Throwable -> L79
            r7.add(r0)     // Catch: java.lang.Exception -> L61 java.lang.Throwable -> L79
            goto L49
        L61:
            r0 = move-exception
        L62:
            r0.printStackTrace()     // Catch: java.lang.Throwable -> L79
            if (r1 == 0) goto L6a
            r1.close()
        L6a:
            return r7
        L6b:
            r1 = r6
        L6c:
            if (r1 == 0) goto L6a
            r1.close()
            goto L6a
        L72:
            r0 = move-exception
        L73:
            if (r6 == 0) goto L78
            r6.close()
        L78:
            throw r0
        L79:
            r0 = move-exception
            r6 = r1
            goto L73
        L7c:
            r0 = move-exception
            r1 = r6
            goto L62
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.internal.v.b(com.facebook.internal.v$c):java.util.TreeSet");
    }

    public static int a(TreeSet<Integer> treeSet, int i, int[] iArr) {
        int length = iArr.length - 1;
        Iterator<Integer> descendingIterator = treeSet.descendingIterator();
        int i2 = -1;
        int i3 = length;
        while (descendingIterator.hasNext()) {
            int intValue = descendingIterator.next().intValue();
            int max = Math.max(i2, intValue);
            int i4 = i3;
            while (i4 >= 0 && iArr[i4] > intValue) {
                i4--;
            }
            if (i4 < 0) {
                return -1;
            }
            if (iArr[i4] == intValue) {
                if (i4 % 2 == 0) {
                    return Math.min(max, i);
                }
                return -1;
            }
            i3 = i4;
            i2 = max;
        }
        return -1;
    }

    private static Uri c(c cVar) {
        return Uri.parse("content://" + cVar.a() + ".provider.PlatformProvider/versions");
    }
}
