package com.duapps.ad.offerwall.ui;

import android.content.Context;
import android.util.AttributeSet;
import android.view.animation.AnimationUtils;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.duapps.ad.R;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class LoadingView extends LinearLayout {

    /* renamed from: a, reason: collision with root package name */
    private ImageView f2212a;

    /* renamed from: b, reason: collision with root package name */
    private TextView f2213b;
    private int c;

    public LoadingView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public LoadingView(Context context) {
        super(context, null);
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        this.f2212a = (ImageView) findViewById(R.id.duapps_ad_offer_wall_loading_iv);
        this.f2213b = (TextView) findViewById(R.id.duapps_ad_offer_wall_loading_tip_tv);
    }

    public int a() {
        return this.c;
    }

    public void a(int i) {
        this.c = i;
        switch (i) {
            case 0:
                setVisibility(8);
                break;
            case 1:
                setVisibility(0);
                this.f2212a.setImageResource(R.drawable.duapps_ad_offer_wall_indeterminate_loading);
                this.f2212a.startAnimation(AnimationUtils.loadAnimation(getContext(), R.anim.duapps_ad_offer_wall_indeterminate_rotate));
                this.f2213b.setText(R.string.duapps_ad_offer_wall_loading);
                break;
            case 2:
                this.f2212a.clearAnimation();
                setVisibility(0);
                this.f2212a.setImageResource(R.drawable.duapps_ad_offer_wall_loading_retry);
                this.f2213b.setText(R.string.duapps_ad_offer_wall_retry);
                break;
        }
    }
}
