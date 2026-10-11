package com.mnt.impl.j;

import android.text.TextUtils;
import java.util.HashSet;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class b {

    /* renamed from: a, reason: collision with root package name */
    public boolean f4072a;

    /* renamed from: b, reason: collision with root package name */
    public int f4073b;
    public int c;
    public String d;
    public Set<String> e;
    public int f;
    public long g;
    public long h;
    public int i;
    public int j;
    public long k;
    public long l;
    public a m;
    public String n;
    private int o;
    private long p;
    private int q;
    private int r;
    private long s;
    private int t;
    private long u;
    private long v;
    private int w;
    private String x;
    private String y;

    static {
        String str = com.mnt.impl.e.hF;
    }

    public b(String str) {
        this.f4072a = false;
        this.o = -1;
        this.p = -1L;
        this.q = 0;
        this.r = 1;
        this.s = 0L;
        this.t = 1;
        this.u = 0L;
        this.v = 0L;
        this.g = 4L;
        this.h = 2000L;
        this.i = 1;
        this.w = -1;
        this.j = 0;
        this.k = 0L;
        this.l = 0L;
        this.x = com.mnt.impl.e.hG;
        this.m = new a(null);
        this.n = com.mnt.impl.e.hH;
        this.y = com.mnt.impl.e.hI;
        if (str != null) {
            try {
                if (!"".equals(str)) {
                    JSONObject jSONObject = new JSONObject(str);
                    if (jSONObject.optInt(com.mnt.impl.e.hJ) == 200) {
                        JSONObject optJSONObject = jSONObject.optJSONObject(com.mnt.impl.e.hK);
                        JSONObject optJSONObject2 = optJSONObject.optJSONObject(com.mnt.impl.e.hL + 21);
                        this.m = new a(optJSONObject.optJSONObject(com.mnt.impl.e.hM));
                        this.f4073b = optJSONObject2.optInt(com.mnt.impl.e.hN);
                        this.c = optJSONObject2.optInt(com.mnt.impl.e.hO);
                        JSONArray optJSONArray = optJSONObject2.optJSONArray(com.mnt.impl.e.hP);
                        if (optJSONArray.length() != 0) {
                            JSONObject jSONObject2 = optJSONArray.getJSONObject(0);
                            jSONObject2.optInt(com.mnt.impl.e.hQ);
                            this.d = "21" + com.mnt.impl.e.hR + this.f4073b + com.mnt.impl.e.hR + this.c;
                            this.f = jSONObject2.optInt(com.mnt.impl.e.hS);
                            this.e = new HashSet();
                            String optString = jSONObject2.optString(com.mnt.impl.e.hT);
                            if (optString != null && !"".equals(optString)) {
                                for (String str2 : jSONObject2.optString(com.mnt.impl.e.hU).split(com.mnt.impl.e.hV)) {
                                    this.e.add(str2);
                                }
                            }
                            this.o = jSONObject2.optInt(com.mnt.impl.e.hW, this.o);
                            this.p = jSONObject2.optLong(com.mnt.impl.e.hX, this.p);
                            this.q = jSONObject2.optInt(com.mnt.impl.e.hY, this.q);
                            this.r = jSONObject2.optInt(com.mnt.impl.e.hZ, this.r);
                            this.s = jSONObject2.optLong(com.mnt.impl.e.ia, this.s);
                            this.t = jSONObject2.optInt(com.mnt.impl.e.ib, this.t);
                            this.u = jSONObject2.optLong(com.mnt.impl.e.ic, this.u);
                            this.v = jSONObject2.optLong(com.mnt.impl.e.id, this.v);
                            this.g = jSONObject2.optLong(com.mnt.impl.e.ie, this.g);
                            this.h = jSONObject2.optLong(com.mnt.impl.e.f1if, this.h);
                            this.w = jSONObject2.optInt(com.mnt.impl.e.ig, this.w);
                            this.k = jSONObject2.optLong(com.mnt.impl.e.ih, this.k);
                            this.l = jSONObject2.optLong(com.mnt.impl.e.ii, this.l);
                            this.n = jSONObject2.optString(com.mnt.impl.e.ij, this.n);
                            this.y = jSONObject2.optString(com.mnt.impl.e.ik, this.y);
                            try {
                                this.i = Integer.parseInt(jSONObject2.optString(com.mnt.impl.e.il, com.mnt.impl.e.im));
                            } catch (Exception e) {
                                this.i = 1;
                            }
                            try {
                                Integer.parseInt(jSONObject2.optString(com.mnt.impl.e.in, com.mnt.impl.e.io));
                            } catch (Exception e2) {
                            }
                            try {
                                this.j = Integer.parseInt(jSONObject2.optString(com.mnt.impl.e.ip, com.mnt.impl.e.iq));
                            } catch (Exception e3) {
                            }
                            this.x = jSONObject2.optString(com.mnt.impl.e.ir, this.x);
                            this.f4072a = true;
                        }
                    }
                }
            } catch (Exception e4) {
            }
        }
    }

    public final boolean a() {
        return com.mnt.impl.e.is.equals(this.x);
    }

    public final boolean b() {
        return com.mnt.impl.e.iv.equals(this.y);
    }

    public static class a {

        /* renamed from: a, reason: collision with root package name */
        private String f4074a;

        public a(JSONObject jSONObject) {
            JSONArray optJSONArray;
            if (jSONObject != null && (optJSONArray = jSONObject.optJSONArray(com.mnt.impl.e.iw)) != null && optJSONArray.length() > 0) {
                try {
                    JSONObject jSONObject2 = optJSONArray.getJSONObject(0);
                    if (jSONObject2 != null) {
                        this.f4074a = jSONObject2.optString(com.mnt.impl.e.ix);
                    }
                } catch (JSONException e) {
                    e.printStackTrace();
                }
            }
        }

        public final boolean a(int i) {
            return !TextUtils.isEmpty(this.f4074a) && this.f4074a.contains(new StringBuilder("79").append(com.mnt.impl.e.iy).append(i).toString());
        }
    }
}
