package com.facebook.share.internal;

import android.os.Bundle;
import com.facebook.internal.aa;
import com.facebook.internal.ab;
import com.facebook.share.model.ShareContent;
import com.facebook.share.model.ShareLinkContent;
import com.facebook.share.model.ShareOpenGraphContent;
import com.facebook.share.model.SharePhotoContent;
import com.facebook.share.model.ShareVideoContent;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: LegacyNativeDialogParameters.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class c {
    public static Bundle a(UUID uuid, ShareContent shareContent, boolean z) {
        ab.a(shareContent, "shareContent");
        ab.a(uuid, "callId");
        if (shareContent instanceof ShareLinkContent) {
            return a((ShareLinkContent) shareContent, z);
        }
        if (shareContent instanceof SharePhotoContent) {
            SharePhotoContent sharePhotoContent = (SharePhotoContent) shareContent;
            return a(sharePhotoContent, l.a(sharePhotoContent, uuid), z);
        }
        if (shareContent instanceof ShareVideoContent) {
            return a((ShareVideoContent) shareContent, z);
        }
        if (!(shareContent instanceof ShareOpenGraphContent)) {
            return null;
        }
        ShareOpenGraphContent shareOpenGraphContent = (ShareOpenGraphContent) shareContent;
        try {
            return a(shareOpenGraphContent, l.a(uuid, shareOpenGraphContent), z);
        } catch (JSONException e) {
            throw new com.facebook.i("Unable to create a JSON Object from the provided ShareOpenGraphContent: " + e.getMessage());
        }
    }

    private static Bundle a(ShareLinkContent shareLinkContent, boolean z) {
        Bundle a2 = a((ShareContent) shareLinkContent, z);
        aa.a(a2, "com.facebook.platform.extra.TITLE", shareLinkContent.b());
        aa.a(a2, "com.facebook.platform.extra.DESCRIPTION", shareLinkContent.a());
        aa.a(a2, "com.facebook.platform.extra.IMAGE", shareLinkContent.c());
        return a2;
    }

    private static Bundle a(SharePhotoContent sharePhotoContent, List<String> list, boolean z) {
        Bundle a2 = a(sharePhotoContent, z);
        a2.putStringArrayList("com.facebook.platform.extra.PHOTOS", new ArrayList<>(list));
        return a2;
    }

    private static Bundle a(ShareVideoContent shareVideoContent, boolean z) {
        return null;
    }

    private static Bundle a(ShareOpenGraphContent shareOpenGraphContent, JSONObject jSONObject, boolean z) {
        Bundle a2 = a(shareOpenGraphContent, z);
        aa.a(a2, "com.facebook.platform.extra.PREVIEW_PROPERTY_NAME", shareOpenGraphContent.b());
        aa.a(a2, "com.facebook.platform.extra.ACTION_TYPE", shareOpenGraphContent.a().a());
        aa.a(a2, "com.facebook.platform.extra.ACTION", jSONObject.toString());
        return a2;
    }

    private static Bundle a(ShareContent shareContent, boolean z) {
        Bundle bundle = new Bundle();
        aa.a(bundle, "com.facebook.platform.extra.LINK", shareContent.h());
        aa.a(bundle, "com.facebook.platform.extra.PLACE", shareContent.j());
        aa.a(bundle, "com.facebook.platform.extra.REF", shareContent.k());
        bundle.putBoolean("com.facebook.platform.extra.DATA_FAILURES_FATAL", z);
        List<String> i = shareContent.i();
        if (!aa.a(i)) {
            bundle.putStringArrayList("com.facebook.platform.extra.FRIENDS", new ArrayList<>(i));
        }
        return bundle;
    }
}
