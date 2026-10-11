package com.mopub.mobileads;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.mopub.common.Preconditions;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.Strings;
import com.mopub.mobileads.util.XmlUtils;
import org.w3c.dom.Node;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class VideoViewabilityTrackerXmlManager {
    public static final String PERCENT_VIEWABLE = "percentViewable";
    public static final String VIEWABLE_PLAYTIME = "viewablePlaytime";

    /* renamed from: a, reason: collision with root package name */
    private final Node f4471a;

    VideoViewabilityTrackerXmlManager(@NonNull Node videoViewabilityNode) {
        Preconditions.checkNotNull(videoViewabilityNode);
        this.f4471a = videoViewabilityNode;
    }

    @Nullable
    Integer a() {
        Integer num;
        String attributeValue = XmlUtils.getAttributeValue(this.f4471a, VIEWABLE_PLAYTIME);
        if (attributeValue == null) {
            return null;
        }
        if (Strings.isAbsoluteTracker(attributeValue)) {
            try {
                num = Strings.parseAbsoluteOffset(attributeValue);
            } catch (NumberFormatException e) {
                MoPubLog.d(String.format("Invalid VAST viewablePlaytime format for \"HH:MM:SS[.mmm]\": %s:", attributeValue));
                num = null;
            }
        } else {
            try {
                num = Integer.valueOf((int) (Float.parseFloat(attributeValue) * 1000.0f));
            } catch (NumberFormatException e2) {
                MoPubLog.d(String.format("Invalid VAST viewablePlaytime format for \"SS[.mmm]\": %s:", attributeValue));
                num = null;
            }
        }
        if (num == null || num.intValue() < 0) {
            return null;
        }
        return num;
    }

    @Nullable
    Integer b() {
        Integer num;
        String attributeValue = XmlUtils.getAttributeValue(this.f4471a, PERCENT_VIEWABLE);
        if (attributeValue == null) {
            return null;
        }
        try {
            num = Integer.valueOf((int) Float.parseFloat(attributeValue.replace("%", "")));
        } catch (NumberFormatException e) {
            MoPubLog.d(String.format("Invalid VAST percentViewable format for \"d{1,3}%%\": %s:", attributeValue));
            num = null;
        }
        if (num == null || num.intValue() < 0 || num.intValue() > 100) {
            return null;
        }
        return num;
    }

    @Nullable
    String c() {
        return XmlUtils.getNodeValue(this.f4471a);
    }
}
