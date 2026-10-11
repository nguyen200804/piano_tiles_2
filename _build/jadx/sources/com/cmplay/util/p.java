package com.cmplay.util;

import android.text.TextUtils;
import android.util.Log;
import java.util.ArrayList;
import java.util.List;
import java.util.Timer;
import java.util.TimerTask;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: MusicTrackPlayMgr.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class p {
    private static p h;
    private long d;
    private Timer f;
    private TimerTask g;

    /* renamed from: a, reason: collision with root package name */
    private List<a> f1815a = new ArrayList();

    /* renamed from: b, reason: collision with root package name */
    private long f1816b = 3;
    private int c = 0;
    private long e = 0;

    /* compiled from: MusicTrackPlayMgr.java */
    public class a {

        /* renamed from: a, reason: collision with root package name */
        public String f1818a;

        /* renamed from: b, reason: collision with root package name */
        public String f1819b;
        public int c;

        public a() {
        }
    }

    public static p a() {
        if (h == null) {
            synchronized (p.class) {
                h = new p();
            }
        }
        return h;
    }

    private void e() {
        if (this.f == null) {
            this.f = new Timer();
        }
        if (this.g == null) {
            this.g = new TimerTask() { // from class: com.cmplay.util.p.1
                @Override // java.util.TimerTask, java.lang.Runnable
                public void run() {
                    p.this.f();
                }
            };
        }
    }

    public void b() {
        c();
        e();
        this.c = 0;
        this.e = 0L;
        this.d = System.currentTimeMillis() + 1000;
        this.f.schedule(this.g, 1000L, this.f1816b);
    }

    public void c() {
        if (this.f != null) {
            this.f.cancel();
            this.f = null;
        }
        if (this.g != null) {
            this.g.cancel();
            this.g = null;
        }
    }

    public void d() {
        c();
        e();
        this.d = (System.currentTimeMillis() + 1000) - this.e;
        this.f.schedule(this.g, 1000L, this.f1816b);
    }

    public void a(String str) {
        JSONArray jSONArray;
        if (!TextUtils.isEmpty(str)) {
            this.f1815a.clear();
            try {
                JSONObject jSONObject = new JSONObject(str);
                if (!jSONObject.isNull("play_track") && (jSONArray = jSONObject.getJSONArray("play_track")) != null) {
                    for (int i = 0; i < jSONArray.length(); i++) {
                        JSONArray jSONArray2 = jSONArray.getJSONArray(i);
                        if (jSONArray2 != null) {
                            a aVar = new a();
                            aVar.f1819b = jSONArray2.getString(0);
                            aVar.f1818a = jSONArray2.getString(1);
                            aVar.c = jSONArray2.getInt(2);
                            this.f1815a.add(aVar);
                        }
                    }
                }
            } catch (JSONException e) {
                e.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f() {
        long currentTimeMillis = System.currentTimeMillis() - this.d;
        this.e = currentTimeMillis;
        int size = this.f1815a.size();
        if (this.c < size) {
            while (this.c < size) {
                a aVar = this.f1815a.get(this.c);
                if (currentTimeMillis >= aVar.c) {
                    Log.d("shengming", "android cell inst =" + aVar.f1819b + " cell name =" + aVar.f1818a);
                    NativeUtil.playSoundEffect(aVar.f1819b, aVar.f1818a);
                    this.c++;
                } else {
                    return;
                }
            }
            return;
        }
        c();
        b();
    }
}
