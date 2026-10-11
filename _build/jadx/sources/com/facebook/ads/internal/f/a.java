package com.facebook.ads.internal.f;

import android.support.annotation.Nullable;
import android.text.TextUtils;
import com.mopub.mobileads.VastExtensionXmlManager;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class a {

    /* renamed from: a, reason: collision with root package name */
    private final String f2701a;

    /* renamed from: b, reason: collision with root package name */
    private final JSONObject f2702b;
    private final Map<i, List<String>> c = new HashMap();

    public a(String str, JSONObject jSONObject, @Nullable JSONArray jSONArray) {
        int i = 0;
        this.f2701a = str;
        this.f2702b = jSONObject;
        if (jSONArray == null || jSONArray.length() == 0) {
            return;
        }
        for (i iVar : i.values()) {
            this.c.put(iVar, new LinkedList());
        }
        while (true) {
            int i2 = i;
            if (i2 >= jSONArray.length()) {
                return;
            }
            try {
                JSONObject jSONObject2 = jSONArray.getJSONObject(i2);
                String string = jSONObject2.getString(VastExtensionXmlManager.TYPE);
                String string2 = jSONObject2.getString("url");
                i valueOf = i.valueOf(string.toUpperCase(Locale.US));
                if (valueOf != null && !TextUtils.isEmpty(string2)) {
                    this.c.get(valueOf).add(string2);
                }
            } catch (Exception e) {
            }
            i = i2 + 1;
        }
    }

    public String a() {
        return this.f2701a;
    }

    public List<String> a(i iVar) {
        return this.c.get(iVar);
    }

    public JSONObject b() {
        return this.f2702b;
    }
}
