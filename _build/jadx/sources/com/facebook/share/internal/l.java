package com.facebook.share.internal;

import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import android.util.Pair;
import com.facebook.internal.aa;
import com.facebook.internal.e;
import com.facebook.internal.u;
import com.facebook.internal.v;
import com.facebook.share.a;
import com.facebook.share.internal.g;
import com.facebook.share.model.ShareOpenGraphAction;
import com.facebook.share.model.ShareOpenGraphContent;
import com.facebook.share.model.SharePhoto;
import com.facebook.share.model.SharePhotoContent;
import com.facebook.share.model.ShareVideoContent;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.UUID;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: ShareInternalUtility.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class l {
    public static String a(Bundle bundle) {
        return bundle.containsKey("completionGesture") ? bundle.getString("completionGesture") : bundle.getString("com.facebook.platform.extra.COMPLETION_GESTURE");
    }

    public static String b(Bundle bundle) {
        if (bundle.containsKey("postId")) {
            return bundle.getString("postId");
        }
        if (bundle.containsKey("com.facebook.platform.extra.POST_ID")) {
            return bundle.getString("com.facebook.platform.extra.POST_ID");
        }
        return bundle.getString("post_id");
    }

    public static boolean a(int i, int i2, Intent intent, i iVar) {
        com.facebook.internal.a a2 = a(i, i2, intent);
        if (a2 == null) {
            return false;
        }
        u.a(a2.c());
        if (iVar == null) {
            return true;
        }
        com.facebook.i a3 = v.a(v.g(intent));
        if (a3 != null) {
            if (a3 instanceof com.facebook.j) {
                iVar.a(a2);
                return true;
            }
            iVar.a(a2, a3);
            return true;
        }
        iVar.a(a2, v.e(intent));
        return true;
    }

    public static i a(final com.facebook.g<a.C0091a> gVar) {
        return new i(gVar) { // from class: com.facebook.share.internal.l.1
            @Override // com.facebook.share.internal.i
            public void a(com.facebook.internal.a aVar, Bundle bundle) {
                if (bundle != null) {
                    String a2 = l.a(bundle);
                    if (a2 == null || "post".equalsIgnoreCase(a2)) {
                        l.a((com.facebook.g<a.C0091a>) gVar, l.b(bundle));
                    } else if ("cancel".equalsIgnoreCase(a2)) {
                        l.b((com.facebook.g<a.C0091a>) gVar);
                    } else {
                        l.a((com.facebook.g<a.C0091a>) gVar, new com.facebook.i("UnknownError"));
                    }
                }
            }

            @Override // com.facebook.share.internal.i
            public void a(com.facebook.internal.a aVar) {
                l.b((com.facebook.g<a.C0091a>) gVar);
            }

            @Override // com.facebook.share.internal.i
            public void a(com.facebook.internal.a aVar, com.facebook.i iVar) {
                l.a((com.facebook.g<a.C0091a>) gVar, iVar);
            }
        };
    }

    private static com.facebook.internal.a a(int i, int i2, Intent intent) {
        UUID b2 = v.b(intent);
        if (b2 == null) {
            return null;
        }
        return com.facebook.internal.a.a(b2, i);
    }

    public static void a(final int i) {
        com.facebook.internal.e.a(i, new e.a() { // from class: com.facebook.share.internal.l.2
            @Override // com.facebook.internal.e.a
            public boolean a(int i2, Intent intent) {
                return l.a(i, i2, intent, l.a((com.facebook.g<a.C0091a>) null));
            }
        });
    }

    public static void a(final int i, com.facebook.e eVar, final com.facebook.g<a.C0091a> gVar) {
        if (!(eVar instanceof com.facebook.internal.e)) {
            throw new com.facebook.i("Unexpected CallbackManager, please use the provided Factory.");
        }
        ((com.facebook.internal.e) eVar).b(i, new e.a() { // from class: com.facebook.share.internal.l.3
            @Override // com.facebook.internal.e.a
            public boolean a(int i2, Intent intent) {
                return l.a(i, i2, intent, l.a((com.facebook.g<a.C0091a>) gVar));
            }
        });
    }

    public static List<String> a(SharePhotoContent sharePhotoContent, final UUID uuid) {
        List<SharePhoto> a2;
        if (sharePhotoContent == null || (a2 = sharePhotoContent.a()) == null) {
            return null;
        }
        List a3 = aa.a((List) a2, (aa.d) new aa.d<SharePhoto, u.a>() { // from class: com.facebook.share.internal.l.4
            @Override // com.facebook.internal.aa.d
            public u.a a(SharePhoto sharePhoto) {
                return l.b(uuid, sharePhoto);
            }
        });
        List<String> a4 = aa.a(a3, (aa.d) new aa.d<u.a, String>() { // from class: com.facebook.share.internal.l.5
            @Override // com.facebook.internal.aa.d
            public String a(u.a aVar) {
                return aVar.a();
            }
        });
        u.a(a3);
        return a4;
    }

    public static String a(ShareVideoContent shareVideoContent, UUID uuid) {
        if (shareVideoContent == null || shareVideoContent.d() == null) {
            return null;
        }
        u.a a2 = u.a(uuid, shareVideoContent.d().b());
        ArrayList arrayList = new ArrayList(1);
        arrayList.add(a2);
        u.a(arrayList);
        return a2.a();
    }

    public static JSONObject a(final UUID uuid, ShareOpenGraphContent shareOpenGraphContent) throws JSONException {
        ShareOpenGraphAction a2 = shareOpenGraphContent.a();
        final ArrayList arrayList = new ArrayList();
        JSONObject a3 = g.a(a2, new g.a() { // from class: com.facebook.share.internal.l.6
            @Override // com.facebook.share.internal.g.a
            public JSONObject a(SharePhoto sharePhoto) {
                u.a b2 = l.b(uuid, sharePhoto);
                if (b2 == null) {
                    return null;
                }
                arrayList.add(b2);
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("url", b2.a());
                    if (sharePhoto.d()) {
                        jSONObject.put("user_generated", true);
                        return jSONObject;
                    }
                    return jSONObject;
                } catch (JSONException e) {
                    throw new com.facebook.i("Unable to attach images", e);
                }
            }
        });
        u.a(arrayList);
        if (shareOpenGraphContent.j() != null && aa.a(a3.optString("place"))) {
            a3.put("place", shareOpenGraphContent.j());
        }
        if (shareOpenGraphContent.i() != null) {
            JSONArray optJSONArray = a3.optJSONArray("tags");
            Set<String> hashSet = optJSONArray == null ? new HashSet() : aa.b(optJSONArray);
            Iterator<String> it = shareOpenGraphContent.i().iterator();
            while (it.hasNext()) {
                hashSet.add(it.next());
            }
            a3.put("tags", new ArrayList(hashSet));
        }
        return a3;
    }

    public static JSONObject a(ShareOpenGraphContent shareOpenGraphContent) throws JSONException {
        return g.a(shareOpenGraphContent.a(), new g.a() { // from class: com.facebook.share.internal.l.7
            @Override // com.facebook.share.internal.g.a
            public JSONObject a(SharePhoto sharePhoto) {
                Uri c = sharePhoto.c();
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("url", c.toString());
                    return jSONObject;
                } catch (JSONException e) {
                    throw new com.facebook.i("Unable to attach images", e);
                }
            }
        });
    }

    public static JSONArray a(JSONArray jSONArray, boolean z) throws JSONException {
        JSONArray jSONArray2 = new JSONArray();
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < jSONArray.length()) {
                Object obj = jSONArray.get(i2);
                if (obj instanceof JSONArray) {
                    obj = a((JSONArray) obj, z);
                } else if (obj instanceof JSONObject) {
                    obj = a((JSONObject) obj, z);
                }
                jSONArray2.put(obj);
                i = i2 + 1;
            } else {
                return jSONArray2;
            }
        }
    }

    public static JSONObject a(JSONObject jSONObject, boolean z) {
        Object a2;
        if (jSONObject == null) {
            return null;
        }
        try {
            JSONObject jSONObject2 = new JSONObject();
            JSONObject jSONObject3 = new JSONObject();
            JSONArray names = jSONObject.names();
            for (int i = 0; i < names.length(); i++) {
                String string = names.getString(i);
                Object obj = jSONObject.get(string);
                if (obj instanceof JSONObject) {
                    a2 = a((JSONObject) obj, true);
                } else {
                    a2 = obj instanceof JSONArray ? a((JSONArray) obj, true) : obj;
                }
                Pair<String, String> a3 = a(string);
                String str = (String) a3.first;
                String str2 = (String) a3.second;
                if (z) {
                    if (str != null && str.equals("fbsdk")) {
                        jSONObject2.put(string, a2);
                    } else if (str == null || str.equals("og")) {
                        jSONObject2.put(str2, a2);
                    } else {
                        jSONObject3.put(str2, a2);
                    }
                } else if (str != null && str.equals("fb")) {
                    jSONObject2.put(string, a2);
                } else {
                    jSONObject2.put(str2, a2);
                }
            }
            if (jSONObject3.length() > 0) {
                jSONObject2.put("data", jSONObject3);
            }
            return jSONObject2;
        } catch (JSONException e) {
            throw new com.facebook.i("Failed to create json object from share content");
        }
    }

    public static Pair<String, String> a(String str) {
        String str2 = null;
        int indexOf = str.indexOf(58);
        if (indexOf != -1 && str.length() > indexOf + 1) {
            str2 = str.substring(0, indexOf);
            str = str.substring(indexOf + 1);
        }
        return new Pair<>(str2, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static u.a b(UUID uuid, SharePhoto sharePhoto) {
        Bitmap b2 = sharePhoto.b();
        Uri c = sharePhoto.c();
        if (b2 != null) {
            return u.a(uuid, b2);
        }
        if (c == null) {
            return null;
        }
        return u.a(uuid, c);
    }

    static void b(com.facebook.g<a.C0091a> gVar) {
        a("cancelled", (String) null);
        if (gVar != null) {
            gVar.a();
        }
    }

    static void a(com.facebook.g<a.C0091a> gVar, String str) {
        a("succeeded", (String) null);
        if (gVar != null) {
            gVar.a((com.facebook.g<a.C0091a>) new a.C0091a(str));
        }
    }

    static void a(com.facebook.g<a.C0091a> gVar, com.facebook.i iVar) {
        a("error", iVar.getMessage());
        if (gVar != null) {
            gVar.a(iVar);
        }
    }

    private static void a(String str, String str2) {
        com.facebook.appevents.a b2 = com.facebook.appevents.a.b(com.facebook.l.f());
        Bundle bundle = new Bundle();
        bundle.putString("fb_share_dialog_outcome", str);
        if (str2 != null) {
            bundle.putString("error_message", str2);
        }
        b2.a("fb_share_dialog_result", (Double) null, bundle);
    }
}
