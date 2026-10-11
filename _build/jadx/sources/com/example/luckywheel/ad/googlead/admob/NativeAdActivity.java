package com.example.luckywheel.ad.googlead.admob;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import com.android.volley.s;
import com.android.volley.toolbox.h;
import com.google.android.gms.ads.formats.NativeAd;
import com.google.android.gms.ads.formats.NativeAppInstallAd;
import com.google.android.gms.ads.formats.NativeAppInstallAdView;
import com.google.android.gms.ads.formats.NativeContentAd;
import com.google.android.gms.ads.formats.NativeContentAdView;
import com.whatscall.luckywheel.R;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class NativeAdActivity extends Activity implements View.OnClickListener, h.d {

    /* renamed from: a, reason: collision with root package name */
    private ImageView f2294a;

    /* renamed from: b, reason: collision with root package name */
    private ImageView f2295b;
    private Button c;
    private TextView d;
    private TextView e;
    private String f;
    private String g;
    private NativeContentAdView h;
    private NativeAppInstallAdView i;
    private com.example.luckywheel.ui.e j;

    private void a() {
        if (this.j != null) {
            this.j.b();
        }
        finish();
    }

    public static void a(Context context) {
        Intent intent = new Intent();
        intent.setClass(context, NativeAdActivity.class);
        intent.addFlags(268435456);
        context.startActivity(intent);
    }

    @Override // com.android.volley.n.a
    public void a(s sVar) {
    }

    @Override // com.android.volley.toolbox.h.d
    public void a(h.c cVar, boolean z) {
        String c;
        if (cVar == null || cVar.b() == null || (c = cVar.c()) == null) {
            return;
        }
        if (c.equals(this.f)) {
            this.f2294a.setImageBitmap(cVar.b());
        } else if (c.equals(this.g)) {
            this.f2295b.setImageBitmap(cVar.b());
        }
    }

    public void a(NativeAppInstallAdView nativeAppInstallAdView, NativeAppInstallAd nativeAppInstallAd) {
        if (nativeAppInstallAdView == null || nativeAppInstallAd == null) {
            return;
        }
        nativeAppInstallAdView.setBodyView(this.f2294a);
        nativeAppInstallAdView.setHeadlineView(this.d);
        nativeAppInstallAdView.setIconView(this.f2295b);
        nativeAppInstallAdView.setStoreView(this.e);
        nativeAppInstallAdView.setCallToActionView(this.c);
        nativeAppInstallAdView.setNativeAd(nativeAppInstallAd);
        if (nativeAppInstallAd.getIcon() != null && nativeAppInstallAd.getImages() != null && nativeAppInstallAd.getImages().size() > 0) {
            this.f = nativeAppInstallAd.getIcon().getUri().toString();
            this.g = nativeAppInstallAd.getImages().get(0).toString();
            com.example.luckywheel.ad.a.b.a().b().a(this.f, this);
            com.example.luckywheel.ad.a.b.a().b().a(this.g, this);
            this.f2295b.setImageDrawable(nativeAppInstallAd.getIcon().getDrawable());
            this.f2294a.setImageDrawable(nativeAppInstallAd.getImages().get(0).getDrawable());
        }
        this.d.setText(nativeAppInstallAd.getHeadline());
        this.e.setText(nativeAppInstallAd.getBody());
        this.c.setText(nativeAppInstallAd.getCallToAction());
    }

    public void a(NativeContentAdView nativeContentAdView, NativeContentAd nativeContentAd) {
        if (nativeContentAdView == null || nativeContentAd == null) {
            return;
        }
        nativeContentAdView.setBodyView(this.f2294a);
        nativeContentAdView.setHeadlineView(this.d);
        nativeContentAdView.setLogoView(this.f2295b);
        nativeContentAdView.setAdvertiserView(this.e);
        nativeContentAdView.setCallToActionView(this.c);
        nativeContentAdView.setNativeAd(nativeContentAd);
        if (nativeContentAd.getLogo() != null && nativeContentAd.getImages() != null && nativeContentAd.getImages().size() > 0) {
            this.f = nativeContentAd.getLogo().getUri().toString();
            this.g = nativeContentAd.getImages().get(0).toString();
            com.example.luckywheel.ad.a.b.a().b().a(this.f, this);
            com.example.luckywheel.ad.a.b.a().b().a(this.g, this);
            this.f2295b.setImageDrawable(nativeContentAd.getLogo().getDrawable());
            this.f2294a.setImageDrawable(nativeContentAd.getImages().get(0).getDrawable());
        }
        this.d.setText(nativeContentAd.getHeadline());
        this.e.setText(nativeContentAd.getBody());
        this.c.setText(nativeContentAd.getCallToAction());
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        a();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        a();
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.native_ad_full_screen_layout);
        this.f2294a = (ImageView) findViewById(R.id.ad_cover_image);
        this.f2295b = (ImageView) findViewById(R.id.ad_icon);
        this.c = (Button) findViewById(R.id.ad_action_btn);
        this.d = (TextView) findViewById(R.id.ad_title);
        this.e = (TextView) findViewById(R.id.ad_description);
        this.h = (NativeContentAdView) findViewById(R.id.ad_content_layout);
        this.i = (NativeAppInstallAdView) findViewById(R.id.ad_install_layout);
        View findViewById = findViewById(R.id.iv_ad_inmobi_dialog_close);
        NativeAd c = c.a().c();
        c.a().d();
        this.j = c.a().b();
        if (c != null) {
            if (c instanceof NativeContentAd) {
                a(this.h, (NativeContentAd) c);
            } else if (c instanceof NativeAppInstallAd) {
                a(this.i, (NativeAppInstallAd) c);
            }
            findViewById.setOnClickListener(this);
        }
        if (this.j != null) {
            this.j.a();
        }
    }
}
