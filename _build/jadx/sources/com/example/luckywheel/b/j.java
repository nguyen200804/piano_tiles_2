package com.example.luckywheel.b;

import android.content.Context;
import android.support.annotation.NonNull;
import android.util.Log;
import com.mopub.mobileads.VastExtensionXmlManager;
import com.whatscall.luckywheel.R;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class j {

    /* renamed from: a, reason: collision with root package name */
    private static j f2318a;
    private Map<Integer, Integer> c = new HashMap();

    /* renamed from: b, reason: collision with root package name */
    private a f2319b = new a(1, R.drawable.diamond);

    public static class a {

        /* renamed from: a, reason: collision with root package name */
        @NonNull
        int f2320a;

        /* renamed from: b, reason: collision with root package name */
        @NonNull
        int f2321b;

        public a(int i, int i2) {
            this.f2320a = i;
            this.f2321b = i2;
        }
    }

    public interface b {
        void a();

        void a(int i);

        void b();
    }

    public static class c {

        /* renamed from: a, reason: collision with root package name */
        public int f2322a;

        /* renamed from: b, reason: collision with root package name */
        public int f2323b;
        public int c;
    }

    public static class d {

        /* renamed from: a, reason: collision with root package name */
        public int f2324a;

        /* renamed from: b, reason: collision with root package name */
        public int f2325b;
    }

    private j() {
    }

    public static j a() {
        if (f2318a == null) {
            synchronized (j.class) {
                if (f2318a == null) {
                    f2318a = new j();
                }
            }
        }
        return f2318a;
    }

    public void a(Context context, int i, b bVar) {
        if (i == 0 || bVar == null || !b()) {
            return;
        }
        c cVar = new c();
        cVar.c = i;
        cVar.f2322a = this.f2319b.f2320a;
        cVar.f2323b = this.c.get(Integer.valueOf(this.f2319b.f2320a)).intValue();
        k kVar = new k(context, cVar, new p(this, bVar));
        bVar.a();
        kVar.f();
    }

    void a(JSONObject jSONObject) {
        try {
            JSONArray jSONArray = jSONObject.getJSONArray("data");
            Log.d("liufan", "redeemRateList = " + jSONArray);
            if (jSONArray != null) {
                for (int i = 0; i < jSONArray.length(); i++) {
                    JSONObject jSONObject2 = jSONArray.getJSONObject(i);
                    int optInt = jSONObject2.optInt(VastExtensionXmlManager.TYPE);
                    int optInt2 = jSONObject2.optInt("rate");
                    Log.d("liufan", "type = " + optInt + ", rate = " + optInt2);
                    this.c.put(Integer.valueOf(optInt), Integer.valueOf(optInt2));
                }
            }
        } catch (JSONException e) {
            e.printStackTrace();
            Log.d("liufan", "syncRedeemInfo fail");
        }
    }

    boolean b() {
        return this.c != null && this.c.size() > 0;
    }

    public d c() {
        if (this.f2319b == null || !b()) {
            return null;
        }
        d dVar = new d();
        dVar.f2324a = this.f2319b.f2321b;
        dVar.f2325b = this.c.get(Integer.valueOf(this.f2319b.f2320a)).intValue();
        return dVar;
    }
}
