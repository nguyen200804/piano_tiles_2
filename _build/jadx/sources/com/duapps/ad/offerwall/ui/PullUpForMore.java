package com.duapps.ad.offerwall.ui;

import android.content.Context;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.duapps.ad.R;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class PullUpForMore extends RelativeLayout {

    /* renamed from: a, reason: collision with root package name */
    private TextView f2223a;

    /* renamed from: b, reason: collision with root package name */
    private ImageView f2224b;
    private int c;
    private Resources d;

    public PullUpForMore(Context context) {
        this(context, null);
    }

    public PullUpForMore(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.c = 0;
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        this.f2223a = (TextView) findViewById(R.id.duapps_ad_offer_wall_more_footer_tip);
        this.f2224b = (ImageView) findViewById(R.id.duapps_ad_offer_wall_more_footer_pb);
        this.d = getContext().getResources();
    }

    public void a(int i) {
        this.c = i;
        switch (this.c) {
            case 0:
                b();
                break;
            case 1:
            case 2:
                c();
                break;
            case 3:
                d();
                break;
            case 4:
                e();
                break;
        }
    }

    public int a() {
        return this.c;
    }

    private void b() {
        this.f2224b.clearAnimation();
        this.f2223a.setText(this.d.getString(R.string.duapps_ad_offer_wall_pull_refresh));
        this.f2224b.setVisibility(8);
    }

    private void c() {
        Animation loadAnimation = AnimationUtils.loadAnimation(getContext(), R.anim.duapps_ad_offer_wall_indeterminate_rotate);
        this.f2224b.setVisibility(0);
        this.f2224b.startAnimation(loadAnimation);
        this.f2223a.setText(this.d.getString(R.string.duapps_ad_offer_wall_footer_loading));
    }

    private void d() {
        this.f2224b.clearAnimation();
        this.f2224b.setVisibility(8);
        this.f2223a.setText(this.d.getString(R.string.duapps_ad_offer_wall_footer_end));
    }

    private void e() {
    }
}
