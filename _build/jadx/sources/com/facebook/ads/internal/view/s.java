package com.facebook.ads.internal.view;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.RelativeLayout;
import com.facebook.ads.AudienceNetworkActivity;
import com.facebook.ads.VideoStartReason;
import com.facebook.ads.internal.util.ad;
import com.facebook.ads.internal.view.d;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class s implements d {

    /* renamed from: a, reason: collision with root package name */
    private final com.facebook.ads.internal.view.d.a.k f3090a = new com.facebook.ads.internal.view.d.a.k() { // from class: com.facebook.ads.internal.view.s.1
        @Override // com.facebook.ads.internal.g.s
        public void a(com.facebook.ads.internal.view.d.a.j jVar) {
            s.this.g.a("videoInterstitalEvent", jVar);
        }
    };

    /* renamed from: b, reason: collision with root package name */
    private final com.facebook.ads.internal.view.d.a.i f3091b = new com.facebook.ads.internal.view.d.a.i() { // from class: com.facebook.ads.internal.view.s.2
        @Override // com.facebook.ads.internal.g.s
        public void a(com.facebook.ads.internal.view.d.a.h hVar) {
            s.this.g.a("videoInterstitalEvent", hVar);
        }
    };
    private final com.facebook.ads.internal.view.d.a.c c = new com.facebook.ads.internal.view.d.a.c() { // from class: com.facebook.ads.internal.view.s.3
        @Override // com.facebook.ads.internal.g.s
        public void a(com.facebook.ads.internal.view.d.a.b bVar) {
            s.this.g.a("videoInterstitalEvent", bVar);
        }
    };
    private final com.facebook.ads.internal.view.d.a.e d = new com.facebook.ads.internal.view.d.a.e() { // from class: com.facebook.ads.internal.view.s.4
        @Override // com.facebook.ads.internal.g.s
        public void a(com.facebook.ads.internal.view.d.a.d dVar) {
            s.this.e.finish();
        }
    };
    private final AudienceNetworkActivity e;
    private final o f;
    private final d.a g;
    private ad h;
    private int i;

    public s(final AudienceNetworkActivity audienceNetworkActivity, d.a aVar) {
        this.e = audienceNetworkActivity;
        this.f = new o(audienceNetworkActivity);
        this.f.a(new com.facebook.ads.internal.view.d.b.b(audienceNetworkActivity));
        this.f.getEventBus().a((com.facebook.ads.internal.g.r<com.facebook.ads.internal.g.s, com.facebook.ads.internal.g.q>) this.f3090a);
        this.f.getEventBus().a((com.facebook.ads.internal.g.r<com.facebook.ads.internal.g.s, com.facebook.ads.internal.g.q>) this.f3091b);
        this.f.getEventBus().a((com.facebook.ads.internal.g.r<com.facebook.ads.internal.g.s, com.facebook.ads.internal.g.q>) this.c);
        this.f.getEventBus().a((com.facebook.ads.internal.g.r<com.facebook.ads.internal.g.s, com.facebook.ads.internal.g.q>) this.d);
        this.g = aVar;
        this.f.setIsFullScreen(true);
        this.f.setVolume(1.0f);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams.addRule(15);
        this.f.setLayoutParams(layoutParams);
        aVar.a(this.f);
        com.facebook.ads.internal.h hVar = new com.facebook.ads.internal.h(audienceNetworkActivity);
        hVar.setOnClickListener(new View.OnClickListener() { // from class: com.facebook.ads.internal.view.s.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                audienceNetworkActivity.finish();
            }
        });
        aVar.a(hVar);
    }

    @Override // com.facebook.ads.internal.view.d
    public void a(Intent intent, Bundle bundle, AudienceNetworkActivity audienceNetworkActivity) {
        String stringExtra = intent.getStringExtra("useNativeCtaButton");
        if (stringExtra != null && !stringExtra.isEmpty()) {
            com.facebook.ads.internal.view.c.b bVar = new com.facebook.ads.internal.view.c.b(audienceNetworkActivity, stringExtra);
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
            int i = (int) (audienceNetworkActivity.getResources().getDisplayMetrics().density * 16.0f);
            layoutParams.setMargins(i, i, i, i);
            layoutParams.addRule(10);
            layoutParams.addRule(9);
            bVar.setLayoutParams(layoutParams);
            bVar.setOnClickListener(new View.OnClickListener() { // from class: com.facebook.ads.internal.view.s.6
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    s.this.g.a("performCtaClick");
                }
            });
            this.g.a(bVar);
        }
        this.i = intent.getIntExtra(AudienceNetworkActivity.VIDEO_SEEK_TIME, 0);
        this.h = new ad(audienceNetworkActivity, com.facebook.ads.internal.g.g.a(audienceNetworkActivity.getApplicationContext()), this.f, intent.getStringExtra(AudienceNetworkActivity.CLIENT_TOKEN), intent.getBundleExtra(AudienceNetworkActivity.VIDEO_LOGGER));
        this.f.setVideoMPD(intent.getStringExtra(AudienceNetworkActivity.VIDEO_MPD));
        this.f.setVideoURI(intent.getStringExtra(AudienceNetworkActivity.VIDEO_URL));
        if (this.i > 0) {
            this.f.a(this.i);
        }
        if (intent.getBooleanExtra("autoplay", false)) {
            this.f.a(VideoStartReason.USER_STARTED);
        }
    }

    @Override // com.facebook.ads.internal.view.d
    public void a(Bundle bundle) {
    }

    public void a(View view) {
        this.f.setControlsAnchorView(view);
    }

    @Override // com.facebook.ads.internal.view.d
    public void a(d.a aVar) {
    }

    @Override // com.facebook.ads.internal.view.d
    public void h() {
        this.g.a("videoInterstitalEvent", new com.facebook.ads.internal.view.d.a.f());
        this.f.a(false);
    }

    @Override // com.facebook.ads.internal.view.d
    public void i() {
        this.g.a("videoInterstitalEvent", new com.facebook.ads.internal.view.d.a.g());
        this.f.a(VideoStartReason.USER_STARTED);
    }

    @Override // com.facebook.ads.internal.view.d
    public void onDestroy() {
        this.g.a("videoInterstitalEvent", new com.facebook.ads.internal.view.d.a.p(this.i, this.f.getCurrentPosition()));
        this.h.b(this.f.getCurrentPosition());
        this.f.f();
        this.f.h();
    }
}
