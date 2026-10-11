package com.mopub.mobileads;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.mopub.common.Preconditions;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.Strings;
import com.mopub.mobileads.util.XmlUtils;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import org.w3c.dom.Node;

/* compiled from: VastLinearXmlManager.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class h {
    public static final String ICON = "Icon";
    public static final String ICONS = "Icons";

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    private final Node f4505a;

    h(@NonNull Node node) {
        Preconditions.checkNotNull(node);
        this.f4505a = node;
    }

    @NonNull
    List<VastFractionalProgressTracker> a() {
        ArrayList arrayList = new ArrayList();
        a(arrayList, b("firstQuartile"), 0.25f);
        a(arrayList, b("midpoint"), 0.5f);
        a(arrayList, b("thirdQuartile"), 0.75f);
        Node firstMatchingChildNode = XmlUtils.getFirstMatchingChildNode(this.f4505a, "TrackingEvents");
        if (firstMatchingChildNode != null) {
            for (Node node : XmlUtils.getMatchingChildNodes(firstMatchingChildNode, "Tracking", "event", Collections.singletonList("progress"))) {
                String attributeValue = XmlUtils.getAttributeValue(node, VastIconXmlManager.OFFSET);
                if (attributeValue != null) {
                    String trim = attributeValue.trim();
                    if (Strings.isPercentageTracker(trim)) {
                        String nodeValue = XmlUtils.getNodeValue(node);
                        try {
                            float parseFloat = Float.parseFloat(trim.replace("%", "")) / 100.0f;
                            if (parseFloat >= 0.0f) {
                                arrayList.add(new VastFractionalProgressTracker(nodeValue, parseFloat));
                            }
                        } catch (NumberFormatException e) {
                            MoPubLog.d(String.format("Failed to parse VAST progress tracker %s", trim));
                        }
                    }
                }
            }
        }
        Collections.sort(arrayList);
        return arrayList;
    }

    @NonNull
    List<VastAbsoluteProgressTracker> b() {
        ArrayList arrayList = new ArrayList();
        Iterator<String> it = b("start").iterator();
        while (it.hasNext()) {
            arrayList.add(new VastAbsoluteProgressTracker(it.next(), 0));
        }
        Node firstMatchingChildNode = XmlUtils.getFirstMatchingChildNode(this.f4505a, "TrackingEvents");
        if (firstMatchingChildNode != null) {
            for (Node node : XmlUtils.getMatchingChildNodes(firstMatchingChildNode, "Tracking", "event", Collections.singletonList("progress"))) {
                String attributeValue = XmlUtils.getAttributeValue(node, VastIconXmlManager.OFFSET);
                if (attributeValue != null) {
                    String trim = attributeValue.trim();
                    if (Strings.isAbsoluteTracker(trim)) {
                        String nodeValue = XmlUtils.getNodeValue(node);
                        try {
                            Integer parseAbsoluteOffset = Strings.parseAbsoluteOffset(trim);
                            if (parseAbsoluteOffset != null && parseAbsoluteOffset.intValue() >= 0) {
                                arrayList.add(new VastAbsoluteProgressTracker(nodeValue, parseAbsoluteOffset.intValue()));
                            }
                        } catch (NumberFormatException e) {
                            MoPubLog.d(String.format("Failed to parse VAST progress tracker %s", trim));
                        }
                    }
                }
            }
            Iterator<Node> it2 = XmlUtils.getMatchingChildNodes(firstMatchingChildNode, "Tracking", "event", Collections.singletonList("creativeView")).iterator();
            while (it2.hasNext()) {
                String nodeValue2 = XmlUtils.getNodeValue(it2.next());
                if (nodeValue2 != null) {
                    arrayList.add(new VastAbsoluteProgressTracker(nodeValue2, 0));
                }
            }
        }
        Collections.sort(arrayList);
        return arrayList;
    }

    @NonNull
    List<VastTracker> c() {
        return a("complete");
    }

    @NonNull
    List<VastTracker> d() {
        List<String> b2 = b("pause");
        ArrayList arrayList = new ArrayList();
        Iterator<String> it = b2.iterator();
        while (it.hasNext()) {
            arrayList.add(new VastTracker(it.next(), true));
        }
        return arrayList;
    }

    @NonNull
    List<VastTracker> e() {
        List<String> b2 = b("resume");
        ArrayList arrayList = new ArrayList();
        Iterator<String> it = b2.iterator();
        while (it.hasNext()) {
            arrayList.add(new VastTracker(it.next(), true));
        }
        return arrayList;
    }

    @NonNull
    List<VastTracker> f() {
        List<VastTracker> a2 = a("close");
        a2.addAll(a("closeLinear"));
        return a2;
    }

    @NonNull
    List<VastTracker> g() {
        return a("skip");
    }

    @Nullable
    String h() {
        Node firstMatchingChildNode = XmlUtils.getFirstMatchingChildNode(this.f4505a, "VideoClicks");
        if (firstMatchingChildNode == null) {
            return null;
        }
        return XmlUtils.getNodeValue(XmlUtils.getFirstMatchingChildNode(firstMatchingChildNode, "ClickThrough"));
    }

    @NonNull
    List<VastTracker> i() {
        ArrayList arrayList = new ArrayList();
        Node firstMatchingChildNode = XmlUtils.getFirstMatchingChildNode(this.f4505a, "VideoClicks");
        if (firstMatchingChildNode == null) {
            return arrayList;
        }
        Iterator<Node> it = XmlUtils.getMatchingChildNodes(firstMatchingChildNode, "ClickTracking").iterator();
        while (it.hasNext()) {
            String nodeValue = XmlUtils.getNodeValue(it.next());
            if (nodeValue != null) {
                arrayList.add(new VastTracker(nodeValue));
            }
        }
        return arrayList;
    }

    @Nullable
    String j() {
        String attributeValue = XmlUtils.getAttributeValue(this.f4505a, "skipoffset");
        if (attributeValue == null || attributeValue.trim().isEmpty()) {
            return null;
        }
        return attributeValue.trim();
    }

    @NonNull
    List<j> k() {
        ArrayList arrayList = new ArrayList();
        Node firstMatchingChildNode = XmlUtils.getFirstMatchingChildNode(this.f4505a, "MediaFiles");
        if (firstMatchingChildNode == null) {
            return arrayList;
        }
        Iterator<Node> it = XmlUtils.getMatchingChildNodes(firstMatchingChildNode, "MediaFile").iterator();
        while (it.hasNext()) {
            arrayList.add(new j(it.next()));
        }
        return arrayList;
    }

    @NonNull
    List<VastIconXmlManager> l() {
        ArrayList arrayList = new ArrayList();
        Node firstMatchingChildNode = XmlUtils.getFirstMatchingChildNode(this.f4505a, ICONS);
        if (firstMatchingChildNode == null) {
            return arrayList;
        }
        Iterator<Node> it = XmlUtils.getMatchingChildNodes(firstMatchingChildNode, ICON).iterator();
        while (it.hasNext()) {
            arrayList.add(new VastIconXmlManager(it.next()));
        }
        return arrayList;
    }

    @NonNull
    private List<VastTracker> a(@NonNull String str) {
        List<String> b2 = b(str);
        ArrayList arrayList = new ArrayList(b2.size());
        Iterator<String> it = b2.iterator();
        while (it.hasNext()) {
            arrayList.add(new VastTracker(it.next()));
        }
        return arrayList;
    }

    @NonNull
    private List<String> b(@NonNull String str) {
        Preconditions.checkNotNull(str);
        ArrayList arrayList = new ArrayList();
        Node firstMatchingChildNode = XmlUtils.getFirstMatchingChildNode(this.f4505a, "TrackingEvents");
        if (firstMatchingChildNode == null) {
            return arrayList;
        }
        Iterator<Node> it = XmlUtils.getMatchingChildNodes(firstMatchingChildNode, "Tracking", "event", Collections.singletonList(str)).iterator();
        while (it.hasNext()) {
            String nodeValue = XmlUtils.getNodeValue(it.next());
            if (nodeValue != null) {
                arrayList.add(nodeValue);
            }
        }
        return arrayList;
    }

    private void a(@NonNull List<VastFractionalProgressTracker> list, @NonNull List<String> list2, float f) {
        Preconditions.checkNotNull(list, "trackers cannot be null");
        Preconditions.checkNotNull(list2, "urls cannot be null");
        Iterator<String> it = list2.iterator();
        while (it.hasNext()) {
            list.add(new VastFractionalProgressTracker(it.next(), f));
        }
    }
}
