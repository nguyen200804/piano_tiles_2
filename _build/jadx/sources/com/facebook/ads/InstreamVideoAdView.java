package com.facebook.ads;

import android.content.Context;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.view.View;
import android.widget.RelativeLayout;
import com.facebook.ads.a.a;
import com.facebook.ads.internal.DisplayAdController;
import com.facebook.ads.internal.adapters.AdAdapter;
import com.facebook.ads.internal.adapters.i;
import com.facebook.ads.internal.adapters.r;
import com.facebook.ads.internal.b;
import com.facebook.ads.internal.d;
import com.facebook.ads.internal.f;
import com.facebook.ads.internal.g.g;
import com.facebook.ads.internal.j;
import com.facebook.ads.internal.server.AdPlacementType;
import com.facebook.ads.internal.util.af;
import java.util.EnumSet;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class InstreamVideoAdView extends RelativeLayout implements Ad, af<Bundle> {

    /* renamed from: a, reason: collision with root package name */
    private final Context f2470a;

    /* renamed from: b, reason: collision with root package name */
    private final String f2471b;
    private final AdSize c;
    private DisplayAdController d;

    @Nullable
    private i e;
    private boolean f;

    @Nullable
    private InstreamVideoAdListener g;

    @Nullable
    private View h;

    @Nullable
    private Bundle i;

    @Nullable
    private com.facebook.ads.internal.i j;

    public InstreamVideoAdView(Context context, Bundle bundle) {
        this(context, bundle.getString("placementID"), (AdSize) bundle.get("adSize"));
        this.i = bundle;
    }

    public InstreamVideoAdView(Context context, String str, AdSize adSize) {
        super(context);
        this.f = false;
        this.f2470a = context;
        this.f2471b = str;
        this.c = adSize;
        this.d = getController();
    }

    private final void a() {
        if (this.d != null) {
            this.d.b(true);
            this.d = null;
            this.d = getController();
            this.e = null;
            this.f = false;
            removeAllViews();
        }
    }

    private void a(String str) {
        if (this.i == null) {
            this.d.a(str);
        } else {
            this.e = new i();
            this.e.a(getContext(), new a() { // from class: com.facebook.ads.InstreamVideoAdView.2
                @Override // com.facebook.ads.a.a
                public void a(r rVar) {
                    InstreamVideoAdView.this.f = true;
                    if (InstreamVideoAdView.this.g == null) {
                        return;
                    }
                    InstreamVideoAdView.this.g.onAdLoaded(InstreamVideoAdView.this);
                }

                @Override // com.facebook.ads.a.a
                public void a(r rVar, View view) {
                    if (view == null) {
                        throw new IllegalStateException("Cannot present null view");
                    }
                    InstreamVideoAdView.this.h = view;
                    InstreamVideoAdView.this.removeAllViews();
                    InstreamVideoAdView.this.h.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
                    InstreamVideoAdView.this.addView(InstreamVideoAdView.this.h);
                }

                @Override // com.facebook.ads.a.a
                public void a(r rVar, AdError adError) {
                    if (InstreamVideoAdView.this.g == null) {
                        return;
                    }
                    InstreamVideoAdView.this.g.onError(InstreamVideoAdView.this, adError);
                }

                @Override // com.facebook.ads.a.a
                public void b(r rVar) {
                    if (InstreamVideoAdView.this.g == null) {
                        return;
                    }
                    InstreamVideoAdView.this.g.onAdClicked(InstreamVideoAdView.this);
                }

                @Override // com.facebook.ads.a.a
                public void c(r rVar) {
                }

                @Override // com.facebook.ads.a.a
                public void d(r rVar) {
                    if (InstreamVideoAdView.this.g == null) {
                        return;
                    }
                    InstreamVideoAdView.this.g.onAdVideoComplete(InstreamVideoAdView.this);
                }
            }, g.a(getContext()), this.i.getBundle("adapter"), EnumSet.of(CacheFlag.NONE));
        }
    }

    private DisplayAdController getController() {
        this.d = new DisplayAdController(getContext(), this.f2471b, f.INSTREAM_VIDEO, AdPlacementType.INSTREAM, this.c, d.ADS, 1, true);
        this.d.a(new com.facebook.ads.internal.a() { // from class: com.facebook.ads.InstreamVideoAdView.1
            @Override // com.facebook.ads.internal.a
            public void a() {
                if (InstreamVideoAdView.this.g == null) {
                    return;
                }
                InstreamVideoAdView.this.g.onAdClicked(InstreamVideoAdView.this);
            }

            @Override // com.facebook.ads.internal.a
            public void a(View view) {
                if (view == null) {
                    throw new IllegalStateException("Cannot present null view");
                }
                InstreamVideoAdView.this.h = view;
                InstreamVideoAdView.this.removeAllViews();
                InstreamVideoAdView.this.h.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
                InstreamVideoAdView.this.addView(InstreamVideoAdView.this.h);
                if (j.b(InstreamVideoAdView.this.f2470a)) {
                    InstreamVideoAdView.this.j = new com.facebook.ads.internal.i();
                    InstreamVideoAdView.this.j.a(InstreamVideoAdView.this.f2471b);
                    InstreamVideoAdView.this.j.b(InstreamVideoAdView.this.f2470a.getPackageName());
                    if (InstreamVideoAdView.this.d.a() != null) {
                        InstreamVideoAdView.this.j.a(InstreamVideoAdView.this.d.a().a());
                    }
                    InstreamVideoAdView.this.h.getOverlay().add(InstreamVideoAdView.this.j);
                    InstreamVideoAdView.this.h.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.facebook.ads.InstreamVideoAdView.1.1
                        @Override // android.view.View.OnLongClickListener
                        public boolean onLongClick(View view2) {
                            if (InstreamVideoAdView.this.h == null || InstreamVideoAdView.this.j == null) {
                                return false;
                            }
                            InstreamVideoAdView.this.j.setBounds(0, 0, InstreamVideoAdView.this.h.getWidth(), InstreamVideoAdView.this.h.getHeight());
                            InstreamVideoAdView.this.j.a(InstreamVideoAdView.this.j.a() ? false : true);
                            return true;
                        }
                    });
                }
            }

            @Override // com.facebook.ads.internal.a
            public void a(AdAdapter adAdapter) {
                if (InstreamVideoAdView.this.d == null) {
                    return;
                }
                InstreamVideoAdView.this.f = true;
                if (InstreamVideoAdView.this.g != null) {
                    InstreamVideoAdView.this.g.onAdLoaded(InstreamVideoAdView.this);
                }
            }

            @Override // com.facebook.ads.internal.a
            public void a(b bVar) {
                if (InstreamVideoAdView.this.g == null) {
                    return;
                }
                InstreamVideoAdView.this.g.onError(InstreamVideoAdView.this, bVar.b());
            }

            @Override // com.facebook.ads.internal.a
            public void b() {
            }

            @Override // com.facebook.ads.internal.a
            public void c() {
                if (InstreamVideoAdView.this.g == null) {
                    return;
                }
                InstreamVideoAdView.this.g.onAdVideoComplete(InstreamVideoAdView.this);
            }
        });
        return this.d;
    }

    @Override // com.facebook.ads.Ad
    public void destroy() {
        if (this.j != null && j.b(this.f2470a)) {
            this.j.b();
            if (this.h != null) {
                this.h.getOverlay().remove(this.j);
            }
        }
        a();
    }

    @Override // com.facebook.ads.Ad
    public String getPlacementId() {
        return this.f2471b;
    }

    @Override // com.facebook.ads.internal.util.af
    public Bundle getSaveInstanceState() {
        Bundle saveInstanceState;
        af afVar = this.e != null ? this.e : (r) this.d.g();
        if (afVar != null && (saveInstanceState = afVar.getSaveInstanceState()) != null) {
            Bundle bundle = new Bundle();
            bundle.putBundle("adapter", saveInstanceState);
            bundle.putString("placementID", this.f2471b);
            bundle.putSerializable("adSize", this.c);
            return bundle;
        }
        return null;
    }

    public boolean isAdLoaded() {
        return this.f;
    }

    @Override // com.facebook.ads.Ad
    public void loadAd() {
        a((String) null);
    }

    @Override // com.facebook.ads.Ad
    public void loadAdFromBid(String str) {
        a(str);
    }

    public void setAdListener(InstreamVideoAdListener instreamVideoAdListener) {
        this.g = instreamVideoAdListener;
    }

    public boolean show() {
        if (!this.f || (this.d == null && this.e == null)) {
            if (this.g == null) {
                return false;
            }
            this.g.onError(this, AdError.INTERNAL_ERROR);
            return false;
        }
        if (this.e != null) {
            this.e.e();
        } else {
            this.d.b();
        }
        this.f = false;
        return true;
    }
}
