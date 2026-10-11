package com.cmplay.internalpush.video;

import android.text.TextUtils;
import com.google.ads.mediation.facebook.FacebookAdapter;
import com.mopub.mobileads.BaseVideoPlayerActivity;
import java.util.ArrayList;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: InnerPushModel.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class b extends com.cmplay.internalpush.data.d {
    private String A;
    private int B;
    private String C;
    private int D;

    /* renamed from: a, reason: collision with root package name */
    protected ArrayList<com.cmplay.base.util.b> f1544a = new ArrayList<>();

    /* renamed from: b, reason: collision with root package name */
    private long f1545b;
    private String c;
    private String d;
    private String e;
    private String r;
    private String s;
    private String t;
    private String u;
    private int v;
    private int w;
    private int x;
    private String y;
    private long z;

    public b(long j, String str, String str2, String str3, String str4, String str5, String str6, String str7, int i, int i2, int i3, String str8, long j2, String str9, int i4, ArrayList<com.cmplay.base.util.b> arrayList, String str10, int i5, long j3) {
        this.f1545b = j;
        this.c = str;
        this.d = str2;
        this.e = str3;
        this.r = str4;
        this.s = str5;
        this.t = str6;
        this.u = str7;
        this.v = i;
        this.w = i2;
        this.x = i3;
        this.y = str8;
        this.z = j2;
        this.A = str9;
        this.B = i4;
        this.f1544a.addAll(arrayList);
        this.C = str10;
        this.o = j3;
        this.D = i5;
    }

    public b(String str) {
        if (!TextUtils.isEmpty(str)) {
            try {
                JSONObject jSONObject = new JSONObject(str);
                this.f1545b = jSONObject.optLong("pro_id");
                this.c = jSONObject.optString("pkg_name");
                this.d = jSONObject.optString("title");
                this.e = jSONObject.optString(FacebookAdapter.KEY_SUBTITLE_ASSET);
                this.r = jSONObject.optString("icon_url");
                this.s = jSONObject.optString(BaseVideoPlayerActivity.VIDEO_URL);
                this.t = jSONObject.optString("video_path");
                this.u = jSONObject.optString("bg_image_url");
                this.v = jSONObject.optInt("video_width");
                this.w = jSONObject.optInt("video_height");
                this.x = jSONObject.optInt("jump_type");
                this.y = jSONObject.optString("jump_url");
                this.z = jSONObject.optLong("comment_star");
                this.A = jSONObject.optString("downloads");
                this.B = jSONObject.optInt("display_type");
                String optString = jSONObject.optString("appstore");
                this.C = jSONObject.optString("default_jump_url");
                this.o = jSONObject.optInt("priority");
                if (!TextUtils.isEmpty(optString)) {
                    JSONArray jSONArray = new JSONArray(optString);
                    for (int i = 0; i < jSONArray.length(); i++) {
                        JSONObject jSONObject2 = jSONArray.getJSONObject(i);
                        this.f1544a.add(new com.cmplay.base.util.b(jSONObject2.optString("app_pkg_in_appstore"), jSONObject2.optString("market_pkg")));
                    }
                }
                this.D = jSONObject.optInt("scene");
            } catch (JSONException e) {
                e.printStackTrace();
            }
        }
    }

    public String a() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("pro_id", this.f1545b);
            jSONObject.put("pkg_name", this.c);
            jSONObject.put("title", this.d);
            jSONObject.put(FacebookAdapter.KEY_SUBTITLE_ASSET, this.e);
            jSONObject.put("icon_url", this.r);
            jSONObject.put(BaseVideoPlayerActivity.VIDEO_URL, this.s);
            jSONObject.put("video_path", this.t);
            jSONObject.put("bg_image_url", this.u);
            jSONObject.put("video_width", this.v);
            jSONObject.put("video_height", this.w);
            jSONObject.put("jump_type", this.x);
            jSONObject.put("jump_url", this.y);
            jSONObject.put("comment_star", this.z);
            jSONObject.put("downloads", this.A);
            jSONObject.put("display_type", this.B);
            jSONObject.put("default_jump_url", this.C);
            jSONObject.put("priority", this.o);
            JSONArray jSONArray = new JSONArray();
            Iterator<com.cmplay.base.util.b> it = this.f1544a.iterator();
            while (it.hasNext()) {
                com.cmplay.base.util.b next = it.next();
                if (next != null) {
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put("app_pkg_in_appstore", next.f1212b);
                    jSONObject2.put("market_pkg", next.f1211a);
                    jSONArray.put(jSONObject2);
                }
            }
            jSONObject.put("appstore", jSONArray);
            jSONObject.put("scene", this.D);
        } catch (JSONException e) {
            e.printStackTrace();
        }
        return jSONObject.toString();
    }

    @Override // com.cmplay.internalpush.data.d
    public long d() {
        return this.f1545b;
    }

    @Override // com.cmplay.internalpush.data.d
    public String f() {
        return this.c;
    }

    public String o() {
        return this.d;
    }

    public String p() {
        return this.e;
    }

    public String q() {
        return this.r;
    }

    public String r() {
        return this.t;
    }

    public String s() {
        return this.u;
    }

    public int t() {
        return this.v;
    }

    public int u() {
        return this.w;
    }

    @Override // com.cmplay.internalpush.data.d
    public int h() {
        return this.x;
    }

    @Override // com.cmplay.internalpush.data.d
    public String g() {
        return this.y;
    }

    public long v() {
        return this.z;
    }

    public String w() {
        return this.A;
    }

    @Override // com.cmplay.internalpush.data.d
    public int i() {
        return this.B;
    }

    @Override // com.cmplay.internalpush.data.d
    public ArrayList<com.cmplay.base.util.b> j() {
        return this.f1544a;
    }

    @Override // com.cmplay.internalpush.data.d
    public String c() {
        return this.C;
    }

    public int x() {
        return this.D;
    }
}
