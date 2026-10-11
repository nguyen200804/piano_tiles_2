package com.mopub.mobileads;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import com.mopub.common.Preconditions;
import com.mopub.common.util.DeviceUtils;
import com.mopub.mobileads.util.XmlUtils;
import java.io.IOException;
import java.io.StringReader;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import org.w3c.dom.Document;
import org.w3c.dom.NodeList;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;

/* compiled from: VastXmlManager.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class n {

    /* renamed from: a, reason: collision with root package name */
    @Nullable
    private Document f4516a;

    n() {
    }

    void a(@NonNull String str) throws ParserConfigurationException, IOException, SAXException {
        Preconditions.checkNotNull(str, "xmlString cannot be null");
        String str2 = "<MPMoVideoXMLDocRoot>" + str.replaceFirst("<\\?.*\\?>", "") + "</MPMoVideoXMLDocRoot>";
        DocumentBuilderFactory newInstance = DocumentBuilderFactory.newInstance();
        newInstance.setCoalescing(true);
        this.f4516a = newInstance.newDocumentBuilder().parse(new InputSource(new StringReader(str2)));
    }

    @NonNull
    List<c> a() {
        ArrayList arrayList = new ArrayList();
        if (this.f4516a == null) {
            return arrayList;
        }
        NodeList elementsByTagName = this.f4516a.getElementsByTagName("Ad");
        for (int i = 0; i < elementsByTagName.getLength(); i++) {
            arrayList.add(new c(elementsByTagName.item(i)));
        }
        return arrayList;
    }

    @Nullable
    VastTracker b() {
        if (this.f4516a == null) {
            return null;
        }
        String firstMatchingStringData = XmlUtils.getFirstMatchingStringData(this.f4516a, "Error");
        if (TextUtils.isEmpty(firstMatchingStringData)) {
            return null;
        }
        return new VastTracker(firstMatchingStringData);
    }

    @NonNull
    List<VastTracker> c() {
        List<String> stringDataAsList = XmlUtils.getStringDataAsList(this.f4516a, "MP_TRACKING_URL");
        ArrayList arrayList = new ArrayList(stringDataAsList.size());
        Iterator<String> it = stringDataAsList.iterator();
        while (it.hasNext()) {
            arrayList.add(new VastTracker(it.next()));
        }
        return arrayList;
    }

    @Nullable
    String d() {
        String firstMatchingStringData = XmlUtils.getFirstMatchingStringData(this.f4516a, "MoPubCtaText");
        if (firstMatchingStringData == null || firstMatchingStringData.length() > 15) {
            return null;
        }
        return firstMatchingStringData;
    }

    @Nullable
    String e() {
        String firstMatchingStringData = XmlUtils.getFirstMatchingStringData(this.f4516a, "MoPubSkipText");
        if (firstMatchingStringData == null || firstMatchingStringData.length() > 8) {
            return null;
        }
        return firstMatchingStringData;
    }

    @Nullable
    String f() {
        return XmlUtils.getFirstMatchingStringData(this.f4516a, "MoPubCloseIcon");
    }

    @NonNull
    DeviceUtils.ForceOrientation g() {
        return DeviceUtils.ForceOrientation.getForceOrientation(XmlUtils.getFirstMatchingStringData(this.f4516a, "MoPubForceOrientation"));
    }
}
