package com.facebook.ads;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.support.annotation.Nullable;
import android.support.v4.content.LocalBroadcastManager;
import android.text.TextUtils;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.facebook.ads.NativeAdView;
import com.facebook.ads.internal.DisplayAdController;
import com.facebook.ads.internal.adapters.AdAdapter;
import com.facebook.ads.internal.adapters.u;
import com.facebook.ads.internal.adapters.v;
import com.facebook.ads.internal.adapters.w;
import com.facebook.ads.internal.d;
import com.facebook.ads.internal.f;
import com.facebook.ads.internal.f.e;
import com.facebook.ads.internal.i;
import com.facebook.ads.internal.j;
import com.facebook.ads.internal.j.a;
import com.facebook.ads.internal.server.AdPlacementType;
import com.facebook.ads.internal.util.ah;
import com.facebook.ads.internal.util.b;
import com.facebook.ads.internal.util.g;
import com.facebook.ads.internal.util.q;
import com.facebook.ads.internal.view.t;
import com.mopub.mobileads.VastIconXmlManager;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;
import java.util.WeakHashMap;
import org.json.JSONObject;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class NativeAd implements Ad {

    /* renamed from: b, reason: collision with root package name */
    private static final d f2491b = d.ADS;
    private static final String c = NativeAd.class.getSimpleName();
    private static WeakHashMap<View, WeakReference<NativeAd>> d = new WeakHashMap<>();

    @Nullable
    private i A;
    private View B;
    private String C;
    private boolean D;

    /* renamed from: a, reason: collision with root package name */
    @Nullable
    protected v f2492a;
    private final Context e;
    private final String f;
    private final String g;
    private final com.facebook.ads.internal.c.b h;
    private AdListener i;
    private DisplayAdController j;
    private volatile boolean k;
    private e l;

    @Nullable
    private View m;
    private final List<View> n;
    private View.OnTouchListener o;
    private com.facebook.ads.internal.j.a p;
    private final ah q;

    @Nullable
    private u r;
    private a s;
    private b t;
    private com.facebook.ads.internal.view.u u;
    private NativeAdView.Type v;
    private boolean w;
    private MediaView x;

    @Deprecated
    private boolean y;
    private long z;

    public static class Image {

        /* renamed from: a, reason: collision with root package name */
        private final String f2502a;

        /* renamed from: b, reason: collision with root package name */
        private final int f2503b;
        private final int c;

        public Image(String str, int i, int i2) {
            this.f2502a = str;
            this.f2503b = i;
            this.c = i2;
        }

        public static Image fromJSONObject(JSONObject jSONObject) {
            String optString;
            if (jSONObject == null || (optString = jSONObject.optString("url")) == null) {
                return null;
            }
            return new Image(optString, jSONObject.optInt(VastIconXmlManager.WIDTH, 0), jSONObject.optInt(VastIconXmlManager.HEIGHT, 0));
        }

        public int getHeight() {
            return this.c;
        }

        public String getUrl() {
            return this.f2502a;
        }

        public int getWidth() {
            return this.f2503b;
        }
    }

    public enum MediaCacheFlag {
        NONE(0),
        ICON(1),
        IMAGE(2),
        VIDEO(3);

        public static final EnumSet<MediaCacheFlag> ALL = EnumSet.allOf(MediaCacheFlag.class);

        /* renamed from: a, reason: collision with root package name */
        private final long f2505a;

        MediaCacheFlag(long j) {
            this.f2505a = j;
        }

        public long getCacheFlagValue() {
            return this.f2505a;
        }
    }

    public static class Rating {

        /* renamed from: a, reason: collision with root package name */
        private final double f2506a;

        /* renamed from: b, reason: collision with root package name */
        private final double f2507b;

        public Rating(double d, double d2) {
            this.f2506a = d;
            this.f2507b = d2;
        }

        public static Rating fromJSONObject(JSONObject jSONObject) {
            if (jSONObject == null) {
                return null;
            }
            double optDouble = jSONObject.optDouble("value", 0.0d);
            double optDouble2 = jSONObject.optDouble("scale", 0.0d);
            if (optDouble == 0.0d || optDouble2 == 0.0d) {
                return null;
            }
            return new Rating(optDouble, optDouble2);
        }

        public double getScale() {
            return this.f2507b;
        }

        public double getValue() {
            return this.f2506a;
        }
    }

    private class a implements View.OnClickListener, View.OnLongClickListener, View.OnTouchListener {
        private a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (!NativeAd.this.q.d()) {
                Log.e("FBAudienceNetworkLog", "No touch data recorded, please ensure touch events reach the ad View by returning false if you intercept the event.");
            }
            int l = j.l(NativeAd.this.e);
            if (l >= 0 && NativeAd.this.q.c() < l) {
                if (NativeAd.this.q.b()) {
                    Log.e("FBAudienceNetworkLog", "Clicks happened too fast.");
                    return;
                } else {
                    Log.e("FBAudienceNetworkLog", "Ad cannot be clicked before it is viewed.");
                    return;
                }
            }
            HashMap hashMap = new HashMap();
            hashMap.put("touch", g.a(NativeAd.this.q.e()));
            if (NativeAd.this.v != null) {
                hashMap.put("nti", String.valueOf(NativeAd.this.v.getValue()));
            }
            if (NativeAd.this.w) {
                hashMap.put("nhs", String.valueOf(NativeAd.this.w));
            }
            NativeAd.this.p.a(hashMap);
            NativeAd.this.f2492a.b(hashMap);
        }

        @Override // android.view.View.OnLongClickListener
        public boolean onLongClick(View view) {
            if (NativeAd.this.m == null || NativeAd.this.A == null) {
                return false;
            }
            NativeAd.this.A.setBounds(0, 0, NativeAd.this.m.getWidth(), NativeAd.this.m.getHeight());
            NativeAd.this.A.a(NativeAd.this.A.a() ? false : true);
            return true;
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            NativeAd.this.q.a(motionEvent, NativeAd.this.m, view);
            return NativeAd.this.o != null && NativeAd.this.o.onTouch(view, motionEvent);
        }
    }

    private class b extends BroadcastReceiver {

        /* renamed from: b, reason: collision with root package name */
        private boolean f2510b;

        private b() {
        }

        public void a() {
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("com.facebook.ads.native.impression:" + NativeAd.this.g);
            intentFilter.addAction("com.facebook.ads.native.click:" + NativeAd.this.g);
            LocalBroadcastManager.getInstance(NativeAd.this.e).registerReceiver(this, intentFilter);
            this.f2510b = true;
        }

        public void b() {
            if (this.f2510b) {
                try {
                    LocalBroadcastManager.getInstance(NativeAd.this.e).unregisterReceiver(this);
                } catch (Exception e) {
                }
            }
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            String str = intent.getAction().split(":")[0];
            if ("com.facebook.ads.native.impression".equals(str) && NativeAd.this.r != null) {
                NativeAd.this.r.a();
            } else {
                if (!"com.facebook.ads.native.click".equals(str) || NativeAd.this.f2492a == null) {
                    return;
                }
                HashMap hashMap = new HashMap();
                hashMap.put("mil", String.valueOf(true));
                NativeAd.this.f2492a.b(hashMap);
            }
        }
    }

    private class c extends com.facebook.ads.internal.adapters.b {
        private c() {
        }

        @Override // com.facebook.ads.internal.adapters.b
        public boolean a() {
            return false;
        }

        @Override // com.facebook.ads.internal.adapters.b
        public void d() {
            if (NativeAd.this.i != null) {
                NativeAd.this.i.onLoggingImpression(NativeAd.this);
            }
        }

        @Override // com.facebook.ads.internal.adapters.b
        public void e() {
        }
    }

    public NativeAd(Context context, v vVar, e eVar) {
        this(context, null);
        this.l = eVar;
        this.k = true;
        this.f2492a = vVar;
        this.B = new View(context);
    }

    public NativeAd(Context context, String str) {
        this.g = UUID.randomUUID().toString();
        this.n = new ArrayList();
        this.q = new ah();
        this.D = false;
        this.e = context;
        this.f = str;
        this.h = new com.facebook.ads.internal.c.b(context);
        this.B = new View(context);
    }

    NativeAd(NativeAd nativeAd) {
        this(nativeAd.e, null);
        this.l = nativeAd.l;
        this.k = true;
        this.f2492a = nativeAd.f2492a;
        this.B = new View(this.e);
    }

    private void a(View view) {
        this.n.add(view);
        view.setOnClickListener(this.s);
        view.setOnTouchListener(this.s);
        if (j.b(view.getContext())) {
            view.setOnLongClickListener(this.s);
        }
    }

    private void a(final EnumSet<MediaCacheFlag> enumSet, String str) {
        if (this.k) {
            throw new IllegalStateException("loadAd cannot be called more than once");
        }
        this.z = System.currentTimeMillis();
        this.k = true;
        this.j = new DisplayAdController(this.e, this.f, f.NATIVE_UNKNOWN, AdPlacementType.NATIVE, null, f2491b, 1, true);
        this.j.a(new com.facebook.ads.internal.a() { // from class: com.facebook.ads.NativeAd.1
            @Override // com.facebook.ads.internal.a
            public void a() {
                if (NativeAd.this.i != null) {
                    NativeAd.this.i.onAdClicked(NativeAd.this);
                }
            }

            @Override // com.facebook.ads.internal.a
            public void a(AdAdapter adAdapter) {
                if (NativeAd.this.j != null) {
                    NativeAd.this.j.b();
                }
            }

            @Override // com.facebook.ads.internal.a
            public void a(final v vVar) {
                com.facebook.ads.internal.util.c.a(com.facebook.ads.internal.util.b.a(b.EnumC0079b.LOADING_AD, AdPlacementType.NATIVE, System.currentTimeMillis() - NativeAd.this.z, null));
                if (vVar == null) {
                    return;
                }
                if (enumSet.contains(MediaCacheFlag.ICON) && vVar.k() != null) {
                    NativeAd.this.h.a(vVar.k().getUrl());
                }
                if (enumSet.contains(MediaCacheFlag.IMAGE)) {
                    if (vVar.l() != null) {
                        NativeAd.this.h.a(vVar.l().getUrl());
                    }
                    if (vVar.A() != null) {
                        for (NativeAd nativeAd : vVar.A()) {
                            if (nativeAd.getAdCoverImage() != null) {
                                NativeAd.this.h.a(nativeAd.getAdCoverImage().getUrl());
                            }
                        }
                    }
                }
                if (enumSet.contains(MediaCacheFlag.VIDEO) && !TextUtils.isEmpty(vVar.w())) {
                    NativeAd.this.h.b(vVar.w());
                }
                NativeAd.this.h.a(new com.facebook.ads.internal.c.a() { // from class: com.facebook.ads.NativeAd.1.1
                    private void c() {
                        NativeAd.this.f2492a = vVar;
                        NativeAd.this.n();
                        NativeAd.this.o();
                        if (NativeAd.this.i != null) {
                            NativeAd.this.i.onAdLoaded(NativeAd.this);
                        }
                    }

                    @Override // com.facebook.ads.internal.c.a
                    public void a() {
                        c();
                    }

                    @Override // com.facebook.ads.internal.c.a
                    public void b() {
                        c();
                    }
                });
                if (NativeAd.this.i == null || vVar.A() == null) {
                    return;
                }
                w wVar = new w() { // from class: com.facebook.ads.NativeAd.1.2
                    @Override // com.facebook.ads.internal.adapters.w
                    public void a(v vVar2) {
                    }

                    @Override // com.facebook.ads.internal.adapters.w
                    public void a(v vVar2, AdError adError) {
                    }

                    @Override // com.facebook.ads.internal.adapters.w
                    public void b(v vVar2) {
                    }

                    @Override // com.facebook.ads.internal.adapters.w
                    public void c(v vVar2) {
                        if (NativeAd.this.i != null) {
                            NativeAd.this.i.onAdClicked(NativeAd.this);
                        }
                    }
                };
                Iterator<NativeAd> it = vVar.A().iterator();
                while (it.hasNext()) {
                    it.next().a(wVar);
                }
            }

            @Override // com.facebook.ads.internal.a
            public void a(com.facebook.ads.internal.b bVar) {
                if (NativeAd.this.i != null) {
                    NativeAd.this.i.onError(NativeAd.this, bVar.b());
                }
            }

            @Override // com.facebook.ads.internal.a
            public void b() {
                throw new IllegalStateException("Native ads manager their own impressions.");
            }
        });
        this.j.a(str);
    }

    private void a(List<View> list, View view) {
        if ((view instanceof MediaViewVideoRenderer) || (view instanceof AdChoicesView) || (view instanceof com.facebook.ads.internal.view.hscroll.b)) {
            return;
        }
        list.add(view);
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int i = 0; i < viewGroup.getChildCount(); i++) {
                a(list, viewGroup.getChildAt(i));
            }
        }
    }

    public static void downloadAndDisplayImage(Image image, ImageView imageView) {
        if (image == null || imageView == null) {
            return;
        }
        new q(imageView).a(image.getUrl());
    }

    private int getMinViewabilityPercentage() {
        if (this.l != null) {
            return this.l.f();
        }
        if (this.j == null || this.j.a() == null) {
            return 1;
        }
        return this.j.a().f();
    }

    private int i() {
        if (this.l != null) {
            return this.l.g();
        }
        if (this.j == null || this.j.a() == null) {
            return 0;
        }
        return this.j.a().g();
    }

    private int j() {
        if (this.l != null) {
            return this.l.h();
        }
        if (this.f2492a != null) {
            return this.f2492a.i();
        }
        if (this.j == null || this.j.a() == null) {
            return 0;
        }
        return this.j.a().h();
    }

    private int k() {
        if (this.l != null) {
            return this.l.i();
        }
        if (this.f2492a != null) {
            return this.f2492a.j();
        }
        if (this.j == null || this.j.a() == null) {
            return 1000;
        }
        return this.j.a().i();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean l() {
        return f() == VideoAutoplayBehavior.DEFAULT ? this.y : f() == VideoAutoplayBehavior.ON;
    }

    private void logExternalClick(String str) {
        if (this.f2492a == null) {
            return;
        }
        HashMap hashMap = new HashMap();
        hashMap.put("eil", String.valueOf(true));
        hashMap.put("eil_source", str);
        this.f2492a.b(hashMap);
    }

    private void logExternalImpression() {
        if (this.r == null) {
            return;
        }
        this.r.a();
    }

    private void m() {
        for (View view : this.n) {
            view.setOnClickListener(null);
            view.setOnTouchListener(null);
            view.setOnLongClickListener(null);
        }
        this.n.clear();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void n() {
        if (this.f2492a == null || !this.f2492a.c()) {
            return;
        }
        this.t = new b();
        this.t.a();
        this.r = new u(this.e, new com.facebook.ads.internal.adapters.b() { // from class: com.facebook.ads.NativeAd.4
            @Override // com.facebook.ads.internal.adapters.b
            public boolean a() {
                return true;
            }
        }, this.p, this.f2492a);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void o() {
        if (this.D) {
            this.r = new u(this.e, new c() { // from class: com.facebook.ads.NativeAd.5
                @Override // com.facebook.ads.internal.adapters.b
                public boolean b() {
                    return true;
                }

                @Override // com.facebook.ads.internal.adapters.b
                public String c() {
                    return NativeAd.this.C;
                }
            }, this.p, this.f2492a);
        }
    }

    private void registerExternalLogReceiver(String str) {
        this.D = true;
        this.C = str;
    }

    v a() {
        return this.f2492a;
    }

    void a(MediaView mediaView) {
        this.x = mediaView;
    }

    void a(NativeAdView.Type type) {
        this.v = type;
    }

    protected void a(w wVar) {
        this.f2492a.a(wVar);
    }

    void a(boolean z) {
        this.w = z;
    }

    String b() {
        if (isAdLoaded()) {
            return this.f2492a.v();
        }
        return null;
    }

    String c() {
        if (!isAdLoaded() || TextUtils.isEmpty(this.f2492a.w())) {
            return null;
        }
        return this.h.c(this.f2492a.w());
    }

    String d() {
        if (isAdLoaded()) {
            return this.f2492a.x();
        }
        return null;
    }

    @Override // com.facebook.ads.Ad
    public void destroy() {
        if (this.t != null) {
            this.t.b();
            this.t = null;
        }
        if (this.j != null) {
            this.j.b(true);
            this.j = null;
        }
        if (this.x != null) {
            this.x.destroy();
            this.x = null;
        }
    }

    String e() {
        if (isAdLoaded()) {
            return this.f2492a.z();
        }
        return null;
    }

    VideoAutoplayBehavior f() {
        return !isAdLoaded() ? VideoAutoplayBehavior.DEFAULT : this.f2492a.y();
    }

    List<NativeAd> g() {
        if (isAdLoaded()) {
            return this.f2492a.A();
        }
        return null;
    }

    public String getAdBody() {
        if (isAdLoaded()) {
            return this.f2492a.p();
        }
        return null;
    }

    public String getAdCallToAction() {
        if (isAdLoaded()) {
            return this.f2492a.q();
        }
        return null;
    }

    public Image getAdChoicesIcon() {
        if (isAdLoaded()) {
            return this.f2492a.t();
        }
        return null;
    }

    public String getAdChoicesLinkUrl() {
        if (isAdLoaded()) {
            return this.f2492a.u();
        }
        return null;
    }

    public Image getAdCoverImage() {
        if (isAdLoaded()) {
            return this.f2492a.l();
        }
        return null;
    }

    public Image getAdIcon() {
        if (isAdLoaded()) {
            return this.f2492a.k();
        }
        return null;
    }

    @Nullable
    public AdNetwork getAdNetwork() {
        if (!isAdLoaded() || this.f2492a == null) {
            return null;
        }
        return this.f2492a.E();
    }

    public String getAdRawBody() {
        if (isAdLoaded()) {
            return this.f2492a.H();
        }
        return null;
    }

    public String getAdSocialContext() {
        if (isAdLoaded()) {
            return this.f2492a.r();
        }
        return null;
    }

    @Deprecated
    public Rating getAdStarRating() {
        if (isAdLoaded()) {
            return this.f2492a.s();
        }
        return null;
    }

    public String getAdSubtitle() {
        if (isAdLoaded()) {
            return this.f2492a.o();
        }
        return null;
    }

    public String getAdTitle() {
        if (isAdLoaded()) {
            return this.f2492a.n();
        }
        return null;
    }

    public NativeAdViewAttributes getAdViewAttributes() {
        if (isAdLoaded()) {
            return this.f2492a.m();
        }
        return null;
    }

    public String getId() {
        if (isAdLoaded()) {
            return this.g;
        }
        return null;
    }

    @Override // com.facebook.ads.Ad
    public String getPlacementId() {
        return this.f;
    }

    @Nullable
    String h() {
        if (isAdLoaded()) {
            return this.f2492a.D();
        }
        return null;
    }

    public boolean isAdLoaded() {
        return this.f2492a != null && this.f2492a.b();
    }

    public boolean isNativeConfigEnabled() {
        return isAdLoaded() && this.f2492a.f();
    }

    @Override // com.facebook.ads.Ad
    public void loadAd() {
        EnumSet.of(MediaCacheFlag.NONE);
    }

    public void loadAd(EnumSet<MediaCacheFlag> enumSet) {
        a(enumSet, (String) null);
    }

    @Override // com.facebook.ads.Ad
    public void loadAdFromBid(String str) {
        loadAdFromBid(str, EnumSet.of(MediaCacheFlag.NONE));
    }

    public void loadAdFromBid(String str, EnumSet<MediaCacheFlag> enumSet) {
        a(enumSet, str);
    }

    public void onCtaBroadcast() {
        this.B.performClick();
    }

    public void registerViewForInteraction(View view) {
        ArrayList arrayList = new ArrayList();
        a(arrayList, view);
        registerViewForInteraction(view, arrayList);
    }

    public void registerViewForInteraction(View view, List<View> list) {
        if (view == null) {
            throw new IllegalArgumentException("Must provide a View");
        }
        if (list == null || list.size() == 0) {
            throw new IllegalArgumentException("Invalid set of clickable views");
        }
        if (!isAdLoaded()) {
            Log.e(c, "Ad not loaded");
            return;
        }
        if (this.m != null) {
            Log.w(c, "Native Ad was already registered with a View. Auto unregistering and proceeding.");
            unregisterView();
        }
        if (d.containsKey(view)) {
            Log.w(c, "View already registered with a NativeAd. Auto unregistering and proceeding.");
            d.get(view).get().unregisterView();
        }
        this.s = new a();
        this.m = view;
        if (view instanceof ViewGroup) {
            this.u = new com.facebook.ads.internal.view.u(view.getContext(), new t() { // from class: com.facebook.ads.NativeAd.2
                @Override // com.facebook.ads.internal.view.t
                public void a(int i) {
                    if (NativeAd.this.f2492a != null) {
                        NativeAd.this.f2492a.a(i);
                    }
                }
            });
            ((ViewGroup) view).addView(this.u);
        }
        ArrayList arrayList = new ArrayList(list);
        if (this.B != null) {
            arrayList.add(this.B);
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            a((View) it.next());
        }
        this.f2492a.a(view, arrayList);
        this.p = new com.facebook.ads.internal.j.a(this.m, getMinViewabilityPercentage(), i(), true, new a.AbstractC0076a() { // from class: com.facebook.ads.NativeAd.3
            @Override // com.facebook.ads.internal.j.a.AbstractC0076a
            public void a() {
                NativeAd.this.q.a();
                NativeAd.this.p.b();
                if (NativeAd.this.r == null) {
                    if (NativeAd.this.p != null) {
                        NativeAd.this.p.b();
                        NativeAd.this.p = null;
                        return;
                    }
                    return;
                }
                NativeAd.this.r.a(NativeAd.this.m);
                NativeAd.this.r.a(NativeAd.this.v);
                NativeAd.this.r.a(NativeAd.this.w);
                NativeAd.this.r.b(NativeAd.this.x != null);
                NativeAd.this.r.c(NativeAd.this.l());
                NativeAd.this.r.a();
            }
        });
        this.p.a(j());
        this.p.b(k());
        this.p.a();
        this.r = new u(this.e, new c(), this.p, this.f2492a);
        this.r.a(arrayList);
        d.put(view, new WeakReference<>(this));
        if (j.b(this.e)) {
            this.A = new i();
            this.A.a(this.f);
            this.A.b(this.e.getPackageName());
            this.A.a(this.p);
            if (this.f2492a.C() > 0) {
                this.A.a(this.f2492a.C(), this.f2492a.B());
            }
            if (this.l != null) {
                this.A.a(this.l.a());
            } else if (this.j != null && this.j.a() != null) {
                this.A.a(this.j.a().a());
            }
            this.m.getOverlay().add(this.A);
        }
    }

    public void setAdListener(AdListener adListener) {
        this.i = adListener;
    }

    @Deprecated
    public void setMediaViewAutoplay(boolean z) {
        this.y = z;
    }

    public void setOnTouchListener(View.OnTouchListener onTouchListener) {
        this.o = onTouchListener;
    }

    public void unregisterView() {
        if (this.m == null) {
            return;
        }
        if (!d.containsKey(this.m) || d.get(this.m).get() != this) {
            throw new IllegalStateException("View not registered with this NativeAd");
        }
        if ((this.m instanceof ViewGroup) && this.u != null) {
            ((ViewGroup) this.m).removeView(this.u);
            this.u = null;
        }
        if (this.f2492a != null) {
            this.f2492a.a();
        }
        if (this.A != null && j.b(this.e)) {
            this.A.b();
            this.m.getOverlay().remove(this.A);
        }
        d.remove(this.m);
        m();
        this.m = null;
        if (this.p != null) {
            this.p.b();
            this.p = null;
        }
        this.r = null;
    }
}
