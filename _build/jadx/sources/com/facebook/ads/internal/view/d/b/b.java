package com.facebook.ads.internal.view.d.b;

import android.content.Context;
import android.media.AudioManager;
import com.facebook.ads.internal.g.q;
import com.facebook.ads.internal.g.r;
import com.facebook.ads.internal.g.s;
import java.lang.ref.WeakReference;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class b extends n implements AudioManager.OnAudioFocusChangeListener {

    /* renamed from: b, reason: collision with root package name */
    private WeakReference<AudioManager.OnAudioFocusChangeListener> f2968b;
    private final com.facebook.ads.internal.view.d.a.c c;
    private final com.facebook.ads.internal.view.d.a.i d;
    private final com.facebook.ads.internal.view.d.a.k e;

    public b(Context context) {
        super(context);
        this.f2968b = null;
        this.c = new com.facebook.ads.internal.view.d.a.c() { // from class: com.facebook.ads.internal.view.d.b.b.1
            @Override // com.facebook.ads.internal.g.s
            public void a(com.facebook.ads.internal.view.d.a.b bVar) {
                ((AudioManager) b.this.getContext().getApplicationContext().getSystemService("audio")).abandonAudioFocus(b.this.f2968b == null ? null : (AudioManager.OnAudioFocusChangeListener) b.this.f2968b.get());
            }
        };
        this.d = new com.facebook.ads.internal.view.d.a.i() { // from class: com.facebook.ads.internal.view.d.b.b.2
            @Override // com.facebook.ads.internal.g.s
            public void a(com.facebook.ads.internal.view.d.a.h hVar) {
                ((AudioManager) b.this.getContext().getApplicationContext().getSystemService("audio")).abandonAudioFocus(b.this.f2968b == null ? null : (AudioManager.OnAudioFocusChangeListener) b.this.f2968b.get());
            }
        };
        this.e = new com.facebook.ads.internal.view.d.a.k() { // from class: com.facebook.ads.internal.view.d.b.b.3
            @Override // com.facebook.ads.internal.g.s
            public void a(com.facebook.ads.internal.view.d.a.j jVar) {
                if (b.this.f2968b == null || b.this.f2968b.get() == null) {
                    b.this.f2968b = new WeakReference(new AudioManager.OnAudioFocusChangeListener() { // from class: com.facebook.ads.internal.view.d.b.b.3.1
                        @Override // android.media.AudioManager.OnAudioFocusChangeListener
                        public void onAudioFocusChange(int i) {
                            if (b.this.getVideoView() != null && i <= 0) {
                                b.this.getVideoView().a(false);
                            }
                        }
                    });
                }
                ((AudioManager) b.this.getContext().getApplicationContext().getSystemService("audio")).requestAudioFocus((AudioManager.OnAudioFocusChangeListener) b.this.f2968b.get(), 3, 1);
            }
        };
    }

    @Override // com.facebook.ads.internal.view.d.b.n
    protected void a_(com.facebook.ads.internal.view.o oVar) {
        oVar.getEventBus().a((r<s, q>) this.e);
        oVar.getEventBus().a((r<s, q>) this.c);
        oVar.getEventBus().a((r<s, q>) this.d);
        super.a_(oVar);
    }

    @Override // android.media.AudioManager.OnAudioFocusChangeListener
    public void onAudioFocusChange(int i) {
        if (getVideoView() != null && i <= 0) {
            getVideoView().a(false);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        ((AudioManager) getContext().getApplicationContext().getSystemService("audio")).abandonAudioFocus(this.f2968b == null ? null : this.f2968b.get());
        super.onDetachedFromWindow();
    }
}
