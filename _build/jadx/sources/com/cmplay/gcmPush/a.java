package com.cmplay.gcmPush;

import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: PushUtil.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class a {
    public static Bundle a(Bundle bundle) {
        try {
            String string = bundle.getString("multi_language");
            Log.d("GCM_PushUtil", "PushUtil  multLanStr:" + string);
            if (!TextUtils.isEmpty(string)) {
                JSONObject jSONObject = new JSONObject(string);
                String a2 = a();
                Log.d("GCM_PushUtil", "PushUtil  lanKey:" + a2);
                if (jSONObject != null && !jSONObject.isNull(a2)) {
                    JSONObject jSONObject2 = jSONObject.getJSONObject(a2);
                    if (!jSONObject2.isNull("alert")) {
                        JSONObject jSONObject3 = jSONObject2.getJSONObject("alert");
                        Log.d("GCM_PushUtil", "PushUtil  srcAlert:" + jSONObject3.toString());
                        String string2 = bundle.getString("fb_push_card");
                        if (!TextUtils.isEmpty(string2)) {
                            JSONObject jSONObject4 = new JSONObject(string2);
                            if (!jSONObject4.isNull("alert")) {
                                JSONObject jSONObject5 = jSONObject4.getJSONObject("alert");
                                Log.d("GCM_PushUtil", "PushUtil  alert before edit:" + jSONObject5.toString());
                                if (!jSONObject3.isNull("title")) {
                                    String string3 = jSONObject3.getString("title");
                                    if (!TextUtils.isEmpty(string3)) {
                                        jSONObject5.put("title", string3);
                                    }
                                }
                                if (!jSONObject3.isNull("body")) {
                                    String string4 = jSONObject3.getString("body");
                                    if (!TextUtils.isEmpty(string4)) {
                                        jSONObject5.put("body", string4);
                                    }
                                }
                                Log.d("GCM_PushUtil", "PushUtil  alert after  edit:" + jSONObject5.toString());
                                jSONObject4.put("alert", jSONObject5);
                                bundle.putString("fb_push_card", jSONObject4.toString());
                            }
                        }
                    }
                }
            }
        } catch (JSONException e) {
            e.printStackTrace();
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        return bundle;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x00c4, code lost:
    
        if (r5.equals("CN") != false) goto L50;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.lang.String a() {
        /*
            Method dump skipped, instructions count: 360
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.cmplay.gcmPush.a.a():java.lang.String");
    }

    public static String b(Bundle bundle) {
        try {
            String string = bundle.getString("fb_push_payload");
            if (TextUtils.isEmpty(string)) {
                return null;
            }
            return new JSONObject(string).getString("campaign");
        } catch (JSONException e) {
            e.printStackTrace();
            return null;
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }
}
