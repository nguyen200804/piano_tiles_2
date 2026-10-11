package com.facebook;

import android.support.v4.os.EnvironmentCompat;
import android.support.v7.widget.helper.ItemTouchHelper;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONTokener;

/* compiled from: GraphResponse.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class q {

    /* renamed from: a, reason: collision with root package name */
    private final HttpURLConnection f3464a;

    /* renamed from: b, reason: collision with root package name */
    private final JSONObject f3465b;
    private final JSONArray c;
    private final k d;
    private final String e;
    private final GraphRequest f;

    /* compiled from: GraphResponse.java */
    public enum a {
        NEXT,
        PREVIOUS
    }

    q(GraphRequest graphRequest, HttpURLConnection httpURLConnection, String str, JSONObject jSONObject) {
        this(graphRequest, httpURLConnection, str, jSONObject, null, null);
    }

    q(GraphRequest graphRequest, HttpURLConnection httpURLConnection, String str, JSONArray jSONArray) {
        this(graphRequest, httpURLConnection, str, null, jSONArray, null);
    }

    q(GraphRequest graphRequest, HttpURLConnection httpURLConnection, k kVar) {
        this(graphRequest, httpURLConnection, null, null, null, kVar);
    }

    q(GraphRequest graphRequest, HttpURLConnection httpURLConnection, String str, JSONObject jSONObject, JSONArray jSONArray, k kVar) {
        this.f = graphRequest;
        this.f3464a = httpURLConnection;
        this.e = str;
        this.f3465b = jSONObject;
        this.c = jSONArray;
        this.d = kVar;
    }

    public final k a() {
        return this.d;
    }

    public final JSONObject b() {
        return this.f3465b;
    }

    public GraphRequest a(a aVar) {
        String str;
        JSONObject optJSONObject;
        if (this.f3465b == null || (optJSONObject = this.f3465b.optJSONObject("paging")) == null) {
            str = null;
        } else if (aVar == a.NEXT) {
            str = optJSONObject.optString("next");
        } else {
            str = optJSONObject.optString("previous");
        }
        if (com.facebook.internal.aa.a(str)) {
            return null;
        }
        if (str != null && str.equals(this.f.l())) {
            return null;
        }
        try {
            return new GraphRequest(this.f.f(), new URL(str));
        } catch (MalformedURLException e) {
            return null;
        }
    }

    public String toString() {
        String str;
        try {
            Locale locale = Locale.US;
            Object[] objArr = new Object[1];
            objArr[0] = Integer.valueOf(this.f3464a != null ? this.f3464a.getResponseCode() : ItemTouchHelper.Callback.DEFAULT_DRAG_ANIMATION_DURATION);
            str = String.format(locale, "%d", objArr);
        } catch (IOException e) {
            str = EnvironmentCompat.MEDIA_UNKNOWN;
        }
        return "{Response:  responseCode: " + str + ", graphObject: " + this.f3465b + ", error: " + this.d + "}";
    }

    static List<q> a(HttpURLConnection httpURLConnection, p pVar) {
        List<q> a2;
        InputStream inputStream = null;
        try {
            inputStream = httpURLConnection.getResponseCode() >= 400 ? httpURLConnection.getErrorStream() : httpURLConnection.getInputStream();
            a2 = a(inputStream, httpURLConnection, pVar);
        } catch (i e) {
            com.facebook.internal.s.a(u.REQUESTS, "Response", "Response <Error>: %s", e);
            a2 = a(pVar, httpURLConnection, e);
        } catch (SecurityException e2) {
            com.facebook.internal.s.a(u.REQUESTS, "Response", "Response <Error>: %s", e2);
            a2 = a(pVar, httpURLConnection, new i(e2));
        } catch (IOException e3) {
            com.facebook.internal.s.a(u.REQUESTS, "Response", "Response <Error>: %s", e3);
            a2 = a(pVar, httpURLConnection, new i(e3));
        } catch (JSONException e4) {
            com.facebook.internal.s.a(u.REQUESTS, "Response", "Response <Error>: %s", e4);
            a2 = a(pVar, httpURLConnection, new i(e4));
        } finally {
            com.facebook.internal.aa.a((Closeable) inputStream);
        }
        return a2;
    }

    static List<q> a(InputStream inputStream, HttpURLConnection httpURLConnection, p pVar) throws i, JSONException, IOException {
        String a2 = com.facebook.internal.aa.a(inputStream);
        com.facebook.internal.s.a(u.INCLUDE_RAW_RESPONSES, "Response", "Response (raw)\n  Size: %d\n  Response:\n%s\n", Integer.valueOf(a2.length()), a2);
        return a(a2, httpURLConnection, pVar);
    }

    static List<q> a(String str, HttpURLConnection httpURLConnection, p pVar) throws i, JSONException, IOException {
        List<q> a2 = a(httpURLConnection, pVar, new JSONTokener(str).nextValue());
        com.facebook.internal.s.a(u.REQUESTS, "Response", "Response\n  Id: %s\n  Size: %d\n  Responses:\n%s\n", pVar.b(), Integer.valueOf(str.length()), a2);
        return a2;
    }

    private static List<q> a(HttpURLConnection httpURLConnection, List<GraphRequest> list, Object obj) throws i, JSONException {
        Object obj2;
        int size = list.size();
        ArrayList arrayList = new ArrayList(size);
        if (size == 1) {
            GraphRequest graphRequest = list.get(0);
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("body", obj);
                jSONObject.put("code", httpURLConnection != null ? httpURLConnection.getResponseCode() : ItemTouchHelper.Callback.DEFAULT_DRAG_ANIMATION_DURATION);
                JSONArray jSONArray = new JSONArray();
                jSONArray.put(jSONObject);
                obj2 = jSONArray;
            } catch (IOException e) {
                arrayList.add(new q(graphRequest, httpURLConnection, new k(httpURLConnection, e)));
            } catch (JSONException e2) {
                arrayList.add(new q(graphRequest, httpURLConnection, new k(httpURLConnection, e2)));
                obj2 = obj;
            }
            if ((obj2 instanceof JSONArray) || ((JSONArray) obj2).length() != size) {
                throw new i("Unexpected number of results");
            }
            JSONArray jSONArray2 = (JSONArray) obj2;
            for (int i = 0; i < jSONArray2.length(); i++) {
                GraphRequest graphRequest2 = list.get(i);
                try {
                    arrayList.add(a(graphRequest2, httpURLConnection, jSONArray2.get(i), obj));
                } catch (i e3) {
                    arrayList.add(new q(graphRequest2, httpURLConnection, new k(httpURLConnection, e3)));
                } catch (JSONException e4) {
                    arrayList.add(new q(graphRequest2, httpURLConnection, new k(httpURLConnection, e4)));
                }
            }
            return arrayList;
        }
        obj2 = obj;
        if (obj2 instanceof JSONArray) {
        }
        throw new i("Unexpected number of results");
    }

    private static q a(GraphRequest graphRequest, HttpURLConnection httpURLConnection, Object obj, Object obj2) throws JSONException {
        if (obj instanceof JSONObject) {
            JSONObject jSONObject = (JSONObject) obj;
            k a2 = k.a(jSONObject, obj2, httpURLConnection);
            if (a2 != null) {
                if (a2.b() == 190 && com.facebook.internal.aa.a(graphRequest.f())) {
                    AccessToken.a((AccessToken) null);
                }
                return new q(graphRequest, httpURLConnection, a2);
            }
            Object a3 = com.facebook.internal.aa.a(jSONObject, "body", "FACEBOOK_NON_JSON_RESULT");
            if (a3 instanceof JSONObject) {
                return new q(graphRequest, httpURLConnection, a3.toString(), (JSONObject) a3);
            }
            if (a3 instanceof JSONArray) {
                return new q(graphRequest, httpURLConnection, a3.toString(), (JSONArray) a3);
            }
            obj = JSONObject.NULL;
        }
        if (obj == JSONObject.NULL) {
            return new q(graphRequest, httpURLConnection, obj.toString(), (JSONObject) null);
        }
        throw new i("Got unexpected object type in response, class: " + obj.getClass().getSimpleName());
    }

    static List<q> a(List<GraphRequest> list, HttpURLConnection httpURLConnection, i iVar) {
        int size = list.size();
        ArrayList arrayList = new ArrayList(size);
        for (int i = 0; i < size; i++) {
            arrayList.add(new q(list.get(i), httpURLConnection, new k(httpURLConnection, iVar)));
        }
        return arrayList;
    }
}
