package com.mopub.mobileads;

import android.content.Context;
import android.graphics.Point;
import android.os.AsyncTask;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import android.view.Display;
import android.view.WindowManager;
import com.mopub.common.MoPubHttpUrlConnection;
import com.mopub.common.Preconditions;
import com.mopub.common.VisibleForTesting;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.Dips;
import com.mopub.common.util.Streams;
import com.mopub.common.util.Strings;
import com.mopub.mobileads.k;
import com.mopub.network.Networking;
import com.mopub.network.TrackingRequest;
import java.io.BufferedInputStream;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.net.HttpURLConnection;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class VastXmlManagerAggregator extends AsyncTask<String, Void, VastVideoConfig> {
    public static final String ADS_BY_AD_SLOT_ID = "adsBy";
    public static final String SOCIAL_ACTIONS_AD_SLOT_ID = "socialActions";

    /* renamed from: a, reason: collision with root package name */
    private static final List<String> f4464a = Arrays.asList("video/mp4", "video/3gpp");

    /* renamed from: b, reason: collision with root package name */
    @NonNull
    private final WeakReference<b> f4465b;
    private final double c;
    private final int d;

    @NonNull
    private final Context e;
    private int f;

    enum a {
        LANDSCAPE,
        PORTRAIT
    }

    interface b {
        void onAggregationComplete(@Nullable VastVideoConfig vastVideoConfig);
    }

    VastXmlManagerAggregator(@NonNull b vastXmlManagerAggregatorListener, double screenAspectRatio, int screenAreaDp, @NonNull Context context) {
        Preconditions.checkNotNull(vastXmlManagerAggregatorListener);
        Preconditions.checkNotNull(context);
        this.f4465b = new WeakReference<>(vastXmlManagerAggregatorListener);
        this.c = screenAspectRatio;
        this.d = screenAreaDp;
        this.e = context.getApplicationContext();
    }

    @Override // android.os.AsyncTask
    protected void onPreExecute() {
        Networking.getUserAgent(this.e);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public VastVideoConfig doInBackground(@Nullable String... strArr) {
        if (strArr == null || strArr.length == 0 || strArr[0] == null) {
            return null;
        }
        try {
            return a(strArr[0], new ArrayList());
        } catch (Exception e) {
            MoPubLog.d("Unable to generate VastVideoConfig.", e);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public void onPostExecute(@Nullable VastVideoConfig vastVideoConfig) {
        b bVar = this.f4465b.get();
        if (bVar != null) {
            bVar.onAggregationComplete(vastVideoConfig);
        }
    }

    @Override // android.os.AsyncTask
    protected void onCancelled() {
        b bVar = this.f4465b.get();
        if (bVar != null) {
            bVar.onAggregationComplete(null);
        }
    }

    @Nullable
    @VisibleForTesting
    VastVideoConfig a(@NonNull String str, @NonNull List<VastTracker> list) {
        VastVideoConfig a2;
        VastVideoConfig a3;
        Preconditions.checkNotNull(str, "vastXml cannot be null");
        Preconditions.checkNotNull(list, "errorTrackers cannot be null");
        n nVar = new n();
        try {
            nVar.a(str);
            List<c> a4 = nVar.a();
            if (a(a4, nVar, this.e)) {
                return null;
            }
            for (c cVar : a4) {
                if (a(cVar.c())) {
                    g a5 = cVar.a();
                    if (a5 != null && (a3 = a(a5, list)) != null) {
                        a(nVar, a3);
                        return a3;
                    }
                    m b2 = cVar.b();
                    if (b2 != null) {
                        ArrayList arrayList = new ArrayList(list);
                        arrayList.addAll(b2.b());
                        String a6 = a(b2, arrayList);
                        if (a6 != null && (a2 = a(a6, arrayList)) != null) {
                            a2.addImpressionTrackers(b2.a());
                            Iterator<h> it = b2.c().iterator();
                            while (it.hasNext()) {
                                a(it.next(), a2);
                            }
                            a(b2, a2);
                            List<e> d = b2.d();
                            if (!a2.hasCompanionAd()) {
                                a2.setVastCompanionAd(a(d, a.LANDSCAPE), a(d, a.PORTRAIT));
                            } else {
                                VastCompanionAdConfig vastCompanionAd = a2.getVastCompanionAd(2);
                                VastCompanionAdConfig vastCompanionAd2 = a2.getVastCompanionAd(1);
                                if (vastCompanionAd != null && vastCompanionAd2 != null) {
                                    for (e eVar : d) {
                                        if (!eVar.h()) {
                                            vastCompanionAd.addClickTrackers(eVar.f());
                                            vastCompanionAd.addCreativeViewTrackers(eVar.g());
                                            vastCompanionAd2.addClickTrackers(eVar.f());
                                            vastCompanionAd2.addCreativeViewTrackers(eVar.g());
                                        }
                                    }
                                }
                            }
                            if (a2.getSocialActionsCompanionAds().isEmpty()) {
                                a2.setSocialActionsCompanionAds(b(d));
                            }
                            a(nVar, a2);
                            return a2;
                        }
                    } else {
                        continue;
                    }
                }
            }
            return null;
        } catch (Exception e) {
            MoPubLog.d("Failed to parse VAST XML", e);
            TrackingRequest.makeVastTrackingHttpRequest(list, VastErrorCode.XML_PARSING_ERROR, null, null, this.e);
            return null;
        }
    }

    @Nullable
    private VastVideoConfig a(@NonNull g gVar, @NonNull List<VastTracker> list) {
        Preconditions.checkNotNull(gVar);
        Preconditions.checkNotNull(list);
        for (h hVar : gVar.c()) {
            String a2 = a(hVar.k());
            if (a2 != null) {
                VastVideoConfig vastVideoConfig = new VastVideoConfig();
                vastVideoConfig.addImpressionTrackers(gVar.a());
                a(hVar, vastVideoConfig);
                vastVideoConfig.setClickThroughUrl(hVar.h());
                vastVideoConfig.setNetworkMediaFileUrl(a2);
                List<e> d = gVar.d();
                vastVideoConfig.setVastCompanionAd(a(d, a.LANDSCAPE), a(d, a.PORTRAIT));
                vastVideoConfig.setSocialActionsCompanionAds(b(d));
                list.addAll(gVar.b());
                vastVideoConfig.addErrorTrackers(list);
                a(gVar, vastVideoConfig);
                return vastVideoConfig;
            }
        }
        return null;
    }

    private void a(@NonNull d dVar, @NonNull VastVideoConfig vastVideoConfig) {
        VastExtensionParentXmlManager e;
        Preconditions.checkNotNull(dVar);
        Preconditions.checkNotNull(vastVideoConfig);
        if (vastVideoConfig.getVideoViewabilityTracker() == null && (e = dVar.e()) != null) {
            for (VastExtensionXmlManager vastExtensionXmlManager : e.a()) {
                if ("MoPub".equals(vastExtensionXmlManager.b())) {
                    vastVideoConfig.setVideoViewabilityTracker(vastExtensionXmlManager.a());
                    return;
                }
            }
        }
    }

    @Nullable
    private String a(@NonNull m mVar, @NonNull List<VastTracker> list) {
        String f = mVar.f();
        if (f == null) {
            return null;
        }
        try {
            return b(f);
        } catch (Exception e) {
            MoPubLog.d("Failed to follow VAST redirect", e);
            if (list.isEmpty()) {
                return null;
            }
            TrackingRequest.makeVastTrackingHttpRequest(list, VastErrorCode.WRAPPER_TIMEOUT, null, null, this.e);
            return null;
        }
    }

    private void a(@NonNull h hVar, @NonNull VastVideoConfig vastVideoConfig) {
        Preconditions.checkNotNull(hVar, "linearXmlManager cannot be null");
        Preconditions.checkNotNull(vastVideoConfig, "vastVideoConfig cannot be null");
        vastVideoConfig.addAbsoluteTrackers(hVar.b());
        vastVideoConfig.addFractionalTrackers(hVar.a());
        vastVideoConfig.addPauseTrackers(hVar.d());
        vastVideoConfig.addResumeTrackers(hVar.e());
        vastVideoConfig.addCompleteTrackers(hVar.c());
        vastVideoConfig.addCloseTrackers(hVar.f());
        vastVideoConfig.addSkipTrackers(hVar.g());
        vastVideoConfig.addClickTrackers(hVar.i());
        if (vastVideoConfig.getSkipOffsetString() == null) {
            vastVideoConfig.setSkipOffset(hVar.j());
        }
        if (vastVideoConfig.getVastIconConfig() == null) {
            vastVideoConfig.setVastIconConfig(c(hVar.l()));
        }
    }

    private void a(@NonNull n nVar, @NonNull VastVideoConfig vastVideoConfig) {
        Preconditions.checkNotNull(nVar, "xmlManager cannot be null");
        Preconditions.checkNotNull(vastVideoConfig, "vastVideoConfig cannot be null");
        vastVideoConfig.addImpressionTrackers(nVar.c());
        if (vastVideoConfig.getCustomCtaText() == null) {
            vastVideoConfig.setCustomCtaText(nVar.d());
        }
        if (vastVideoConfig.getCustomSkipText() == null) {
            vastVideoConfig.setCustomSkipText(nVar.e());
        }
        if (vastVideoConfig.getCustomCloseIconUrl() == null) {
            vastVideoConfig.setCustomCloseIconUrl(nVar.f());
        }
        if (!vastVideoConfig.isCustomForceOrientationSet()) {
            vastVideoConfig.setCustomForceOrientation(nVar.g());
        }
    }

    private boolean a(@NonNull List<c> list, @NonNull n nVar, @NonNull Context context) {
        if (list.isEmpty() && nVar.b() != null) {
            TrackingRequest.makeVastTrackingHttpRequest(Collections.singletonList(nVar.b()), this.f > 0 ? VastErrorCode.NO_ADS_VAST_RESPONSE : VastErrorCode.UNDEFINED_ERROR, null, null, context);
            return true;
        }
        return false;
    }

    @Nullable
    @VisibleForTesting
    String a(@NonNull List<j> list) {
        String str;
        double d;
        Preconditions.checkNotNull(list, "managers cannot be null");
        double d2 = Double.POSITIVE_INFINITY;
        String str2 = null;
        Iterator it = new ArrayList(list).iterator();
        while (it.hasNext()) {
            j jVar = (j) it.next();
            String c = jVar.c();
            String d3 = jVar.d();
            if (!f4464a.contains(c) || d3 == null) {
                it.remove();
            } else {
                Integer a2 = jVar.a();
                Integer b2 = jVar.b();
                if (a2 != null && a2.intValue() > 0 && b2 != null && b2.intValue() > 0) {
                    double a3 = a(a2.intValue(), b2.intValue());
                    if (a3 < d2) {
                        str = d3;
                        d = a3;
                    } else {
                        str = str2;
                        d = d2;
                    }
                    d2 = d;
                    str2 = str;
                }
            }
        }
        return str2;
    }

    @Nullable
    @VisibleForTesting
    VastCompanionAdConfig a(@NonNull List<e> list, @NonNull a aVar) {
        k kVar;
        e eVar;
        double a2;
        Point point;
        k kVar2;
        e eVar2;
        double d;
        Preconditions.checkNotNull(list, "managers cannot be null");
        Preconditions.checkNotNull(aVar, "orientation cannot be null");
        ArrayList<e> arrayList = new ArrayList(list);
        double d2 = Double.POSITIVE_INFINITY;
        e eVar3 = null;
        k kVar3 = null;
        Point point2 = null;
        k.b[] values = k.b.values();
        int length = values.length;
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= length) {
                kVar = kVar3;
                eVar = eVar3;
                break;
            }
            k.b bVar = values[i2];
            for (e eVar4 : arrayList) {
                Integer a3 = eVar4.a();
                Integer b2 = eVar4.b();
                if (a3 != null && a3.intValue() >= 300 && b2 != null && b2.intValue() >= 250) {
                    Point a4 = a(a3.intValue(), b2.intValue(), bVar, aVar);
                    k a5 = k.a(eVar4.d(), bVar, a4.x, a4.y);
                    if (a5 != null) {
                        if (a.PORTRAIT == aVar) {
                            a2 = a(b2.intValue(), a3.intValue());
                        } else {
                            a2 = a(a3.intValue(), b2.intValue());
                        }
                        if (a2 < d2) {
                            eVar2 = eVar4;
                            d = a2;
                            point = a4;
                            kVar2 = a5;
                        } else {
                            point = point2;
                            kVar2 = kVar3;
                            eVar2 = eVar3;
                            d = d2;
                        }
                        d2 = d;
                        kVar3 = kVar2;
                        eVar3 = eVar2;
                        point2 = point;
                    }
                }
            }
            if (eVar3 != null) {
                kVar = kVar3;
                eVar = eVar3;
                break;
            }
            i = i2 + 1;
        }
        if (eVar != null) {
            return new VastCompanionAdConfig(point2.x, point2.y, kVar, eVar.e(), eVar.f(), eVar.g());
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x0067 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0012 A[SYNTHETIC] */
    @android.support.annotation.NonNull
    @com.mopub.common.VisibleForTesting
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    java.util.Map<java.lang.String, com.mopub.mobileads.VastCompanionAdConfig> b(@android.support.annotation.NonNull java.util.List<com.mopub.mobileads.e> r13) {
        /*
            r12 = this;
            r11 = 10
            r10 = 50
            java.lang.String r0 = "managers cannot be null"
            com.mopub.common.Preconditions.checkNotNull(r13, r0)
            java.util.HashMap r7 = new java.util.HashMap
            r7.<init>()
            java.util.Iterator r8 = r13.iterator()
        L12:
            boolean r0 = r8.hasNext()
            if (r0 == 0) goto La8
            java.lang.Object r0 = r8.next()
            r6 = r0
            com.mopub.mobileads.e r6 = (com.mopub.mobileads.e) r6
            java.lang.Integer r1 = r6.a()
            java.lang.Integer r2 = r6.b()
            if (r1 == 0) goto L12
            if (r2 == 0) goto L12
            java.lang.String r9 = r6.c()
            java.lang.String r0 = "adsBy"
            boolean r0 = r0.equals(r9)
            if (r0 == 0) goto L84
            int r0 = r1.intValue()
            r3 = 25
            if (r0 < r3) goto L12
            int r0 = r1.intValue()
            r3 = 75
            if (r0 > r3) goto L12
            int r0 = r2.intValue()
            if (r0 < r11) goto L12
            int r0 = r2.intValue()
            if (r0 > r10) goto L12
        L53:
            com.mopub.mobileads.VastResourceXmlManager r0 = r6.d()
            com.mopub.mobileads.k$b r3 = com.mopub.mobileads.k.b.HTML_RESOURCE
            int r4 = r1.intValue()
            int r5 = r2.intValue()
            com.mopub.mobileads.k r3 = com.mopub.mobileads.k.a(r0, r3, r4, r5)
            if (r3 == 0) goto L12
            com.mopub.mobileads.VastCompanionAdConfig r0 = new com.mopub.mobileads.VastCompanionAdConfig
            int r1 = r1.intValue()
            int r2 = r2.intValue()
            java.lang.String r4 = r6.e()
            java.util.List r5 = r6.f()
            java.util.List r6 = r6.g()
            r0.<init>(r1, r2, r3, r4, r5, r6)
            r7.put(r9, r0)
            goto L12
        L84:
            java.lang.String r0 = "socialActions"
            boolean r0 = r0.equals(r9)
            if (r0 == 0) goto L12
            int r0 = r1.intValue()
            if (r0 < r10) goto L12
            int r0 = r1.intValue()
            r3 = 150(0x96, float:2.1E-43)
            if (r0 > r3) goto L12
            int r0 = r2.intValue()
            if (r0 < r11) goto L12
            int r0 = r2.intValue()
            if (r0 <= r10) goto L53
            goto L12
        La8:
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mopub.mobileads.VastXmlManagerAggregator.b(java.util.List):java.util.Map");
    }

    @NonNull
    @VisibleForTesting
    Point a(int i, int i2, k.b bVar, a aVar) {
        int i3;
        int i4;
        Point point = new Point(i, i2);
        Display defaultDisplay = ((WindowManager) this.e.getSystemService("window")).getDefaultDisplay();
        int width = defaultDisplay.getWidth();
        int height = defaultDisplay.getHeight();
        int dipsToIntPixels = Dips.dipsToIntPixels(i, this.e);
        int dipsToIntPixels2 = Dips.dipsToIntPixels(i2, this.e);
        if (a.LANDSCAPE == aVar) {
            int max = Math.max(width, height);
            int min = Math.min(width, height);
            i3 = max;
            i4 = min;
        } else {
            int min2 = Math.min(width, height);
            int max2 = Math.max(width, height);
            i3 = min2;
            i4 = max2;
        }
        if (dipsToIntPixels <= i3 - 16 && dipsToIntPixels2 <= i4 - 16) {
            return point;
        }
        Point point2 = new Point();
        if (k.b.HTML_RESOURCE == bVar) {
            point2.x = Math.min(i3, dipsToIntPixels);
            point2.y = Math.min(i4, dipsToIntPixels2);
        } else {
            float f = dipsToIntPixels / i3;
            float f2 = dipsToIntPixels2 / i4;
            if (f >= f2) {
                point2.x = i3;
                point2.y = (int) (dipsToIntPixels2 / f);
            } else {
                point2.x = (int) (dipsToIntPixels / f2);
                point2.y = i4;
            }
        }
        point2.x -= 16;
        point2.y -= 16;
        if (point2.x < 0 || point2.y < 0) {
            return point;
        }
        point2.x = Dips.pixelsToIntDips(point2.x, this.e);
        point2.y = Dips.pixelsToIntDips(point2.y, this.e);
        return point2;
    }

    @Nullable
    @VisibleForTesting
    f c(@NonNull List<VastIconXmlManager> list) {
        k a2;
        Preconditions.checkNotNull(list, "managers cannot be null");
        ArrayList<VastIconXmlManager> arrayList = new ArrayList(list);
        for (k.b bVar : k.b.values()) {
            for (VastIconXmlManager vastIconXmlManager : arrayList) {
                Integer a3 = vastIconXmlManager.a();
                Integer b2 = vastIconXmlManager.b();
                if (a3 != null && a3.intValue() > 0 && a3.intValue() <= 300 && b2 != null && b2.intValue() > 0 && b2.intValue() <= 300 && (a2 = k.a(vastIconXmlManager.e(), bVar, a3.intValue(), b2.intValue())) != null) {
                    return new f(vastIconXmlManager.a().intValue(), vastIconXmlManager.b().intValue(), vastIconXmlManager.c(), vastIconXmlManager.d(), a2, vastIconXmlManager.f(), vastIconXmlManager.g(), vastIconXmlManager.h());
                }
            }
        }
        return null;
    }

    private double a(int i, int i2) {
        return (Math.abs(Math.log((i / i2) / this.c)) * 70.0d) + (Math.abs(Math.log((i * i2) / this.d)) * 30.0d);
    }

    static boolean a(@Nullable String str) {
        if (TextUtils.isEmpty(str)) {
            return true;
        }
        try {
            return Integer.parseInt(str) < 2;
        } catch (NumberFormatException e) {
            return true;
        }
    }

    @Nullable
    private String b(@NonNull String str) throws IOException {
        HttpURLConnection httpURLConnection;
        Throwable th;
        BufferedInputStream bufferedInputStream;
        String str2 = null;
        Preconditions.checkNotNull(str);
        if (this.f < 10) {
            this.f++;
            try {
                httpURLConnection = MoPubHttpUrlConnection.getHttpUrlConnection(str);
                try {
                    bufferedInputStream = new BufferedInputStream(httpURLConnection.getInputStream());
                } catch (Throwable th2) {
                    bufferedInputStream = null;
                    th = th2;
                }
            } catch (Throwable th3) {
                httpURLConnection = null;
                th = th3;
                bufferedInputStream = null;
            }
            try {
                str2 = Strings.fromStream(bufferedInputStream);
                Streams.closeStream(bufferedInputStream);
                if (httpURLConnection != null) {
                    httpURLConnection.disconnect();
                }
            } catch (Throwable th4) {
                th = th4;
                Streams.closeStream(bufferedInputStream);
                if (httpURLConnection != null) {
                    httpURLConnection.disconnect();
                }
                throw th;
            }
        }
        return str2;
    }
}
