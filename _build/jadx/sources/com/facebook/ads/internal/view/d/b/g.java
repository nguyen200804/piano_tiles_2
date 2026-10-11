package com.facebook.ads.internal.view.d.b;

import android.content.Context;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import android.widget.RelativeLayout;
import com.facebook.ads.VideoStartReason;
import com.facebook.ads.internal.g.q;
import com.facebook.ads.internal.g.r;
import com.facebook.ads.internal.g.s;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class g extends n implements View.OnTouchListener {

    /* renamed from: b, reason: collision with root package name */
    private final com.facebook.ads.internal.view.d.a.m f2993b;
    private final com.facebook.ads.internal.view.d.a.i c;
    private final com.facebook.ads.internal.view.d.a.k d;
    private final com.facebook.ads.internal.view.d.a.c e;
    private final l f;

    public g(Context context) {
        this(context, null);
    }

    public g(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public g(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f2993b = new com.facebook.ads.internal.view.d.a.m() { // from class: com.facebook.ads.internal.view.d.b.g.1
            @Override // com.facebook.ads.internal.g.s
            public void a(com.facebook.ads.internal.view.d.a.l lVar) {
                g.this.setVisibility(0);
            }
        };
        this.c = new com.facebook.ads.internal.view.d.a.i() { // from class: com.facebook.ads.internal.view.d.b.g.2
            @Override // com.facebook.ads.internal.g.s
            public void a(com.facebook.ads.internal.view.d.a.h hVar) {
                g.this.f.setChecked(true);
            }
        };
        this.d = new com.facebook.ads.internal.view.d.a.k() { // from class: com.facebook.ads.internal.view.d.b.g.3
            @Override // com.facebook.ads.internal.g.s
            public void a(com.facebook.ads.internal.view.d.a.j jVar) {
                g.this.f.setChecked(false);
            }
        };
        this.e = new com.facebook.ads.internal.view.d.a.c() { // from class: com.facebook.ads.internal.view.d.b.g.4
            @Override // com.facebook.ads.internal.g.s
            public void a(com.facebook.ads.internal.view.d.a.b bVar) {
                g.this.f.setChecked(true);
            }
        };
        DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
        this.f = new l(context);
        this.f.setChecked(true);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams((int) (displayMetrics.density * 25.0f), (int) (displayMetrics.density * 25.0f));
        setVisibility(8);
        addView(this.f, layoutParams);
        setClickable(true);
        setFocusable(true);
        setFocusableInTouchMode(true);
    }

    @Override // com.facebook.ads.internal.view.d.b.n
    protected void a_(com.facebook.ads.internal.view.o oVar) {
        this.f.setOnTouchListener(this);
        setOnTouchListener(this);
        r<s, q> eventBus = oVar.getEventBus();
        eventBus.a((r<s, q>) this.f2993b);
        eventBus.a((r<s, q>) this.e);
        eventBus.a((r<s, q>) this.c);
        eventBus.a((r<s, q>) this.d);
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        com.facebook.ads.internal.view.o videoView;
        if (motionEvent.getAction() != 1 || (videoView = getVideoView()) == null) {
            return false;
        }
        if (videoView.getState() == com.facebook.ads.internal.view.d.c.d.PREPARED || videoView.getState() == com.facebook.ads.internal.view.d.c.d.PAUSED || videoView.getState() == com.facebook.ads.internal.view.d.c.d.PLAYBACK_COMPLETED) {
            videoView.a(VideoStartReason.USER_STARTED);
            return true;
        }
        if (videoView.getState() != com.facebook.ads.internal.view.d.c.d.STARTED) {
            return false;
        }
        videoView.a(true);
        return false;
    }
}
