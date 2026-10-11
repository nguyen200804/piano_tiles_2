package com.example.luckywheel.a;

import android.content.Context;
import android.os.Handler;
import android.util.Log;
import org.json.JSONObject;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public abstract class e extends com.example.luckywheel.a.a {
    private a c;
    private Handler d;
    private volatile boolean e;
    private int f;
    private Runnable g;
    private j h;

    public interface a {
        void a(int i, Object obj);

        void a(JSONObject jSONObject);
    }

    public e(Context context, a aVar) {
        super(context);
        this.g = new m(this);
        this.h = new n(this);
        this.c = aVar;
    }

    static /* synthetic */ int e(e eVar) {
        int i = eVar.f;
        eVar.f = i + 1;
        return i;
    }

    public synchronized void f() {
        if (this.e) {
            Log.d("EasyBaseRequest", getClass() + " is requesting, just return!");
        } else {
            Log.d("EasyBaseRequest", getClass() + " begin request: mInRequest = " + this.e);
            this.e = true;
            com.example.luckywheel.d.a.a(this.g);
        }
    }
}
