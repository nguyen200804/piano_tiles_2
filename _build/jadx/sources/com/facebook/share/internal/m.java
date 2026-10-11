package com.facebook.share.internal;

import android.os.Bundle;
import com.facebook.internal.aa;
import com.facebook.share.model.GameRequestContent;
import com.facebook.share.model.ShareLinkContent;
import com.facebook.share.model.ShareOpenGraphContent;
import com.unity3d.ads.metadata.MediationMetaData;
import java.util.Locale;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: WebDialogParameters.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class m {
    public static Bundle a(GameRequestContent gameRequestContent) {
        Bundle bundle = new Bundle();
        aa.a(bundle, "message", gameRequestContent.a());
        aa.a(bundle, "to", gameRequestContent.b());
        aa.a(bundle, "title", gameRequestContent.c());
        aa.a(bundle, "data", gameRequestContent.d());
        if (gameRequestContent.e() != null) {
            aa.a(bundle, "action_type", gameRequestContent.e().toString().toLowerCase(Locale.ENGLISH));
        }
        aa.a(bundle, "object_id", gameRequestContent.f());
        if (gameRequestContent.g() != null) {
            aa.a(bundle, "filters", gameRequestContent.g().toString().toLowerCase(Locale.ENGLISH));
        }
        aa.a(bundle, "suggestions", gameRequestContent.h());
        return bundle;
    }

    public static Bundle a(ShareLinkContent shareLinkContent) {
        Bundle bundle = new Bundle();
        aa.a(bundle, "href", shareLinkContent.h());
        return bundle;
    }

    public static Bundle a(ShareOpenGraphContent shareOpenGraphContent) {
        Bundle bundle = new Bundle();
        aa.a(bundle, "action_type", shareOpenGraphContent.a().a());
        try {
            JSONObject a2 = l.a(l.a(shareOpenGraphContent), false);
            if (a2 != null) {
                aa.a(bundle, "action_properties", a2.toString());
            }
            return bundle;
        } catch (JSONException e) {
            throw new com.facebook.i("Unable to serialize the ShareOpenGraphContent to JSON", e);
        }
    }

    public static Bundle b(ShareLinkContent shareLinkContent) {
        Bundle bundle = new Bundle();
        aa.a(bundle, MediationMetaData.KEY_NAME, shareLinkContent.b());
        aa.a(bundle, "description", shareLinkContent.a());
        aa.a(bundle, "link", aa.a(shareLinkContent.h()));
        aa.a(bundle, "picture", aa.a(shareLinkContent.c()));
        return bundle;
    }

    public static Bundle a(ShareFeedContent shareFeedContent) {
        Bundle bundle = new Bundle();
        aa.a(bundle, "to", shareFeedContent.a());
        aa.a(bundle, "link", shareFeedContent.b());
        aa.a(bundle, "picture", shareFeedContent.f());
        aa.a(bundle, "source", shareFeedContent.g());
        aa.a(bundle, MediationMetaData.KEY_NAME, shareFeedContent.c());
        aa.a(bundle, "caption", shareFeedContent.d());
        aa.a(bundle, "description", shareFeedContent.e());
        return bundle;
    }
}
