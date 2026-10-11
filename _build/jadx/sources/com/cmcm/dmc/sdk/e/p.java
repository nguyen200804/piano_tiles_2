package com.cmcm.dmc.sdk.e;

import com.mopub.mobileads.VastExtensionXmlManager;
import com.mopub.mobileads.VastIconXmlManager;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class p extends b {

    /* renamed from: a, reason: collision with root package name */
    private com.cmcm.dmc.sdk.a.l f755a;

    /* renamed from: b, reason: collision with root package name */
    private com.cmcm.dmc.sdk.c.d f756b;

    /* JADX INFO: Access modifiers changed from: private */
    public int c() {
        return Math.max(com.cmcm.dmc.sdk.a.c.a(f(), "interval", 720), 5) * 60 * 1000;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i() {
        com.cmcm.dmc.sdk.a.i.a("ReceiverPhotoStats", "report photo stats");
        if (this.f756b == null) {
            this.f756b = new com.cmcm.dmc.sdk.c.d(com.cmcm.dmc.sdk.a.c.c());
        }
        JSONObject jSONObject = new JSONObject();
        try {
            List<com.cmcm.dmc.sdk.c.a.c> a2 = this.f756b.a();
            if (a2 == null || a2.isEmpty()) {
                return;
            }
            JSONArray jSONArray = new JSONArray();
            jSONObject.put("number", a2.size());
            for (com.cmcm.dmc.sdk.c.a.c cVar : a2) {
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("date_taken", cVar.c());
                jSONObject2.put("title", cVar.i());
                jSONObject2.put(VastIconXmlManager.HEIGHT, cVar.f());
                jSONObject2.put(VastIconXmlManager.WIDTH, cVar.e());
                jSONObject2.put(VastExtensionXmlManager.TYPE, cVar.k());
                jSONObject2.put("size", cVar.b());
                jSONObject2.put("filepath", cVar.d());
                jSONObject2.put("bucket_name", cVar.j());
                jSONObject2.put("description", cVar.l());
                jSONObject2.put("latitude", cVar.g());
                jSONObject2.put("longitude", cVar.h());
                jSONArray.put(jSONObject2);
            }
            jSONObject.put("list", jSONArray);
            a(jSONObject.toString());
        } catch (Throwable th) {
            com.cmcm.dmc.sdk.a.i.a("ReceiverPhotoStats", "" + th.getMessage());
        }
    }

    @Override // com.cmcm.dmc.sdk.e.b
    protected void b() {
        this.f756b = new com.cmcm.dmc.sdk.c.d(com.cmcm.dmc.sdk.a.c.c());
        this.f755a = new com.cmcm.dmc.sdk.a.l();
        this.f755a.a(new Runnable() { // from class: com.cmcm.dmc.sdk.e.p.1
            @Override // java.lang.Runnable
            public void run() {
                p.this.i();
                p.this.f755a.a(p.this.c());
            }
        }, 300000L);
    }

    @Override // com.cmcm.dmc.sdk.e.b
    public String f() {
        return "photo_stats";
    }

    @Override // com.cmcm.dmc.sdk.e.b
    protected void g() {
        this.f755a.b();
    }
}
