package com.duapps.ad.inmobi;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import com.duapps.ad.base.h;
import com.duapps.ad.inmobi.IMData;
import com.duapps.ad.inmobi.b;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONStringer;

/* compiled from: InMobiDataQueue.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class c implements Handler.Callback, b.a {
    private static c f;

    /* renamed from: b, reason: collision with root package name */
    private ArrayList<IMData> f2172b;
    private ArrayList<b> c;
    private ExecutorService d;
    private Context e;
    private Handler h;
    private volatile boolean g = false;
    private Handler i = new Handler(Looper.getMainLooper()) { // from class: com.duapps.ad.inmobi.c.1
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (message.what == 100) {
                for (int i = 1; i <= 3; i++) {
                    f fVar = new f(c.this.e);
                    fVar.f2181b = i - 1;
                    c.this.f2171a.add(fVar);
                }
                if (c.this.g) {
                    c.this.a((f) c.this.f2171a.get(0));
                }
            }
        }
    };

    /* renamed from: a, reason: collision with root package name */
    private ArrayList<f> f2171a = new ArrayList<>();

    public static c a(Context context) {
        synchronized (c.class) {
            if (f == null) {
                f = new c(context.getApplicationContext());
            }
        }
        return f;
    }

    private c(Context context) {
        this.e = context;
        this.i.sendEmptyMessage(100);
        a();
        this.d = Executors.newFixedThreadPool(3);
        this.c = new ArrayList<>();
        HandlerThread handlerThread = new HandlerThread("inmobiNative", 10);
        handlerThread.start();
        this.h = new Handler(handlerThread.getLooper(), this);
        this.h.sendEmptyMessageDelayed(1, 10800000L);
        c();
    }

    private void a() {
        ArrayList<IMData> a2;
        String string = this.e.getSharedPreferences("im_cache_prefs", 0).getString("im_cache_prefs_array", null);
        this.f2172b = new ArrayList<>();
        if (string != null && (a2 = a(string)) != null) {
            h.c("InMobiDataQueue", "arrayList size:" + a2.size());
            Iterator<IMData> it = a2.iterator();
            while (it.hasNext()) {
                this.f2172b.add(it.next());
            }
        }
    }

    private void b() {
        SharedPreferences.Editor edit = this.e.getSharedPreferences("im_cache_prefs", 0).edit();
        String a2 = a(this.f2172b);
        if (!TextUtils.isEmpty(a2)) {
            edit.putString("im_cache_prefs_array", a2);
            edit.apply();
        }
    }

    private void c() {
        long currentTimeMillis = System.currentTimeMillis();
        ArrayList<IMData> arrayList = new ArrayList<>();
        Iterator<IMData> it = this.f2172b.iterator();
        while (it.hasNext()) {
            IMData next = it.next();
            if (currentTimeMillis - next.v < 10800000) {
                arrayList.add(next);
            }
        }
        this.f2172b.clear();
        this.f2172b = null;
        this.f2172b = arrayList;
        b();
    }

    private boolean a(IMData iMData, IMData.a aVar) {
        boolean z = false;
        if (aVar == IMData.a.Impression && iMData.w) {
            return true;
        }
        if (aVar == IMData.a.Click && iMData.x) {
            return true;
        }
        Iterator<b> it = this.c.iterator();
        while (true) {
            boolean z2 = z;
            if (!it.hasNext()) {
                return z2;
            }
            b next = it.next();
            z = (next.f2167a.u.equals(iMData.u) && next.f2168b == aVar) ? true : z2;
        }
    }

    private void a(b bVar, boolean z) {
        int i;
        IMData iMData;
        if (z) {
            int i2 = 0;
            Iterator<IMData> it = this.f2172b.iterator();
            while (true) {
                i = i2;
                if (!it.hasNext()) {
                    iMData = null;
                    break;
                }
                iMData = it.next();
                if (bVar.f2167a.u.equals(iMData.u)) {
                    break;
                } else {
                    i2 = i + 1;
                }
            }
            if (iMData != null) {
                if (bVar.f2168b == IMData.a.Impression) {
                    iMData.w = true;
                } else if (bVar.f2168b == IMData.a.Click) {
                    iMData.x = true;
                }
                this.f2172b.set(i, iMData);
                b();
            }
        }
    }

    private void b(b bVar, boolean z) {
        this.c.remove(bVar);
        a(bVar, z);
        b bVar2 = null;
        Iterator<b> it = this.c.iterator();
        while (it.hasNext()) {
            b next = it.next();
            if (next.c == null || !next.c.c) {
                bVar2 = next;
                break;
            }
        }
        if (bVar2 != null && bVar2 != bVar) {
            if (!(System.currentTimeMillis() - bVar2.f2167a.v < 10800000)) {
                this.c.remove(bVar2);
            } else {
                bVar2.c = this.f2171a.get(bVar.c.f2181b);
                this.d.execute(bVar2);
            }
        }
    }

    private synchronized void b(IMData iMData, IMData.a aVar) {
        boolean z;
        if (a(iMData, aVar)) {
            h.c("InMobiDataQueue", "returning:" + iMData.u);
        } else {
            f fVar = null;
            Iterator<f> it = this.f2171a.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                f next = it.next();
                if (!next.c) {
                    fVar = next;
                    break;
                }
            }
            b bVar = new b(this.e, fVar, iMData, aVar, this);
            this.c.add(bVar);
            if (fVar != null) {
                this.d.execute(bVar);
                z = false;
            } else {
                z = true;
            }
            if (z && this.c.size() == 1) {
                this.g = true;
            }
        }
    }

    private synchronized void c(IMData iMData, IMData.a aVar) {
        IMData iMData2;
        if (iMData != null) {
            if (!TextUtils.isEmpty(iMData.u) && !TextUtils.isEmpty(iMData.t)) {
                Iterator<IMData> it = this.f2172b.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        iMData2 = null;
                        break;
                    } else {
                        iMData2 = it.next();
                        if (iMData2.u.equals(iMData.u)) {
                            break;
                        }
                    }
                }
                if (iMData2 == null) {
                    iMData2 = new IMData(iMData.u, iMData.t, iMData.v);
                    this.f2172b.add(iMData2);
                }
                b(iMData2, aVar);
            }
        }
    }

    public void a(IMData iMData) {
        if (iMData == null || TextUtils.isEmpty(iMData.u) || TextUtils.isEmpty(iMData.t)) {
            h.c("InMobiDataQueue", "IMData is null or namespace is null or contextCode is null !");
        } else {
            c(iMData, IMData.a.Impression);
        }
    }

    public void b(IMData iMData) {
        if (iMData == null || TextUtils.isEmpty(iMData.u) || TextUtils.isEmpty(iMData.t)) {
            h.c("InMobiDataQueue", "IMData is null or namespace is null or contextCode is null !");
        } else {
            c(iMData, IMData.a.Click);
        }
    }

    @Override // com.duapps.ad.inmobi.b.a
    public void a(b bVar) {
        b(bVar, true);
    }

    public static String a(List<IMData> list) {
        if (list == null || list.size() == 0) {
            return null;
        }
        JSONStringer jSONStringer = new JSONStringer();
        try {
            jSONStringer.array();
            for (int i = 0; i < list.size(); i++) {
                IMData iMData = list.get(i);
                jSONStringer.object();
                jSONStringer.key("namespace").value(iMData.u);
                jSONStringer.key("contextCode").value(iMData.u);
                jSONStringer.key("ts").value(iMData.v);
                jSONStringer.endObject();
            }
            jSONStringer.endArray();
            return jSONStringer.toString();
        } catch (JSONException e) {
            h.c("InMobiDataQueue", "toJson exectpion=" + e.toString());
            return null;
        }
    }

    public static ArrayList<IMData> a(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        ArrayList<IMData> arrayList = new ArrayList<>();
        try {
            JSONArray jSONArray = new JSONArray(str);
            for (int i = 0; i < jSONArray.length(); i++) {
                JSONObject jSONObject = jSONArray.getJSONObject(i);
                arrayList.add(new IMData(jSONObject.getString("namespace"), jSONObject.getString("contextCode"), jSONObject.getLong("ts")));
            }
            return arrayList;
        } catch (JSONException e) {
            h.c("InMobiDataQueue", "fromJson exectpion=" + e.toString());
            return null;
        }
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        switch (message.what) {
            case 1:
                this.h.removeMessages(1);
                c();
                this.h.sendEmptyMessageDelayed(1, 10800000L);
                return true;
            default:
                return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(f fVar) {
        if (this.d != null && this.c.size() > 0) {
            b bVar = this.c.get(0);
            fVar.c = true;
            bVar.c = fVar;
            this.d.execute(bVar);
        }
    }
}
