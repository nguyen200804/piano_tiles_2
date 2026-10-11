package com.tencent.wxop.stat.a;

import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class b {

    /* renamed from: a, reason: collision with root package name */
    public String f4816a;
    public JSONArray bl;
    public JSONObject bm;

    public b() {
        this.bm = null;
    }

    public b(String str) {
        this.bm = null;
        this.f4816a = str;
        this.bm = new JSONObject();
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        if (obj instanceof b) {
            return toString().equals(((b) obj).toString());
        }
        return false;
    }

    public final int hashCode() {
        return toString().hashCode();
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(32);
        sb.append(this.f4816a).append(",");
        if (this.bl != null) {
            sb.append(this.bl.toString());
        }
        if (this.bm != null) {
            sb.append(this.bm.toString());
        }
        return sb.toString();
    }
}
