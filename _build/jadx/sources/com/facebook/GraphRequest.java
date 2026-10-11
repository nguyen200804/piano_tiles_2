package com.facebook;

import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.Log;
import android.util.Pair;
import com.facebook.internal.ab;
import com.facebook.p;
import com.google.ads.mediation.facebook.FacebookAdapter;
import com.mopub.common.AdType;
import com.mopub.mobileads.VastExtensionXmlManager;
import com.unity3d.ads.metadata.MediationMetaData;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLEncoder;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.apache.commons.io.IOUtils;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class GraphRequest {

    /* renamed from: b, reason: collision with root package name */
    private static String f2410b;
    private static volatile String q;
    private AccessToken d;
    private s e;
    private String f;
    private JSONObject g;
    private String h;
    private String i;
    private boolean j;
    private Bundle k;
    private b l;
    private String m;
    private Object n;
    private String o;
    private boolean p;

    /* renamed from: a, reason: collision with root package name */
    public static final String f2409a = GraphRequest.class.getSimpleName();
    private static Pattern c = Pattern.compile("^/?v\\d+\\.\\d+/(.*)");

    public interface b {
        void a(q qVar);
    }

    public interface c {
        void a(JSONObject jSONObject, q qVar);
    }

    private interface d {
        void a(String str, String str2) throws IOException;
    }

    public interface e extends b {
        void a(long j, long j2);
    }

    public GraphRequest() {
        this(null, null, null, null, null);
    }

    public GraphRequest(AccessToken accessToken, String graphPath, Bundle parameters, s httpMethod, b callback) {
        this(accessToken, graphPath, parameters, httpMethod, callback, null);
    }

    public GraphRequest(AccessToken accessToken, String graphPath, Bundle parameters, s httpMethod, b callback, String version) {
        this.j = true;
        this.p = false;
        this.d = accessToken;
        this.f = graphPath;
        this.o = version;
        a(callback);
        a(httpMethod);
        if (parameters != null) {
            this.k = new Bundle(parameters);
        } else {
            this.k = new Bundle();
        }
        if (this.o == null) {
            this.o = com.facebook.internal.y.d();
        }
    }

    GraphRequest(AccessToken accessToken, URL overriddenURL) {
        this.j = true;
        this.p = false;
        this.d = accessToken;
        this.m = overriddenURL.toString();
        a(s.GET);
        this.k = new Bundle();
    }

    public static GraphRequest a(AccessToken accessToken, final c cVar) {
        return new GraphRequest(accessToken, "me", null, null, new b() { // from class: com.facebook.GraphRequest.1
            @Override // com.facebook.GraphRequest.b
            public void a(q qVar) {
                if (c.this != null) {
                    c.this.a(qVar.b(), qVar);
                }
            }
        });
    }

    public static GraphRequest a(AccessToken accessToken, String str, JSONObject jSONObject, b bVar) {
        GraphRequest graphRequest = new GraphRequest(accessToken, str, null, s.POST, bVar);
        graphRequest.a(jSONObject);
        return graphRequest;
    }

    public static GraphRequest a(AccessToken accessToken, String str, b bVar) {
        return new GraphRequest(accessToken, str, null, null, bVar);
    }

    public final JSONObject a() {
        return this.g;
    }

    public final void a(JSONObject jSONObject) {
        this.g = jSONObject;
    }

    public final String b() {
        return this.f;
    }

    public final s c() {
        return this.e;
    }

    public final void a(s sVar) {
        if (this.m != null && sVar != s.GET) {
            throw new i("Can't change HTTP method on request with overridden URL.");
        }
        if (sVar == null) {
            sVar = s.GET;
        }
        this.e = sVar;
    }

    public final String d() {
        return this.o;
    }

    public final void a(boolean z) {
        this.p = z;
    }

    public final Bundle e() {
        return this.k;
    }

    public final void a(Bundle bundle) {
        this.k = bundle;
    }

    public final AccessToken f() {
        return this.d;
    }

    public final b g() {
        return this.l;
    }

    public final void a(final b bVar) {
        if (l.a(u.GRAPH_API_DEBUG_INFO) || l.a(u.GRAPH_API_DEBUG_WARNING)) {
            this.l = new b() { // from class: com.facebook.GraphRequest.2
                @Override // com.facebook.GraphRequest.b
                public void a(q qVar) {
                    JSONObject b2 = qVar.b();
                    JSONObject optJSONObject = b2 != null ? b2.optJSONObject("__debug__") : null;
                    JSONArray optJSONArray = optJSONObject != null ? optJSONObject.optJSONArray("messages") : null;
                    if (optJSONArray != null) {
                        for (int i = 0; i < optJSONArray.length(); i++) {
                            JSONObject optJSONObject2 = optJSONArray.optJSONObject(i);
                            String optString = optJSONObject2 != null ? optJSONObject2.optString("message") : null;
                            String optString2 = optJSONObject2 != null ? optJSONObject2.optString(VastExtensionXmlManager.TYPE) : null;
                            String optString3 = optJSONObject2 != null ? optJSONObject2.optString("link") : null;
                            if (optString != null && optString2 != null) {
                                u uVar = u.GRAPH_API_DEBUG_INFO;
                                if (optString2.equals("warning")) {
                                    uVar = u.GRAPH_API_DEBUG_WARNING;
                                }
                                if (!com.facebook.internal.aa.a(optString3)) {
                                    optString = optString + " Link: " + optString3;
                                }
                                com.facebook.internal.s.a(uVar, GraphRequest.f2409a, optString);
                            }
                        }
                    }
                    if (bVar != null) {
                        bVar.a(qVar);
                    }
                }
            };
        } else {
            this.l = bVar;
        }
    }

    public final void a(Object obj) {
        this.n = obj;
    }

    public final Object h() {
        return this.n;
    }

    public final q i() {
        return a(this);
    }

    public final o j() {
        return b(this);
    }

    public static HttpURLConnection a(p pVar) {
        URL url;
        d(pVar);
        try {
            if (pVar.size() == 1) {
                url = new URL(pVar.get(0).l());
            } else {
                url = new URL(com.facebook.internal.y.b());
            }
            HttpURLConnection httpURLConnection = null;
            try {
                httpURLConnection = a(url);
                a(pVar, httpURLConnection);
                return httpURLConnection;
            } catch (IOException | JSONException e2) {
                com.facebook.internal.aa.a(httpURLConnection);
                throw new i("could not construct request body", e2);
            }
        } catch (MalformedURLException e3) {
            throw new i("could not construct URL for request", e3);
        }
    }

    public static q a(GraphRequest graphRequest) {
        List<q> a2 = a(graphRequest);
        if (a2 == null || a2.size() != 1) {
            throw new i("invalid state: expected a single response");
        }
        return a2.get(0);
    }

    public static List<q> a(GraphRequest... graphRequestArr) {
        ab.a(graphRequestArr, "requests");
        return a((Collection<GraphRequest>) Arrays.asList(graphRequestArr));
    }

    public static List<q> a(Collection<GraphRequest> collection) {
        return b(new p(collection));
    }

    public static List<q> b(p pVar) {
        List<q> a2;
        HttpURLConnection httpURLConnection = null;
        ab.c(pVar, "requests");
        try {
            httpURLConnection = a(pVar);
            a2 = a(httpURLConnection, pVar);
        } catch (Exception e2) {
            a2 = q.a(pVar.d(), (HttpURLConnection) null, new i(e2));
            a(pVar, a2);
        } finally {
            com.facebook.internal.aa.a(httpURLConnection);
        }
        return a2;
    }

    public static o b(GraphRequest... graphRequestArr) {
        ab.a(graphRequestArr, "requests");
        return b((Collection<GraphRequest>) Arrays.asList(graphRequestArr));
    }

    public static o b(Collection<GraphRequest> collection) {
        return c(new p(collection));
    }

    public static o c(p pVar) {
        ab.c(pVar, "requests");
        o oVar = new o(pVar);
        oVar.executeOnExecutor(l.d(), null);
        return oVar;
    }

    public static List<q> a(HttpURLConnection httpURLConnection, p pVar) {
        List<q> a2 = q.a(httpURLConnection, pVar);
        com.facebook.internal.aa.a(httpURLConnection);
        int size = pVar.size();
        if (size != a2.size()) {
            throw new i(String.format(Locale.US, "Received %d responses while expecting %d", Integer.valueOf(a2.size()), Integer.valueOf(size)));
        }
        a(pVar, a2);
        com.facebook.b.a().d();
        return a2;
    }

    public String toString() {
        return "{Request:  accessToken: " + (this.d == null ? "null" : this.d) + ", graphPath: " + this.f + ", graphObject: " + this.g + ", httpMethod: " + this.e + ", parameters: " + this.k + "}";
    }

    static void a(final p pVar, List<q> list) {
        int size = pVar.size();
        final ArrayList arrayList = new ArrayList();
        for (int i = 0; i < size; i++) {
            GraphRequest graphRequest = pVar.get(i);
            if (graphRequest.l != null) {
                arrayList.add(new Pair(graphRequest.l, list.get(i)));
            }
        }
        if (arrayList.size() > 0) {
            Runnable runnable = new Runnable() { // from class: com.facebook.GraphRequest.3
                @Override // java.lang.Runnable
                public void run() {
                    Iterator it = arrayList.iterator();
                    while (it.hasNext()) {
                        Pair pair = (Pair) it.next();
                        ((b) pair.first).a((q) pair.second);
                    }
                    Iterator<p.a> it2 = pVar.e().iterator();
                    while (it2.hasNext()) {
                        it2.next().a(pVar);
                    }
                }
            };
            Handler c2 = pVar.c();
            if (c2 == null) {
                runnable.run();
            } else {
                c2.post(runnable);
            }
        }
    }

    private static HttpURLConnection a(URL url) throws IOException {
        HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
        httpURLConnection.setRequestProperty("User-Agent", p());
        httpURLConnection.setRequestProperty("Accept-Language", Locale.getDefault().toString());
        httpURLConnection.setChunkedStreamingMode(0);
        return httpURLConnection;
    }

    private void m() {
        if (this.d != null) {
            if (!this.k.containsKey("access_token")) {
                String c2 = this.d.c();
                com.facebook.internal.s.a(c2);
                this.k.putString("access_token", c2);
            }
        } else if (!this.p && !this.k.containsKey("access_token")) {
            String i = l.i();
            String k = l.k();
            if (!com.facebook.internal.aa.a(i) && !com.facebook.internal.aa.a(k)) {
                this.k.putString("access_token", i + "|" + k);
            } else {
                Log.d(f2409a, "Warning: Request without access token missing application ID or client token.");
            }
        }
        this.k.putString("sdk", "android");
        this.k.putString("format", AdType.STATIC_NATIVE);
        if (l.a(u.GRAPH_API_DEBUG_INFO)) {
            this.k.putString("debug", "info");
        } else if (l.a(u.GRAPH_API_DEBUG_WARNING)) {
            this.k.putString("debug", "warning");
        }
    }

    private String a(String str) {
        Uri.Builder encodedPath = new Uri.Builder().encodedPath(str);
        for (String str2 : this.k.keySet()) {
            Object obj = this.k.get(str2);
            if (obj == null) {
                obj = "";
            }
            if (!e(obj)) {
                if (this.e == s.GET) {
                    throw new IllegalArgumentException(String.format(Locale.US, "Unsupported parameter type for GET request: %s", obj.getClass().getSimpleName()));
                }
            } else {
                encodedPath.appendQueryParameter(str2, f(obj).toString());
            }
        }
        return encodedPath.toString();
    }

    final String k() {
        if (this.m != null) {
            throw new i("Can't override URL for a batch request");
        }
        String n = n();
        m();
        return a(n);
    }

    final String l() {
        String b2;
        if (this.m != null) {
            return this.m.toString();
        }
        if (c() == s.POST && this.f != null && this.f.endsWith("/videos")) {
            b2 = com.facebook.internal.y.c();
        } else {
            b2 = com.facebook.internal.y.b();
        }
        String format = String.format("%s/%s", b2, n());
        m();
        return a(format);
    }

    private String n() {
        return c.matcher(this.f).matches() ? this.f : String.format("%s/%s", this.o, this.f);
    }

    private static class a {

        /* renamed from: a, reason: collision with root package name */
        private final GraphRequest f2420a;

        /* renamed from: b, reason: collision with root package name */
        private final Object f2421b;

        public a(GraphRequest graphRequest, Object obj) {
            this.f2420a = graphRequest;
            this.f2421b = obj;
        }

        public GraphRequest a() {
            return this.f2420a;
        }

        public Object b() {
            return this.f2421b;
        }
    }

    private void a(JSONArray jSONArray, Map<String, a> map) throws JSONException, IOException {
        JSONObject jSONObject = new JSONObject();
        if (this.h != null) {
            jSONObject.put(MediationMetaData.KEY_NAME, this.h);
            jSONObject.put("omit_response_on_success", this.j);
        }
        if (this.i != null) {
            jSONObject.put("depends_on", this.i);
        }
        String k = k();
        jSONObject.put("relative_url", k);
        jSONObject.put("method", this.e);
        if (this.d != null) {
            com.facebook.internal.s.a(this.d.c());
        }
        ArrayList arrayList = new ArrayList();
        Iterator<String> it = this.k.keySet().iterator();
        while (it.hasNext()) {
            Object obj = this.k.get(it.next());
            if (d(obj)) {
                String format = String.format(Locale.ROOT, "%s%d", "file", Integer.valueOf(map.size()));
                arrayList.add(format);
                map.put(format, new a(this, obj));
            }
        }
        if (!arrayList.isEmpty()) {
            jSONObject.put("attached_files", TextUtils.join(",", arrayList));
        }
        if (this.g != null) {
            final ArrayList arrayList2 = new ArrayList();
            a(this.g, k, new d() { // from class: com.facebook.GraphRequest.4
                @Override // com.facebook.GraphRequest.d
                public void a(String str, String str2) throws IOException {
                    arrayList2.add(String.format(Locale.US, "%s=%s", str, URLEncoder.encode(str2, "UTF-8")));
                }
            });
            jSONObject.put("body", TextUtils.join("&", arrayList2));
        }
        jSONArray.put(jSONObject);
    }

    private static boolean e(p pVar) {
        Iterator<p.a> it = pVar.e().iterator();
        while (it.hasNext()) {
            if (it.next() instanceof p.b) {
                return true;
            }
        }
        Iterator<GraphRequest> it2 = pVar.iterator();
        while (it2.hasNext()) {
            if (it2.next().g() instanceof e) {
                return true;
            }
        }
        return false;
    }

    private static void a(HttpURLConnection httpURLConnection, boolean z) {
        if (z) {
            httpURLConnection.setRequestProperty("Content-Type", "application/x-www-form-urlencoded");
            httpURLConnection.setRequestProperty("Content-Encoding", "gzip");
        } else {
            httpURLConnection.setRequestProperty("Content-Type", o());
        }
    }

    private static boolean f(p pVar) {
        Iterator<GraphRequest> it = pVar.iterator();
        while (it.hasNext()) {
            GraphRequest next = it.next();
            Iterator<String> it2 = next.k.keySet().iterator();
            while (it2.hasNext()) {
                if (d(next.k.get(it2.next()))) {
                    return false;
                }
            }
        }
        return true;
    }

    static final boolean b(GraphRequest graphRequest) {
        String d2 = graphRequest.d();
        if (com.facebook.internal.aa.a(d2)) {
            return true;
        }
        if (d2.startsWith("v")) {
            d2 = d2.substring(1);
        }
        String[] split = d2.split("\\.");
        return (split.length >= 2 && Integer.parseInt(split[0]) > 2) || (Integer.parseInt(split[0]) >= 2 && Integer.parseInt(split[1]) >= 4);
    }

    static final void d(p pVar) {
        Iterator<GraphRequest> it = pVar.iterator();
        while (it.hasNext()) {
            GraphRequest next = it.next();
            if (s.GET.equals(next.c()) && b(next)) {
                Bundle e2 = next.e();
                if (!e2.containsKey("fields") || com.facebook.internal.aa.a(e2.getString("fields"))) {
                    com.facebook.internal.s.a(u.DEVELOPER_ERRORS, 5, "Request", "starting with Graph API v2.4, GET requests for /%s should contain an explicit \"fields\" parameter.", next.b());
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x00c4  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    static final void a(com.facebook.p r13, java.net.HttpURLConnection r14) throws java.io.IOException, org.json.JSONException {
        /*
            r4 = 0
            r6 = 0
            r1 = 1
            com.facebook.internal.s r12 = new com.facebook.internal.s
            com.facebook.u r0 = com.facebook.u.REQUESTS
            java.lang.String r2 = "Request"
            r12.<init>(r0, r2)
            int r2 = r13.size()
            boolean r5 = f(r13)
            if (r2 != r1) goto L75
            com.facebook.GraphRequest r0 = r13.get(r6)
            com.facebook.s r0 = r0.e
        L1c:
            java.lang.String r3 = r0.name()
            r14.setRequestMethod(r3)
            a(r14, r5)
            java.net.URL r3 = r14.getURL()
            java.lang.String r7 = "Request:\n"
            r12.c(r7)
            java.lang.String r7 = "Id"
            java.lang.String r8 = r13.b()
            r12.a(r7, r8)
            java.lang.String r7 = "URL"
            r12.a(r7, r3)
            java.lang.String r7 = "Method"
            java.lang.String r8 = r14.getRequestMethod()
            r12.a(r7, r8)
            java.lang.String r7 = "User-Agent"
            java.lang.String r8 = "User-Agent"
            java.lang.String r8 = r14.getRequestProperty(r8)
            r12.a(r7, r8)
            java.lang.String r7 = "Content-Type"
            java.lang.String r8 = "Content-Type"
            java.lang.String r8 = r14.getRequestProperty(r8)
            r12.a(r7, r8)
            int r7 = r13.a()
            r14.setConnectTimeout(r7)
            int r7 = r13.a()
            r14.setReadTimeout(r7)
            com.facebook.s r7 = com.facebook.s.POST
            if (r0 != r7) goto L78
            r0 = r1
        L6f:
            if (r0 != 0) goto L7a
            r12.a()
        L74:
            return
        L75:
            com.facebook.s r0 = com.facebook.s.POST
            goto L1c
        L78:
            r0 = r6
            goto L6f
        L7a:
            r14.setDoOutput(r1)
            java.io.BufferedOutputStream r7 = new java.io.BufferedOutputStream     // Catch: java.lang.Throwable -> Lc0
            java.io.OutputStream r0 = r14.getOutputStream()     // Catch: java.lang.Throwable -> Lc0
            r7.<init>(r0)     // Catch: java.lang.Throwable -> Lc0
            if (r5 == 0) goto L8e
            java.util.zip.GZIPOutputStream r0 = new java.util.zip.GZIPOutputStream     // Catch: java.lang.Throwable -> Lc8
            r0.<init>(r7)     // Catch: java.lang.Throwable -> Lc8
            r7 = r0
        L8e:
            boolean r0 = e(r13)     // Catch: java.lang.Throwable -> Lc8
            if (r0 == 0) goto Lcd
            com.facebook.x r4 = new com.facebook.x     // Catch: java.lang.Throwable -> Lc8
            android.os.Handler r0 = r13.c()     // Catch: java.lang.Throwable -> Lc8
            r4.<init>(r0)     // Catch: java.lang.Throwable -> Lc8
            r1 = 0
            r0 = r13
            a(r0, r1, r2, r3, r4, r5)     // Catch: java.lang.Throwable -> Lc8
            int r0 = r4.a()     // Catch: java.lang.Throwable -> Lc8
            java.util.Map r9 = r4.b()     // Catch: java.lang.Throwable -> Lc8
            com.facebook.y r6 = new com.facebook.y     // Catch: java.lang.Throwable -> Lc8
            long r10 = (long) r0     // Catch: java.lang.Throwable -> Lc8
            r8 = r13
            r6.<init>(r7, r8, r9, r10)     // Catch: java.lang.Throwable -> Lc8
            r4 = r6
        Lb2:
            r0 = r13
            r1 = r12
            a(r0, r1, r2, r3, r4, r5)     // Catch: java.lang.Throwable -> Lca
            if (r4 == 0) goto Lbc
            r4.close()
        Lbc:
            r12.a()
            goto L74
        Lc0:
            r0 = move-exception
            r7 = r4
        Lc2:
            if (r7 == 0) goto Lc7
            r7.close()
        Lc7:
            throw r0
        Lc8:
            r0 = move-exception
            goto Lc2
        Lca:
            r0 = move-exception
            r7 = r4
            goto Lc2
        Lcd:
            r4 = r7
            goto Lb2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.GraphRequest.a(com.facebook.p, java.net.HttpURLConnection):void");
    }

    private static void a(p pVar, com.facebook.internal.s sVar, int i, URL url, OutputStream outputStream, boolean z) throws IOException, JSONException {
        f fVar = new f(outputStream, sVar, z);
        if (i == 1) {
            GraphRequest graphRequest = pVar.get(0);
            HashMap hashMap = new HashMap();
            for (String str : graphRequest.k.keySet()) {
                Object obj = graphRequest.k.get(str);
                if (d(obj)) {
                    hashMap.put(str, new a(graphRequest, obj));
                }
            }
            if (sVar != null) {
                sVar.c("  Parameters:\n");
            }
            a(graphRequest.k, fVar, graphRequest);
            if (sVar != null) {
                sVar.c("  Attachments:\n");
            }
            a(hashMap, fVar);
            if (graphRequest.g != null) {
                a(graphRequest.g, url.getPath(), fVar);
                return;
            }
            return;
        }
        String g = g(pVar);
        if (com.facebook.internal.aa.a(g)) {
            throw new i("App ID was not specified at the request or Settings.");
        }
        fVar.a("batch_app_id", g);
        HashMap hashMap2 = new HashMap();
        a(fVar, pVar, hashMap2);
        if (sVar != null) {
            sVar.c("  Attachments:\n");
        }
        a(hashMap2, fVar);
    }

    private static boolean b(String str) {
        Matcher matcher = c.matcher(str);
        if (matcher.matches()) {
            str = matcher.group(1);
        }
        return str.startsWith("me/") || str.startsWith("/me/");
    }

    private static void a(JSONObject jSONObject, String str, d dVar) throws IOException {
        boolean z;
        if (b(str)) {
            int indexOf = str.indexOf(":");
            int indexOf2 = str.indexOf("?");
            z = indexOf > 3 && (indexOf2 == -1 || indexOf < indexOf2);
        } else {
            z = false;
        }
        Iterator<String> keys = jSONObject.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            a(next, jSONObject.opt(next), dVar, z && next.equalsIgnoreCase("image"));
        }
    }

    private static void a(String str, Object obj, d dVar, boolean z) throws IOException {
        Class<?> cls = obj.getClass();
        if (JSONObject.class.isAssignableFrom(cls)) {
            JSONObject jSONObject = (JSONObject) obj;
            if (z) {
                Iterator<String> keys = jSONObject.keys();
                while (keys.hasNext()) {
                    String next = keys.next();
                    a(String.format("%s[%s]", str, next), jSONObject.opt(next), dVar, z);
                }
                return;
            }
            if (jSONObject.has(FacebookAdapter.KEY_ID)) {
                a(str, jSONObject.optString(FacebookAdapter.KEY_ID), dVar, z);
                return;
            } else if (jSONObject.has("url")) {
                a(str, jSONObject.optString("url"), dVar, z);
                return;
            } else {
                if (jSONObject.has("fbsdk:create_object")) {
                    a(str, jSONObject.toString(), dVar, z);
                    return;
                }
                return;
            }
        }
        if (JSONArray.class.isAssignableFrom(cls)) {
            JSONArray jSONArray = (JSONArray) obj;
            int length = jSONArray.length();
            for (int i = 0; i < length; i++) {
                a(String.format(Locale.ROOT, "%s[%d]", str, Integer.valueOf(i)), jSONArray.opt(i), dVar, z);
            }
            return;
        }
        if (String.class.isAssignableFrom(cls) || Number.class.isAssignableFrom(cls) || Boolean.class.isAssignableFrom(cls)) {
            dVar.a(str, obj.toString());
        } else if (Date.class.isAssignableFrom(cls)) {
            dVar.a(str, new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ssZ", Locale.US).format((Date) obj));
        }
    }

    private static void a(Bundle bundle, f fVar, GraphRequest graphRequest) throws IOException {
        for (String str : bundle.keySet()) {
            Object obj = bundle.get(str);
            if (e(obj)) {
                fVar.a(str, obj, graphRequest);
            }
        }
    }

    private static void a(Map<String, a> map, f fVar) throws IOException {
        for (String str : map.keySet()) {
            a aVar = map.get(str);
            if (d(aVar.b())) {
                fVar.a(str, aVar.b(), aVar.a());
            }
        }
    }

    private static void a(f fVar, Collection<GraphRequest> collection, Map<String, a> map) throws JSONException, IOException {
        JSONArray jSONArray = new JSONArray();
        Iterator<GraphRequest> it = collection.iterator();
        while (it.hasNext()) {
            it.next().a(jSONArray, map);
        }
        fVar.a("batch", jSONArray, collection);
    }

    private static String o() {
        return String.format("multipart/form-data; boundary=%s", "3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f");
    }

    private static String p() {
        if (q == null) {
            q = String.format("%s.%s", "FBAndroidSDK", "4.10.1");
            String a2 = com.facebook.internal.q.a();
            if (!com.facebook.internal.aa.a(a2)) {
                q = String.format(Locale.ROOT, "%s/%s", q, a2);
            }
        }
        return q;
    }

    private static String g(p pVar) {
        String i;
        if (!com.facebook.internal.aa.a(pVar.f())) {
            return pVar.f();
        }
        Iterator<GraphRequest> it = pVar.iterator();
        while (it.hasNext()) {
            AccessToken accessToken = it.next().d;
            if (accessToken != null && (i = accessToken.i()) != null) {
                return i;
            }
        }
        if (!com.facebook.internal.aa.a(f2410b)) {
            return f2410b;
        }
        return l.i();
    }

    private static boolean d(Object obj) {
        return (obj instanceof Bitmap) || (obj instanceof byte[]) || (obj instanceof Uri) || (obj instanceof ParcelFileDescriptor) || (obj instanceof ParcelableResourceWithMimeType);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean e(Object obj) {
        return (obj instanceof String) || (obj instanceof Boolean) || (obj instanceof Number) || (obj instanceof Date);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String f(Object obj) {
        if (obj instanceof String) {
            return (String) obj;
        }
        if ((obj instanceof Boolean) || (obj instanceof Number)) {
            return obj.toString();
        }
        if (obj instanceof Date) {
            return new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ssZ", Locale.US).format(obj);
        }
        throw new IllegalArgumentException("Unsupported parameter type.");
    }

    private static class f implements d {

        /* renamed from: a, reason: collision with root package name */
        private final OutputStream f2422a;

        /* renamed from: b, reason: collision with root package name */
        private final com.facebook.internal.s f2423b;
        private boolean c = true;
        private boolean d;

        public f(OutputStream outputStream, com.facebook.internal.s sVar, boolean z) {
            this.d = false;
            this.f2422a = outputStream;
            this.f2423b = sVar;
            this.d = z;
        }

        public void a(String str, Object obj, GraphRequest graphRequest) throws IOException {
            if (this.f2422a instanceof z) {
                ((z) this.f2422a).a(graphRequest);
            }
            if (GraphRequest.e(obj)) {
                a(str, GraphRequest.f(obj));
                return;
            }
            if (obj instanceof Bitmap) {
                a(str, (Bitmap) obj);
                return;
            }
            if (obj instanceof byte[]) {
                a(str, (byte[]) obj);
                return;
            }
            if (obj instanceof Uri) {
                a(str, (Uri) obj, (String) null);
                return;
            }
            if (obj instanceof ParcelFileDescriptor) {
                a(str, (ParcelFileDescriptor) obj, (String) null);
                return;
            }
            if (obj instanceof ParcelableResourceWithMimeType) {
                ParcelableResourceWithMimeType parcelableResourceWithMimeType = (ParcelableResourceWithMimeType) obj;
                Parcelable b2 = parcelableResourceWithMimeType.b();
                String a2 = parcelableResourceWithMimeType.a();
                if (b2 instanceof ParcelFileDescriptor) {
                    a(str, (ParcelFileDescriptor) b2, a2);
                    return;
                } else {
                    if (b2 instanceof Uri) {
                        a(str, (Uri) b2, a2);
                        return;
                    }
                    throw b();
                }
            }
            throw b();
        }

        private RuntimeException b() {
            return new IllegalArgumentException("value is not a supported type.");
        }

        public void a(String str, JSONArray jSONArray, Collection<GraphRequest> collection) throws IOException, JSONException {
            if (!(this.f2422a instanceof z)) {
                a(str, jSONArray.toString());
                return;
            }
            z zVar = (z) this.f2422a;
            a(str, (String) null, (String) null);
            a("[", new Object[0]);
            int i = 0;
            for (GraphRequest graphRequest : collection) {
                JSONObject jSONObject = jSONArray.getJSONObject(i);
                zVar.a(graphRequest);
                if (i > 0) {
                    a(",%s", jSONObject.toString());
                } else {
                    a("%s", jSONObject.toString());
                }
                i++;
            }
            a("]", new Object[0]);
            if (this.f2423b != null) {
                this.f2423b.a("    " + str, (Object) jSONArray.toString());
            }
        }

        @Override // com.facebook.GraphRequest.d
        public void a(String str, String str2) throws IOException {
            a(str, (String) null, (String) null);
            b("%s", str2);
            a();
            if (this.f2423b != null) {
                this.f2423b.a("    " + str, (Object) str2);
            }
        }

        public void a(String str, Bitmap bitmap) throws IOException {
            a(str, str, "image/png");
            bitmap.compress(Bitmap.CompressFormat.PNG, 100, this.f2422a);
            b("", new Object[0]);
            a();
            if (this.f2423b != null) {
                this.f2423b.a("    " + str, (Object) "<Image>");
            }
        }

        public void a(String str, byte[] bArr) throws IOException {
            a(str, str, "content/unknown");
            this.f2422a.write(bArr);
            b("", new Object[0]);
            a();
            if (this.f2423b != null) {
                this.f2423b.a("    " + str, (Object) String.format(Locale.ROOT, "<Data: %d>", Integer.valueOf(bArr.length)));
            }
        }

        public void a(String str, Uri uri, String str2) throws IOException {
            int a2;
            if (str2 == null) {
                str2 = "content/unknown";
            }
            a(str, str, str2);
            if (this.f2422a instanceof x) {
                ((x) this.f2422a).a(com.facebook.internal.aa.e(uri));
                a2 = 0;
            } else {
                a2 = com.facebook.internal.aa.a(l.f().getContentResolver().openInputStream(uri), this.f2422a) + 0;
            }
            b("", new Object[0]);
            a();
            if (this.f2423b != null) {
                this.f2423b.a("    " + str, (Object) String.format(Locale.ROOT, "<Data: %d>", Integer.valueOf(a2)));
            }
        }

        public void a(String str, ParcelFileDescriptor parcelFileDescriptor, String str2) throws IOException {
            int a2;
            if (str2 == null) {
                str2 = "content/unknown";
            }
            a(str, str, str2);
            if (this.f2422a instanceof x) {
                ((x) this.f2422a).a(parcelFileDescriptor.getStatSize());
                a2 = 0;
            } else {
                a2 = com.facebook.internal.aa.a((InputStream) new ParcelFileDescriptor.AutoCloseInputStream(parcelFileDescriptor), this.f2422a) + 0;
            }
            b("", new Object[0]);
            a();
            if (this.f2423b != null) {
                this.f2423b.a("    " + str, (Object) String.format(Locale.ROOT, "<Data: %d>", Integer.valueOf(a2)));
            }
        }

        public void a() throws IOException {
            if (!this.d) {
                b("--%s", "3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f");
            } else {
                this.f2422a.write("&".getBytes());
            }
        }

        public void a(String str, String str2, String str3) throws IOException {
            if (!this.d) {
                a("Content-Disposition: form-data; name=\"%s\"", str);
                if (str2 != null) {
                    a("; filename=\"%s\"", str2);
                }
                b("", new Object[0]);
                if (str3 != null) {
                    b("%s: %s", "Content-Type", str3);
                }
                b("", new Object[0]);
                return;
            }
            this.f2422a.write(String.format("%s=", str).getBytes());
        }

        public void a(String str, Object... objArr) throws IOException {
            if (!this.d) {
                if (this.c) {
                    this.f2422a.write("--".getBytes());
                    this.f2422a.write("3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f".getBytes());
                    this.f2422a.write(IOUtils.LINE_SEPARATOR_WINDOWS.getBytes());
                    this.c = false;
                }
                this.f2422a.write(String.format(str, objArr).getBytes());
                return;
            }
            this.f2422a.write(URLEncoder.encode(String.format(Locale.US, str, objArr), "UTF-8").getBytes());
        }

        public void b(String str, Object... objArr) throws IOException {
            a(str, objArr);
            if (!this.d) {
                a(IOUtils.LINE_SEPARATOR_WINDOWS, new Object[0]);
            }
        }
    }

    public static class ParcelableResourceWithMimeType<RESOURCE extends Parcelable> implements Parcelable {
        public static final Parcelable.Creator<ParcelableResourceWithMimeType> CREATOR = new Parcelable.Creator<ParcelableResourceWithMimeType>() { // from class: com.facebook.GraphRequest.ParcelableResourceWithMimeType.1
            @Override // android.os.Parcelable.Creator
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public ParcelableResourceWithMimeType createFromParcel(Parcel parcel) {
                return new ParcelableResourceWithMimeType(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public ParcelableResourceWithMimeType[] newArray(int i) {
                return new ParcelableResourceWithMimeType[i];
            }
        };

        /* renamed from: a, reason: collision with root package name */
        private final String f2418a;

        /* renamed from: b, reason: collision with root package name */
        private final RESOURCE f2419b;

        public String a() {
            return this.f2418a;
        }

        public RESOURCE b() {
            return this.f2419b;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 1;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel out, int flags) {
            out.writeString(this.f2418a);
            out.writeParcelable(this.f2419b, flags);
        }

        private ParcelableResourceWithMimeType(Parcel parcel) {
            this.f2418a = parcel.readString();
            this.f2419b = (RESOURCE) parcel.readParcelable(l.f().getClassLoader());
        }
    }
}
