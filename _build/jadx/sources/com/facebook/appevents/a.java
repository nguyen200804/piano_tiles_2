package com.facebook.appevents;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.content.LocalBroadcastManager;
import android.util.Log;
import com.facebook.AccessToken;
import com.facebook.GraphRequest;
import com.facebook.internal.aa;
import com.facebook.internal.ab;
import com.facebook.internal.b;
import com.facebook.internal.s;
import com.facebook.k;
import com.facebook.l;
import com.facebook.q;
import com.facebook.u;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.Closeable;
import java.io.FileNotFoundException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.UUID;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: AppEventsLogger.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class a {
    private static ScheduledThreadPoolExecutor e;
    private static boolean g;
    private static Context h;
    private static String j;
    private static String k;
    private static boolean l;
    private static boolean m;
    private static String n;

    /* renamed from: b, reason: collision with root package name */
    private final String f3101b;
    private final C0085a c;

    /* renamed from: a, reason: collision with root package name */
    private static final String f3100a = a.class.getCanonicalName();
    private static Map<C0085a, i> d = new ConcurrentHashMap();
    private static c f = c.AUTO;
    private static Object i = new Object();

    /* compiled from: AppEventsLogger.java */
    public enum c {
        AUTO,
        EXPLICIT_ONLY
    }

    /* compiled from: AppEventsLogger.java */
    private enum d {
        EXPLICIT,
        TIMER,
        SESSION_CHANGE,
        PERSISTED_EVENTS,
        EVENT_THRESHOLD,
        EAGER_FLUSHING_EVENT
    }

    /* compiled from: AppEventsLogger.java */
    private enum e {
        SUCCESS,
        SERVER_ERROR,
        NO_CONNECTIVITY,
        UNKNOWN_ERROR
    }

    /* compiled from: AppEventsLogger.java */
    /* renamed from: com.facebook.appevents.a$a, reason: collision with other inner class name */
    private static class C0085a implements Serializable {

        /* renamed from: a, reason: collision with root package name */
        private final String f3111a;

        /* renamed from: b, reason: collision with root package name */
        private final String f3112b;

        C0085a(AccessToken accessToken) {
            this(accessToken.c(), l.i());
        }

        C0085a(String str, String str2) {
            this.f3111a = aa.a(str) ? null : str;
            this.f3112b = str2;
        }

        String a() {
            return this.f3111a;
        }

        String b() {
            return this.f3112b;
        }

        public int hashCode() {
            return (this.f3111a == null ? 0 : this.f3111a.hashCode()) ^ (this.f3112b != null ? this.f3112b.hashCode() : 0);
        }

        public boolean equals(Object o) {
            if (!(o instanceof C0085a)) {
                return false;
            }
            C0085a c0085a = (C0085a) o;
            return aa.a(c0085a.f3111a, this.f3111a) && aa.a(c0085a.f3112b, this.f3112b);
        }
    }

    public static void a(Context context, String str) {
        if (context == null || str == null) {
            throw new IllegalArgumentException("Both context and applicationId must be non-null");
        }
        if (context instanceof Activity) {
            a((Activity) context);
        } else {
            c();
            Log.d(a.class.getName(), "To set source application the context of activateApp must be an instance of Activity");
        }
        l.a(context, str);
        a aVar = new a(context, str, null);
        final long currentTimeMillis = System.currentTimeMillis();
        final String b2 = b();
        e.execute(new Runnable() { // from class: com.facebook.appevents.a.1
            @Override // java.lang.Runnable
            public void run() {
                a.this.a(currentTimeMillis, b2);
            }
        });
    }

    public static void a(Context context) {
        b(context, aa.a(context));
    }

    public static void b(Context context, String str) {
        if (context == null || str == null) {
            throw new IllegalArgumentException("Both context and applicationId must be non-null");
        }
        c();
        a aVar = new a(context, str, null);
        final long currentTimeMillis = System.currentTimeMillis();
        e.execute(new Runnable() { // from class: com.facebook.appevents.a.2
            @Override // java.lang.Runnable
            public void run() {
                a.this.a(currentTimeMillis);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(long j2, String str) {
        g.a(h, this.c, this, j2, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(long j2) {
        g.a(h, this.c, this, j2);
    }

    public static a b(Context context) {
        return new a(context, null, null);
    }

    public static a c(Context context, String str) {
        return new a(context, str, null);
    }

    public static c a() {
        c cVar;
        synchronized (i) {
            cVar = f;
        }
        return cVar;
    }

    public void a(String str, Bundle bundle) {
        a(str, (Double) null, bundle, false);
    }

    public void a(String str, double d2, Bundle bundle) {
        a(str, Double.valueOf(d2), bundle, false);
    }

    public void a(Bundle bundle, String str) {
        String string;
        String str2 = null;
        try {
            string = bundle.getString("fb_push_payload");
        } catch (JSONException e2) {
        }
        if (!aa.a(string)) {
            str2 = new JSONObject(string).getString("campaign");
            if (str2 == null) {
                s.a(u.DEVELOPER_ERRORS, f3100a, "Malformed payload specified for logging a push notification open.");
                return;
            }
            Bundle bundle2 = new Bundle();
            bundle2.putString("fb_push_campaign", str2);
            if (str != null) {
                bundle2.putString("fb_push_action", str);
            }
            a("fb_mobile_push_opened", bundle2);
        }
    }

    public void a(Bundle bundle) {
        String string;
        String str = null;
        try {
            string = bundle.getString("fb_push_payload");
        } catch (JSONException e2) {
        }
        if (!aa.a(string)) {
            str = new JSONObject(string).getString("campaign");
            if (str == null) {
                s.a(u.DEVELOPER_ERRORS, f3100a, "Malformed payload specified for logging a push notification arrival.");
                return;
            }
            Bundle bundle2 = new Bundle();
            bundle2.putString("fb_push_campaign", str);
            a("fb_mobile_push_arrival", bundle2);
        }
    }

    public void b(Bundle bundle) {
        String string;
        String str = null;
        try {
            string = bundle.getString("fb_push_payload");
        } catch (JSONException e2) {
        }
        if (!aa.a(string)) {
            str = new JSONObject(string).getString("campaign");
            if (str == null) {
                s.a(u.DEVELOPER_ERRORS, f3100a, "Malformed payload specified for logging a push notification arrival.");
                return;
            }
            Bundle bundle2 = new Bundle();
            bundle2.putString("fb_push_campaign", str);
            a("fb_mobile_push_arrival_repeat", bundle2);
        }
    }

    public static void a(String str) {
        synchronized (i) {
            n = str;
        }
    }

    public void a(String str, Double d2, Bundle bundle) {
        a(str, d2, bundle, true);
    }

    private a(Context context, String str, AccessToken accessToken) {
        ab.a(context, "context");
        this.f3101b = aa.c(context);
        accessToken = accessToken == null ? AccessToken.a() : accessToken;
        if (accessToken != null && (str == null || str.equals(accessToken.i()))) {
            this.c = new C0085a(accessToken);
        } else {
            this.c = new C0085a(null, str == null ? aa.a(context) : str);
        }
        synchronized (i) {
            if (h == null) {
                h = context.getApplicationContext();
            }
        }
        j();
    }

    private static void j() {
        synchronized (i) {
            if (e == null) {
                e = new ScheduledThreadPoolExecutor(1);
                e.scheduleAtFixedRate(new Runnable() { // from class: com.facebook.appevents.a.3
                    @Override // java.lang.Runnable
                    public void run() {
                        if (a.a() != c.EXPLICIT_ONLY) {
                            a.c(d.TIMER);
                        }
                    }
                }, 0L, 15L, TimeUnit.SECONDS);
                e.scheduleAtFixedRate(new Runnable() { // from class: com.facebook.appevents.a.4
                    @Override // java.lang.Runnable
                    public void run() {
                        HashSet hashSet = new HashSet();
                        synchronized (a.i) {
                            Iterator it = a.d.keySet().iterator();
                            while (it.hasNext()) {
                                hashSet.add(((C0085a) it.next()).b());
                            }
                        }
                        Iterator it2 = hashSet.iterator();
                        while (it2.hasNext()) {
                            aa.a((String) it2.next(), true);
                        }
                    }
                }, 0L, 86400L, TimeUnit.SECONDS);
            }
        }
    }

    private void a(String str, Double d2, Bundle bundle, boolean z) {
        a(h, new b(this.f3101b, str, d2, bundle, z), this.c);
    }

    private static void a(final Context context, final b bVar, final C0085a c0085a) {
        l.d().execute(new Runnable() { // from class: com.facebook.appevents.a.5
            @Override // java.lang.Runnable
            public void run() {
                a.b(context, c0085a).a(bVar);
                a.k();
            }
        });
        if (!bVar.f3114b && !m) {
            if (bVar.a() == "fb_mobile_activate_app") {
                m = true;
            } else {
                s.a(u.APP_EVENTS, "AppEvents", "Warning: Please call AppEventsLogger.activateApp(...)from the long-lived activity's onResume() methodbefore logging other app events.");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void k() {
        synchronized (i) {
            if (a() != c.EXPLICIT_ONLY && l() > 100) {
                b(d.EVENT_THRESHOLD);
            }
        }
    }

    private static int l() {
        int i2;
        synchronized (i) {
            Iterator<i> it = d.values().iterator();
            i2 = 0;
            while (it.hasNext()) {
                i2 = it.next().a() + i2;
            }
        }
        return i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static i b(Context context, C0085a c0085a) {
        i iVar;
        com.facebook.internal.c cVar = null;
        if (d.get(c0085a) == null) {
            cVar = com.facebook.internal.c.a(context);
        }
        synchronized (i) {
            iVar = d.get(c0085a);
            if (iVar == null) {
                iVar = new i(cVar, context.getPackageName(), c(context));
                d.put(c0085a, iVar);
            }
        }
        return iVar;
    }

    private static i a(C0085a c0085a) {
        i iVar;
        synchronized (i) {
            iVar = d.get(c0085a);
        }
        return iVar;
    }

    private static void b(final d dVar) {
        l.d().execute(new Runnable() { // from class: com.facebook.appevents.a.6
            @Override // java.lang.Runnable
            public void run() {
                a.c(d.this);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void c(d dVar) {
        synchronized (i) {
            if (!g) {
                g = true;
                HashSet hashSet = new HashSet(d.keySet());
                m();
                f fVar = null;
                try {
                    fVar = a(dVar, hashSet);
                } catch (Exception e2) {
                    aa.a(f3100a, "Caught unexpected exception while flushing: ", e2);
                }
                synchronized (i) {
                    g = false;
                }
                if (fVar != null) {
                    Intent intent = new Intent("com.facebook.sdk.APP_EVENTS_FLUSHED");
                    intent.putExtra("com.facebook.sdk.APP_EVENTS_NUM_EVENTS_FLUSHED", fVar.f3121a);
                    intent.putExtra("com.facebook.sdk.APP_EVENTS_FLUSH_RESULT", fVar.f3122b);
                    LocalBroadcastManager.getInstance(h).sendBroadcast(intent);
                }
            }
        }
    }

    private static f a(d dVar, Set<C0085a> set) {
        GraphRequest a2;
        f fVar = new f();
        boolean b2 = l.b(h);
        ArrayList arrayList = new ArrayList();
        for (C0085a c0085a : set) {
            i a3 = a(c0085a);
            if (a3 != null && (a2 = a(c0085a, a3, b2, fVar)) != null) {
                arrayList.add(a2);
            }
        }
        if (arrayList.size() <= 0) {
            return null;
        }
        s.a(u.APP_EVENTS, f3100a, "Flushing %d events due to %s.", Integer.valueOf(fVar.f3121a), dVar.toString());
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ((GraphRequest) it.next()).i();
        }
        return fVar;
    }

    /* compiled from: AppEventsLogger.java */
    private static class f {

        /* renamed from: a, reason: collision with root package name */
        public int f3121a;

        /* renamed from: b, reason: collision with root package name */
        public e f3122b;

        private f() {
            this.f3121a = 0;
            this.f3122b = e.SUCCESS;
        }
    }

    private static GraphRequest a(final C0085a c0085a, final i iVar, boolean z, final f fVar) {
        int a2;
        String b2 = c0085a.b();
        aa.b a3 = aa.a(b2, false);
        final GraphRequest a4 = GraphRequest.a((AccessToken) null, String.format("%s/activities", b2), (JSONObject) null, (GraphRequest.b) null);
        Bundle e2 = a4.e();
        if (e2 == null) {
            e2 = new Bundle();
        }
        e2.putString("access_token", c0085a.a());
        if (n != null) {
            e2.putString("device_token", n);
        }
        a4.a(e2);
        if (a3 != null && (a2 = iVar.a(a4, a3.a(), z)) != 0) {
            fVar.f3121a = a2 + fVar.f3121a;
            a4.a(new GraphRequest.b() { // from class: com.facebook.appevents.a.7
                @Override // com.facebook.GraphRequest.b
                public void a(q qVar) {
                    a.b(C0085a.this, a4, qVar, iVar, fVar);
                }
            });
            return a4;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(C0085a c0085a, GraphRequest graphRequest, q qVar, i iVar, f fVar) {
        String str;
        e eVar;
        String str2;
        k a2 = qVar.a();
        e eVar2 = e.SUCCESS;
        if (a2 == null) {
            str = "Success";
            eVar = eVar2;
        } else if (a2.b() == -1) {
            str = "Failed: No Connectivity";
            eVar = e.NO_CONNECTIVITY;
        } else {
            str = String.format("Failed:\n  Response: %s\n  Error %s", qVar.toString(), a2.toString());
            eVar = e.SERVER_ERROR;
        }
        if (l.a(u.APP_EVENTS)) {
            try {
                str2 = new JSONArray((String) graphRequest.h()).toString(2);
            } catch (JSONException e2) {
                str2 = "<Can't encode events for debug logging>";
            }
            s.a(u.APP_EVENTS, f3100a, "Flush completed\nParams: %s\n  Result: %s\n  Events JSON: %s", graphRequest.a().toString(), str, str2);
        }
        iVar.a(a2 != null);
        if (eVar == e.NO_CONNECTIVITY) {
            h.a(h, c0085a, iVar);
        }
        if (eVar != e.SUCCESS && fVar.f3122b != e.NO_CONNECTIVITY) {
            fVar.f3122b = eVar;
        }
    }

    private static int m() {
        h a2 = h.a(h);
        int i2 = 0;
        Iterator<C0085a> it = a2.a().iterator();
        while (true) {
            int i3 = i2;
            if (it.hasNext()) {
                C0085a next = it.next();
                i b2 = b(h, next);
                List<b> a3 = a2.a(next);
                if (a3 != null) {
                    b2.a(a3);
                    i2 = a3.size() + i3;
                } else {
                    i2 = i3;
                }
            } else {
                return i3;
            }
        }
    }

    private static void a(Activity activity) {
        ComponentName callingActivity = activity.getCallingActivity();
        if (callingActivity != null) {
            String packageName = callingActivity.getPackageName();
            if (packageName.equals(activity.getPackageName())) {
                c();
                return;
            }
            k = packageName;
        }
        Intent intent = activity.getIntent();
        if (intent == null || intent.getBooleanExtra("_fbSourceApplicationHasBeenSet", false)) {
            c();
            return;
        }
        Bundle a2 = a.a.a(intent);
        if (a2 == null) {
            c();
            return;
        }
        l = true;
        Bundle bundle = a2.getBundle("referer_app_link");
        if (bundle == null) {
            k = null;
        } else {
            k = bundle.getString("package");
            intent.putExtra("_fbSourceApplicationHasBeenSet", true);
        }
    }

    static String b() {
        String str = "Unclassified";
        if (l) {
            str = "Applink";
        }
        if (k != null) {
            return str + "(" + k + ")";
        }
        return str;
    }

    static void c() {
        k = null;
        l = false;
    }

    public static String c(Context context) {
        if (j == null) {
            synchronized (i) {
                if (j == null) {
                    j = context.getSharedPreferences("com.facebook.sdk.appEventPreferences", 0).getString("anonymousAppDeviceGUID", null);
                    if (j == null) {
                        j = "XZ" + UUID.randomUUID().toString();
                        context.getSharedPreferences("com.facebook.sdk.appEventPreferences", 0).edit().putString("anonymousAppDeviceGUID", j).apply();
                    }
                }
            }
        }
        return j;
    }

    /* compiled from: AppEventsLogger.java */
    private static class i {
        private int c;
        private com.facebook.internal.c d;
        private String e;
        private String f;

        /* renamed from: a, reason: collision with root package name */
        private List<b> f3127a = new ArrayList();

        /* renamed from: b, reason: collision with root package name */
        private List<b> f3128b = new ArrayList();
        private final int g = 1000;

        public i(com.facebook.internal.c cVar, String str, String str2) {
            this.d = cVar;
            this.e = str;
            this.f = str2;
        }

        public synchronized void a(b bVar) {
            if (this.f3127a.size() + this.f3128b.size() >= 1000) {
                this.c++;
            } else {
                this.f3127a.add(bVar);
            }
        }

        public synchronized int a() {
            return this.f3127a.size();
        }

        public synchronized void a(boolean z) {
            if (z) {
                this.f3127a.addAll(this.f3128b);
            }
            this.f3128b.clear();
            this.c = 0;
        }

        public int a(GraphRequest graphRequest, boolean z, boolean z2) {
            synchronized (this) {
                int i = this.c;
                this.f3128b.addAll(this.f3127a);
                this.f3127a.clear();
                JSONArray jSONArray = new JSONArray();
                for (b bVar : this.f3128b) {
                    if (z || !bVar.b()) {
                        jSONArray.put(bVar.c());
                    }
                }
                if (jSONArray.length() == 0) {
                    return 0;
                }
                a(graphRequest, i, jSONArray, z2);
                return jSONArray.length();
            }
        }

        public synchronized List<b> b() {
            List<b> list;
            list = this.f3127a;
            this.f3127a = new ArrayList();
            return list;
        }

        public synchronized void a(List<b> list) {
            this.f3127a.addAll(list);
        }

        private void a(GraphRequest graphRequest, int i, JSONArray jSONArray, boolean z) {
            JSONObject jSONObject;
            try {
                jSONObject = com.facebook.internal.b.a(b.a.CUSTOM_APP_EVENTS, this.d, this.f, z, a.h);
                if (this.c > 0) {
                    jSONObject.put("num_skipped_events", i);
                }
            } catch (JSONException e) {
                jSONObject = new JSONObject();
            }
            graphRequest.a(jSONObject);
            Bundle e2 = graphRequest.e();
            if (e2 == null) {
                e2 = new Bundle();
            }
            String jSONArray2 = jSONArray.toString();
            if (jSONArray2 != null) {
                e2.putByteArray("custom_events_file", a(jSONArray2));
                graphRequest.a((Object) jSONArray2);
            }
            graphRequest.a(e2);
        }

        private byte[] a(String str) {
            try {
                return str.getBytes("UTF-8");
            } catch (UnsupportedEncodingException e) {
                aa.a("Encoding exception: ", (Exception) e);
                return null;
            }
        }
    }

    /* compiled from: AppEventsLogger.java */
    static class b implements Serializable {
        private static final HashSet<String> c = new HashSet<>();

        /* renamed from: a, reason: collision with root package name */
        private JSONObject f3113a;

        /* renamed from: b, reason: collision with root package name */
        private boolean f3114b;
        private String d;

        public b(String str, String str2, Double d, Bundle bundle, boolean z) {
            try {
                a(str2);
                this.d = str2;
                this.f3114b = z;
                this.f3113a = new JSONObject();
                this.f3113a.put("_eventName", str2);
                this.f3113a.put("_logTime", System.currentTimeMillis() / 1000);
                this.f3113a.put("_ui", str);
                if (d != null) {
                    this.f3113a.put("_valueToSum", d.doubleValue());
                }
                if (this.f3114b) {
                    this.f3113a.put("_implicitlyLogged", "1");
                }
                if (bundle != null) {
                    for (String str3 : bundle.keySet()) {
                        a(str3);
                        Object obj = bundle.get(str3);
                        if (!(obj instanceof String) && !(obj instanceof Number)) {
                            throw new com.facebook.i(String.format("Parameter value '%s' for key '%s' should be a string or a numeric type.", obj, str3));
                        }
                        this.f3113a.put(str3, obj.toString());
                    }
                }
                if (!this.f3114b) {
                    s.a(u.APP_EVENTS, "AppEvents", "Created app event '%s'", this.f3113a.toString());
                }
            } catch (com.facebook.i e) {
                s.a(u.APP_EVENTS, "AppEvents", "Invalid app event name or parameter:", e.toString());
                this.f3113a = null;
            } catch (JSONException e2) {
                s.a(u.APP_EVENTS, "AppEvents", "JSON encoding for app event failed: '%s'", e2.toString());
                this.f3113a = null;
            }
        }

        public String a() {
            return this.d;
        }

        public boolean b() {
            return this.f3114b;
        }

        public JSONObject c() {
            return this.f3113a;
        }

        private void a(String str) throws com.facebook.i {
            boolean contains;
            if (str == null || str.length() == 0 || str.length() > 40) {
                if (str == null) {
                    str = "<None Provided>";
                }
                throw new com.facebook.i(String.format(Locale.ROOT, "Identifier '%s' must be less than %d characters", str, 40));
            }
            synchronized (c) {
                contains = c.contains(str);
            }
            if (!contains) {
                if (str.matches("^[0-9a-zA-Z_]+[0-9a-zA-Z _-]*$")) {
                    synchronized (c) {
                        c.add(str);
                    }
                    return;
                }
                throw new com.facebook.i(String.format("Skipping event named '%s' due to illegal name - must be under 40 chars and alphanumeric, _, - or space, and not start with a space or hyphen.", str));
            }
        }

        public String toString() {
            return String.format("\"%s\", implicit: %b, json: %s", this.f3113a.optString("_eventName"), Boolean.valueOf(this.f3114b), this.f3113a.toString());
        }
    }

    /* compiled from: AppEventsLogger.java */
    static class g {
        private static Map<C0085a, com.facebook.appevents.b> d;

        /* renamed from: a, reason: collision with root package name */
        private static final Object f3123a = new Object();

        /* renamed from: b, reason: collision with root package name */
        private static boolean f3124b = false;
        private static boolean c = false;
        private static final Runnable e = new Runnable() { // from class: com.facebook.appevents.a.g.1
            @Override // java.lang.Runnable
            public void run() {
                g.a(a.h);
            }
        };

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r1v0, types: [boolean] */
        /* JADX WARN: Type inference failed for: r1v1 */
        /* JADX WARN: Type inference failed for: r1v14 */
        /* JADX WARN: Type inference failed for: r1v16 */
        /* JADX WARN: Type inference failed for: r1v17 */
        /* JADX WARN: Type inference failed for: r1v2, types: [java.io.Closeable] */
        /* JADX WARN: Type inference failed for: r1v9 */
        private static void b(Context context) {
            ObjectInputStream objectInputStream;
            Exception e2;
            Closeable closeable = null;
            synchronized (f3123a) {
                ?? r1 = c;
                try {
                    if (r1 == 0) {
                        try {
                            objectInputStream = new ObjectInputStream(context.openFileInput("AppEventsLogger.persistedsessioninfo"));
                            try {
                                d = (HashMap) objectInputStream.readObject();
                                s.a(u.APP_EVENTS, "AppEvents", "App session info loaded");
                                aa.a((Closeable) objectInputStream);
                                context.deleteFile("AppEventsLogger.persistedsessioninfo");
                                if (d == null) {
                                    d = new HashMap();
                                }
                                c = true;
                                f3124b = false;
                                r1 = objectInputStream;
                            } catch (FileNotFoundException e3) {
                                closeable = objectInputStream;
                                aa.a(closeable);
                                context.deleteFile("AppEventsLogger.persistedsessioninfo");
                                if (d == null) {
                                    d = new HashMap();
                                }
                                c = true;
                                f3124b = false;
                            } catch (Exception e4) {
                                e2 = e4;
                                Log.d(a.f3100a, "Got unexpected exception: " + e2.toString());
                                aa.a((Closeable) objectInputStream);
                                context.deleteFile("AppEventsLogger.persistedsessioninfo");
                                if (d == null) {
                                    d = new HashMap();
                                }
                                c = true;
                                f3124b = false;
                                r1 = objectInputStream;
                            }
                        } catch (FileNotFoundException e5) {
                        } catch (Exception e6) {
                            objectInputStream = null;
                            e2 = e6;
                        } catch (Throwable th) {
                            r1 = 0;
                            th = th;
                            aa.a((Closeable) r1);
                            context.deleteFile("AppEventsLogger.persistedsessioninfo");
                            if (d == null) {
                                d = new HashMap();
                            }
                            c = true;
                            f3124b = false;
                            throw th;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            }
        }

        static void a(Context context) {
            ObjectOutputStream objectOutputStream;
            synchronized (f3123a) {
                if (f3124b) {
                    try {
                        objectOutputStream = new ObjectOutputStream(new BufferedOutputStream(context.openFileOutput("AppEventsLogger.persistedsessioninfo", 0)));
                        try {
                            try {
                                objectOutputStream.writeObject(d);
                                f3124b = false;
                                s.a(u.APP_EVENTS, "AppEvents", "App session info saved");
                                aa.a(objectOutputStream);
                            } catch (Exception e2) {
                                e = e2;
                                Log.d(a.f3100a, "Got unexpected exception: " + e.toString());
                                aa.a(objectOutputStream);
                            }
                        } catch (Throwable th) {
                            th = th;
                            aa.a(objectOutputStream);
                            throw th;
                        }
                    } catch (Exception e3) {
                        e = e3;
                        objectOutputStream = null;
                    } catch (Throwable th2) {
                        th = th2;
                        objectOutputStream = null;
                        aa.a(objectOutputStream);
                        throw th;
                    }
                }
            }
        }

        static void a(Context context, C0085a c0085a, a aVar, long j, String str) {
            synchronized (f3123a) {
                a(context, c0085a).a(aVar, j, str);
                a();
            }
        }

        static void a(Context context, C0085a c0085a, a aVar, long j) {
            synchronized (f3123a) {
                a(context, c0085a).a(aVar, j);
                a();
            }
        }

        private static com.facebook.appevents.b a(Context context, C0085a c0085a) {
            b(context);
            com.facebook.appevents.b bVar = d.get(c0085a);
            if (bVar == null) {
                com.facebook.appevents.b bVar2 = new com.facebook.appevents.b();
                d.put(c0085a, bVar2);
                return bVar2;
            }
            return bVar;
        }

        private static void a() {
            if (!f3124b) {
                f3124b = true;
                a.e.schedule(e, 30L, TimeUnit.SECONDS);
            }
        }
    }

    /* compiled from: AppEventsLogger.java */
    static class h {

        /* renamed from: a, reason: collision with root package name */
        private Context f3125a;

        /* renamed from: b, reason: collision with root package name */
        private HashMap<C0085a, List<b>> f3126b = new HashMap<>();

        private h(Context context) {
            this.f3125a = context;
        }

        public static h a(Context context) {
            h hVar;
            synchronized (a.i) {
                hVar = new h(context);
                hVar.c();
            }
            return hVar;
        }

        public static void a(Context context, C0085a c0085a, i iVar) {
            HashMap hashMap = new HashMap();
            hashMap.put(c0085a, iVar);
            a(context, hashMap);
        }

        public static void a(Context context, Map<C0085a, i> map) {
            synchronized (a.i) {
                h a2 = a(context);
                for (Map.Entry<C0085a, i> entry : map.entrySet()) {
                    List<b> b2 = entry.getValue().b();
                    if (b2.size() != 0) {
                        a2.a(entry.getKey(), b2);
                    }
                }
                a2.b();
            }
        }

        public Set<C0085a> a() {
            return this.f3126b.keySet();
        }

        public List<b> a(C0085a c0085a) {
            return this.f3126b.get(c0085a);
        }

        private void b() {
            ObjectOutputStream objectOutputStream;
            try {
                objectOutputStream = new ObjectOutputStream(new BufferedOutputStream(this.f3125a.openFileOutput("AppEventsLogger.persistedevents", 0)));
                try {
                    try {
                        objectOutputStream.writeObject(this.f3126b);
                        aa.a(objectOutputStream);
                    } catch (Exception e) {
                        e = e;
                        Log.d(a.f3100a, "Got unexpected exception: " + e.toString());
                        aa.a(objectOutputStream);
                    }
                } catch (Throwable th) {
                    th = th;
                    aa.a(objectOutputStream);
                    throw th;
                }
            } catch (Exception e2) {
                e = e2;
                objectOutputStream = null;
            } catch (Throwable th2) {
                th = th2;
                objectOutputStream = null;
                aa.a(objectOutputStream);
                throw th;
            }
        }

        private void c() {
            ObjectInputStream objectInputStream;
            Throwable th;
            Exception e;
            ObjectInputStream objectInputStream2 = null;
            try {
                try {
                    objectInputStream = new ObjectInputStream(new BufferedInputStream(this.f3125a.openFileInput("AppEventsLogger.persistedevents")));
                    try {
                        HashMap<C0085a, List<b>> hashMap = (HashMap) objectInputStream.readObject();
                        this.f3125a.getFileStreamPath("AppEventsLogger.persistedevents").delete();
                        this.f3126b = hashMap;
                        aa.a((Closeable) objectInputStream);
                    } catch (FileNotFoundException e2) {
                        objectInputStream2 = objectInputStream;
                        aa.a((Closeable) objectInputStream2);
                    } catch (Exception e3) {
                        e = e3;
                        Log.d(a.f3100a, "Got unexpected exception: " + e.toString());
                        aa.a((Closeable) objectInputStream);
                    }
                } catch (Throwable th2) {
                    th = th2;
                    aa.a((Closeable) objectInputStream);
                    throw th;
                }
            } catch (FileNotFoundException e4) {
            } catch (Exception e5) {
                objectInputStream = null;
                e = e5;
            } catch (Throwable th3) {
                objectInputStream = null;
                th = th3;
                aa.a((Closeable) objectInputStream);
                throw th;
            }
        }

        public void a(C0085a c0085a, List<b> list) {
            if (!this.f3126b.containsKey(c0085a)) {
                this.f3126b.put(c0085a, new ArrayList());
            }
            this.f3126b.get(c0085a).addAll(list);
        }
    }
}
