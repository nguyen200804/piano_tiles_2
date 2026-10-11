package com.cmcm.dmc.sdk.a;

import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Handler;
import android.text.TextUtils;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.net.HttpURLConnection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class b implements com.cmcm.dmc.sdk.a {

    /* renamed from: a, reason: collision with root package name */
    private Context f657a;

    /* renamed from: b, reason: collision with root package name */
    private Handler f658b;
    private File c;
    private com.cmcm.dmc.sdk.a d;
    private volatile Map<String, Map<String, String>> e;
    private String f;
    private String g;
    private l h;
    private boolean i;

    private class a extends com.cmcm.dmc.sdk.d.a {

        /* renamed from: b, reason: collision with root package name */
        private ByteArrayOutputStream f665b;
        private l c;
        private int d;

        private a() {
            this.f665b = new ByteArrayOutputStream();
        }

        public void a(String str) {
            this.f665b.reset();
            c(str);
        }

        @Override // com.cmcm.dmc.sdk.d.a
        public void a(boolean z) {
            this.d++;
            boolean b2 = z ? b(this.f665b.toString()) : b((String) null);
            if (a() && b2) {
                if (this.c == null) {
                    this.c = new l(1, b.this.f658b);
                }
                this.c.a(new Runnable() { // from class: com.cmcm.dmc.sdk.a.b.a.1
                    @Override // java.lang.Runnable
                    public void run() {
                        a.this.a(a.this.c());
                    }
                }, 60000L);
            }
        }

        public boolean a() {
            return this.d < 3;
        }

        @Override // com.cmcm.dmc.sdk.d.a
        public boolean a(HttpURLConnection httpURLConnection) {
            httpURLConnection.setRequestProperty("Charset", "utf8");
            return super.a(httpURLConnection);
        }

        @Override // com.cmcm.dmc.sdk.d.a
        public boolean a(HttpURLConnection httpURLConnection, byte[] bArr, int i, int i2) {
            this.f665b.write(bArr, i, i2);
            return super.a(httpURLConnection, bArr, i, i2);
        }

        public boolean b(String str) {
            return false;
        }
    }

    /* renamed from: com.cmcm.dmc.sdk.a.b$b, reason: collision with other inner class name */
    private class C0007b extends a {
        private String c;

        private C0007b() {
            super();
        }

        public void a(String str, String str2) {
            this.c = str2;
            c(str);
        }

        @Override // com.cmcm.dmc.sdk.a.b.a
        public boolean b(String str) {
            Map map;
            if (!TextUtils.isEmpty(str)) {
                try {
                    JSONObject jSONObject = new JSONObject(str);
                    if (jSONObject.getInt("error") == 0) {
                        JSONArray jSONArray = jSONObject.getJSONArray("data");
                        int length = jSONArray.length();
                        HashMap hashMap = new HashMap(length);
                        for (int i = 0; i < length; i++) {
                            JSONObject jSONObject2 = jSONArray.getJSONObject(i);
                            Integer valueOf = Integer.valueOf(jSONObject2.getInt("func_type"));
                            String string = jSONObject2.getString("section");
                            String string2 = jSONObject2.getString("key_value");
                            String str2 = valueOf + string;
                            Map map2 = (Map) hashMap.get(str2);
                            if (map2 == null) {
                                HashMap hashMap2 = new HashMap();
                                hashMap.put(str2, hashMap2);
                                map = hashMap2;
                            } else {
                                map = map2;
                            }
                            try {
                                JSONObject jSONObject3 = new JSONObject(string2);
                                Iterator<String> keys = jSONObject3.keys();
                                while (keys.hasNext()) {
                                    String next = keys.next();
                                    map.put(next, jSONObject3.getString(next));
                                }
                            } catch (Exception e) {
                                map.put("7a0ddfee-0149-4d44-8db6-d28c46eaf068", string2);
                            }
                        }
                        k.a().c().putString("config_version", this.c).putLong("config_update_timestamp", System.currentTimeMillis()).apply();
                        b.this.a(hashMap);
                        b.this.b(hashMap);
                        return false;
                    }
                } catch (Exception e2) {
                    i.a("HttpDownloader", "failed to process the result of Update : " + e2.getMessage());
                }
            }
            if (a()) {
                return true;
            }
            b.this.b((Map<String, Map<String, String>>) null);
            return false;
        }
    }

    private class c extends a {
        private c() {
            super();
        }

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0050 -> B:3:0x006c). Please report as a decompilation issue!!! */
        @Override // com.cmcm.dmc.sdk.a.b.a
        public boolean b(String str) {
            String string;
            boolean z = false;
            if (!TextUtils.isEmpty(str)) {
                try {
                    string = new JSONObject(str).getJSONObject("data").getString("business_config");
                } catch (Exception e) {
                    i.a("HttpDownloader", "failed to process the result of Version : " + e.getMessage());
                }
                if (!TextUtils.isEmpty(string)) {
                    k a2 = k.a();
                    a2.c().putLong("config_verion_timestamp", System.currentTimeMillis()).apply();
                    if (b.this.a(string, a2.d("config_version")) > 0) {
                        b.this.b(string);
                    } else {
                        b.this.b((Map<String, Map<String, String>>) null);
                    }
                    return z;
                }
            }
            if (a()) {
                z = true;
            } else {
                b.this.b((Map<String, Map<String, String>>) null);
            }
            return z;
        }
    }

    public b(com.cmcm.dmc.sdk.a aVar, File file, Context context, Handler handler) {
        this.d = aVar;
        if (this.d != null) {
            return;
        }
        this.f657a = context;
        this.f658b = handler;
        this.c = new File(file, "cloud_config.dat");
        d();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int a(String str, String str2) {
        if (str == null && str2 == null) {
            return 0;
        }
        if (str == null) {
            return -1;
        }
        if (str2 == null) {
            return 1;
        }
        String[] split = str.split("\\.");
        String[] split2 = str2.split("\\.");
        for (int i = 0; i < split.length && i < split2.length; i++) {
            try {
                long parseLong = Long.parseLong(split[i]);
                try {
                    long parseLong2 = Long.parseLong(split2[i]);
                    if (parseLong > parseLong2) {
                        return 1;
                    }
                    if (parseLong < parseLong2) {
                        return -1;
                    }
                } catch (NumberFormatException e) {
                    return 1;
                }
            } catch (NumberFormatException e2) {
                return -1;
            }
        }
        return split.length - split2.length;
    }

    private String a(Integer num, String str, String str2) {
        Map<String, String> map;
        Map<String, Map<String, String>> map2 = this.e;
        if (map2 == null || (map = map2.get(num + str)) == null) {
            return null;
        }
        return map.get(str2);
    }

    private String a(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return str.trim();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Map<String, Map<String, String>> map) {
        com.cmcm.dmc.sdk.a.a aVar;
        FileOutputStream fileOutputStream = null;
        try {
            aVar = new com.cmcm.dmc.sdk.a.a(this.c);
            try {
                fileOutputStream = aVar.b();
                new ObjectOutputStream(fileOutputStream).writeObject(map);
                aVar.a(fileOutputStream);
            } catch (Throwable th) {
                th = th;
                if (aVar != null) {
                    aVar.b(fileOutputStream);
                }
                i.a("CloudConfigProxy", "failed to save : " + th.getMessage());
            }
        } catch (Throwable th2) {
            th = th2;
            aVar = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(String str) {
        new C0007b().a("https://ws.ksmobile.net/api/GetCloudMsgAdv" + this.g + "&net=" + (q.i(this.f657a) ? 1 : 2) + "&lan=" + q.f(this.f657a), str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(final Map<String, Map<String, String>> map) {
        this.f658b.post(new Runnable() { // from class: com.cmcm.dmc.sdk.a.b.3
            @Override // java.lang.Runnable
            public void run() {
                long j;
                if (map != null) {
                    b.this.e = map;
                    b.this.f657a.sendBroadcast(new Intent("com.cmplay.activesdk.cloud_cfg.update"));
                    j = 21600000;
                } else {
                    j = 7200000;
                }
                b.this.i = false;
                b.this.h.a(new Runnable() { // from class: com.cmcm.dmc.sdk.a.b.3.1
                    @Override // java.lang.Runnable
                    public void run() {
                        b.this.e();
                    }
                }, j);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        long abs;
        com.cmcm.dmc.sdk.e c2 = d.a().c();
        if (c2 == null) {
            return;
        }
        if (TextUtils.isEmpty(c2.d()) || TextUtils.isEmpty(c2.c()) || TextUtils.isEmpty(c2.b())) {
            i.a("CloudConfigProxy", "invalid parameter");
            return;
        }
        StringBuilder sb = new StringBuilder();
        String[] a2 = q.a(this.f657a);
        sb.append("?version=2");
        sb.append("&ft=").append(String.valueOf(c2.a()));
        sb.append("&pkg=").append(a(c2.e()));
        sb.append("&apkversion=").append(a(c2.c()));
        sb.append("&channelid=").append(a(c2.b()));
        sb.append("&mcc=").append(a(a2[0]));
        sb.append("&mnc=").append(a(a2[1]));
        sb.append("&aid=").append(a(q.b(this.f657a)));
        sb.append("&gaid=").append(a(com.cmcm.dmc.sdk.g.a.b().a()));
        sb.append("&osversion=").append(a(Build.VERSION.RELEASE));
        if (TextUtils.isEmpty(Build.MODEL)) {
            sb.append("&device=null");
        } else {
            sb.append("&device=").append(Build.MODEL.replace(" ", "_"));
        }
        sb.append("&branch=").append(a(q.d()));
        sb.append("&resolution=").append(a(q.c(this.f657a)));
        sb.append("&mem_size=").append(Math.round(q.d(this.f657a) / 1048576.0f));
        sb.append("&dpi=").append(a(q.e(this.f657a)));
        this.g = sb.toString();
        this.f = String.format("https://ups.ksmobile.net/%s/getversions.php", c2.d()) + "?ft=" + String.valueOf(c2.a());
        long currentTimeMillis = System.currentTimeMillis();
        k a3 = k.a();
        long c3 = a3.c("config_update_timestamp");
        if (Math.abs(currentTimeMillis - c3) >= 21600000) {
            long c4 = a3.c("config_verion_timestamp");
            abs = Math.abs(currentTimeMillis - c4) >= 7200000 ? 0L : 7200000 - Math.abs(currentTimeMillis - c4);
        } else {
            abs = 21600000 - Math.abs(currentTimeMillis - c3);
        }
        this.h = new l(1);
        this.h.a(new Runnable() { // from class: com.cmcm.dmc.sdk.a.b.2
            @Override // java.lang.Runnable
            public void run() {
                b.this.e();
            }
        }, Math.max(abs, 60000L));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v5, types: [java.lang.String] */
    private void d() {
        ObjectInputStream objectInputStream;
        ObjectInputStream objectInputStream2 = null;
        objectInputStream2 = null;
        objectInputStream2 = null;
        try {
            try {
                try {
                    objectInputStream = new ObjectInputStream(new com.cmcm.dmc.sdk.a.a(this.c).c());
                } catch (Throwable th) {
                    th = th;
                    objectInputStream2 = objectInputStream;
                    q.a(objectInputStream2);
                    throw th;
                }
            } catch (FileNotFoundException e) {
                e = e;
                objectInputStream = null;
            } catch (Throwable th2) {
                th = th2;
            }
            try {
                this.e = (Map) objectInputStream.readObject();
                q.a(objectInputStream);
            } catch (FileNotFoundException e2) {
                e = e2;
                ?? r2 = "CloudConfigProxy";
                i.a("CloudConfigProxy", e.getMessage());
                q.a(objectInputStream);
                objectInputStream2 = r2;
            } catch (Throwable th3) {
                th = th3;
                objectInputStream2 = objectInputStream;
                i.a("CloudConfigProxy", "failed to load : " + th.getMessage());
                q.a(objectInputStream2);
            }
        } catch (Throwable th4) {
            th = th4;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e() {
        i.a("CloudConfigProxy", "begin to check version");
        if (this.i) {
            i.a("CloudConfigProxy", "is updating");
            return;
        }
        this.i = true;
        this.h.b();
        new c().a(this.f);
    }

    @Override // com.cmcm.dmc.sdk.a
    public int a(Integer num, String str, String str2, int i) {
        if (this.d != null) {
            return this.d.a(num, str, str2, i);
        }
        try {
            String a2 = a(num, str, str2);
            return a2 != null ? Integer.parseInt(a2) : i;
        } catch (Exception e) {
            i.a("CloudConfigProxy", "failed : " + e.getMessage());
            return i;
        }
    }

    public void a() {
        if (this.f658b == null) {
            return;
        }
        this.f658b.post(new Runnable() { // from class: com.cmcm.dmc.sdk.a.b.1
            @Override // java.lang.Runnable
            public void run() {
                b.this.c();
            }
        });
    }

    public void b() {
        if (this.g != null && q.h(this.f657a)) {
            long currentTimeMillis = System.currentTimeMillis();
            k a2 = k.a();
            if (Math.abs(currentTimeMillis - a2.c("config_update_timestamp")) < 21600000 || Math.abs(currentTimeMillis - a2.c("config_verion_timestamp")) < 7200000) {
                return;
            }
            e();
        }
    }
}
