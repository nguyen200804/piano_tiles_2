package com.mopub.mobileads;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import com.mopub.common.Preconditions;
import com.mopub.mobileads.util.XmlUtils;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import org.w3c.dom.Node;

/* compiled from: VastCompanionAdXmlManager.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class e {

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    private final Node f4492a;

    /* renamed from: b, reason: collision with root package name */
    @NonNull
    private final VastResourceXmlManager f4493b;

    e(@NonNull Node node) {
        Preconditions.checkNotNull(node, "companionNode cannot be null");
        this.f4492a = node;
        this.f4493b = new VastResourceXmlManager(node);
    }

    @Nullable
    Integer a() {
        return XmlUtils.getAttributeValueAsInt(this.f4492a, VastIconXmlManager.WIDTH);
    }

    @Nullable
    Integer b() {
        return XmlUtils.getAttributeValueAsInt(this.f4492a, VastIconXmlManager.HEIGHT);
    }

    @Nullable
    String c() {
        return XmlUtils.getAttributeValue(this.f4492a, "adSlotID");
    }

    @NonNull
    VastResourceXmlManager d() {
        return this.f4493b;
    }

    @Nullable
    String e() {
        return XmlUtils.getNodeValue(XmlUtils.getFirstMatchingChildNode(this.f4492a, "CompanionClickThrough"));
    }

    @NonNull
    List<VastTracker> f() {
        ArrayList arrayList = new ArrayList();
        List<Node> matchingChildNodes = XmlUtils.getMatchingChildNodes(this.f4492a, "CompanionClickTracking");
        if (matchingChildNodes == null) {
            return arrayList;
        }
        Iterator<Node> it = matchingChildNodes.iterator();
        while (it.hasNext()) {
            String nodeValue = XmlUtils.getNodeValue(it.next());
            if (!TextUtils.isEmpty(nodeValue)) {
                arrayList.add(new VastTracker(nodeValue));
            }
        }
        return arrayList;
    }

    @NonNull
    List<VastTracker> g() {
        ArrayList arrayList = new ArrayList();
        Node firstMatchingChildNode = XmlUtils.getFirstMatchingChildNode(this.f4492a, "TrackingEvents");
        if (firstMatchingChildNode == null) {
            return arrayList;
        }
        Iterator<Node> it = XmlUtils.getMatchingChildNodes(firstMatchingChildNode, "Tracking", "event", Collections.singletonList("creativeView")).iterator();
        while (it.hasNext()) {
            arrayList.add(new VastTracker(XmlUtils.getNodeValue(it.next())));
        }
        return arrayList;
    }

    boolean h() {
        return (TextUtils.isEmpty(this.f4493b.a()) && TextUtils.isEmpty(this.f4493b.d()) && TextUtils.isEmpty(this.f4493b.c())) ? false : true;
    }
}
