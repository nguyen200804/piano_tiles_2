package com.cmplay.ad;

import android.text.TextUtils;
import android.util.Log;
import com.cmplay.base.util.webview.util.WebUtils;
import com.cmplay.util.NativeUtil;
import com.cmplay.util.aa;
import com.facebook.ads.AdError;
import com.google.ads.mediation.facebook.FacebookAdapter;
import java.util.ArrayList;
import org.cocos2dx.lib.GameControllerDelegate;
import org.json.JSONArray;
import org.json.JSONObject;

/* compiled from: AdsFactory.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class a {
    public static Integer[] e;

    /* renamed from: a, reason: collision with root package name */
    public static int f1146a = 1;

    /* renamed from: b, reason: collision with root package name */
    public static int f1147b = 2;
    public static int c = 3;
    public static int d = 4;
    private static long h = 0;
    private static boolean i = false;
    private static boolean j = false;
    private static long k = 40000;
    public static int f = 0;
    public static boolean g = false;

    public static int a(int i2) {
        return i2 / 1000;
    }

    public static Integer[] a() {
        if (e == null) {
            e = a(aa.b("key_ad_new", ""));
        }
        return e;
    }

    private static Integer[] a(String str) {
        Integer[] numArr = null;
        String device = NativeUtil.getDevice();
        String oSVersion = NativeUtil.getOSVersion();
        String b2 = aa.b("key_ad_interception", "");
        try {
            if (!TextUtils.isEmpty(str)) {
                JSONArray optJSONArray = new JSONObject(str).optJSONArray("ad_platform");
                ArrayList arrayList = new ArrayList();
                for (int i2 = 0; i2 < optJSONArray.length(); i2++) {
                    int intValue = Integer.valueOf(((JSONObject) optJSONArray.get(i2)).optString(FacebookAdapter.KEY_ID)).intValue();
                    if (!a(b2, oSVersion, device, intValue + "")) {
                        arrayList.add(Integer.valueOf(intValue));
                    }
                }
                if (!arrayList.contains(Integer.valueOf(GameControllerDelegate.BUTTON_Z))) {
                    arrayList.add(Integer.valueOf(GameControllerDelegate.BUTTON_Z));
                    j = false;
                } else {
                    com.cmplay.ad.c.a.a().a(true);
                    j = true;
                }
                Log.d("time_zzb", "ads list: " + arrayList.toString());
                numArr = (Integer[]) arrayList.toArray(new Integer[arrayList.size()]);
            } else if (0 == 0) {
                ArrayList arrayList2 = new ArrayList();
                if (!a(b2, oSVersion, device, "1001")) {
                    arrayList2.add(1001);
                }
                if (!a(b2, oSVersion, device, "1002")) {
                    arrayList2.add(1002);
                }
                if (!a(b2, oSVersion, device, "1010")) {
                    arrayList2.add(Integer.valueOf(GameControllerDelegate.BUTTON_DPAD_UP));
                }
                if (!a(b2, oSVersion, device, "2001")) {
                    arrayList2.add(Integer.valueOf(AdError.INTERNAL_ERROR_CODE));
                }
                if (!a(b2, oSVersion, device, "2002")) {
                    arrayList2.add(Integer.valueOf(AdError.CACHE_ERROR_CODE));
                }
                if (!a(b2, oSVersion, device, "1012")) {
                    arrayList2.add(Integer.valueOf(GameControllerDelegate.BUTTON_DPAD_LEFT));
                }
                if (!a(b2, oSVersion, device, "1013")) {
                    arrayList2.add(Integer.valueOf(GameControllerDelegate.BUTTON_DPAD_RIGHT));
                }
                if (!a(b2, oSVersion, device, "1009")) {
                    arrayList2.add(Integer.valueOf(GameControllerDelegate.BUTTON_Z));
                }
                if (!a(b2, oSVersion, device, "1011")) {
                    arrayList2.add(Integer.valueOf(GameControllerDelegate.BUTTON_DPAD_DOWN));
                }
                return (Integer[]) arrayList2.toArray(new Integer[arrayList2.size()]);
            }
        } catch (Exception e2) {
            numArr = new Integer[]{1001, 1002, Integer.valueOf(GameControllerDelegate.BUTTON_DPAD_UP), Integer.valueOf(GameControllerDelegate.BUTTON_Z), Integer.valueOf(AdError.INTERNAL_ERROR_CODE), Integer.valueOf(GameControllerDelegate.BUTTON_DPAD_DOWN), Integer.valueOf(GameControllerDelegate.BUTTON_DPAD_LEFT), Integer.valueOf(GameControllerDelegate.BUTTON_DPAD_RIGHT)};
        }
        if (numArr == null) {
            return new Integer[]{-1};
        }
        return numArr;
    }

    private static boolean a(String str, String str2, String str3, String str4) {
        boolean z;
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        try {
            JSONArray jSONArray = new JSONObject(str).getJSONArray("interceptionId");
            for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                JSONObject jSONObject = (JSONObject) jSONArray.get(i2);
                String optString = jSONObject.optString("device");
                String optString2 = jSONObject.optString(WebUtils.VER);
                if (TextUtils.equals(jSONObject.optString(FacebookAdapter.KEY_ID), str4) && TextUtils.equals(optString2, str2) && TextUtils.equals(optString, str3)) {
                    z = true;
                    break;
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        z = false;
        return z;
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:3:0x0001. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:6:0x0007 A[ADDED_TO_REGION] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.cmplay.ad.d a(int r4, com.cmplay.ad.c r5) {
        /*
            r1 = 0
            switch(r4) {
                case 1001: goto Ld;
                case 1006: goto L27;
                case 1008: goto L2d;
                case 1009: goto L39;
                case 1010: goto L3f;
                case 1011: goto L45;
                case 1012: goto L4b;
                case 1013: goto L52;
                case 2001: goto L13;
                case 2002: goto L19;
                case 2003: goto L35;
                case 2004: goto L37;
                case 4001: goto L33;
                default: goto L4;
            }
        L4:
            r0 = r1
        L5:
            if (r0 == 0) goto Lc
            if (r5 == 0) goto Lc
            r0.setListener(r5)     // Catch: java.lang.Exception -> L61
        Lc:
            return r0
        Ld:
            com.cmplay.ad.f.a r1 = com.cmplay.ad.f.a.a()     // Catch: java.lang.Exception -> L59
            r0 = r1
            goto L5
        L13:
            com.cmplay.ad.Admob.AdmobAds r1 = com.cmplay.ad.Admob.AdmobAds.getInstance()     // Catch: java.lang.Exception -> L59
            r0 = r1
            goto L5
        L19:
            int r0 = android.os.Build.VERSION.SDK_INT     // Catch: java.lang.Exception -> L59
            r2 = 16
            if (r0 < r2) goto L25
            com.cmplay.ad.d.a r1 = com.cmplay.ad.d.a.a()     // Catch: java.lang.Exception -> L59
            r0 = r1
            goto L5
        L25:
            r0 = r1
            goto L5
        L27:
            com.cmplay.ad.h.a r1 = com.cmplay.ad.h.a.a()     // Catch: java.lang.Exception -> L59
            r0 = r1
            goto L5
        L2d:
            com.cmplay.ad.a.a r1 = com.cmplay.ad.a.a.a()     // Catch: java.lang.Exception -> L59
            r0 = r1
            goto L5
        L33:
            r0 = r1
            goto L5
        L35:
            r0 = r1
            goto L5
        L37:
            r0 = r1
            goto L5
        L39:
            com.cmplay.ad.c.a r1 = com.cmplay.ad.c.a.a()     // Catch: java.lang.Exception -> L59
            r0 = r1
            goto L5
        L3f:
            com.cmplay.ad.b.a r1 = com.cmplay.ad.b.a.b()     // Catch: java.lang.Exception -> L59
            r0 = r1
            goto L5
        L45:
            com.cmplay.ad.e.a r1 = com.cmplay.ad.e.a.e()     // Catch: java.lang.Exception -> L59
            r0 = r1
            goto L5
        L4b:
            r0 = 1
            com.cmplay.ad.Admob.AdmobVideoAds r1 = com.cmplay.ad.Admob.AdmobVideoAds.getInstance(r0)     // Catch: java.lang.Exception -> L59
            r0 = r1
            goto L5
        L52:
            r0 = 2
            com.cmplay.ad.Admob.AdmobVideoAds r1 = com.cmplay.ad.Admob.AdmobVideoAds.getInstance(r0)     // Catch: java.lang.Exception -> L59
            r0 = r1
            goto L5
        L59:
            r0 = move-exception
            r3 = r0
            r0 = r1
            r1 = r3
        L5d:
            r1.printStackTrace()
            goto Lc
        L61:
            r1 = move-exception
            goto L5d
        */
        throw new UnsupportedOperationException("Method not decompiled: com.cmplay.ad.a.a(int, com.cmplay.ad.c):com.cmplay.ad.d");
    }

    public static void b(int i2) {
        d a2;
        try {
            Integer[] a3 = a();
            for (int i3 = 0; i3 < a3.length; i3++) {
                if (a(a3[i3].intValue()) == i2 && (a2 = a(a3[i3].intValue(), (c) null)) != null) {
                    a2.prepare();
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public static boolean a(int i2, int i3) {
        Integer[] a2;
        d a3;
        try {
            a2 = a();
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        if (com.cmplay.internalpush.b.b(i3, g)) {
            return true;
        }
        for (Integer num : a2) {
            int intValue = num.intValue();
            if (a(intValue) == i2 && (a3 = a(intValue, (c) null)) != null && a3.canShow(i3)) {
                return true;
            }
        }
        return false;
    }
}
