package com.cmcm.orion.picks.impl;

import android.text.TextUtils;
import com.cmcm.orion.picks.impl.a;
import com.cmcm.orion.picks.impl.g;
import com.cmcm.orion.picks.impl.h;
import com.cmcm.orion.picks.impl.h.a;
import com.google.ads.mediation.facebook.FacebookAdapter;
import com.mopub.mobileads.VastExtensionXmlManager;
import com.mopub.mobileads.VastIconXmlManager;
import com.mopub.mobileads.VastResourceXmlManager;
import com.unity3d.ads.metadata.MediationMetaData;
import java.io.InputStream;
import java.io.StringReader;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.TimeZone;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserFactory;

/* compiled from: VastXmlParse.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class j {

    /* renamed from: a, reason: collision with root package name */
    public static String f992a = "BrandFeedItemAd";

    /* renamed from: b, reason: collision with root package name */
    private com.cmcm.orion.picks.a.a.a f993b;
    private com.cmcm.orion.adsdk.d c;

    /* JADX INFO: Access modifiers changed from: private */
    public void a(h hVar, com.cmcm.orion.adsdk.d dVar, final int i, a.InterfaceC0019a interfaceC0019a) {
        final boolean z;
        final com.cmcm.orion.adsdk.d dVar2;
        final a.InterfaceC0019a interfaceC0019a2;
        final h hVar2;
        j jVar;
        this.c = dVar;
        if (dVar == null && hVar != null) {
            z = true;
            dVar2 = null;
            interfaceC0019a2 = interfaceC0019a;
            hVar2 = hVar;
            jVar = this;
        } else {
            z = false;
            if (this.c == null) {
                dVar2 = com.cmcm.orion.adsdk.d.UNKNOWN_ERROR;
                interfaceC0019a2 = interfaceC0019a;
                hVar2 = hVar;
                jVar = this;
            } else {
                dVar2 = this.c;
                interfaceC0019a2 = interfaceC0019a;
                hVar2 = hVar;
                jVar = this;
            }
        }
        new StringBuilder("vast:to report xml parse end:,result: ").append(z).append(",pkg:").append(jVar.f993b.l());
        HashMap hashMap = new HashMap();
        hashMap.put("vps", z ? "1" : "2");
        com.cmcm.orion.picks.a.b.a("vast_parse_end", jVar.f993b, jVar.f993b.d(), (String) null, hashMap);
        if (interfaceC0019a2 == null) {
            return;
        }
        com.cmcm.orion.utils.e.b(new Runnable() { // from class: com.cmcm.orion.picks.impl.j.1
            @Override // java.lang.Runnable
            public final void run() {
                if (z) {
                    interfaceC0019a2.b(hVar2);
                } else {
                    new StringBuilder("vast:xml parse fail ,error:").append(dVar2.a()).append(dVar2.b());
                    interfaceC0019a2.a(hVar2, dVar2, i);
                }
            }
        });
    }

    private void a(final h hVar, String str, final a.InterfaceC0019a interfaceC0019a) {
        com.cmcm.orion.utils.d.a(str, new a.InterfaceC0019a() { // from class: com.cmcm.orion.picks.impl.j.3
            @Override // com.cmcm.orion.picks.impl.a.InterfaceC0019a
            public final void a(int i, InputStream inputStream, String str2, int i2) {
                j.a(j.this, hVar, com.cmcm.orion.utils.d.a(inputStream, str2), interfaceC0019a);
            }

            @Override // com.cmcm.orion.picks.impl.a.InterfaceC0019a
            public final void a(int i, com.cmcm.orion.adsdk.d dVar) {
                j.this.a(hVar, dVar, 301, interfaceC0019a);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(h hVar, String str, a.InterfaceC0019a interfaceC0019a) {
        if (TextUtils.isEmpty(str)) {
            a(hVar, com.cmcm.orion.adsdk.d.XML_NO_AD_DATA_ERROR, 301, interfaceC0019a);
            return;
        }
        if (hVar.r() > 5) {
            a(hVar, com.cmcm.orion.adsdk.d.WRAPPER_LIMIT_ERROR, 302, interfaceC0019a);
            return;
        }
        h a2 = a(hVar, str);
        if (a2 != null) {
            String q = a2.q();
            if (a2.o() && !TextUtils.isEmpty(q)) {
                a(a2, q, interfaceC0019a);
                return;
            } else if (TextUtils.isEmpty(a2.a(com.cmcm.orion.adsdk.e.a()))) {
                a(a2, com.cmcm.orion.adsdk.d.NO_MEDIA_URL_ERROR, 401, interfaceC0019a);
                return;
            } else {
                a(a2, (com.cmcm.orion.adsdk.d) null, 0, interfaceC0019a);
                return;
            }
        }
        a(hVar, this.c, 100, interfaceC0019a);
    }

    private h a(h hVar, String str) {
        boolean z;
        try {
            XmlPullParser newPullParser = XmlPullParserFactory.newInstance().newPullParser();
            newPullParser.setInput(new StringReader(str));
            h hVar2 = hVar;
            for (int eventType = newPullParser.getEventType(); eventType != 1; eventType = newPullParser.next()) {
                switch (eventType) {
                    case 0:
                        if (hVar2 == null) {
                            hVar2 = new h();
                        }
                        hVar2.a(false);
                        break;
                    case 2:
                        if (hVar2 == null) {
                            break;
                        } else {
                            if (hVar2 == null || newPullParser == null) {
                                z = false;
                            } else {
                                String name = newPullParser.getName();
                                if (hVar2.t()) {
                                    z = a(hVar2, newPullParser, name);
                                } else if (!hVar2.u()) {
                                    if (!hVar2.w()) {
                                        if (!hVar2.v()) {
                                            if ("Wrapper".equals(name)) {
                                                hVar2.a(true);
                                                hVar2.a(hVar2.r() + 1);
                                            } else if ("VASTAdTagURI".equals(name)) {
                                                String nextText = newPullParser.nextText();
                                                if (!TextUtils.isEmpty(nextText)) {
                                                    hVar2.k(nextText.trim());
                                                }
                                            } else if ("Ad".equals(name)) {
                                                hVar2.e(newPullParser.getAttributeValue(null, FacebookAdapter.KEY_ID));
                                            } else if ("AdTitle".equals(name)) {
                                                hVar2.f(newPullParser.nextText());
                                            } else if ("Description".equals(name)) {
                                                hVar2.g(newPullParser.nextText());
                                            } else if ("Button".equals(name)) {
                                                if ("orion".equals(newPullParser.getAttributeValue(null, MediationMetaData.KEY_NAME))) {
                                                    hVar2.h(newPullParser.nextText());
                                                }
                                            } else if ("Error".equals(name)) {
                                                a(hVar2, g.a.a(name), newPullParser.nextText());
                                            } else if ("Impression".equals(name)) {
                                                a(hVar2, g.a.a(name), newPullParser.nextText());
                                            } else if ("Linear".equals(name)) {
                                                hVar2.c(true);
                                            } else if ("CompanionAds".equals(name)) {
                                                hVar2.d(true);
                                            } else if ("NonLinearAds".equals(name)) {
                                                hVar2.e(true);
                                            } else if ("Extensions".equals(name)) {
                                                hVar2.f(true);
                                            }
                                        }
                                        z = true;
                                    } else {
                                        if ("MType".equals(name)) {
                                            hVar2.c(newPullParser.nextText());
                                        } else if ("DeepLink".equals(name)) {
                                            hVar2.d(newPullParser.nextText());
                                        } else if ("Button".equals(name)) {
                                            if ("orion".equals(newPullParser.getAttributeValue(null, MediationMetaData.KEY_NAME))) {
                                                hVar2.h(newPullParser.nextText());
                                            }
                                        } else if ("Rating".equals(name)) {
                                            hVar2.a(newPullParser.nextText());
                                        } else if ("DownloadNum".equals(name)) {
                                            hVar2.b(newPullParser.nextText());
                                        }
                                        z = true;
                                    }
                                } else {
                                    if ("Companion".equals(name)) {
                                        List<h.a> m = hVar2.m();
                                        if (m == null) {
                                            m = new ArrayList<>();
                                        }
                                        h hVar3 = new h();
                                        hVar3.getClass();
                                        h.a aVar = hVar3.new a();
                                        String attributeValue = newPullParser.getAttributeValue(null, VastIconXmlManager.WIDTH);
                                        String attributeValue2 = newPullParser.getAttributeValue(null, VastIconXmlManager.HEIGHT);
                                        String attributeValue3 = newPullParser.getAttributeValue(null, FacebookAdapter.KEY_ID);
                                        if (!TextUtils.isEmpty(attributeValue) && attributeValue.matches("[0-9]+")) {
                                            aVar.a(Integer.parseInt(attributeValue));
                                        }
                                        if (!TextUtils.isEmpty(attributeValue2) && attributeValue.matches("[0-9]+")) {
                                            aVar.b(Integer.parseInt(attributeValue2));
                                        }
                                        if (!TextUtils.isEmpty(attributeValue3)) {
                                            aVar.a(attributeValue3);
                                        }
                                        m.add(0, aVar);
                                        hVar2.b(m);
                                    } else if (VastResourceXmlManager.STATIC_RESOURCE.equals(name)) {
                                        List<h.a> m2 = hVar2.m();
                                        if (m2 != null && m2.size() > 0) {
                                            List<String> c = m2.get(0).c();
                                            List<String> arrayList = c == null ? new ArrayList() : c;
                                            String nextText2 = newPullParser.nextText();
                                            if (!TextUtils.isEmpty(nextText2)) {
                                                arrayList.add(0, nextText2);
                                                m2.get(0).a(arrayList);
                                            }
                                        }
                                    } else if ("Tracking".equals(name) || "CompanionClickTracking".equals(name)) {
                                        if ("Tracking".equals(name)) {
                                            name = newPullParser.getAttributeValue(null, "event");
                                        } else if (!"CompanionClickTracking".equals(name)) {
                                            name = null;
                                        }
                                        String nextText3 = newPullParser.nextText();
                                        g.a a2 = g.a.a(name);
                                        List<h.a> m3 = hVar2.m();
                                        if (m3 != null && m3.size() > 0) {
                                            List<String> list = m3.get(0).d().get(a2);
                                            if (list == null) {
                                                ArrayList arrayList2 = new ArrayList();
                                                m3.get(0).d().put(a2, arrayList2);
                                                list = arrayList2;
                                            }
                                            list.add(nextText3);
                                        }
                                    }
                                    z = true;
                                }
                            }
                            if (z) {
                                break;
                            } else {
                                hVar2 = null;
                                break;
                            }
                        }
                        break;
                    case 3:
                        if (hVar2 != null) {
                            String name2 = newPullParser.getName();
                            if (hVar2.t() && hVar2.s()) {
                                hVar2.b(false);
                                break;
                            } else if ("Linear".equals(name2)) {
                                hVar2.c(false);
                                break;
                            } else if ("CompanionAds".equals(name2)) {
                                hVar2.d(false);
                                break;
                            } else if ("NonLinearAds".equals(name2)) {
                                hVar2.e(false);
                                break;
                            } else if ("Extensions".equals(name2)) {
                                hVar2.f(false);
                                break;
                            } else {
                                break;
                            }
                        } else {
                            break;
                        }
                        break;
                }
            }
            return hVar2;
        } catch (Exception e) {
            this.c = com.cmcm.orion.adsdk.d.EXCEPTION_ERROR.a(e);
            return null;
        }
    }

    private static boolean a(h hVar, XmlPullParser xmlPullParser, String str) throws Exception {
        SimpleDateFormat simpleDateFormat;
        if (com.mopub.mobileads.h.ICON.equals(str)) {
            hVar.b(true);
        } else if (hVar.s()) {
            if (VastResourceXmlManager.STATIC_RESOURCE.equals(str)) {
                hVar.j(xmlPullParser.nextText());
            }
        } else if (!"Tracking".equals(str)) {
            if ("ClickThrough".equals(str)) {
                String nextText = xmlPullParser.nextText();
                if (!TextUtils.isEmpty(nextText)) {
                    hVar.i(nextText.trim());
                }
            } else if ("ClickTracking".equals(str)) {
                a(hVar, g.a.a(str), xmlPullParser.nextText());
            } else if ("MediaFile".equals(str)) {
                List<h.c> l = hVar.l();
                if (l == null) {
                    l = new ArrayList<>();
                }
                h.c cVar = null;
                String attributeValue = xmlPullParser.getAttributeValue(null, "delivery");
                xmlPullParser.getAttributeValue(null, VastExtensionXmlManager.TYPE);
                String attributeValue2 = xmlPullParser.getAttributeValue(null, "bitrate");
                String attributeValue3 = xmlPullParser.getAttributeValue(null, VastIconXmlManager.WIDTH);
                String attributeValue4 = xmlPullParser.getAttributeValue(null, VastIconXmlManager.HEIGHT);
                String attributeValue5 = xmlPullParser.getAttributeValue(null, FacebookAdapter.KEY_ID);
                String attributeValue6 = xmlPullParser.getAttributeValue(null, "scalable");
                String attributeValue7 = xmlPullParser.getAttributeValue(null, "encode");
                String attributeValue8 = xmlPullParser.getAttributeValue(null, "maintainAspectRatio");
                String nextText2 = xmlPullParser.nextText();
                if (TextUtils.isEmpty(nextText2)) {
                    cVar = null;
                } else {
                    String substring = nextText2.substring(nextText2.lastIndexOf(".") + 1);
                    if (TextUtils.isEmpty(substring)) {
                        cVar = null;
                    } else if ("mp4".equals(substring.trim()) || "3gp".equals(substring.trim()) || "webm".equals(substring.trim())) {
                        h.c cVar2 = new h.c();
                        if (!TextUtils.isEmpty(attributeValue2) && attributeValue2.matches("[0-9]+")) {
                            cVar2.c(Integer.parseInt(attributeValue2));
                        }
                        int i = 0;
                        int i2 = 0;
                        if (!TextUtils.isEmpty(attributeValue3) && attributeValue3.matches("[0-9]+")) {
                            i = Integer.parseInt(attributeValue3);
                            cVar2.a(i);
                        }
                        if (!TextUtils.isEmpty(attributeValue4) && attributeValue4.matches("[0-9]+")) {
                            i2 = Integer.parseInt(attributeValue4);
                            cVar2.b(i2);
                        }
                        cVar2.a("true".equals(attributeValue6));
                        cVar2.b("true".equals(attributeValue8));
                        cVar2.a(attributeValue);
                        cVar2.b(attributeValue5);
                        cVar2.d(substring);
                        cVar2.c(nextText2.trim());
                        cVar2.e(attributeValue7);
                        cVar2.c(i > i2);
                        cVar = cVar2;
                    }
                }
                if (cVar != null) {
                    l.add(cVar);
                }
                hVar.a(l);
            } else if ("Duration".equals(str)) {
                try {
                    String nextText3 = xmlPullParser.nextText();
                    if (nextText3.length() == 8) {
                        simpleDateFormat = new SimpleDateFormat("HH:mm:ss");
                    } else {
                        simpleDateFormat = new SimpleDateFormat("HH:mm:ss:SSS");
                    }
                    simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
                    hVar.a(simpleDateFormat.parse(nextText3).getTime());
                } catch (Exception e) {
                }
            }
        } else {
            if (hVar == null) {
                return false;
            }
            String attributeValue9 = xmlPullParser.getAttributeValue(null, "event");
            String attributeValue10 = xmlPullParser.getAttributeValue(null, VastIconXmlManager.OFFSET);
            String nextText4 = xmlPullParser.nextText();
            if (!TextUtils.isEmpty(attributeValue9) && !TextUtils.isEmpty(nextText4)) {
                h.b bVar = new h.b();
                bVar.a(attributeValue9);
                bVar.b(attributeValue10);
                bVar.c(nextText4);
                g.a a2 = g.a.a(attributeValue9);
                List<h.b> list = hVar.e().get(a2);
                if (list == null) {
                    list = new ArrayList<>();
                    hVar.e().put(a2, list);
                }
                list.add(bVar);
                a(hVar, g.a.a(attributeValue9), nextText4);
            }
            return true;
        }
        return true;
    }

    private static void a(h hVar, g.a aVar, String str) {
        List<String> list = hVar.d().get(aVar);
        if (list == null) {
            list = new ArrayList<>();
            hVar.d().put(aVar, list);
        }
        list.add(str);
    }

    public final void a(com.cmcm.orion.picks.a.a.a aVar) {
        this.f993b = aVar;
    }

    public final void a() {
        new StringBuilder("vast:to report xml parse start,pkg:").append(this.f993b.l());
        com.cmcm.orion.picks.a.b.a("vast_parse_start", this.f993b, this.f993b.d(), (String) null, (Map<String, String>) null);
    }

    static /* synthetic */ void a(j jVar, String str, a.InterfaceC0019a interfaceC0019a) {
        h hVar = new h();
        hVar.l(str);
        try {
            if (i.c(str)) {
                jVar.b(hVar, str, interfaceC0019a);
            } else {
                jVar.a(hVar, str, interfaceC0019a);
            }
        } catch (Exception e) {
            new StringBuilder("vast:xml parse failed :").append(e.getMessage());
            jVar.a(hVar, com.cmcm.orion.adsdk.d.EXCEPTION_ERROR.a(e), 100, interfaceC0019a);
        }
    }

    static /* synthetic */ void a(j jVar, final h hVar, final String str, final a.InterfaceC0019a interfaceC0019a) {
        com.cmcm.orion.utils.a.a(new Runnable() { // from class: com.cmcm.orion.picks.impl.j.4
            @Override // java.lang.Runnable
            public final void run() {
                j.this.b(hVar, str, interfaceC0019a);
            }
        });
    }
}
