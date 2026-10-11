package com.mopub.mobileads;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import com.mopub.common.Preconditions;
import com.mopub.mobileads.util.XmlUtils;
import org.w3c.dom.Node;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class VastExtensionXmlManager {
    public static final String TYPE = "type";
    public static final String VIDEO_VIEWABILITY_TRACKER = "MoPubViewabilityTracker";

    /* renamed from: a, reason: collision with root package name */
    private final Node f4409a;

    public VastExtensionXmlManager(@NonNull Node extensionNode) {
        Preconditions.checkNotNull(extensionNode);
        this.f4409a = extensionNode;
    }

    @Nullable
    VideoViewabilityTracker a() {
        Node firstMatchingChildNode = XmlUtils.getFirstMatchingChildNode(this.f4409a, VIDEO_VIEWABILITY_TRACKER);
        if (firstMatchingChildNode == null) {
            return null;
        }
        VideoViewabilityTrackerXmlManager videoViewabilityTrackerXmlManager = new VideoViewabilityTrackerXmlManager(firstMatchingChildNode);
        Integer a2 = videoViewabilityTrackerXmlManager.a();
        Integer b2 = videoViewabilityTrackerXmlManager.b();
        String c = videoViewabilityTrackerXmlManager.c();
        if (a2 == null || b2 == null || TextUtils.isEmpty(c)) {
            return null;
        }
        return new VideoViewabilityTracker(a2.intValue(), b2.intValue(), c);
    }

    @Nullable
    String b() {
        return XmlUtils.getAttributeValue(this.f4409a, TYPE);
    }
}
