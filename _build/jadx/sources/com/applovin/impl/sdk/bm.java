package com.applovin.impl.sdk;

import android.content.SharedPreferences;
import com.applovin.sdk.AppLovinLogger;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;
import org.json.JSONObject;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class bm {

    /* renamed from: a, reason: collision with root package name */
    private final AppLovinSdkImpl f458a;

    /* renamed from: b, reason: collision with root package name */
    private final AppLovinLogger f459b;
    private ArrayList c;
    private ArrayList d;
    private final Object e;
    private final SharedPreferences f;

    bm(AppLovinSdkImpl appLovinSdkImpl) {
        if (appLovinSdkImpl == null) {
            throw new IllegalArgumentException("No sdk specified");
        }
        this.f458a = appLovinSdkImpl;
        this.f459b = appLovinSdkImpl.getLogger();
        this.f = appLovinSdkImpl.getApplicationContext().getSharedPreferences("com.applovin.sdk.impl.postbackQueue.domain", 0);
        this.e = new Object();
        this.c = c();
        this.d = new ArrayList();
    }

    private an a(String str) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            return new an(this, jSONObject.getString("targetUrl"), ax.a(jSONObject.getJSONObject("requestBody")), jSONObject.getInt("attemptNumber"));
        } catch (Exception e) {
            this.f459b.w("PersistentPostbackManager", "Unable to inflate postback request from JSON.", e);
            return null;
        }
    }

    private void a(an anVar) {
        synchronized (this.e) {
            b(anVar);
            c(anVar);
        }
    }

    private void b(an anVar) {
        synchronized (this.e) {
            if (this.c.size() < ((Integer) this.f458a.a(av.bl)).intValue()) {
                this.c.add(anVar);
                d();
                this.f459b.d("PersistentPostbackManager", "Enqueued postback: " + anVar);
            } else {
                this.f459b.w("PersistentPostbackManager", "Persistent queue has reached maximum size; postback retried in memory only." + anVar);
            }
        }
    }

    private ArrayList c() {
        if (!n.b()) {
            this.f459b.d("PersistentPostbackManager", "Loading new postback queue due to old Android version...");
            return new ArrayList();
        }
        Set<String> stringSet = this.f.getStringSet("com.applovin.sdk.impl.postbackQueue.key", new LinkedHashSet(0));
        ArrayList arrayList = new ArrayList(Math.max(1, stringSet.size()));
        int intValue = ((Integer) this.f458a.a(av.bm)).intValue();
        this.f459b.d("PersistentPostbackManager", "Deserializing " + stringSet.size() + " postback(s).");
        for (String str : stringSet) {
            an a2 = a(str);
            if (a2 == null) {
                this.f459b.e("PersistentPostbackManager", "Unable to deserialize postback json: " + str);
            } else if (a2.a() > intValue) {
                arrayList.add(a2);
            } else {
                this.f459b.d("PersistentPostbackManager", "Skipping deserialization because maximum attempt count exceeded for postback: " + a2);
            }
        }
        this.f459b.d("PersistentPostbackManager", "Successfully loaded postback queue with " + arrayList.size() + " postback(s).");
        return arrayList;
    }

    private void c(an anVar) {
        this.f459b.d("PersistentPostbackManager", "Preparing to submit postback..." + anVar);
        synchronized (this.e) {
            anVar.a(anVar.a() + 1);
            d();
        }
        int intValue = ((Integer) this.f458a.a(av.bm)).intValue();
        if (anVar.a() <= intValue) {
            this.f458a.getPostbackService().dispatchPostbackAsync(anVar.b(), anVar.c(), new am(this, anVar));
        } else {
            this.f459b.w("PersistentPostbackManager", "Exceeded maximum persisted attempt count of " + intValue + ". Dequeuing postback: " + anVar);
            d(anVar);
        }
    }

    private void d() {
        if (!n.b()) {
            this.f459b.d("PersistentPostbackManager", "Skipping writing postback queue to disk due to old Android version...");
            return;
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet(this.c.size());
        Iterator it = this.c.iterator();
        while (it.hasNext()) {
            String f = f((an) it.next());
            if (f != null) {
                linkedHashSet.add(f);
            }
        }
        this.f.edit().putStringSet("com.applovin.sdk.impl.postbackQueue.key", linkedHashSet).commit();
        this.f459b.d("PersistentPostbackManager", "Wrote updated postback queue to disk.");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(an anVar) {
        synchronized (this.e) {
            this.c.remove(anVar);
            d();
        }
        this.f459b.d("PersistentPostbackManager", "Dequeued successfully transmitted postback: " + anVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e(an anVar) {
        synchronized (this.e) {
            this.d.add(anVar);
        }
    }

    private String f(an anVar) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("attemptNumber", anVar.a()).put("targetUrl", anVar.b()).put("requestBody", new JSONObject(anVar.c()));
            return jSONObject.toString();
        } catch (Exception e) {
            this.f459b.w("PersistentPostbackManager", "Unable to serialize postback request to JSON.", e);
            return null;
        }
    }

    public void a() {
        synchronized (this.e) {
            Iterator it = this.c.iterator();
            while (it.hasNext()) {
                c((an) it.next());
            }
        }
    }

    public void a(String str, Map map) {
        a(new an(this, str, map));
    }

    public void b() {
        synchronized (this.e) {
            Iterator it = this.d.iterator();
            while (it.hasNext()) {
                c((an) it.next());
            }
            this.d.clear();
        }
    }
}
