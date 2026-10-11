package com.mopub.mobileads;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.mopub.common.Preconditions;
import com.mopub.mobileads.util.XmlUtils;
import org.w3c.dom.Node;

/* compiled from: VastWrapperXmlManager.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class m extends d {
    m(@NonNull Node node) {
        super(node);
        Preconditions.checkNotNull(node);
    }

    @Nullable
    String f() {
        return XmlUtils.getNodeValue(XmlUtils.getFirstMatchingChildNode(this.f4484a, "VASTAdTagURI"));
    }
}
