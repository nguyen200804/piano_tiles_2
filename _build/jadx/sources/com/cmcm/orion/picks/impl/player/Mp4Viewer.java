package com.cmcm.orion.picks.impl.player;

import android.R;
import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.SurfaceTexture;
import android.media.MediaPlayer;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.Surface;
import android.view.TextureView;
import com.cmcm.orion.adsdk.e;
import com.cmcm.orion.picks.impl.VastReceiver;
import com.cmcm.orion.picks.impl.a;
import com.cmcm.orion.picks.impl.i;
import java.io.File;

@TargetApi(14)
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class Mp4Viewer extends TextureView implements a.InterfaceC0019a {

    /* renamed from: a, reason: collision with root package name */
    private a f1002a;

    /* renamed from: b, reason: collision with root package name */
    private int f1003b;
    private int c;
    private int d;
    private a.InterfaceC0019a e;
    private TextureView.SurfaceTextureListener f;
    private boolean g;

    public Mp4Viewer(Context context) {
        super(context);
        this.d = 2;
        this.f = new TextureView.SurfaceTextureListener() { // from class: com.cmcm.orion.picks.impl.player.Mp4Viewer.1
            @Override // android.view.TextureView.SurfaceTextureListener
            public final void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int width, int height) {
                if (Mp4Viewer.this.f1002a != null) {
                    Mp4Viewer.this.f1002a.a(new Surface(surfaceTexture));
                }
            }

            @Override // android.view.TextureView.SurfaceTextureListener
            public final void onSurfaceTextureSizeChanged(SurfaceTexture surface, int width, int height) {
            }

            @Override // android.view.TextureView.SurfaceTextureListener
            public final boolean onSurfaceTextureDestroyed(SurfaceTexture surface) {
                if (Mp4Viewer.this.f1002a != null) {
                    Mp4Viewer.this.f1002a.a((Surface) null);
                    return false;
                }
                return false;
            }

            @Override // android.view.TextureView.SurfaceTextureListener
            public final void onSurfaceTextureUpdated(SurfaceTexture surface) {
            }
        };
        this.g = false;
        k();
    }

    public Mp4Viewer(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.d = 2;
        this.f = new TextureView.SurfaceTextureListener() { // from class: com.cmcm.orion.picks.impl.player.Mp4Viewer.1
            @Override // android.view.TextureView.SurfaceTextureListener
            public final void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int width, int height) {
                if (Mp4Viewer.this.f1002a != null) {
                    Mp4Viewer.this.f1002a.a(new Surface(surfaceTexture));
                }
            }

            @Override // android.view.TextureView.SurfaceTextureListener
            public final void onSurfaceTextureSizeChanged(SurfaceTexture surface, int width, int height) {
            }

            @Override // android.view.TextureView.SurfaceTextureListener
            public final boolean onSurfaceTextureDestroyed(SurfaceTexture surface) {
                if (Mp4Viewer.this.f1002a != null) {
                    Mp4Viewer.this.f1002a.a((Surface) null);
                    return false;
                }
                return false;
            }

            @Override // android.view.TextureView.SurfaceTextureListener
            public final void onSurfaceTextureUpdated(SurfaceTexture surface) {
            }
        };
        this.g = false;
        k();
    }

    public Mp4Viewer(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        this.d = 2;
        this.f = new TextureView.SurfaceTextureListener() { // from class: com.cmcm.orion.picks.impl.player.Mp4Viewer.1
            @Override // android.view.TextureView.SurfaceTextureListener
            public final void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int width, int height) {
                if (Mp4Viewer.this.f1002a != null) {
                    Mp4Viewer.this.f1002a.a(new Surface(surfaceTexture));
                }
            }

            @Override // android.view.TextureView.SurfaceTextureListener
            public final void onSurfaceTextureSizeChanged(SurfaceTexture surface, int width, int height) {
            }

            @Override // android.view.TextureView.SurfaceTextureListener
            public final boolean onSurfaceTextureDestroyed(SurfaceTexture surface) {
                if (Mp4Viewer.this.f1002a != null) {
                    Mp4Viewer.this.f1002a.a((Surface) null);
                    return false;
                }
                return false;
            }

            @Override // android.view.TextureView.SurfaceTextureListener
            public final void onSurfaceTextureUpdated(SurfaceTexture surface) {
            }
        };
        this.g = false;
        k();
    }

    private void k() {
        this.f1002a = new a(getContext());
        setSurfaceTextureListener(this.f);
        setBackgroundColor(getResources().getColor(R.color.transparent));
        setFocusable(false);
    }

    @Override // android.view.View
    public void setBackgroundColor(int color) {
        if (getContext().getApplicationInfo().targetSdkVersion <= 23) {
            super.setBackgroundColor(color);
        }
    }

    public final void b(int i) {
        if (this.f1002a != null) {
            this.f1002a.a(i);
        }
    }

    public final boolean a(String str) {
        if (TextUtils.isEmpty(str) || !new File(str).exists()) {
            return false;
        }
        try {
            this.f1003b = i.g(str);
            this.c = i.h(str);
            this.f1002a.a(str);
            return true;
        } catch (Exception e) {
            return false;
        }
    }

    @Override // android.view.View
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        int defaultSize = getDefaultSize(this.f1003b, widthMeasureSpec);
        int defaultSize2 = getDefaultSize(this.c, heightMeasureSpec);
        if (this.d == 1) {
            if (this.f1003b > 0 && this.c > 0) {
                if (this.f1003b * defaultSize2 > this.c * defaultSize) {
                    defaultSize2 = ((this.c * defaultSize) / this.f1003b) + 1;
                } else if (this.f1003b * defaultSize2 < this.c * defaultSize) {
                    defaultSize = ((this.f1003b * defaultSize2) / this.c) + 1;
                }
            }
        } else if (this.d == 2 && this.f1003b > 0 && this.c > 0) {
            if (this.f1003b * defaultSize2 > this.c * defaultSize) {
                defaultSize = ((this.f1003b * defaultSize2) / this.c) + 1;
            } else if (this.f1003b * defaultSize2 < this.c * defaultSize) {
                defaultSize2 = ((this.c * defaultSize) / this.f1003b) + 1;
            }
        }
        setMeasuredDimension(defaultSize, defaultSize2);
    }

    public final void g() {
        this.f1002a.b(3);
    }

    public final void c(int i) {
        this.f1002a.c(i);
    }

    public final void h() {
        this.f1002a.b(6);
    }

    public final int i() {
        return this.f1002a.a();
    }

    @Override // android.view.TextureView, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        VastReceiver.a(getContext());
        VastReceiver.a(this);
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        try {
            super.onDetachedFromWindow();
            VastReceiver.b(this);
            VastReceiver.b(getContext());
        } catch (Throwable th) {
        }
    }

    public final void j() {
        this.f1002a.b();
    }

    public final void a(float f, float f2) {
        this.f1002a.a(f, f2);
    }

    public final void a(a.InterfaceC0019a interfaceC0019a) {
        this.f1002a.a(interfaceC0019a);
    }

    public final void b(a.InterfaceC0019a interfaceC0019a) {
        this.f1002a.b(interfaceC0019a);
    }

    public final void c(a.InterfaceC0019a interfaceC0019a) {
        this.e = interfaceC0019a;
    }

    public final void a(MediaPlayer.OnErrorListener onErrorListener) {
        this.f1002a.a(onErrorListener);
    }

    @Override // com.cmcm.orion.picks.impl.a.InterfaceC0019a
    public final void c() {
        boolean a2 = a.AnonymousClass1.a(e.a());
        if (this.f1002a != null && this.f1002a.a() == 3 && !a2) {
            this.g = true;
            this.f1002a.b(4);
        }
    }

    @Override // com.cmcm.orion.picks.impl.a.InterfaceC0019a
    public final void c_() {
        if (this.f1002a != null && this.f1002a.a() != 6 && this.g) {
            this.g = false;
            g();
        }
    }

    @Override // com.cmcm.orion.picks.impl.a.InterfaceC0019a
    public final void e() {
        if (this.e != null) {
            this.e.f();
        }
    }
}
