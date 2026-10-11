package com.applovin.adview;

import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import android.graphics.Color;
import android.media.MediaPlayer;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.util.Log;
import android.view.Display;
import android.view.View;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.applovin.impl.adview.AdViewControllerImpl;
import com.applovin.impl.adview.AppLovinVideoView;
import com.applovin.impl.adview.af;
import com.applovin.impl.adview.w;
import com.applovin.impl.sdk.AppLovinAdImpl;
import com.applovin.impl.sdk.AppLovinSdkImpl;
import com.applovin.impl.sdk.ca;
import com.applovin.impl.sdk.dh;
import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdDisplayListener;
import com.applovin.sdk.AppLovinAdSize;
import com.applovin.sdk.AppLovinAdVideoPlaybackListener;
import com.applovin.sdk.AppLovinLogger;
import com.applovin.sdk.AppLovinSdkUtils;
import java.lang.ref.WeakReference;
import java.util.UUID;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class AppLovinInterstitialActivity extends Activity implements w {
    public static final String KEY_WRAPPER_ID = "com.applovin.interstitial.wrapper_id";
    public static volatile af lastKnownWrapper = null;
    private View A;
    private com.applovin.impl.adview.s B;
    private volatile UUID C;
    private ImageView D;

    /* renamed from: a, reason: collision with root package name */
    private AppLovinAdView f297a;

    /* renamed from: b, reason: collision with root package name */
    private af f298b;
    private AppLovinLogger d;
    private ca e;
    private AppLovinSdkImpl f;
    private Handler u;
    private FrameLayout v;
    private AppLovinVideoView w;
    private com.applovin.impl.adview.u x;
    private View y;
    private com.applovin.impl.adview.u z;
    private volatile boolean c = false;
    private volatile AppLovinAdImpl g = dh.a();
    private volatile boolean h = false;
    private volatile boolean i = false;
    private volatile boolean j = false;
    private volatile boolean k = false;
    private volatile boolean l = false;
    private volatile boolean m = false;
    private volatile boolean n = false;
    private volatile boolean o = false;
    private volatile boolean p = false;
    private boolean q = false;
    private volatile boolean r = false;
    private boolean s = false;
    private int t = 0;
    private WeakReference E = new WeakReference(null);

    private static int a(Display display) {
        if (display.getWidth() == display.getHeight()) {
            return 3;
        }
        return display.getWidth() < display.getHeight() ? 1 : 2;
    }

    private void a(int i) {
        b((int) (i - dh.a(1.0f)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i, UUID uuid) {
        if (this.B == null || !uuid.equals(this.C)) {
            return;
        }
        if (i <= 0) {
            this.B.setVisibility(8);
            this.s = true;
        } else {
            if (this.s) {
                return;
            }
            int i2 = i - 1;
            this.B.a(i2);
            this.u.postDelayed(new h(this, i2, uuid), 1000L);
        }
    }

    private void a(long j, com.applovin.impl.adview.u uVar) {
        this.u.postDelayed(new g(this, uVar), j);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(AppLovinAd appLovinAd) {
        AppLovinAdDisplayListener d = this.f298b.d();
        if (d != null) {
            d.adDisplayed(appLovinAd);
        }
        this.i = true;
    }

    private void a(AppLovinAd appLovinAd, double d, boolean z) {
        this.l = true;
        AppLovinAdVideoPlaybackListener c = this.f298b.c();
        if (c != null) {
            c.videoPlaybackEnded(appLovinAd, d, z);
        }
    }

    private void a(boolean z) {
        this.r = z;
        MediaPlayer mediaPlayer = (MediaPlayer) this.E.get();
        if (mediaPlayer != null) {
            int i = z ? 0 : 1;
            mediaPlayer.setVolume(i, i);
        }
    }

    private boolean a() {
        if (this.f298b == null || this.e == null || this.e.a()) {
            return true;
        }
        if (this.e.c() && this.n) {
            return true;
        }
        return this.e.b() && this.p;
    }

    private void b() {
        SharedPreferences.Editor edit = x().edit();
        edit.putBoolean("com.applovin.interstitial.should_resume_video", false);
        edit.putInt("com.applovin.interstitial.last_video_position", 0);
        edit.commit();
    }

    private void b(int i) {
        a(i, this.C);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(AppLovinAd appLovinAd) {
        c(appLovinAd);
        dismiss();
    }

    private int c(int i) {
        return AppLovinSdkUtils.dpToPx(this, i);
    }

    private void c() {
        Uri fromFile = Uri.fromFile(this.f.getFileManager().a(this.g.getVideoFilename(), (Context) this, false));
        this.w = new AppLovinVideoView(this);
        this.w.setOnPreparedListener(new b(this));
        this.w.setOnCompletionListener(new k(this));
        this.w.setOnErrorListener(new l(this));
        this.w.setVideoURI(fromFile);
        this.w.setLayoutParams(new FrameLayout.LayoutParams(-1, -1, 17));
        this.w.setOnTouchListener(new AppLovinTouchToClickListener(this, new n(this)));
        this.v.addView(this.w);
        setContentView(this.v);
        m();
    }

    private void c(AppLovinAd appLovinAd) {
        AppLovinAdDisplayListener d;
        if (this.j) {
            return;
        }
        this.j = true;
        if (this.f298b == null || (d = this.f298b.d()) == null) {
            return;
        }
        d.adHidden(appLovinAd);
    }

    private void d(AppLovinAd appLovinAd) {
        if (this.k) {
            return;
        }
        this.k = true;
        AppLovinAdVideoPlaybackListener c = this.f298b.c();
        if (c != null) {
            c.videoPlaybackBegan(appLovinAd);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean d() {
        return this.e.G();
    }

    private void e() {
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        this.v = new FrameLayout(this);
        this.v.setLayoutParams(layoutParams);
        this.v.setBackgroundColor(-16777216);
        this.u = new Handler();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f() {
        if (this.e.k()) {
            finish();
        } else {
            j();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g() {
        d(this.g);
        this.w.start();
        b(o());
    }

    private void h() {
        this.x = com.applovin.impl.adview.u.a(this.f, this, this.g.getCloseStyle());
        this.x.setVisibility(8);
        this.x.setOnClickListener(new p(this));
        int c = c(this.e.m());
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(c, c, (this.e.x() ? 3 : 5) | 48);
        this.x.a(c);
        int c2 = c(this.e.o());
        int c3 = c(this.e.q());
        layoutParams.setMargins(c3, c2, c3, c2);
        this.v.addView(this.x, layoutParams);
        this.z = com.applovin.impl.adview.u.a(this.f, this, this.g.getCloseStyle());
        this.z.setVisibility(8);
        this.z.setOnClickListener(new q(this));
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(c, c, (this.e.w() ? 3 : 5) | 48);
        layoutParams2.setMargins(c3, c2, c3, c2);
        this.z.a(c);
        this.v.addView(this.z, layoutParams2);
        this.z.bringToFront();
        if (k()) {
            int c4 = c(new ca(this.f).r());
            this.y = new View(this);
            this.y.setBackgroundColor(0);
            this.y.setVisibility(8);
            this.A = new View(this);
            this.A.setBackgroundColor(0);
            this.A.setVisibility(8);
            int i = c + c4;
            int c5 = c2 - c(5);
            FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(i, i, (this.e.x() ? 3 : 5) | 48);
            layoutParams3.setMargins(c5, c5, c5, c5);
            FrameLayout.LayoutParams layoutParams4 = new FrameLayout.LayoutParams(i, i, (this.e.w() ? 3 : 5) | 48);
            layoutParams4.setMargins(c5, c5, c5, c5);
            this.y.setOnClickListener(new r(this));
            this.A.setOnClickListener(new s(this));
            this.v.addView(this.y, layoutParams3);
            this.y.bringToFront();
            this.v.addView(this.A, layoutParams4);
            this.A.bringToFront();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i() {
        this.D = new ImageView(this);
        if (this.e.A()) {
            if (d() || this.e.B()) {
                int c = c(this.e.C());
                FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(c, c, this.e.D());
                this.D.setScaleType(ImageView.ScaleType.FIT_CENTER);
                int c2 = c(this.e.E());
                layoutParams.setMargins(c2, c2, c2, c2);
                this.f.getLogger().d("AppLovinInterstitialActivity", "Added mute button with params: " + layoutParams);
                AppLovinSdkUtils.safePopulateImageView(this.D, Uri.fromFile(this.f.getFileManager().a(d() ? this.g.getMuteImageFilename() : this.g.getUnmuteImageFilename(), (Context) this, true)), c);
                this.D.setClickable(true);
                this.D.setOnClickListener(new t(this));
                this.v.addView(this.D, layoutParams);
                this.D.bringToFront();
                this.r = d();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j() {
        runOnUiThread(new e(this));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean k() {
        return this.e.r() > 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l() {
        runOnUiThread(new f(this));
    }

    private void m() {
        if (this.g.getVideoCloseDelay() >= 0.0f) {
            a(dh.c(this.g.getVideoCloseDelay()), (!this.q || this.z == null) ? this.x : this.z);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void n() {
        if (this.B == null) {
            this.B = new com.applovin.impl.adview.s(this);
            int q = q();
            this.B.c(q);
            this.B.b(this.e.h());
            this.B.d(q);
            this.B.a(this.e.g());
            this.B.b(o());
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(c(this.e.f()), c(this.e.f()), this.e.v());
            int c = c(this.e.u());
            layoutParams.setMargins(c, c, c, c);
            this.v.addView(this.B, layoutParams);
            this.B.bringToFront();
            this.B.setVisibility((!this.e.i() || o() <= 0) ? 4 : 0);
        }
    }

    private int o() {
        int countdownLength = this.g.getCountdownLength();
        return (countdownLength <= 0 && this.e.t()) ? this.t + 1 : countdownLength;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void p() {
        this.C = UUID.randomUUID();
    }

    private int q() {
        return Color.parseColor(this.e.d());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void r() {
        t();
    }

    private void s() {
        if (this.c) {
            return;
        }
        if (this.f297a == null) {
            exitWithError("AdView was null");
            return;
        }
        this.f297a.setAdDisplayListener(new i(this));
        this.f297a.setAdClickListener(new j(this));
        this.g = (AppLovinAdImpl) this.f298b.b();
        e();
        h();
        if (this.g.getVideoFilename() != null) {
            c();
        } else {
            this.h = true;
            this.f.getLogger().e("AppLovinInterstitialActivity", "Video file was missing or null - please make sure your app has the WRITE_EXTERNAL_STORAGE permission!");
            t();
        }
        this.x.bringToFront();
        if (k() && this.y != null) {
            this.y.bringToFront();
        }
        if (this.z != null) {
            this.z.bringToFront();
        }
        this.f297a.renderAd(this.g);
        this.f298b.a(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void t() {
        w();
        this.w.stopPlayback();
        FrameLayout frameLayout = new FrameLayout(this);
        frameLayout.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        frameLayout.setBackgroundColor(-1157627904);
        frameLayout.addView(this.f297a);
        if (this.z != null) {
            this.v.removeView(this.z);
            if (this.A != null) {
                this.v.removeView(this.A);
            }
        }
        if (k() && this.y != null) {
            this.v.removeView(this.y);
            frameLayout.addView(this.y);
            this.y.bringToFront();
        }
        this.v.removeView(this.x);
        frameLayout.addView(this.x);
        setContentView(frameLayout);
        this.x.bringToFront();
        if (this.g.getPoststitialCloseDelay() > 0.0f) {
            a(dh.c(this.g.getPoststitialCloseDelay()), this.x);
        } else {
            this.x.setVisibility(0);
        }
        this.p = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void u() {
        boolean z = !v();
        a(z);
        AppLovinSdkUtils.safePopulateImageView(this.D, Uri.fromFile(this.f.getFileManager().a(z ? this.g.getMuteImageFilename() : this.g.getUnmuteImageFilename(), (Context) this, true)), c(this.e.C()));
    }

    private boolean v() {
        return this.r;
    }

    private void w() {
        double d = 100.0d;
        if (this.l) {
            return;
        }
        if (!this.m) {
            if (this.w != null) {
                d = 100.0d * (this.w.getCurrentPosition() / this.w.getDuration());
            } else {
                Log.e("AppLovinInterstitialActivity", "No video view detected on video end");
                d = 0.0d;
            }
        }
        this.f.getPostbackService().dispatchPostbackAsync(this.g.getParametrizedCompletionUrl((int) d), null);
        a(this.g, d, d > 95.0d);
    }

    private SharedPreferences x() {
        return getSharedPreferences("com.applovin.interstitial.sharedpreferences", 0);
    }

    @Override // com.applovin.impl.adview.w
    public void dismiss() {
        ((AdViewControllerImpl) this.f297a.getAdViewController()).setIsForegroundClickInvalidated(true);
        b();
        w();
        if (this.f298b != null) {
            if (this.g != null) {
                c(this.g);
            }
            this.f298b.a(false);
            this.f298b.g();
        }
        finish();
    }

    public void exitWithError(String str) {
        try {
            Log.e("AppLovinInterstitialActivity", "Failed to properly render an Interstitial Activity, due to error: " + str, new Throwable("Initialized = " + af.f342a + "; CleanedUp = " + af.f343b));
            c(dh.a());
        } catch (Exception e) {
            Log.e("AppLovinInterstitialActivity", "Failed to show a video ad due to error:", e);
        }
        finish();
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        if (a()) {
            this.d.d("AppLovinInterstitialActivity", "Back button was pressed; forwarding to Android for handling...");
            super.onBackPressed();
            return;
        }
        try {
            if (this.q && this.z != null && this.z.getVisibility() == 0 && this.z.getAlpha() > 0.0f && !this.n) {
                this.d.d("AppLovinInterstitialActivity", "Back button was pressed; forwarding as a click to skip button.");
                this.z.performClick();
            } else if (this.x == null || this.x.getVisibility() != 0 || this.x.getAlpha() <= 0.0f) {
                this.d.d("AppLovinInterstitialActivity", "Back button was pressed, but was not eligible for dismissal.");
            } else {
                this.d.d("AppLovinInterstitialActivity", "Back button was pressed; forwarding as a click to close button.");
                this.x.performClick();
            }
        } catch (Exception e) {
            super.onBackPressed();
        }
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        requestWindowFeature(1);
        try {
            getWindow().setFlags(1024, 1024);
        } catch (Throwable th) {
        }
        requestWindowFeature(1);
        String stringExtra = getIntent().getStringExtra(KEY_WRAPPER_ID);
        if (stringExtra == null || stringExtra.isEmpty()) {
            exitWithError("Wrapper ID is null");
        } else {
            this.f298b = af.a(stringExtra);
            if (this.f298b == null && lastKnownWrapper != null) {
                this.f298b = lastKnownWrapper;
            }
            if (this.f298b != null) {
                AppLovinAd b2 = this.f298b.b();
                this.f = (AppLovinSdkImpl) this.f298b.a();
                this.d = this.f298b.a().getLogger();
                this.e = new ca(this.f298b.a());
                if (b2 != null) {
                    Display defaultDisplay = ((WindowManager) getSystemService("window")).getDefaultDisplay();
                    int a2 = a(defaultDisplay);
                    int rotation = defaultDisplay.getRotation();
                    boolean z = (a2 == 2 && rotation == 0) || (a2 == 2 && rotation == 2) || ((a2 == 1 && rotation == 1) || (a2 == 1 && rotation == 3));
                    if (this.f298b.f() == AppLovinAdImpl.AdTarget.ACTIVITY_PORTRAIT) {
                        if (z) {
                            if (rotation != 1 && rotation != 3) {
                                this.c = true;
                                setRequestedOrientation(1);
                            }
                        } else if (rotation != 0 && rotation != 2) {
                            this.c = true;
                            setRequestedOrientation(1);
                        }
                    } else if (z) {
                        if (rotation != 0 && rotation != 2) {
                            this.c = true;
                            setRequestedOrientation(0);
                        }
                    } else if (rotation != 1 && rotation != 3) {
                        this.c = true;
                        setRequestedOrientation(0);
                    }
                    this.f297a = new AppLovinAdView(this.f, AppLovinAdSize.INTERSTITIAL, this);
                    this.f297a.setAutoDestroy(false);
                    this.f298b.a(this);
                    this.q = this.e.s();
                } else {
                    exitWithError("No current ad found.");
                }
            } else {
                exitWithError("Wrapper is null; initialized state: " + Boolean.toString(af.f342a));
            }
        }
        SharedPreferences.Editor edit = x().edit();
        edit.putBoolean("com.applovin.interstitial.should_resume_video", false);
        edit.commit();
        b();
        s();
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        try {
            if (this.f297a != null) {
                this.f297a.destroy();
            }
            if (this.w != null) {
                this.w.pause();
                this.w.stopPlayback();
            }
        } catch (Throwable th) {
            this.d.w("AppLovinInterstitialActivity", "Unable to destroy video view", th);
        }
        super.onDestroy();
    }

    @Override // android.app.Activity
    protected void onPause() {
        if (!this.c && !this.h) {
            SharedPreferences.Editor edit = x().edit();
            edit.putInt("com.applovin.interstitial.last_video_position", this.w.getCurrentPosition());
            edit.putBoolean("com.applovin.interstitial.should_resume_video", true);
            edit.commit();
            this.w.pause();
        }
        this.f298b.a(false);
        super.onPause();
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        this.f298b.a(true);
        SharedPreferences x = x();
        if (x.getBoolean("com.applovin.interstitial.should_resume_video", false)) {
            if (this.w != null) {
                int duration = this.w.getDuration();
                int i = x.getInt("com.applovin.interstitial.last_video_position", duration);
                p();
                this.w.seekTo(i);
                this.w.start();
                a(duration - i);
            }
            if (this.x == null || !this.e.j()) {
                dismiss();
            } else {
                this.d.d("AppLovinInterstitialActivity", "Fading in close button due to app resume.");
                a(0L, (!this.q || this.z == null) ? this.x : this.z);
            }
        }
    }
}
