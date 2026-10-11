package com.mopub.mobileads;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import com.mopub.common.Preconditions;
import com.mopub.mobileads.util.XmlUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.w3c.dom.Node;

/* compiled from: VastBaseInLineWrapperXmlManager.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
abstract class d {

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    protected final Node f4484a;

    d(@NonNull Node node) {
        Preconditions.checkNotNull(node);
        this.f4484a = node;
    }

    @NonNull
    List<VastTracker> a() {
        List<Node> matchingChildNodes = XmlUtils.getMatchingChildNodes(this.f4484a, "Impression");
        ArrayList arrayList = new ArrayList();
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
    List<VastTracker> b() {
        ArrayList arrayList = new ArrayList();
        List<Node> matchingChildNodes = XmlUtils.getMatchingChildNodes(this.f4484a, "Error");
        if (matchingChildNodes == null) {
            return arrayList;
        }
        Iterator<Node> it = matchingChildNodes.iterator();
        while (it.hasNext()) {
            String nodeValue = XmlUtils.getNodeValue(it.next());
            if (!TextUtils.isEmpty(nodeValue)) {
                arrayList.add(new VastTracker(nodeValue, true));
            }
        }
        return arrayList;
    }

    @NonNull
    List<h> c() {
        List<Node> matchingChildNodes;
        ArrayList arrayList = new ArrayList();
        Node firstMatchingChildNode = XmlUtils.getFirstMatchingChildNode(this.f4484a, "Creatives");
        if (firstMatchingChildNode != null && (matchingChildNodes = XmlUtils.getMatchingChildNodes(firstMatchingChildNode, "Creative")) != null) {
            Iterator<Node> it = matchingChildNodes.iterator();
            while (it.hasNext()) {
                Node firstMatchingChildNode2 = XmlUtils.getFirstMatchingChildNode(it.next(), "Linear");
                if (firstMatchingChildNode2 != null) {
                    arrayList.add(new h(firstMatchingChildNode2));
                }
            }
            return arrayList;
        }
        return arrayList;
    }

    @NonNull
    List<e> d() {
        List<Node> matchingChildNodes;
        List<Node> matchingChildNodes2;
        ArrayList arrayList = new ArrayList();
        Node firstMatchingChildNode = XmlUtils.getFirstMatchingChildNode(this.f4484a, "Creatives");
        if (firstMatchingChildNode != null && (matchingChildNodes = XmlUtils.getMatchingChildNodes(firstMatchingChildNode, "Creative")) != null) {
            Iterator<Node> it = matchingChildNodes.iterator();
            while (it.hasNext()) {
                Node firstMatchingChildNode2 = XmlUtils.getFirstMatchingChildNode(it.next(), "CompanionAds");
                if (firstMatchingChildNode2 != null && (matchingChildNodes2 = XmlUtils.getMatchingChildNodes(firstMatchingChildNode2, "Companion")) != null) {
                    Iterator<Node> it2 = matchingChildNodes2.iterator();
                    while (it2.hasNext()) {
                        arrayList.add(new e(it2.next()));
                    }
                }
            }
            return arrayList;
        }
        return arrayList;
    }

    @Nullable
    VastExtensionParentXmlManager e() {
        Node firstMatchingChildNode = XmlUtils.getFirstMatchingChildNode(this.f4484a, "Extensions");
        if (firstMatchingChildNode == null) {
            return null;
        }
        return new VastExtensionParentXmlManager(firstMatchingChildNode);
    }
}
