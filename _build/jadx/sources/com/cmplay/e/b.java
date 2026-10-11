package com.cmplay.e;

import android.graphics.Bitmap;
import android.text.TextUtils;
import android.util.Log;
import com.cmplay.e.a;
import com.cmplay.tile2.GameApp;
import com.cmplay.util.NativeUtil;
import java.io.File;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: MsgBoxImageUtils.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class b {

    /* renamed from: a, reason: collision with root package name */
    private static String f1333a = "";

    public static void a() {
        List<String> a2;
        Log.d("cheng", "loadMsgImage");
        if (com.cmplay.cloud.a.a().a(2, "section_probability", "cloud_key_load_msg_image_background", false) && (a2 = com.cmplay.cloud.a.a().a(2, "game_messages")) != null && a2.size() != 0) {
            Log.d("cheng", "loadMsgImage != null");
            for (String str : a2) {
                if (TextUtils.isEmpty(str)) {
                    a2.remove(str);
                }
            }
            Iterator<String> it = a2.iterator();
            while (it.hasNext()) {
                try {
                    JSONArray jSONArray = new JSONObject(it.next()).getJSONArray("data");
                    if (jSONArray != null) {
                        int length = jSONArray.length();
                        for (int i = 0; i < length; i++) {
                            JSONObject jSONObject = jSONArray.getJSONObject(i);
                            int optInt = jSONObject.optInt("msg_id", -1);
                            if (optInt != -1) {
                                String str2 = optInt + "";
                                String optString = jSONObject.optString("bg_url");
                                if (!TextUtils.isEmpty(optString)) {
                                    a(str2, optString);
                                }
                                String optString2 = jSONObject.optString("popup_bg_url");
                                if (!TextUtils.isEmpty(optString2)) {
                                    a(str2, optString2);
                                }
                                String optString3 = jSONObject.optString("message_extend");
                                if (!TextUtils.isEmpty(optString3)) {
                                    String optString4 = new JSONObject(optString3).optString("message_icon_url");
                                    if (!TextUtils.isEmpty(optString4)) {
                                        a(str2, optString4);
                                    }
                                }
                                String optString5 = jSONObject.optString("attachments");
                                if (!TextUtils.isEmpty(optString5)) {
                                    JSONArray jSONArray2 = new JSONArray(optString5);
                                    int length2 = jSONArray2.length();
                                    for (int i2 = 0; i2 < length2; i2++) {
                                        String optString6 = jSONArray2.optJSONObject(i2).optString("iconUrl");
                                        if (!TextUtils.isEmpty(optString6)) {
                                            a(str2, optString6);
                                        }
                                    }
                                }
                            } else {
                                return;
                            }
                        }
                    } else {
                        continue;
                    }
                } catch (JSONException e) {
                    e.printStackTrace();
                }
            }
        }
    }

    private static void a(final String str, final String str2) {
        if (b(str, str2)) {
            Log.d("cheng", "isCacheIcon.." + str2);
        } else {
            a.a().a(str2, new a.InterfaceC0041a() { // from class: com.cmplay.e.b.1
                @Override // com.cmplay.e.a.InterfaceC0041a
                public void a(Bitmap bitmap) {
                    if (bitmap != null) {
                        b.b(bitmap, str, str2);
                    }
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:42:0x007d A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean b(android.graphics.Bitmap r6, java.lang.String r7, java.lang.String r8) {
        /*
            r0 = 0
            boolean r1 = r6.isRecycled()
            if (r1 != 0) goto L13
            boolean r1 = android.text.TextUtils.isEmpty(r8)
            if (r1 != 0) goto L13
            boolean r1 = android.text.TextUtils.isEmpty(r7)
            if (r1 == 0) goto L14
        L13:
            return r0
        L14:
            r3 = 0
            java.lang.String r1 = c(r7, r8)     // Catch: java.io.IOException -> L6a java.lang.Throwable -> L7a
            java.lang.String r2 = "cheng"
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch: java.io.IOException -> L6a java.lang.Throwable -> L7a
            r4.<init>()     // Catch: java.io.IOException -> L6a java.lang.Throwable -> L7a
            java.lang.String r5 = "saveCardImage..."
            java.lang.StringBuilder r4 = r4.append(r5)     // Catch: java.io.IOException -> L6a java.lang.Throwable -> L7a
            java.lang.StringBuilder r4 = r4.append(r1)     // Catch: java.io.IOException -> L6a java.lang.Throwable -> L7a
            java.lang.String r4 = r4.toString()     // Catch: java.io.IOException -> L6a java.lang.Throwable -> L7a
            android.util.Log.d(r2, r4)     // Catch: java.io.IOException -> L6a java.lang.Throwable -> L7a
            boolean r2 = android.text.TextUtils.isEmpty(r1)     // Catch: java.io.IOException -> L6a java.lang.Throwable -> L7a
            if (r2 == 0) goto L42
            if (r3 == 0) goto L13
            r3.close()     // Catch: java.lang.Exception -> L3d
            goto L13
        L3d:
            r1 = move-exception
            r1.printStackTrace()
            goto L13
        L42:
            java.io.File r4 = new java.io.File     // Catch: java.io.IOException -> L6a java.lang.Throwable -> L7a
            r4.<init>(r1)     // Catch: java.io.IOException -> L6a java.lang.Throwable -> L7a
            java.io.BufferedOutputStream r2 = new java.io.BufferedOutputStream     // Catch: java.io.IOException -> L6a java.lang.Throwable -> L7a
            java.io.FileOutputStream r1 = new java.io.FileOutputStream     // Catch: java.io.IOException -> L6a java.lang.Throwable -> L7a
            r1.<init>(r4)     // Catch: java.io.IOException -> L6a java.lang.Throwable -> L7a
            r2.<init>(r1)     // Catch: java.io.IOException -> L6a java.lang.Throwable -> L7a
            android.graphics.Bitmap$CompressFormat r1 = android.graphics.Bitmap.CompressFormat.PNG     // Catch: java.lang.Throwable -> L86 java.io.IOException -> L89
            r3 = 100
            r6.compress(r1, r3, r2)     // Catch: java.lang.Throwable -> L86 java.io.IOException -> L89
            r2.flush()     // Catch: java.lang.Throwable -> L86 java.io.IOException -> L89
            r2.close()     // Catch: java.lang.Throwable -> L86 java.io.IOException -> L89
            r0 = 1
            if (r2 == 0) goto L13
            r2.close()     // Catch: java.lang.Exception -> L65
            goto L13
        L65:
            r1 = move-exception
            r1.printStackTrace()
            goto L13
        L6a:
            r1 = move-exception
            r2 = r3
        L6c:
            r1.printStackTrace()     // Catch: java.lang.Throwable -> L86
            if (r2 == 0) goto L13
            r2.close()     // Catch: java.lang.Exception -> L75
            goto L13
        L75:
            r1 = move-exception
            r1.printStackTrace()
            goto L13
        L7a:
            r0 = move-exception
        L7b:
            if (r3 == 0) goto L80
            r3.close()     // Catch: java.lang.Exception -> L81
        L80:
            throw r0
        L81:
            r1 = move-exception
            r1.printStackTrace()
            goto L80
        L86:
            r0 = move-exception
            r3 = r2
            goto L7b
        L89:
            r1 = move-exception
            goto L6c
        */
        throw new UnsupportedOperationException("Method not decompiled: com.cmplay.e.b.b(android.graphics.Bitmap, java.lang.String, java.lang.String):boolean");
    }

    private static boolean b(String str, String str2) {
        String c = c(str, str2);
        if (!TextUtils.isEmpty(c)) {
            return new File(c).exists();
        }
        Log.d("cheng", "isCacheIcon ..." + c);
        return false;
    }

    private static String c(String str, String str2) {
        if (TextUtils.isEmpty(f1333a)) {
            f1333a = d("/message_box_java/", str);
        }
        if (TextUtils.isEmpty(f1333a)) {
            return null;
        }
        return f1333a + (str + NativeUtil.getMsgPicNameByUrl(str2) + ".png");
    }

    private static String d(String str, String str2) {
        String str3 = GameApp.f1598a.getFilesDir().toString() + str;
        File file = new File(str3);
        if (!file.exists()) {
            file.mkdir();
        }
        String str4 = str3 + str2 + File.separator;
        File file2 = new File(str4);
        if (!file2.exists()) {
            file2.mkdir();
        }
        return str4;
    }
}
