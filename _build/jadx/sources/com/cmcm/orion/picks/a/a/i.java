package com.cmcm.orion.picks.a.a;

import android.text.TextUtils;
import com.mopub.mobileads.VastIconXmlManager;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

/* compiled from: MarketResponse.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class i {

    /* renamed from: a, reason: collision with root package name */
    private List<a> f841a;

    /* renamed from: b, reason: collision with root package name */
    private int f842b;
    private int c;
    private String d;
    private String e;

    public i() {
        this.f841a = new ArrayList();
        this.d = "0";
    }

    public i(i iVar) {
        this.f841a = new ArrayList();
        this.d = "0";
        this.f841a.addAll(iVar.f841a);
        this.f842b = iVar.f842b;
        this.c = iVar.c;
        this.d = iVar.d;
        this.e = iVar.e;
    }

    public final int a() {
        return this.f842b;
    }

    public final List<a> b() {
        return this.f841a;
    }

    public final void a(String str) {
        this.d = str;
    }

    public final String c() {
        return this.e;
    }

    public static i a(String str, String str2, String str3, m mVar) {
        i iVar;
        if (TextUtils.isEmpty(str3)) {
            m.a(mVar, 106);
            return null;
        }
        try {
            iVar = new i();
            try {
                JSONObject jSONObject = new JSONObject(str3);
                iVar.f842b = jSONObject.optInt(VastIconXmlManager.OFFSET, 0);
                iVar.c = jSONObject.optInt("code", -1);
                iVar.d = jSONObject.optString("tabid", "0");
                iVar.e = jSONObject.optString("title", "");
                new StringBuilder("code MarketResponse:").append(iVar.c).append(",request tabid:").append(str2).append(", response tabid:").append(iVar.d);
                if (!iVar.d.equals(str2)) {
                    m.a(mVar, 145);
                    return null;
                }
                JSONArray optJSONArray = jSONObject.optJSONArray("ads");
                if (optJSONArray != null) {
                    for (int i = 0; i < optJSONArray.length(); i++) {
                        JSONObject optJSONObject = optJSONArray.optJSONObject(i);
                        if (optJSONObject != null) {
                            iVar.f841a.add(b.a(str, optJSONObject, iVar.d));
                        }
                    }
                    return iVar;
                }
                return iVar;
            } catch (Exception e) {
                m.a(mVar, 118);
                return iVar;
            }
        } catch (Exception e2) {
            iVar = null;
        }
    }

    public final void a(List<? extends a> list) {
        if (list != null) {
            this.f841a.addAll(list);
        }
    }

    public final String d() {
        return this.d;
    }

    public final boolean e() {
        new StringBuilder("MarketResponse:").append(this.c);
        return this.c == 0;
    }

    private static boolean a(int i, int i2) {
        return (i & i2) == i2;
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x0129  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0142 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0015 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:45:0x013c A[ADDED_TO_REGION, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void a(java.util.List<com.cmcm.orion.picks.a.a.a> r6, boolean r7, int r8) {
        /*
            Method dump skipped, instructions count: 328
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.cmcm.orion.picks.a.a.i.a(java.util.List, boolean, int):void");
    }
}
