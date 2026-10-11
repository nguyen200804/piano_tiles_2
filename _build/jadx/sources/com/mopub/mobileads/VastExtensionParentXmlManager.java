package com.mopub.mobileads;

import android.support.annotation.NonNull;
import com.mopub.common.Preconditions;
import com.mopub.mobileads.util.XmlUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.w3c.dom.Node;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class VastExtensionParentXmlManager {

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    private final Node f4408a;

    VastExtensionParentXmlManager(@NonNull Node vastExtensionParentNode) {
        Preconditions.checkNotNull(vastExtensionParentNode);
        this.f4408a = vastExtensionParentNode;
    }

    @NonNull
    List<VastExtensionXmlManager> a() {
        ArrayList arrayList = new ArrayList();
        List<Node> matchingChildNodes = XmlUtils.getMatchingChildNodes(this.f4408a, "Extension");
        if (matchingChildNodes == null) {
            return arrayList;
        }
        Iterator<Node> it = matchingChildNodes.iterator();
        while (it.hasNext()) {
            arrayList.add(new VastExtensionXmlManager(it.next()));
        }
        return arrayList;
    }
}
