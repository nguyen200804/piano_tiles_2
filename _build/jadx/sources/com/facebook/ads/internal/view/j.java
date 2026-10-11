package com.facebook.ads.internal.view;

import android.annotation.TargetApi;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.support.annotation.Nullable;
import android.support.v4.view.MotionEventCompat;
import android.util.AttributeSet;
import com.facebook.ads.AudienceNetworkActivity;
import com.facebook.ads.InterstitialAdActivity;
import com.facebook.ads.NativeAd;
import com.facebook.ads.internal.adapters.aa;
import com.facebook.ads.internal.util.ad;
import java.util.UUID;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class j extends o {

    /* renamed from: b, reason: collision with root package name */
    private final String f3068b;
    private final com.facebook.ads.internal.view.d.a.k c;
    private final com.facebook.ads.internal.view.d.a.i d;
    private final com.facebook.ads.internal.view.d.a.c e;
    private final aa f;
    private com.facebook.ads.internal.g.f g;

    @Nullable
    private ad h;

    @Nullable
    private String i;

    @Nullable
    private Uri j;

    @Nullable
    private String k;

    @Nullable
    private String l;

    @Nullable
    private String m;

    @Nullable
    private k n;

    @Nullable
    private NativeAd o;

    public j(Context context) {
        super(context);
        this.f3068b = UUID.randomUUID().toString();
        this.c = new com.facebook.ads.internal.view.d.a.k() { // from class: com.facebook.ads.internal.view.j.1
            @Override // com.facebook.ads.internal.g.s
            public void a(com.facebook.ads.internal.view.d.a.j jVar) {
                if (j.this.n == null) {
                    return;
                }
                j.this.n.c();
            }
        };
        this.d = new com.facebook.ads.internal.view.d.a.i() { // from class: com.facebook.ads.internal.view.j.2
            @Override // com.facebook.ads.internal.g.s
            public void a(com.facebook.ads.internal.view.d.a.h hVar) {
                if (j.this.n == null) {
                    return;
                }
                j.this.n.b();
            }
        };
        this.e = new com.facebook.ads.internal.view.d.a.c() { // from class: com.facebook.ads.internal.view.j.3
            @Override // com.facebook.ads.internal.g.s
            public void a(com.facebook.ads.internal.view.d.a.b bVar) {
                if (j.this.n == null) {
                    return;
                }
                j.this.n.h();
            }
        };
        this.f = new aa(this, context);
        j();
    }

    public j(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f3068b = UUID.randomUUID().toString();
        this.c = new com.facebook.ads.internal.view.d.a.k() { // from class: com.facebook.ads.internal.view.j.1
            @Override // com.facebook.ads.internal.g.s
            public void a(com.facebook.ads.internal.view.d.a.j jVar) {
                if (j.this.n == null) {
                    return;
                }
                j.this.n.c();
            }
        };
        this.d = new com.facebook.ads.internal.view.d.a.i() { // from class: com.facebook.ads.internal.view.j.2
            @Override // com.facebook.ads.internal.g.s
            public void a(com.facebook.ads.internal.view.d.a.h hVar) {
                if (j.this.n == null) {
                    return;
                }
                j.this.n.b();
            }
        };
        this.e = new com.facebook.ads.internal.view.d.a.c() { // from class: com.facebook.ads.internal.view.j.3
            @Override // com.facebook.ads.internal.g.s
            public void a(com.facebook.ads.internal.view.d.a.b bVar) {
                if (j.this.n == null) {
                    return;
                }
                j.this.n.h();
            }
        };
        this.f = new aa(this, context);
        j();
    }

    public j(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f3068b = UUID.randomUUID().toString();
        this.c = new com.facebook.ads.internal.view.d.a.k() { // from class: com.facebook.ads.internal.view.j.1
            @Override // com.facebook.ads.internal.g.s
            public void a(com.facebook.ads.internal.view.d.a.j jVar) {
                if (j.this.n == null) {
                    return;
                }
                j.this.n.c();
            }
        };
        this.d = new com.facebook.ads.internal.view.d.a.i() { // from class: com.facebook.ads.internal.view.j.2
            @Override // com.facebook.ads.internal.g.s
            public void a(com.facebook.ads.internal.view.d.a.h hVar) {
                if (j.this.n == null) {
                    return;
                }
                j.this.n.b();
            }
        };
        this.e = new com.facebook.ads.internal.view.d.a.c() { // from class: com.facebook.ads.internal.view.j.3
            @Override // com.facebook.ads.internal.g.s
            public void a(com.facebook.ads.internal.view.d.a.b bVar) {
                if (j.this.n == null) {
                    return;
                }
                j.this.n.h();
            }
        };
        this.f = new aa(this, context);
        j();
    }

    @TargetApi(MotionEventCompat.AXIS_WHEEL)
    public j(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.f3068b = UUID.randomUUID().toString();
        this.c = new com.facebook.ads.internal.view.d.a.k() { // from class: com.facebook.ads.internal.view.j.1
            @Override // com.facebook.ads.internal.g.s
            public void a(com.facebook.ads.internal.view.d.a.j jVar) {
                if (j.this.n == null) {
                    return;
                }
                j.this.n.c();
            }
        };
        this.d = new com.facebook.ads.internal.view.d.a.i() { // from class: com.facebook.ads.internal.view.j.2
            @Override // com.facebook.ads.internal.g.s
            public void a(com.facebook.ads.internal.view.d.a.h hVar) {
                if (j.this.n == null) {
                    return;
                }
                j.this.n.b();
            }
        };
        this.e = new com.facebook.ads.internal.view.d.a.c() { // from class: com.facebook.ads.internal.view.j.3
            @Override // com.facebook.ads.internal.g.s
            public void a(com.facebook.ads.internal.view.d.a.b bVar) {
                if (j.this.n == null) {
                    return;
                }
                j.this.n.h();
            }
        };
        this.f = new aa(this, context);
        j();
    }

    private void a(Intent intent) {
        if (this.i == null || this.h == null) {
            throw new IllegalStateException("Must setVideoReportUri first.");
        }
        if (this.j == null && this.l == null) {
            throw new IllegalStateException("Must setVideoURI or setVideoMPD first.");
        }
        intent.putExtra("useNativeCtaButton", this.m);
        intent.putExtra(AudienceNetworkActivity.VIEW_TYPE, AudienceNetworkActivity.Type.VIDEO);
        intent.putExtra(AudienceNetworkActivity.VIDEO_URL, this.j.toString());
        intent.putExtra(AudienceNetworkActivity.CLIENT_TOKEN, this.k == null ? "" : this.k);
        intent.putExtra(AudienceNetworkActivity.VIDEO_MPD, this.l);
        intent.putExtra(AudienceNetworkActivity.VIDEO_REPORT_URL, this.i);
        intent.putExtra(AudienceNetworkActivity.PREDEFINED_ORIENTATION_KEY, 13);
        intent.putExtra(AudienceNetworkActivity.VIDEO_SEEK_TIME, getCurrentPosition());
        intent.putExtra(AudienceNetworkActivity.AUDIENCE_NETWORK_UNIQUE_ID_EXTRA, this.f3068b);
        intent.putExtra(AudienceNetworkActivity.VIDEO_LOGGER, this.h.getSaveInstanceState());
        intent.addFlags(268435456);
    }

    private void j() {
        getEventBus().a((com.facebook.ads.internal.g.r<com.facebook.ads.internal.g.s, com.facebook.ads.internal.g.q>) this.c);
        getEventBus().a((com.facebook.ads.internal.g.r<com.facebook.ads.internal.g.s, com.facebook.ads.internal.g.q>) this.d);
        getEventBus().a((com.facebook.ads.internal.g.r<com.facebook.ads.internal.g.s, com.facebook.ads.internal.g.q>) this.e);
    }

    public void a(String str, @Nullable String str2) {
        if (this.h != null) {
            this.h.a();
        }
        if (str2 == null) {
            str2 = "";
        }
        this.h = new ad(getContext(), this.g, this, str2);
        this.k = str2;
        this.i = str;
    }

    public void c() {
        Context context = getContext();
        Intent intent = new Intent(context, (Class<?>) AudienceNetworkActivity.class);
        a(intent);
        try {
            a(false);
            setVisibility(8);
            context.startActivity(intent);
        } catch (ActivityNotFoundException e) {
            try {
                intent.setClass(context, InterstitialAdActivity.class);
                context.startActivity(intent);
            } catch (Exception e2) {
                com.facebook.ads.internal.util.c.a(com.facebook.ads.internal.util.b.a(e2, "Error occurred while loading fullscreen video activity."));
            }
        } catch (Exception e3) {
            com.facebook.ads.internal.util.c.a(com.facebook.ads.internal.util.b.a(e3, "Error occurred while loading fullscreen video activity."));
        }
    }

    public void d() {
        if (this.o != null) {
            this.o.onCtaBroadcast();
        }
    }

    @Nullable
    public k getListener() {
        return this.n;
    }

    public String getUniqueId() {
        return this.f3068b;
    }

    @Override // com.facebook.ads.internal.view.o, android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f.a();
    }

    @Override // com.facebook.ads.internal.view.o, android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        this.f.b();
        super.onDetachedFromWindow();
    }

    public void setAdEventManager(com.facebook.ads.internal.g.f fVar) {
        this.g = fVar;
    }

    public void setEnableBackgroundVideo(boolean z) {
        this.f3083a.setBackgroundPlaybackEnabled(z);
    }

    public void setListener(@Nullable k kVar) {
        this.n = kVar;
    }

    public void setNativeAd(NativeAd nativeAd) {
        this.o = nativeAd;
    }

    public void setVideoCTA(String str) {
        this.m = str;
    }

    @Override // com.facebook.ads.internal.view.o
    public void setVideoMPD(String str) {
        if (this.h == null) {
            throw new IllegalStateException("Must setVideoReportUri first.");
        }
        this.l = str;
        super.setVideoMPD(str);
    }

    @Override // com.facebook.ads.internal.view.o
    public void setVideoURI(Uri uri) {
        if (this.h == null) {
            throw new IllegalStateException("Must setVideoReportUri first.");
        }
        this.j = uri;
        super.setVideoURI(uri);
    }
}
