package com.facebook.ads;

import android.content.Context;
import android.content.res.Configuration;
import android.util.DisplayMetrics;
import android.view.View;
import android.widget.RelativeLayout;
import com.facebook.ads.internal.DisplayAdController;
import com.facebook.ads.internal.a;
import com.facebook.ads.internal.adapters.AdAdapter;
import com.facebook.ads.internal.b;
import com.facebook.ads.internal.d;
import com.facebook.ads.internal.i;
import com.facebook.ads.internal.j;
import com.facebook.ads.internal.server.AdPlacementType;
import com.facebook.ads.internal.util.g;
import com.facebook.ads.internal.view.c;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class AdView extends RelativeLayout implements Ad {

    /* renamed from: a, reason: collision with root package name */
    private static final d f2451a = d.ADS;

    /* renamed from: b, reason: collision with root package name */
    private final DisplayMetrics f2452b;
    private final AdSize c;
    private final String d;
    private DisplayAdController e;
    private AdListener f;
    private View g;
    private i h;
    private volatile boolean i;

    public AdView(Context context, final String str, AdSize adSize) {
        super(context);
        if (adSize == null || adSize == AdSize.INTERSTITIAL) {
            throw new IllegalArgumentException("adSize");
        }
        this.f2452b = getContext().getResources().getDisplayMetrics();
        this.c = adSize;
        this.d = str;
        this.e = new DisplayAdController(context, str, g.a(adSize), AdPlacementType.BANNER, adSize, f2451a, 1, false);
        this.e.a(new a() { // from class: com.facebook.ads.AdView.1
            @Override // com.facebook.ads.internal.a
            public void a() {
                if (AdView.this.f != null) {
                    AdView.this.f.onAdClicked(AdView.this);
                }
            }

            @Override // com.facebook.ads.internal.a
            public void a(View view) {
                if (view == null) {
                    throw new IllegalStateException("Cannot present null view");
                }
                AdView.this.g = view;
                AdView.this.removeAllViews();
                AdView.this.addView(AdView.this.g);
                if (AdView.this.g instanceof c) {
                    g.a(AdView.this.f2452b, AdView.this.g, AdView.this.c);
                }
                if (AdView.this.f != null) {
                    AdView.this.f.onAdLoaded(AdView.this);
                }
                if (j.b(AdView.this.getContext())) {
                    AdView.this.h = new i();
                    AdView.this.h.a(str);
                    AdView.this.h.b(AdView.this.getContext().getPackageName());
                    if (AdView.this.e.a() != null) {
                        AdView.this.h.a(AdView.this.e.a().a());
                    }
                    if (AdView.this.g instanceof c) {
                        AdView.this.h.a(((c) AdView.this.g).getViewabilityChecker());
                    }
                    AdView.this.g.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.facebook.ads.AdView.1.1
                        @Override // android.view.View.OnLongClickListener
                        public boolean onLongClick(View view2) {
                            AdView.this.h.setBounds(0, 0, AdView.this.g.getWidth(), AdView.this.g.getHeight());
                            AdView.this.h.a(AdView.this.h.a() ? false : true);
                            return true;
                        }
                    });
                    AdView.this.g.getOverlay().add(AdView.this.h);
                }
            }

            @Override // com.facebook.ads.internal.a
            public void a(AdAdapter adAdapter) {
                if (AdView.this.e != null) {
                    AdView.this.e.b();
                }
            }

            @Override // com.facebook.ads.internal.a
            public void a(b bVar) {
                if (AdView.this.f != null) {
                    AdView.this.f.onError(AdView.this, bVar.b());
                }
            }

            @Override // com.facebook.ads.internal.a
            public void b() {
                if (AdView.this.f != null) {
                    AdView.this.f.onLoggingImpression(AdView.this);
                }
            }
        });
    }

    private void a(String str) {
        if (!this.i) {
            this.e.a(str);
            this.i = true;
        } else if (this.e != null) {
            this.e.b(str);
        }
    }

    @Override // com.facebook.ads.Ad
    public void destroy() {
        if (this.e != null) {
            this.e.b(true);
            this.e = null;
        }
        if (this.h != null && j.b(getContext())) {
            this.h.b();
            this.g.getOverlay().remove(this.h);
        }
        removeAllViews();
        this.g = null;
    }

    public void disableAutoRefresh() {
        if (this.e != null) {
            this.e.f();
        }
    }

    @Override // com.facebook.ads.Ad
    public String getPlacementId() {
        return this.d;
    }

    @Override // com.facebook.ads.Ad
    public void loadAd() {
        a((String) null);
    }

    @Override // com.facebook.ads.Ad
    public void loadAdFromBid(String str) {
        a(str);
    }

    @Override // android.view.View
    protected void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        if (this.g != null) {
            g.a(this.f2452b, this.g, this.c);
        }
    }

    @Override // android.view.View
    protected void onWindowVisibilityChanged(int i) {
        super.onWindowVisibilityChanged(i);
        if (this.e == null) {
            return;
        }
        if (i == 0) {
            this.e.e();
        } else if (i == 8) {
            this.e.d();
        }
    }

    public void setAdListener(AdListener adListener) {
        this.f = adListener;
    }
}
