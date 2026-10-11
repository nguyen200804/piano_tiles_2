package com.mopub.mobileads;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.mopub.common.Preconditions;
import com.mopub.mobileads.util.XmlUtils;
import org.w3c.dom.Node;

/* compiled from: VastMediaXmlManager.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class j {

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    private final Node f4507a;

    j(@NonNull Node node) {
        Preconditions.checkNotNull(node, "mediaNode cannot be null");
        this.f4507a = node;
    }

    @Nullable
    Integer a() {
        return XmlUtils.getAttributeValueAsInt(this.f4507a, VastIconXmlManager.WIDTH);
    }

    @Nullable
    Integer b() {
        return XmlUtils.getAttributeValueAsInt(this.f4507a, VastIconXmlManager.HEIGHT);
    }

    @Nullable
    String c() {
        return XmlUtils.getAttributeValue(this.f4507a, VastExtensionXmlManager.TYPE);
    }

    @Nullable
    String d() {
        return XmlUtils.getNodeValue(this.f4507a);
    }
}
