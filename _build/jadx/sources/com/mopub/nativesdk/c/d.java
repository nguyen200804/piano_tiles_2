package com.mopub.nativesdk.c;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import android.util.Base64;
import com.google.ads.mediation.facebook.FacebookAdapter;
import com.mopub.mobileads.VastIconXmlManager;
import com.mopub.nativesdk.Campaign;
import com.mopub.nativesdk.CategoryItem;
import com.mopub.nativesdk.PermissionItem;
import com.mopub.nativesdk.core.C0219a;
import com.unity3d.ads.adunit.AdUnitActivity;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Random;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: AdApiLoader.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class d extends a<List<Campaign>> {

    /* renamed from: b, reason: collision with root package name */
    private String f4623b;
    private int c;
    private int d;
    private String e;
    private String f;
    private int g;
    private Context h;
    private String i;
    private String j;

    public d(Context context) {
        super(context);
        this.d = 1;
        this.g = 0;
        this.i = "";
        this.j = "";
        this.h = context;
    }

    public final void a(String str) {
        this.e = str;
    }

    public final void b(String str) {
        this.f = str;
    }

    public final void c(String str) {
        this.f4623b = str;
    }

    public final void a(int i) {
        this.d = i;
    }

    public final void b(int i) {
        this.g = i;
    }

    public final void d(String str) {
        this.i = str;
    }

    @Override // com.mopub.nativesdk.c.a
    protected final int a() {
        return 2;
    }

    @Override // com.mopub.nativesdk.c.a
    protected final String b() {
        return "http://realtime.icecyber.org/realtime?p=" + new String(Base64.encode(d().getBytes(), 10));
    }

    @Override // com.mopub.nativesdk.c.a
    protected final byte[] c() {
        return null;
    }

    private List<Campaign> e(String str) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            this.c = jSONObject.optInt("status");
            if (this.c == 1) {
                ArrayList arrayList = new ArrayList();
                JSONArray optJSONArray = jSONObject.optJSONObject("data").optJSONArray("campaigns");
                for (int i = 0; i < optJSONArray.length(); i++) {
                    JSONObject jSONObject2 = (JSONObject) optJSONArray.get(i);
                    Campaign campaign = new Campaign();
                    campaign.setId(jSONObject2.optLong(FacebookAdapter.KEY_ID));
                    campaign.setClickUrl(jSONObject2.optString("click_url"));
                    campaign.setImpressionUrl(jSONObject2.optString("impression_url"));
                    campaign.setPackageName(jSONObject2.optString("package_name"));
                    campaign.setIconUrl(jSONObject2.optString("icon_url"));
                    campaign.setAppName(jSONObject2.optString("appName"));
                    campaign.setAppDesc(jSONObject2.optString("appDesc"));
                    campaign.setAppScore(jSONObject2.optDouble("appScore"));
                    campaign.setImageUrl(jSONObject2.optString("image_url"));
                    campaign.setImageSize(jSONObject2.optString("image_size"));
                    campaign.setDataUrl(jSONObject2.optString("dataUrl"));
                    campaign.setAppCategory(jSONObject2.optString("category"));
                    campaign.setAppCategoryID(jSONObject2.optString("category_id"));
                    campaign.setDownloadNum(jSONObject2.optString("download_num"));
                    campaign.setFileMD5(jSONObject2.optString("md5"));
                    campaign.setFileSizeLong(jSONObject2.optLong("file_size", 0L));
                    campaign.setFileSizeText(jSONObject2.optString("file_size_text"));
                    campaign.setVersionName(jSONObject2.optString("ver_name"));
                    campaign.setVersionCode(jSONObject2.optInt("ver_code", 0));
                    campaign.setDeveloper(jSONObject2.optString("developer", ""));
                    campaign.setPermissionsNum(jSONObject2.optInt("permissions_num", 0));
                    campaign.setCategoryIconURL(jSONObject2.optString("category_icon", ""));
                    JSONArray optJSONArray2 = jSONObject2.optJSONArray("image_urls");
                    if (optJSONArray2 != null) {
                        ArrayList arrayList2 = new ArrayList();
                        for (int i2 = 0; i2 < optJSONArray2.length(); i2++) {
                            arrayList2.add(optJSONArray2.optString(i2));
                        }
                        campaign.setScreenShot(arrayList2);
                    }
                    JSONArray optJSONArray3 = jSONObject2.optJSONArray("permission_list");
                    if (optJSONArray3 != null) {
                        ArrayList arrayList3 = new ArrayList();
                        for (int i3 = 0; i3 < optJSONArray3.length(); i3++) {
                            JSONObject optJSONObject = optJSONArray3.optJSONObject(i3);
                            PermissionItem permissionItem = new PermissionItem();
                            permissionItem.setPermissionCode(optJSONObject.optString("permission_code", ""));
                            permissionItem.setPermissionGroup(optJSONObject.optString("permission_group_code", ""));
                            arrayList3.add(permissionItem);
                        }
                        campaign.setPermissionList(arrayList3);
                    }
                    JSONArray optJSONArray4 = jSONObject2.optJSONArray("category_list");
                    if (optJSONArray4 != null) {
                        ArrayList arrayList4 = new ArrayList();
                        for (int i4 = 0; i4 < optJSONArray4.length(); i4++) {
                            JSONObject optJSONObject2 = optJSONArray4.optJSONObject(i4);
                            CategoryItem categoryItem = new CategoryItem();
                            categoryItem.setCategoryCode(optJSONObject2.optString("category_code", ""));
                            categoryItem.setCategoryTitle(optJSONObject2.optString("category_title", ""));
                            arrayList4.add(categoryItem);
                        }
                        campaign.setCategoryList(arrayList4);
                    }
                    arrayList.add(campaign);
                }
                if (arrayList.size() <= 0) {
                    return arrayList;
                }
                HashMap hashMap = new HashMap();
                ArrayList arrayList5 = new ArrayList();
                for (int i5 = 0; i5 < arrayList.size(); i5++) {
                    Campaign campaign2 = (Campaign) arrayList.get(i5);
                    if (hashMap.containsKey(campaign2.getPackageName())) {
                        List list = (List) hashMap.get(campaign2.getPackageName());
                        list.add(Integer.valueOf(i5));
                        hashMap.put(campaign2.getPackageName(), list);
                    } else {
                        ArrayList arrayList6 = new ArrayList();
                        arrayList6.add(Integer.valueOf(i5));
                        hashMap.put(campaign2.getPackageName(), arrayList6);
                    }
                }
                for (int i6 = 0; i6 < arrayList.size(); i6++) {
                    Campaign campaign3 = (Campaign) arrayList.get(i6);
                    if (hashMap.containsKey(campaign3.getPackageName())) {
                        List list2 = (List) hashMap.get(campaign3.getPackageName());
                        if (list2.size() > 1) {
                            arrayList5.add(arrayList.get(((Integer) list2.get(new Random(System.currentTimeMillis()).nextInt(list2.size()))).intValue()));
                        } else {
                            arrayList5.add(arrayList.get(((Integer) list2.get(0)).intValue()));
                        }
                        hashMap.remove(campaign3.getPackageName());
                    }
                }
                return arrayList5;
            }
        } catch (JSONException e) {
        }
        return null;
    }

    private String d() {
        long currentTimeMillis = System.currentTimeMillis();
        f fVar = new f((byte) 0);
        fVar.a("platform", 1);
        C0219a.b();
        if (C0219a.c() != null) {
            C0219a.b();
            Map<String, String> c = C0219a.c();
            fVar.a("os_version", c.get("os_version"));
            fVar.a("package_name", c.get("package_name"));
            fVar.a("app_version_name", c.get("app_version_name"));
            fVar.a("app_version_code", c.get("app_version_code"));
            fVar.a(AdUnitActivity.EXTRA_ORIENTATION, 1);
            fVar.a("brand", c.get("brand"));
            fVar.a("model", c.get("model"));
            fVar.a("gaid", c.get("gaid"));
            fVar.a("mnc", c.get("mnc"));
            fVar.a("mcc", c.get("mcc"));
            fVar.a("network_type", c.get("network_type"));
            fVar.a("language", c.get("language"));
            fVar.a("timezone", c.get("timezone"));
            fVar.a("useragent", c.get("useragent"));
            fVar.a("sdk_version", 10708);
            fVar.a("gp_version", c.get("gp_version"));
            fVar.a("gpsv", c.get("gpsv"));
            fVar.a("screen_size", c.get("screen_size"));
            fVar.a("d1", c.get("imei"));
            fVar.a("d2", c.get("mac"));
            fVar.a("d3", c.get("android_id"));
        } else {
            fVar.a("os_version", Build.VERSION.RELEASE);
            fVar.a("package_name", com.mopub.nativesdk.d.f.l(this.h));
            fVar.a("app_version_name", com.mopub.nativesdk.d.f.i(this.h));
            fVar.a("app_version_code", Integer.valueOf(com.mopub.nativesdk.d.f.h(this.h)));
            fVar.a(AdUnitActivity.EXTRA_ORIENTATION, 1);
            fVar.a("brand", Build.BRAND);
            fVar.a("model", Build.MODEL);
            fVar.a("gaid", com.mopub.nativesdk.d.f.p(this.h));
            fVar.a("mnc", com.mopub.nativesdk.d.f.c(this.h));
            fVar.a("mcc", com.mopub.nativesdk.d.f.b(this.h));
            fVar.a("network_type", Integer.valueOf(com.mopub.nativesdk.d.f.m(this.h)));
            fVar.a("language", new StringBuilder().append(com.mopub.nativesdk.d.f.e(this.h)).append('-').append(com.mopub.nativesdk.d.f.f(this.h)));
            fVar.a("timezone", com.mopub.nativesdk.d.f.c());
            fVar.a("sdk_version", 10708);
            fVar.a("gp_version", com.mopub.nativesdk.d.f.n(this.h));
            fVar.a("gpsv", com.mopub.nativesdk.d.f.o(this.h));
            fVar.a("screen_size", new StringBuilder().append(com.mopub.nativesdk.d.f.j(this.h)).append('x').append(com.mopub.nativesdk.d.f.k(this.h)));
            fVar.a("d1", com.mopub.nativesdk.d.f.a(this.h));
            fVar.a("d2", com.mopub.nativesdk.d.f.g(this.h));
            fVar.a("d3", com.mopub.nativesdk.d.f.d(this.h));
        }
        fVar.a("timestamp", Long.valueOf(currentTimeMillis));
        fVar.a("app_id", this.e);
        fVar.a("sdk_subid", this.f);
        if (!TextUtils.isEmpty(this.i)) {
            fVar.a("pkg", this.i);
        }
        fVar.a("ad_num", Integer.valueOf(this.d));
        fVar.a(VastIconXmlManager.OFFSET, Integer.valueOf(this.g));
        fVar.a("ad_type", this.f4623b);
        if (TextUtils.isEmpty(this.j) && C0219a.d != null) {
            JSONArray jSONArray = new JSONArray();
            Iterator<Long> it = C0219a.d.keySet().iterator();
            while (it.hasNext()) {
                long longValue = it.next().longValue();
                if (C0219a.d.get(Long.valueOf(longValue)).intValue() > 5) {
                    jSONArray.put(longValue);
                }
            }
            if (jSONArray.length() > 0) {
                this.j = jSONArray.toString();
            }
        }
        if (TextUtils.isEmpty(this.i) && !TextUtils.isEmpty(this.j)) {
            fVar.a("exclude_ids", this.j);
        }
        fVar.a("exclude_pkg", e());
        fVar.a("sign", com.mopub.nativesdk.d.k.a(com.mopub.nativesdk.d.f.l(this.h) + "-" + currentTimeMillis + "-cosiehl6789a**(%$)-12poiuhj,vktoihopbaposiuqh"));
        return fVar.toString();
    }

    private static String e() {
        StringBuffer stringBuffer = new StringBuffer();
        if (C0219a.c != null) {
            Iterator<String> it = C0219a.c.keySet().iterator();
            while (it.hasNext()) {
                stringBuffer.append(C0219a.c.get(it.next()).packageName).append(",");
            }
            if (stringBuffer.length() > 1) {
                stringBuffer.deleteCharAt(stringBuffer.length() - 1);
            }
        }
        return stringBuffer.toString();
    }

    @Override // com.mopub.nativesdk.c.a
    protected final /* synthetic */ List<Campaign> a(Map map, byte[] bArr) {
        List<Campaign> e;
        new StringBuilder("RESPONSE: ").append(new String(bArr));
        String str = new String(bArr);
        if (!TextUtils.isEmpty(str) && (e = e(str)) != null) {
            return e;
        }
        return null;
    }
}
