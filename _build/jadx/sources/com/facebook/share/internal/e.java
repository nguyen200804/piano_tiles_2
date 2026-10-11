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

/* compiled from: NativeDialogParameters.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class e {
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
            ShareVideoContent shareVideoContent = (ShareVideoContent) shareContent;
            return a(shareVideoContent, l.a(shareVideoContent, uuid), z);
        }
        if (!(shareContent instanceof ShareOpenGraphContent)) {
            return null;
        }
        ShareOpenGraphContent shareOpenGraphContent = (ShareOpenGraphContent) shareContent;
        try {
            return a(shareOpenGraphContent, l.a(l.a(uuid, shareOpenGraphContent), false), z);
        } catch (JSONException e) {
            throw new com.facebook.i("Unable to create a JSON Object from the provided ShareOpenGraphContent: " + e.getMessage());
        }
    }

    private static Bundle a(ShareLinkContent shareLinkContent, boolean z) {
        Bundle a2 = a((ShareContent) shareLinkContent, z);
        aa.a(a2, "TITLE", shareLinkContent.b());
        aa.a(a2, "DESCRIPTION", shareLinkContent.a());
        aa.a(a2, "IMAGE", shareLinkContent.c());
        return a2;
    }

    private static Bundle a(SharePhotoContent sharePhotoContent, List<String> list, boolean z) {
        Bundle a2 = a(sharePhotoContent, z);
        a2.putStringArrayList("PHOTOS", new ArrayList<>(list));
        return a2;
    }

    private static Bundle a(ShareVideoContent shareVideoContent, String str, boolean z) {
        Bundle a2 = a(shareVideoContent, z);
        aa.a(a2, "TITLE", shareVideoContent.b());
        aa.a(a2, "DESCRIPTION", shareVideoContent.a());
        aa.a(a2, "VIDEO", str);
        return a2;
    }

    private static Bundle a(ShareOpenGraphContent shareOpenGraphContent, JSONObject jSONObject, boolean z) {
        Bundle a2 = a(shareOpenGraphContent, z);
        aa.a(a2, "PREVIEW_PROPERTY_NAME", (String) l.a(shareOpenGraphContent.b()).second);
        aa.a(a2, "ACTION_TYPE", shareOpenGraphContent.a().a());
        aa.a(a2, "ACTION", jSONObject.toString());
        return a2;
    }

    private static Bundle a(ShareContent shareContent, boolean z) {
        Bundle bundle = new Bundle();
        aa.a(bundle, "LINK", shareContent.h());
        aa.a(bundle, "PLACE", shareContent.j());
        aa.a(bundle, "REF", shareContent.k());
        bundle.putBoolean("DATA_FAILURES_FATAL", z);
        List<String> i = shareContent.i();
        if (!aa.a(i)) {
            bundle.putStringArrayList("FRIENDS", new ArrayList<>(i));
        }
        return bundle;
    }
}
