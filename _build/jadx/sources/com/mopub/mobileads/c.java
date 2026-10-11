package com.mopub.mobileads;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.mopub.common.Preconditions;
import com.mopub.mobileads.util.XmlUtils;
import org.w3c.dom.Node;

/* compiled from: VastAdXmlManager.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class c {

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    private final Node f4483a;

    c(@NonNull Node node) {
        Preconditions.checkNotNull(node);
        this.f4483a = node;
    }

    @Nullable
    g a() {
        Node firstMatchingChildNode = XmlUtils.getFirstMatchingChildNode(this.f4483a, "InLine");
        if (firstMatchingChildNode == null) {
            return null;
        }
        return new g(firstMatchingChildNode);
    }

    @Nullable
    m b() {
        Node firstMatchingChildNode = XmlUtils.getFirstMatchingChildNode(this.f4483a, "Wrapper");
        if (firstMatchingChildNode == null) {
            return null;
        }
        return new m(firstMatchingChildNode);
    }

    @Nullable
    String c() {
        return XmlUtils.getAttributeValue(this.f4483a, "sequence");
    }
}
