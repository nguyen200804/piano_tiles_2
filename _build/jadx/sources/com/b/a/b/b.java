package com.b.a.b;

import android.content.Context;
import android.content.SharedPreferences;
import b.a.ao;
import b.a.ap;
import b.a.aq;
import b.a.ar;
import b.a.as;
import b.a.av;
import com.b.a.k;
import com.mopub.mobileads.VastExtensionXmlManager;
import java.util.Iterator;
import org.json.JSONObject;

/* compiled from: OnlineConfigAgent.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class b {

    /* renamed from: a, reason: collision with root package name */
    private final String f615a = "last_config_time";

    /* renamed from: b, reason: collision with root package name */
    private final String f616b = "report_policy";
    private final String c = "online_config";
    private com.b.a.b.a d = null;
    private com.b.a.b.d e = null;

    /* compiled from: OnlineConfigAgent.java */
    public static class d extends as {

        /* renamed from: a, reason: collision with root package name */
        public long f621a;

        /* renamed from: b, reason: collision with root package name */
        public long f622b;
    }

    public void a(Context context) {
        try {
            if (context == null) {
                ap.b("MobclickAgent", "unexpected null context in updateOnlineConfig");
            } else {
                new Thread(new RunnableC0005b(context.getApplicationContext())).start();
            }
        } catch (Exception e) {
            ap.b("MobclickAgent", "exception in updateOnlineConfig");
        }
    }

    public void a(com.b.a.b.d dVar) {
        this.e = dVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(JSONObject jSONObject) {
        if (this.d != null) {
            this.d.a(jSONObject);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public long b(Context context) {
        return k.a(context).i().getLong("oc_mdf_told", 0L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Context context, com.b.a.b.c cVar) {
        if (cVar.c != -1) {
            k.a(context).a(cVar.c, cVar.d);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(Context context, com.b.a.b.c cVar) {
        if (cVar.f623a != null && cVar.f623a.length() != 0) {
            SharedPreferences.Editor edit = k.a(context).i().edit();
            try {
                JSONObject jSONObject = cVar.f623a;
                Iterator<String> keys = jSONObject.keys();
                while (keys.hasNext()) {
                    String next = keys.next();
                    edit.putString(next, jSONObject.getString(next));
                }
                edit.commit();
                ap.a("MobclickAgent", "get online setting params: " + jSONObject);
            } catch (Exception e) {
                ap.c("MobclickAgent", "save online config params", e);
            }
        }
    }

    /* compiled from: OnlineConfigAgent.java */
    /* renamed from: com.b.a.b.b$b, reason: collision with other inner class name */
    public class RunnableC0005b extends aq implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        Context f618a;

        public RunnableC0005b(Context context) {
            this.f618a = context.getApplicationContext();
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                if (c()) {
                    b();
                }
            } catch (Exception e) {
                b.this.a((JSONObject) null);
                ap.c("MobclickAgent", "request online config error", e);
            }
        }

        @Override // b.a.aq
        public boolean a() {
            return true;
        }

        private void b() {
            com.b.a.b.c cVar = (com.b.a.b.c) a(b.this.new a(this.f618a), com.b.a.b.c.class);
            if (cVar == null) {
                b.this.a((JSONObject) null);
                return;
            }
            if (cVar.f624b) {
                if (b.this.e != null) {
                    b.this.e.a(cVar.c, cVar.d);
                }
                b.this.a(this.f618a, cVar);
                b.this.b(this.f618a, cVar);
                b.this.a(cVar.f623a);
                return;
            }
            b.this.a((JSONObject) null);
        }

        /* JADX WARN: Removed duplicated region for block: B:24:0x008f  */
        /* JADX WARN: Removed duplicated region for block: B:27:0x009c  */
        /* JADX WARN: Removed duplicated region for block: B:30:0x00b7  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private boolean c() {
            /*
                r14 = this;
                r1 = 1
                r12 = 0
                r2 = 0
                android.content.Context r0 = r14.f618a
                java.lang.String r0 = com.b.a.a.a(r0)
                boolean r0 = android.text.TextUtils.isEmpty(r0)
                if (r0 == 0) goto L18
                java.lang.String r0 = "MobclickAgent"
                java.lang.String r1 = "Appkey is missing ,Please check AndroidManifest.xml"
                b.a.ap.b(r0, r1)
            L17:
                return r2
            L18:
                boolean r0 = b.a.ap.f67a
                if (r0 == 0) goto Lb4
                android.content.Context r0 = r14.f618a
                boolean r0 = b.a.ao.q(r0)
                if (r0 == 0) goto Lb4
                r3 = r1
            L25:
                if (r3 != 0) goto Lb9
                android.content.Context r0 = r14.f618a
                com.b.a.k r0 = com.b.a.k.a(r0)
                android.content.SharedPreferences r0 = r0.i()
                java.lang.String r4 = "last_test_t"
                long r4 = r0.getLong(r4, r12)
                long r6 = java.lang.System.currentTimeMillis()
                long r4 = r6 - r4
                java.lang.String r8 = "oc_req_i"
                r10 = 600000(0x927c0, double:2.964394E-318)
                long r8 = r0.getLong(r8, r10)
                int r4 = (r4 > r8 ? 1 : (r4 == r8 ? 0 : -1))
                if (r4 <= 0) goto Lb9
                android.content.SharedPreferences$Editor r0 = r0.edit()
                java.lang.String r4 = "last_test_t"
                android.content.SharedPreferences$Editor r0 = r0.putLong(r4, r6)
                r0.commit()
                r0 = r1
            L58:
                if (r3 != 0) goto L5c
                if (r0 == 0) goto L17
            L5c:
                com.b.a.b.b$c r0 = new com.b.a.b.b$c
                com.b.a.b.b r3 = com.b.a.b.b.this
                android.content.Context r4 = r14.f618a
                r0.<init>(r4)
                java.lang.Class<com.b.a.b.b$d> r3 = com.b.a.b.b.d.class
                b.a.as r0 = r14.a(r0, r3)
                com.b.a.b.b$d r0 = (com.b.a.b.b.d) r0
                if (r0 == 0) goto L17
                android.content.Context r3 = r14.f618a
                com.b.a.k r3 = com.b.a.k.a(r3)
                android.content.SharedPreferences r3 = r3.i()
                long r4 = r0.f621a
                java.lang.String r6 = "oc_mdf_t"
                long r6 = r3.getLong(r6, r12)
                int r4 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
                if (r4 <= 0) goto Lb7
            L85:
                android.content.SharedPreferences$Editor r2 = r3.edit()
                long r4 = r0.f622b
                int r4 = (r4 > r12 ? 1 : (r4 == r12 ? 0 : -1))
                if (r4 < 0) goto L96
                java.lang.String r4 = "oc_req_i"
                long r6 = r0.f622b
                r2.putLong(r4, r6)
            L96:
                long r4 = r0.f621a
                int r4 = (r4 > r12 ? 1 : (r4 == r12 ? 0 : -1))
                if (r4 < 0) goto Lae
                java.lang.String r4 = "oc_mdf_told"
                java.lang.String r5 = "oc_mdf_t"
                long r6 = r3.getLong(r5, r12)
                r2.putLong(r4, r6)
                java.lang.String r3 = "oc_mdf_t"
                long r4 = r0.f621a
                r2.putLong(r3, r4)
            Lae:
                r2.commit()
                r2 = r1
                goto L17
            Lb4:
                r3 = r2
                goto L25
            Lb7:
                r1 = r2
                goto L85
            Lb9:
                r0 = r2
                goto L58
            */
            throw new UnsupportedOperationException("Method not decompiled: com.b.a.b.b.RunnableC0005b.c():boolean");
        }
    }

    /* compiled from: OnlineConfigAgent.java */
    class a extends ar {
        private final String e;
        private JSONObject f;

        public a(Context context) {
            super(null);
            this.e = "http://oc.umeng.com/v2/check_config_update";
            this.d = "http://oc.umeng.com/v2/check_config_update";
            this.f = a(context);
        }

        @Override // b.a.ar
        public JSONObject a() {
            return this.f;
        }

        @Override // b.a.ar
        public String b() {
            return this.d;
        }

        private JSONObject a(Context context) {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put(VastExtensionXmlManager.TYPE, "online_config");
                jSONObject.put("appkey", com.b.a.a.a(context));
                jSONObject.put("version_code", ao.a(context));
                jSONObject.put("package", ao.o(context));
                jSONObject.put("sdk_version", com.b.a.a.a());
                jSONObject.put("idmd5", av.b(ao.c(context)));
                jSONObject.put("channel", com.b.a.a.b(context));
                jSONObject.put("report_policy", k.a(context).b()[0]);
                jSONObject.put("last_config_time", b.this.b(context));
                return jSONObject;
            } catch (Exception e) {
                ap.b("MobclickAgent", "exception in onlineConfigInternal");
                return null;
            }
        }
    }

    /* compiled from: OnlineConfigAgent.java */
    class c extends ar {
        private final String e;
        private JSONObject f;

        public c(Context context) {
            super(null);
            this.e = "http://oc.umeng.com/v2/get_update_time";
            this.d = "http://oc.umeng.com/v2/get_update_time";
            this.f = a(context);
        }

        @Override // b.a.ar
        public JSONObject a() {
            return this.f;
        }

        private JSONObject a(Context context) {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("appkey", com.b.a.a.a(context));
                jSONObject.put("version_code", ao.a(context));
                return jSONObject;
            } catch (Exception e) {
                ap.b("MobclickAgent", "exception in onlineConfigInternal");
                return null;
            }
        }

        @Override // b.a.ar
        public String b() {
            return this.d;
        }
    }
}
