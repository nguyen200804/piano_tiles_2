package com.duapps.ad;

import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.duapps.ad.interstitial.RoundImageView;
import com.facebook.ads.AdChoicesView;
import com.facebook.ads.NativeAd;
import com.mopub.common.AdType;

/* compiled from: InterstitialAd.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class h {

    /* renamed from: a, reason: collision with root package name */
    private static final String f2147a = h.class.getSimpleName();

    /* renamed from: b, reason: collision with root package name */
    private f f2148b;
    private f c;
    private i d;
    private com.duapps.ad.interstitial.a e;
    private Activity f;
    private int g;
    private boolean h;
    private int i;
    private a j;
    private c k;

    /* compiled from: InterstitialAd.java */
    public enum a {
        NORMAL,
        SCREEN
    }

    public h(Activity activity, int i, a aVar) {
        this(activity, i, 1, aVar);
    }

    public h(Activity activity, int i, int i2, a aVar) {
        String str;
        this.k = new c() { // from class: com.duapps.ad.h.1
            @Override // com.duapps.ad.c
            public void a(f fVar, com.duapps.ad.a aVar2) {
                com.duapps.ad.base.h.c(h.f2147a, "load ad failed, errorcode(" + aVar2.a() + ")!");
                if (h.this.d != null) {
                    h.this.d.onAdFail(aVar2.a());
                }
            }

            @Override // com.duapps.ad.c
            public void a(f fVar) {
                if (fVar == null || TextUtils.isEmpty(fVar.h())) {
                    com.duapps.ad.base.h.c(h.f2147a, "load ad failed, errorcode(1001), ad.getImageUrl() : " + fVar.h());
                    if (h.this.d != null) {
                        h.this.d.onAdFail(1001);
                        return;
                    }
                    return;
                }
                h.this.c = fVar;
                if (h.this.d != null) {
                    h.this.d.onAdReceive();
                }
            }

            @Override // com.duapps.ad.c
            public void b(f fVar) {
                if (h.this.d != null) {
                    h.this.d.onAdClicked();
                }
            }
        };
        this.f = activity;
        this.g = i;
        this.j = aVar;
        if (this.j == a.SCREEN) {
            str = "interstitial_screen";
        } else {
            str = AdType.INTERSTITIAL;
        }
        this.f2148b = new f(activity, i, i2, str);
        this.f2148b.a(this.k);
        this.i = com.duapps.ad.c.b.c.a(this.f, 5.0f);
    }

    public void a(i iVar) {
        this.d = iVar;
    }

    public void a() {
        if (this.c != null) {
            if (this.d != null) {
                this.d.onAdReceive();
                return;
            }
            return;
        }
        this.f2148b.c();
    }

    public void b() {
        if (this.f == null || this.f.isFinishing()) {
            c();
            return;
        }
        if (!com.duapps.ad.c.b.c.a((Context) this.f)) {
            com.duapps.ad.stats.h.b(this.f, this.g);
            return;
        }
        try {
            if (this.c == null) {
                com.duapps.ad.base.h.c(f2147a, "show ad with no cached ad found!");
                if (this.d != null) {
                    this.d.onAdFail(1001);
                }
            } else {
                f();
                a(this.c);
                this.e.a();
                if (this.d != null) {
                    this.d.onAdPresent();
                }
            }
        } catch (Exception e) {
            com.duapps.ad.base.h.c(f2147a, "show ad with exception! e.getMessage : " + e.getMessage());
            if (this.d != null) {
                this.d.onAdFail(1001);
            }
        }
    }

    private void f() {
        if (this.e == null) {
            this.e = new com.duapps.ad.interstitial.a(this.f, this.j == a.SCREEN ? R.layout.interstitial_screen : R.layout.interstitial_normal);
            ViewGroup viewGroup = (ViewGroup) this.e.getContentView();
            View findViewById = viewGroup.findViewById(R.id.close);
            Rect rect = new Rect();
            this.f.getWindow().getDecorView().getWindowVisibleDisplayFrame(rect);
            viewGroup.setPadding(0, rect.top, 0, 0);
            int i = this.f.getResources().getDisplayMetrics().widthPixels;
            if (this.j == a.NORMAL) {
                if (this.f.getResources().getConfiguration().orientation == 1) {
                    int dimensionPixelSize = (i - (this.f.getResources().getDimensionPixelSize(R.dimen.interstitial_normal_port_card_margin) * 2)) - (this.f.getResources().getDimensionPixelSize(R.dimen.interstitial_normal_port_card_padding) * 2);
                    ImageView imageView = (ImageView) viewGroup.findViewById(R.id.image);
                    DuAdMediaView duAdMediaView = (DuAdMediaView) viewGroup.findViewById(R.id.media_view);
                    FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(dimensionPixelSize, (int) (dimensionPixelSize / 1.9d));
                    imageView.setLayoutParams(layoutParams);
                    duAdMediaView.setLayoutParams(layoutParams);
                }
            } else if (this.f.getResources().getConfiguration().orientation == 1) {
                int dimensionPixelSize2 = i - (this.f.getResources().getDimensionPixelSize(R.dimen.interstitial_screen_port_content_margin) * 2);
                ImageView imageView2 = (ImageView) viewGroup.findViewById(R.id.image);
                DuAdMediaView duAdMediaView2 = (DuAdMediaView) viewGroup.findViewById(R.id.media_view);
                FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(dimensionPixelSize2, (int) (dimensionPixelSize2 / 1.9d));
                imageView2.setLayoutParams(layoutParams2);
                duAdMediaView2.setLayoutParams(layoutParams2);
            }
            findViewById.setOnClickListener(new View.OnClickListener() { // from class: com.duapps.ad.h.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    if (h.this.e != null) {
                        h.this.e.dismiss();
                    }
                    com.duapps.ad.stats.h.a(h.this.f, h.this.g);
                }
            });
            this.e.setOnDismissListener(new PopupWindow.OnDismissListener() { // from class: com.duapps.ad.h.3
                @Override // android.widget.PopupWindow.OnDismissListener
                public void onDismiss() {
                    if (h.this.d != null) {
                        h.this.d.onAdDismissed();
                    }
                    if (h.this.e != null) {
                        h.this.e = null;
                    }
                }
            });
            this.e.setTouchable(true);
            this.e.setFocusable(true);
            this.e.setOutsideTouchable(false);
            this.e.update();
        }
    }

    public void c() {
        if (this.e != null && this.e.isShowing()) {
            this.e.dismiss();
        }
        this.e = null;
    }

    public void d() {
        this.f2148b.d();
        if (this.e != null) {
            this.e.dismiss();
            this.e = null;
        }
        this.f = null;
    }

    private void a(final f fVar) {
        if (this.f != null && !this.f.isFinishing()) {
            this.h = false;
            com.duapps.ad.base.h.c(f2147a, "registerView...ad.getImageUrl() : " + fVar.h() + ", ad.getIconUrl() : " + fVar.g());
            com.duapps.ad.base.h.c(f2147a, "registerView...ad.getCallToAction() : " + fVar.j() + ", ad.getTitle() : " + fVar.e() + ", ad.getShortDesc() : " + fVar.f());
            final ViewGroup viewGroup = (ViewGroup) this.e.getContentView();
            final View findViewById = viewGroup.findViewById(R.id.blur_bg);
            if (findViewById != null) {
                findViewById.setBackgroundDrawable(new BitmapDrawable());
            }
            RoundImageView roundImageView = (RoundImageView) viewGroup.findViewById(R.id.icon);
            ((TextView) viewGroup.findViewById(R.id.button)).setText(fVar.j());
            ((TextView) viewGroup.findViewById(R.id.title)).setText(fVar.e());
            TextView textView = (TextView) viewGroup.findViewById(R.id.desc);
            textView.setText(fVar.f());
            final ViewGroup viewGroup2 = (ViewGroup) viewGroup.findViewById(R.id.container);
            final ImageView imageView = (ImageView) viewGroup.findViewById(R.id.image);
            DuAdMediaView duAdMediaView = (DuAdMediaView) viewGroup.findViewById(R.id.media_view);
            ViewGroup viewGroup3 = (ViewGroup) viewGroup.findViewById(R.id.media_layout);
            final ImageView imageView2 = (ImageView) viewGroup.findViewById(R.id.ad_corner_default);
            final ImageView imageView3 = (ImageView) viewGroup.findViewById(R.id.ad_corner_image);
            imageView3.setVisibility(0);
            if (imageView2 != null) {
                imageView3.setVisibility(8);
                imageView2.setVisibility(0);
            }
            Rect rect = new Rect();
            this.f.getWindow().getDecorView().getWindowVisibleDisplayFrame(rect);
            DisplayMetrics displayMetrics = this.f.getResources().getDisplayMetrics();
            final int i = displayMetrics.widthPixels;
            final int i2 = displayMetrics.heightPixels - rect.top;
            if (2 == fVar.k()) {
                imageView.setLayoutParams(new FrameLayout.LayoutParams(0, 0));
                int dimensionPixelSize = this.f.getResources().getDimensionPixelSize(R.dimen.interstitial_land_media_content_height);
                if (this.j == a.SCREEN) {
                    if (this.f.getResources().getConfiguration().orientation == 2) {
                        ViewGroup viewGroup4 = (ViewGroup) viewGroup.findViewById(R.id.content_layout);
                        ViewGroup.LayoutParams layoutParams = viewGroup4.getLayoutParams();
                        layoutParams.height = dimensionPixelSize;
                        viewGroup4.setLayoutParams(layoutParams);
                        roundImageView.setLayoutParams(new LinearLayout.LayoutParams(0, 0));
                        textView.setVisibility(8);
                        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(i, i2 - dimensionPixelSize);
                        layoutParams2.gravity = 48;
                        duAdMediaView.setLayoutParams(layoutParams2);
                        if (viewGroup3 != null) {
                            viewGroup3.setLayoutParams(layoutParams2);
                        }
                    }
                } else if (this.f.getResources().getConfiguration().orientation == 2) {
                    ViewGroup viewGroup5 = (ViewGroup) viewGroup.findViewById(R.id.content_layout);
                    ViewGroup.LayoutParams layoutParams3 = viewGroup5.getLayoutParams();
                    layoutParams3.height = dimensionPixelSize;
                    viewGroup5.setLayoutParams(layoutParams3);
                    textView.setVisibility(8);
                    int dimensionPixelSize2 = i - (this.f.getResources().getDimensionPixelSize(R.dimen.interstitial_normal_land_card_land_margin) * 2);
                    int dimensionPixelSize3 = i2 - (this.f.getResources().getDimensionPixelSize(R.dimen.interstitial_normal_land_card_port_margin) * 2);
                    int i3 = dimensionPixelSize3 - dimensionPixelSize;
                    int min = Math.min(dimensionPixelSize2, (int) (i3 * 1.9d));
                    ViewGroup.LayoutParams layoutParams4 = viewGroup2.getLayoutParams();
                    layoutParams4.width = min;
                    layoutParams4.height = dimensionPixelSize3;
                    viewGroup2.setLayoutParams(layoutParams4);
                    FrameLayout.LayoutParams layoutParams5 = new FrameLayout.LayoutParams(min, i3);
                    layoutParams5.gravity = 48;
                    duAdMediaView.setLayoutParams(layoutParams5);
                }
                NativeAd nativeAd = (NativeAd) fVar.l();
                if (nativeAd != null) {
                    imageView.setVisibility(8);
                    duAdMediaView.setVisibility(0);
                    duAdMediaView.a(true);
                    duAdMediaView.a(fVar);
                    AdChoicesView adChoicesView = new AdChoicesView(this.f, nativeAd, true);
                    if (viewGroup3 != null) {
                        viewGroup3.addView(adChoicesView);
                    } else {
                        viewGroup2.addView(adChoicesView);
                    }
                    imageView3.setVisibility(8);
                    if (imageView2 != null) {
                        imageView2.setVisibility(8);
                    }
                } else {
                    throw new Exception("FB ad is null!");
                }
            } else {
                imageView.setVisibility(0);
                duAdMediaView.setVisibility(8);
            }
            imageView.setBackgroundResource(R.drawable.ad_image_bg);
            com.duapps.ad.base.a.b.a().a(fVar.h(), imageView, new com.duapps.ad.base.a.c() { // from class: com.duapps.ad.h.4
                @Override // com.duapps.ad.base.a.c
                public void a(String str, View view) {
                }

                @Override // com.duapps.ad.base.a.c
                public void a(String str, View view, int i4) {
                }

                @Override // com.duapps.ad.base.a.c
                public void a(String str, View view, Bitmap bitmap) {
                    if (bitmap != null && h.this.f != null) {
                        try {
                            if (2 == fVar.k()) {
                                if (h.this.f.getResources().getConfiguration().orientation == 2) {
                                    findViewById.setBackgroundDrawable(new BitmapDrawable(h.this.f.getResources(), com.duapps.ad.base.a.a.b(bitmap, h.this.i)));
                                    return;
                                }
                                return;
                            }
                            if (h.this.j == a.SCREEN) {
                                if (h.this.f.getResources().getConfiguration().orientation == 1) {
                                    if (h.this.h) {
                                        findViewById.setLayoutParams(new FrameLayout.LayoutParams(i, i2));
                                        findViewById.setBackgroundDrawable(new BitmapDrawable(h.this.f.getResources(), com.duapps.ad.base.a.a.b(bitmap, h.this.i)));
                                        return;
                                    }
                                    return;
                                }
                                findViewById.setBackgroundDrawable(new BitmapDrawable(h.this.f.getResources(), com.duapps.ad.base.a.a.b(bitmap, h.this.i)));
                                if (imageView2 != null) {
                                    imageView2.setVisibility(8);
                                }
                                if (imageView3 != null) {
                                    imageView3.setVisibility(0);
                                }
                                float width = bitmap.getWidth() / bitmap.getHeight();
                                if (i / i2 > width) {
                                    imageView.setLayoutParams(new FrameLayout.LayoutParams((int) (width * i2), i2));
                                    return;
                                } else {
                                    imageView.setLayoutParams(new FrameLayout.LayoutParams(i, (int) (i / width)));
                                    return;
                                }
                            }
                            if (h.this.f.getResources().getConfiguration().orientation == 2) {
                                int dimensionPixelSize4 = i - (h.this.f.getResources().getDimensionPixelSize(R.dimen.interstitial_normal_land_card_port_margin) * 2);
                                int min2 = Math.min(Math.max(h.this.f.getResources().getDimensionPixelSize(R.dimen.interstitial_normal_land_card_min_width), (bitmap.getWidth() / bitmap.getHeight()) * dimensionPixelSize4), i - (h.this.f.getResources().getDimensionPixelSize(R.dimen.interstitial_normal_land_card_land_margin) * 2));
                                RelativeLayout.LayoutParams layoutParams6 = (RelativeLayout.LayoutParams) viewGroup2.getLayoutParams();
                                layoutParams6.width = min2;
                                layoutParams6.height = dimensionPixelSize4;
                                viewGroup2.setLayoutParams(layoutParams6);
                                return;
                            }
                            int dimensionPixelSize5 = (i - (h.this.f.getResources().getDimensionPixelSize(R.dimen.interstitial_normal_port_card_margin) * 2)) - (h.this.f.getResources().getDimensionPixelSize(R.dimen.interstitial_normal_port_card_padding) * 2);
                            int i4 = (int) (dimensionPixelSize5 / 1.9d);
                            int min3 = Math.min(dimensionPixelSize5, (int) ((bitmap.getWidth() / bitmap.getHeight()) * i4));
                            ViewGroup viewGroup6 = (ViewGroup) viewGroup.findViewById(R.id.media_layout);
                            imageView.setLayoutParams(new FrameLayout.LayoutParams(min3, i4));
                            LinearLayout.LayoutParams layoutParams7 = new LinearLayout.LayoutParams(min3, i4);
                            layoutParams7.gravity = 1;
                            viewGroup6.setLayoutParams(layoutParams7);
                        } catch (Exception e) {
                            com.duapps.ad.base.h.c(h.f2147a, "Something wrong happened while image onLoadingComplete, message: " + e.getMessage());
                        }
                    }
                }
            });
            if (roundImageView != null) {
                if (TextUtils.isEmpty(fVar.g())) {
                    roundImageView.setVisibility(8);
                    this.h = true;
                } else {
                    roundImageView.setBackgroundResource(R.drawable.ad_icon_bg);
                    com.duapps.ad.base.a.b.a().a(fVar.g(), roundImageView, new com.duapps.ad.base.a.c() { // from class: com.duapps.ad.h.5
                        @Override // com.duapps.ad.base.a.c
                        public void a(String str, View view) {
                        }

                        @Override // com.duapps.ad.base.a.c
                        public void a(String str, View view, int i4) {
                        }

                        @Override // com.duapps.ad.base.a.c
                        public void a(String str, View view, Bitmap bitmap) {
                            if (bitmap != null && h.this.f != null) {
                                try {
                                    if (h.this.j == a.SCREEN && h.this.f.getResources().getConfiguration().orientation == 1) {
                                        findViewById.setLayoutParams(new FrameLayout.LayoutParams(i, i));
                                        findViewById.setBackgroundDrawable(new BitmapDrawable(h.this.f.getResources(), com.duapps.ad.base.a.a.a(bitmap, h.this.i)));
                                    }
                                } catch (Exception e) {
                                    com.duapps.ad.base.h.c(h.f2147a, "Something wrong happened while icon onLoadingComplete, message: " + e.getMessage());
                                }
                            }
                        }
                    });
                }
            }
            if (this.f.getResources().getConfiguration().orientation == 1 && this.j == a.SCREEN) {
                a(viewGroup, fVar);
            }
            fVar.a(viewGroup2);
            this.c = null;
        }
    }

    private void a(ViewGroup viewGroup, f fVar) {
        float i = fVar.i();
        ViewGroup viewGroup2 = (ViewGroup) viewGroup.findViewById(R.id.star_layout);
        if (i == 4.555f) {
            viewGroup2.setVisibility(4);
            return;
        }
        ImageView imageView = (ImageView) viewGroup.findViewById(R.id.star1);
        ImageView imageView2 = (ImageView) viewGroup.findViewById(R.id.star2);
        ImageView imageView3 = (ImageView) viewGroup.findViewById(R.id.star3);
        ImageView imageView4 = (ImageView) viewGroup.findViewById(R.id.star4);
        ImageView imageView5 = (ImageView) viewGroup.findViewById(R.id.star5);
        if (i <= 1.0f) {
            if (i == 1.0f) {
                imageView.setImageResource(R.drawable.star_full);
                return;
            } else {
                imageView.setImageResource(R.drawable.star_half);
                return;
            }
        }
        imageView.setImageResource(R.drawable.star_full);
        if (i <= 2.0f) {
            if (i == 2.0f) {
                imageView2.setImageResource(R.drawable.star_full);
                return;
            } else {
                imageView2.setImageResource(R.drawable.star_half);
                return;
            }
        }
        imageView2.setImageResource(R.drawable.star_full);
        if (i <= 3.0f) {
            if (i == 3.0f) {
                imageView3.setImageResource(R.drawable.star_full);
                return;
            } else {
                imageView3.setImageResource(R.drawable.star_half);
                return;
            }
        }
        imageView3.setImageResource(R.drawable.star_full);
        if (i <= 4.0f) {
            if (i == 4.0f) {
                imageView4.setImageResource(R.drawable.star_full);
                return;
            } else {
                imageView4.setImageResource(R.drawable.star_half);
                return;
            }
        }
        imageView4.setImageResource(R.drawable.star_full);
        if (i == 5.0f) {
            imageView5.setImageResource(R.drawable.star_full);
        } else {
            imageView5.setImageResource(R.drawable.star_half);
        }
    }
}
