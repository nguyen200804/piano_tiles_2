package com.cmcm.dmc.sdk.e;

import org.json.JSONObject;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class r extends b {
    public static String c(String str) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("packageName", str);
            return jSONObject.toString();
        } catch (Exception e) {
            com.cmcm.dmc.sdk.a.i.a("ReceiverUninstApp", "" + e.getMessage());
            return null;
        }
    }

    public void b(String str) {
        String c = c(str);
        if (c != null) {
            a(c);
        }
    }

    @Override // com.cmcm.dmc.sdk.e.b
    public String f() {
        return "uninst_app";
    }
}
