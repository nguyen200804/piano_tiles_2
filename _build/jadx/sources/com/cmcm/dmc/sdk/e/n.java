package com.cmcm.dmc.sdk.e;

import com.mopub.mobileads.VastExtensionXmlManager;
import com.mopub.mobileads.VastIconXmlManager;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class n extends b {

    /* renamed from: a, reason: collision with root package name */
    private com.cmcm.dmc.sdk.a.l f752a;

    /* renamed from: b, reason: collision with root package name */
    private com.cmcm.dmc.sdk.c.c f753b;

    /* JADX INFO: Access modifiers changed from: private */
    public int c() {
        return Math.max(com.cmcm.dmc.sdk.a.c.a(f(), "interval", 720), 5) * 60 * 1000;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i() {
        com.cmcm.dmc.sdk.a.i.a("ReceiverMusicStats", "report music stats");
        if (this.f753b == null) {
            this.f753b = new com.cmcm.dmc.sdk.c.c(com.cmcm.dmc.sdk.a.c.c());
        }
        JSONObject jSONObject = new JSONObject();
        try {
            List<com.cmcm.dmc.sdk.c.a.b> a2 = this.f753b.a();
            if (a2 == null || a2.isEmpty()) {
                return;
            }
            JSONArray jSONArray = new JSONArray();
            jSONObject.put("number", a2.size());
            for (com.cmcm.dmc.sdk.c.a.b bVar : a2) {
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("title", bVar.h());
                jSONObject2.put(VastIconXmlManager.DURATION, bVar.f());
                jSONObject2.put("singer", bVar.g());
                jSONObject2.put("album", bVar.i());
                jSONObject2.put("year", bVar.e());
                jSONObject2.put(VastExtensionXmlManager.TYPE, bVar.j());
                jSONObject2.put("size", bVar.b());
                jSONObject2.put("filepath", bVar.d());
                jSONObject2.put("date_added", bVar.c());
                jSONArray.put(jSONObject2);
            }
            jSONObject.put("list", jSONArray);
            a(jSONObject.toString());
        } catch (Throwable th) {
            com.cmcm.dmc.sdk.a.i.a("ReceiverMusicStats", "" + th.getMessage());
        }
    }

    @Override // com.cmcm.dmc.sdk.e.b
    protected void b() {
        this.f753b = new com.cmcm.dmc.sdk.c.c(com.cmcm.dmc.sdk.a.c.c());
        this.f752a = new com.cmcm.dmc.sdk.a.l();
        this.f752a.a(new Runnable() { // from class: com.cmcm.dmc.sdk.e.n.1
            @Override // java.lang.Runnable
            public void run() {
                n.this.i();
                n.this.f752a.a(n.this.c());
            }
        }, 300000L);
    }

    @Override // com.cmcm.dmc.sdk.e.b
    public String f() {
        return "music_stats";
    }

    @Override // com.cmcm.dmc.sdk.e.b
    protected void g() {
        this.f752a.b();
    }
}
