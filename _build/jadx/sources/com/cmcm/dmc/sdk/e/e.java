package com.cmcm.dmc.sdk.e;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.text.TextUtils;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONObject;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class e extends b implements com.cmcm.dmc.sdk.a.n {

    /* renamed from: a, reason: collision with root package name */
    private com.cmcm.dmc.sdk.a.o f721a;

    /* renamed from: b, reason: collision with root package name */
    private com.cmcm.dmc.sdk.a.l f722b;
    private boolean c;
    private long d;
    private ConcurrentHashMap<String, Map<Long, Long>> e;
    private ConcurrentHashMap<String, Map<Long, Long>> f;
    private ConcurrentHashMap<String, Map<Long, Long>> g;
    private ConcurrentHashMap<Long, Long> i;
    private a j;
    private long k;
    private long l;
    private long h = System.currentTimeMillis();
    private volatile boolean m = true;

    /* renamed from: com.cmcm.dmc.sdk.e.e$1, reason: invalid class name */
    class AnonymousClass1 implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ e f723a;

        @Override // java.lang.Runnable
        public void run() {
            if (this.f723a.e()) {
                this.f723a.j();
            }
        }
    }

    private class a extends BroadcastReceiver {
        private a() {
        }

        /* synthetic */ a(e eVar, AnonymousClass1 anonymousClass1) {
            this();
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, final Intent intent) {
            try {
                com.cmcm.dmc.sdk.a.c.d().post(new Runnable() { // from class: com.cmcm.dmc.sdk.e.e.a.1
                    @Override // java.lang.Runnable
                    public void run() {
                        long currentTimeMillis = System.currentTimeMillis();
                        String action = intent.getAction();
                        if ("android.intent.action.SCREEN_OFF".equals(action)) {
                            if (e.this.m) {
                                e.this.k = currentTimeMillis;
                                e.this.m = false;
                                return;
                            }
                            return;
                        }
                        if ("android.intent.action.USER_PRESENT".equals(action)) {
                            e.this.m = true;
                            e.this.l = currentTimeMillis;
                            long j = e.this.k / 3600000;
                            long j2 = currentTimeMillis / 3600000;
                            if (e.this.i == null) {
                                e.this.i = new ConcurrentHashMap();
                            }
                            if (e.this.k <= 0 || e.this.k >= currentTimeMillis) {
                                return;
                            }
                            if (j == j2) {
                                e.this.i.put(Long.valueOf(currentTimeMillis), Long.valueOf(e.this.k));
                            } else if (j < j2) {
                                e.this.i.put(Long.valueOf(((e.this.k + 3600000) - (e.this.k % 3600000)) - 10), Long.valueOf(e.this.k));
                                e.this.i.put(Long.valueOf(currentTimeMillis), Long.valueOf((currentTimeMillis - (currentTimeMillis % 3600000)) + 10));
                            }
                        }
                    }
                });
            } catch (Exception e) {
                com.cmcm.dmc.sdk.a.i.a("ReceiverAppRunInfoList", "failed : " + e.getMessage());
            }
        }
    }

    private JSONObject a(Map<String, Map<Long, Long>> map, Long l) {
        if (map == null || map.isEmpty()) {
            return null;
        }
        JSONObject jSONObject = new JSONObject();
        for (String str : map.keySet()) {
            Map<Long, Long> map2 = map.get(str);
            JSONObject jSONObject2 = new JSONObject();
            for (Long l2 : map2.keySet()) {
                jSONObject2.put(l2.toString(), map2.get(l2).longValue() / l.longValue());
            }
            jSONObject.put(str, jSONObject2);
        }
        return jSONObject;
    }

    private void c() {
        ObjectInputStream objectInputStream;
        FileInputStream fileInputStream;
        FileInputStream fileInputStream2 = null;
        try {
            fileInputStream = k().c();
            try {
                objectInputStream = new ObjectInputStream(fileInputStream);
            } catch (Throwable th) {
                th = th;
                objectInputStream = null;
            }
            try {
                this.d = objectInputStream.readLong();
                this.e = (ConcurrentHashMap) objectInputStream.readObject();
                this.f = (ConcurrentHashMap) objectInputStream.readObject();
                this.g = (ConcurrentHashMap) objectInputStream.readObject();
                com.cmcm.dmc.sdk.a.q.a(objectInputStream);
                com.cmcm.dmc.sdk.a.q.a(fileInputStream);
            } catch (Throwable th2) {
                th = th2;
                com.cmcm.dmc.sdk.a.q.a(objectInputStream);
                com.cmcm.dmc.sdk.a.q.a(fileInputStream);
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            objectInputStream = null;
            fileInputStream = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i() {
        ObjectOutputStream objectOutputStream;
        FileOutputStream fileOutputStream;
        FileOutputStream fileOutputStream2 = null;
        if (!this.c) {
            return;
        }
        com.cmcm.dmc.sdk.a.a k = k();
        try {
            fileOutputStream = k.b();
            try {
                objectOutputStream = new ObjectOutputStream(fileOutputStream);
            } catch (Throwable th) {
                th = th;
                objectOutputStream = null;
            }
            try {
                objectOutputStream.writeLong(this.d);
                objectOutputStream.writeObject(this.e);
                objectOutputStream.writeObject(this.f);
                objectOutputStream.writeObject(this.g);
                k.a(fileOutputStream);
                this.c = false;
                com.cmcm.dmc.sdk.a.q.a(objectOutputStream);
                com.cmcm.dmc.sdk.a.q.a(fileOutputStream);
            } catch (Throwable th2) {
                th = th2;
                com.cmcm.dmc.sdk.a.q.a(objectOutputStream);
                com.cmcm.dmc.sdk.a.q.a(fileOutputStream);
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            objectOutputStream = null;
            fileOutputStream = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j() {
        if (this.e == null || this.e.isEmpty() || System.currentTimeMillis() < this.d + 21600000) {
            return;
        }
        k().a();
        long currentTimeMillis = System.currentTimeMillis();
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("begin_time", this.d / 1000);
            jSONObject.put("end_time", currentTimeMillis / 1000);
            Object a2 = a((Map<String, Map<Long, Long>>) this.e, (Long) 1L);
            if (a2 == null) {
                a2 = "";
            }
            jSONObject.put("runCount", a2);
            Object a3 = a((Map<String, Map<Long, Long>>) this.f, (Long) 1000L);
            if (a3 == null) {
                a3 = "";
            }
            jSONObject.put("runTime", a3);
            Object a4 = a((Map<String, Map<Long, Long>>) this.g, (Long) 1000L);
            if (a4 == null) {
                a4 = "";
            }
            jSONObject.put("runTimeOffScreen", a4);
            a(jSONObject.toString());
        } catch (Exception e) {
            com.cmcm.dmc.sdk.a.i.a("ReceiverAppRunInfoList", e.getMessage());
        }
        l();
    }

    private com.cmcm.dmc.sdk.a.a k() {
        return new com.cmcm.dmc.sdk.a.a(new File(com.cmcm.dmc.sdk.a.c.e(), "running_with_duration.dat"));
    }

    private void l() {
        this.c = false;
        this.d = System.currentTimeMillis();
        this.e = new ConcurrentHashMap<>();
        this.f = new ConcurrentHashMap<>();
        this.g = new ConcurrentHashMap<>();
        this.i = new ConcurrentHashMap<>();
    }

    private void m() {
        this.j = new a(this, null);
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.SCREEN_ON");
        intentFilter.addAction("android.intent.action.SCREEN_OFF");
        intentFilter.addAction("android.intent.action.USER_PRESENT");
        a(this.j, intentFilter);
    }

    private void n() {
        if (this.j != null) {
            a(this.j);
        }
    }

    @Override // com.cmcm.dmc.sdk.a.n
    public void a(String str, String str2) {
        Map<Long, Long> map;
        Map<Long, Long> map2;
        Long l;
        long j;
        Long l2;
        if (this.e == null || this.f == null || this.g == null) {
            return;
        }
        if (TextUtils.isEmpty(str)) {
            str = com.cmcm.dmc.sdk.a.c.c().getPackageName();
        }
        long currentTimeMillis = System.currentTimeMillis();
        long j2 = currentTimeMillis / 3600000;
        if (this.h > 0 && currentTimeMillis > this.h) {
            Map<Long, Long> map3 = this.e.get(str);
            if (map3 == null) {
                HashMap hashMap = new HashMap();
                hashMap.put(Long.valueOf(j2), 1L);
                this.e.put(str, hashMap);
            } else {
                Long l3 = map3.get(Long.valueOf(j2));
                if (l3 == null) {
                    map3.put(Long.valueOf(j2), 1L);
                } else {
                    map3.put(Long.valueOf(j2), Long.valueOf(l3.longValue() + 1));
                }
            }
            Map<Long, Long> map4 = this.f.get(str);
            if (map4 == null) {
                HashMap hashMap2 = new HashMap();
                this.f.put(str, hashMap2);
                map = hashMap2;
            } else {
                map = map4;
            }
            long j3 = this.h / 3600000;
            Long l4 = map.get(Long.valueOf(j2));
            if (l4 == null) {
                l4 = 0L;
            }
            if (j3 == j2) {
                map.put(Long.valueOf(j2), Long.valueOf((l4.longValue() + currentTimeMillis) - this.h));
            } else {
                map.put(Long.valueOf(j3), Long.valueOf((3600000 - (this.h % 3600000)) + l4.longValue()));
                for (long j4 = 1 + j3; j4 < j2; j4++) {
                    map.put(Long.valueOf(j4), 3600000L);
                }
                map.put(Long.valueOf(j2), Long.valueOf(currentTimeMillis % 3600000));
            }
            long j5 = this.k / 3600000;
            long j6 = this.l / 3600000;
            Map<Long, Long> map5 = this.g.get(str);
            if (map5 == null) {
                HashMap hashMap3 = new HashMap();
                this.g.put(str, hashMap3);
                map2 = hashMap3;
            } else {
                map2 = map5;
            }
            Long l5 = map2.get(Long.valueOf(j2));
            if (l5 == null) {
                l5 = 0L;
            }
            if (j3 == j2) {
                Long valueOf = Long.valueOf((l5.longValue() + currentTimeMillis) - this.h);
                if (this.i != null) {
                    Iterator<Long> it = this.i.keySet().iterator();
                    while (true) {
                        l2 = valueOf;
                        if (!it.hasNext()) {
                            break;
                        }
                        Long next = it.next();
                        Long l6 = this.i.get(next);
                        if (l6.longValue() > this.h && l6.longValue() < next.longValue() && next.longValue() <= currentTimeMillis) {
                            l2 = Long.valueOf(l2.longValue() - (next.longValue() - l6.longValue()));
                        }
                        valueOf = l2;
                    }
                } else {
                    l2 = valueOf;
                }
                map2.put(Long.valueOf(j2), Long.valueOf(l2.longValue() > 0 ? l2.longValue() : 0L));
            } else {
                Long valueOf2 = Long.valueOf(l5.longValue() + (3600000 - (this.h % 3600000)));
                if (this.i != null) {
                    Iterator<Long> it2 = this.i.keySet().iterator();
                    while (true) {
                        l = valueOf2;
                        if (!it2.hasNext()) {
                            break;
                        }
                        Long next2 = it2.next();
                        Long l7 = this.i.get(next2);
                        if (l7.longValue() < next2.longValue() && l7.longValue() > this.h && next2.longValue() < (this.h + 3600000) - (this.h % 3600000)) {
                            l = Long.valueOf(l.longValue() - (next2.longValue() - l7.longValue()));
                        }
                        valueOf2 = l;
                    }
                } else {
                    l = valueOf2;
                }
                map2.put(Long.valueOf(j3), Long.valueOf(l.longValue() > 0 ? l.longValue() : 0L));
                long j7 = 1 + j3;
                while (true) {
                    long j8 = j7;
                    if (j8 >= j2) {
                        break;
                    }
                    long j9 = 3600000;
                    if (j5 >= j3 && j5 < j8 && j6 > j8) {
                        j = 0;
                    } else if (this.i != null) {
                        Iterator<Long> it3 = this.i.keySet().iterator();
                        while (true) {
                            j = j9;
                            if (!it3.hasNext()) {
                                break;
                            }
                            Long next3 = it3.next();
                            Long l8 = this.i.get(next3);
                            if (l8.longValue() < next3.longValue() && l8.longValue() / 3600000 == j8 && next3.longValue() / 3600000 == j8) {
                                j -= next3.longValue() - l8.longValue();
                            }
                            j9 = j;
                        }
                    } else {
                        j = 3600000;
                    }
                    Long valueOf3 = Long.valueOf(j8);
                    if (j <= 0) {
                        j = 0;
                    }
                    map2.put(valueOf3, Long.valueOf(j));
                    j7 = 1 + j8;
                }
                if (j5 <= 0 || j5 >= j2 || j6 != j2) {
                    map2.put(Long.valueOf(j2), Long.valueOf(currentTimeMillis % 3600000));
                } else {
                    map2.put(Long.valueOf(j2), Long.valueOf((currentTimeMillis % 3600000) - (this.l % 3600000) > 0 ? (currentTimeMillis % 3600000) - (this.l % 3600000) : 0L));
                }
            }
            this.h = currentTimeMillis;
        }
        this.c = true;
        d.a().a("run", str2);
    }

    @Override // com.cmcm.dmc.sdk.e.b
    public void b() {
        m();
        this.f721a = new com.cmcm.dmc.sdk.a.o();
        if (this.f721a.b()) {
            this.f721a.a(this);
            c();
            j();
            this.f722b = new com.cmcm.dmc.sdk.a.l();
            this.f722b.a(new Runnable() { // from class: com.cmcm.dmc.sdk.e.e.2
                @Override // java.lang.Runnable
                public void run() {
                    e.this.i();
                    e.this.j();
                }
            }, 60000L);
        }
    }

    @Override // com.cmcm.dmc.sdk.e.b
    public String f() {
        return "running_with_duration";
    }

    @Override // com.cmcm.dmc.sdk.e.b
    public void g() {
        if (this.f721a.b()) {
            i();
            l();
            this.f722b.b();
            this.f721a.a();
            n();
        }
    }
}
