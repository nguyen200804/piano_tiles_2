package b.a;

import org.json.JSONArray;

/* compiled from: UPage.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class i extends af {
    public i() {
    }

    public i(String str) throws Exception {
        a(new JSONArray(str));
    }

    private void a(JSONArray jSONArray) throws Exception {
        a(jSONArray.getString(0));
        a(jSONArray.getInt(1));
    }
}
