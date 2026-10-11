package com.mopub.mobileads;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.mopub.common.Preconditions;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.Strings;
import com.mopub.mobileads.util.XmlUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.w3c.dom.Node;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class VastIconXmlManager {
    public static final String DURATION = "duration";
    public static final String HEIGHT = "height";
    public static final String ICON_CLICKS = "IconClicks";
    public static final String ICON_CLICK_THROUGH = "IconClickThrough";
    public static final String ICON_CLICK_TRACKING = "IconClickTracking";
    public static final String ICON_VIEW_TRACKING = "IconViewTracking";
    public static final String OFFSET = "offset";
    public static final String WIDTH = "width";

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    private final Node f4411a;

    /* renamed from: b, reason: collision with root package name */
    @NonNull
    private final VastResourceXmlManager f4412b;

    VastIconXmlManager(@NonNull Node iconNode) {
        Preconditions.checkNotNull(iconNode);
        this.f4411a = iconNode;
        this.f4412b = new VastResourceXmlManager(iconNode);
    }

    @Nullable
    Integer a() {
        return XmlUtils.getAttributeValueAsInt(this.f4411a, WIDTH);
    }

    @Nullable
    Integer b() {
        return XmlUtils.getAttributeValueAsInt(this.f4411a, HEIGHT);
    }

    @Nullable
    Integer c() {
        String attributeValue = XmlUtils.getAttributeValue(this.f4411a, OFFSET);
        try {
            return Strings.parseAbsoluteOffset(attributeValue);
        } catch (NumberFormatException e) {
            MoPubLog.d(String.format("Invalid VAST icon offset format: %s:", attributeValue));
            return null;
        }
    }

    @Nullable
    Integer d() {
        String attributeValue = XmlUtils.getAttributeValue(this.f4411a, DURATION);
        try {
            return Strings.parseAbsoluteOffset(attributeValue);
        } catch (NumberFormatException e) {
            MoPubLog.d(String.format("Invalid VAST icon duration format: %s:", attributeValue));
            return null;
        }
    }

    @NonNull
    VastResourceXmlManager e() {
        return this.f4412b;
    }

    @NonNull
    List<VastTracker> f() {
        Node firstMatchingChildNode = XmlUtils.getFirstMatchingChildNode(this.f4411a, ICON_CLICKS);
        ArrayList arrayList = new ArrayList();
        if (firstMatchingChildNode == null) {
            return arrayList;
        }
        Iterator<Node> it = XmlUtils.getMatchingChildNodes(firstMatchingChildNode, ICON_CLICK_TRACKING).iterator();
        while (it.hasNext()) {
            String nodeValue = XmlUtils.getNodeValue(it.next());
            if (nodeValue != null) {
                arrayList.add(new VastTracker(nodeValue));
            }
        }
        return arrayList;
    }

    @Nullable
    String g() {
        Node firstMatchingChildNode = XmlUtils.getFirstMatchingChildNode(this.f4411a, ICON_CLICKS);
        if (firstMatchingChildNode == null) {
            return null;
        }
        return XmlUtils.getNodeValue(XmlUtils.getFirstMatchingChildNode(firstMatchingChildNode, ICON_CLICK_THROUGH));
    }

    @NonNull
    List<VastTracker> h() {
        List<Node> matchingChildNodes = XmlUtils.getMatchingChildNodes(this.f4411a, ICON_VIEW_TRACKING);
        ArrayList arrayList = new ArrayList();
        Iterator<Node> it = matchingChildNodes.iterator();
        while (it.hasNext()) {
            String nodeValue = XmlUtils.getNodeValue(it.next());
            if (nodeValue != null) {
                arrayList.add(new VastTracker(nodeValue));
            }
        }
        return arrayList;
    }
}
