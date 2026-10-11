package com.mopub.mobileads;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.mopub.common.Preconditions;
import com.mopub.mobileads.util.XmlUtils;
import org.w3c.dom.Node;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class VastResourceXmlManager {
    public static final String CREATIVE_TYPE = "creativeType";
    public static final String HTML_RESOURCE = "HTMLResource";
    public static final String IFRAME_RESOURCE = "IFrameResource";
    public static final String STATIC_RESOURCE = "StaticResource";

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    private final Node f4419a;

    VastResourceXmlManager(@NonNull Node resourceNode) {
        Preconditions.checkNotNull(resourceNode);
        this.f4419a = resourceNode;
    }

    @Nullable
    String a() {
        return XmlUtils.getNodeValue(XmlUtils.getFirstMatchingChildNode(this.f4419a, STATIC_RESOURCE));
    }

    @Nullable
    String b() {
        String attributeValue = XmlUtils.getAttributeValue(XmlUtils.getFirstMatchingChildNode(this.f4419a, STATIC_RESOURCE), CREATIVE_TYPE);
        if (attributeValue != null) {
            return attributeValue.toLowerCase();
        }
        return null;
    }

    @Nullable
    String c() {
        return XmlUtils.getNodeValue(XmlUtils.getFirstMatchingChildNode(this.f4419a, IFRAME_RESOURCE));
    }

    @Nullable
    String d() {
        return XmlUtils.getNodeValue(XmlUtils.getFirstMatchingChildNode(this.f4419a, HTML_RESOURCE));
    }
}
