package com.duapps.ad.offerwall.ui;

import android.content.Context;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.duapps.ad.R;
import java.util.Iterator;
import java.util.List;

/* compiled from: TopicSixItemsView.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class k extends d implements View.OnClickListener {
    private int f;

    @Override // com.duapps.ad.offerwall.ui.d
    public void a(int i) {
        super.a(i);
        this.f = i;
    }

    public k(Context context) {
        super(context);
        this.f = 1;
    }

    @Override // com.duapps.ad.offerwall.ui.d
    public d a() {
        if (this.f2232b.size() == 0) {
            throw new IllegalArgumentException("The data empty, you should call <setData> before <createView>.");
        }
        LayoutInflater.from(this.f2231a).inflate(R.layout.duapps_ad_offer_wall_topic_6, this);
        b();
        return this;
    }

    @Override // com.duapps.ad.offerwall.ui.d
    public List<com.duapps.ad.entity.a.a> a(List<com.duapps.ad.entity.a.a> list) {
        if (list == null || list.size() == 0) {
            throw new IllegalArgumentException("You should not pass empty data to this method.");
        }
        this.d = true;
        int i = 6;
        this.f2232b.clear();
        Iterator<com.duapps.ad.entity.a.a> it = list.iterator();
        while (true) {
            int i2 = i;
            if (!it.hasNext() || i2 <= 0) {
                break;
            }
            com.duapps.ad.entity.a.a next = it.next();
            com.duapps.ad.entity.c cVar = (com.duapps.ad.entity.c) next;
            cVar.a().g = this.f;
            com.duapps.ad.stats.h.a(this.f2231a, new com.duapps.ad.stats.f(cVar.a()), this.f);
            this.f2232b.add(next);
            it.remove();
            i = i2 - 1;
            this.f++;
        }
        return list;
    }

    @Override // com.duapps.ad.offerwall.ui.d
    public void b() {
        if (this.d) {
            this.d = false;
            View findViewById = findViewById(R.id.item1);
            ImageView imageView = (ImageView) findViewById(R.id.item1_iv);
            TextView textView = (TextView) findViewById(R.id.item1_tv);
            TextView textView2 = (TextView) findViewById(R.id.item1_btn);
            View findViewById2 = findViewById(R.id.item2);
            ImageView imageView2 = (ImageView) findViewById(R.id.item2_iv);
            TextView textView3 = (TextView) findViewById(R.id.item2_tv);
            TextView textView4 = (TextView) findViewById(R.id.item2_btn);
            View findViewById3 = findViewById(R.id.item3);
            ImageView imageView3 = (ImageView) findViewById(R.id.item3_iv);
            TextView textView5 = (TextView) findViewById(R.id.item3_tv);
            TextView textView6 = (TextView) findViewById(R.id.item3_btn);
            View findViewById4 = findViewById(R.id.item4);
            ImageView imageView4 = (ImageView) findViewById(R.id.item4_iv);
            TextView textView7 = (TextView) findViewById(R.id.item4_tv);
            TextView textView8 = (TextView) findViewById(R.id.item4_btn);
            View findViewById5 = findViewById(R.id.item5);
            ImageView imageView5 = (ImageView) findViewById(R.id.item5_iv);
            TextView textView9 = (TextView) findViewById(R.id.item5_tv);
            TextView textView10 = (TextView) findViewById(R.id.item5_btn);
            View findViewById6 = findViewById(R.id.item6);
            ImageView imageView6 = (ImageView) findViewById(R.id.item6_iv);
            TextView textView11 = (TextView) findViewById(R.id.item6_tv);
            TextView textView12 = (TextView) findViewById(R.id.item6_btn);
            if (this.f2232b.size() >= 1) {
                findViewById.setVisibility(0);
                findViewById.setOnClickListener(this);
                a(imageView);
                com.duapps.ad.base.a.b.a().a(this.f2232b.get(0).e(), imageView);
                textView.setText(this.f2232b.get(0).h());
                textView2.setText(this.f2232b.get(0).f());
            }
            if (this.f2232b.size() >= 2) {
                findViewById2.setVisibility(0);
                findViewById2.setOnClickListener(this);
                a(imageView2);
                com.duapps.ad.base.a.b.a().a(this.f2232b.get(1).e(), imageView2);
                textView3.setText(this.f2232b.get(1).h());
                textView4.setText(this.f2232b.get(1).f());
            }
            if (this.f2232b.size() >= 3) {
                findViewById3.setVisibility(0);
                findViewById3.setOnClickListener(this);
                a(imageView3);
                com.duapps.ad.base.a.b.a().a(this.f2232b.get(2).e(), imageView3);
                textView5.setText(this.f2232b.get(2).h());
                textView6.setText(this.f2232b.get(2).f());
            }
            if (this.f2232b.size() >= 4) {
                findViewById4.setVisibility(0);
                findViewById4.setOnClickListener(this);
                a(imageView4);
                com.duapps.ad.base.a.b.a().a(this.f2232b.get(3).e(), imageView4);
                textView7.setText(this.f2232b.get(3).h());
                textView8.setText(this.f2232b.get(3).f());
            }
            if (this.f2232b.size() >= 5) {
                findViewById5.setVisibility(0);
                findViewById5.setOnClickListener(this);
                a(imageView5);
                com.duapps.ad.base.a.b.a().a(this.f2232b.get(4).e(), imageView5);
                textView9.setText(this.f2232b.get(4).h());
                textView10.setText(this.f2232b.get(4).f());
            }
            if (this.f2232b.size() >= 6) {
                findViewById6.setVisibility(0);
                findViewById6.setOnClickListener(this);
                a(imageView6);
                com.duapps.ad.base.a.b.a().a(this.f2232b.get(5).e(), imageView6);
                textView11.setText(this.f2232b.get(5).h());
                textView12.setText(this.f2232b.get(5).f());
            }
        }
    }

    private void a(ImageView imageView) {
        DisplayMetrics displayMetrics = this.f2231a.getResources().getDisplayMetrics();
        if (displayMetrics != null) {
            int dimensionPixelSize = ((((displayMetrics.widthPixels - (getResources().getDimensionPixelSize(R.dimen.duapps_ad_offer_wall2_topic_6_padding) * 2)) - (getResources().getDimensionPixelSize(R.dimen.duapps_ad_offer_wall2_topic_6_item_icon_margin) * 6)) - (com.duapps.ad.c.b.c.a(this.f2231a, 2.0f) * 6)) - (getResources().getDimensionPixelSize(R.dimen.duapps_ad_offer_wall2_topic_6_item_margin) * 2)) / 3;
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) imageView.getLayoutParams();
            layoutParams.width = dimensionPixelSize;
            layoutParams.height = dimensionPixelSize;
            imageView.setLayoutParams(layoutParams);
        }
    }

    @Override // com.duapps.ad.offerwall.ui.d
    public List<com.duapps.ad.entity.a.a> b(List<com.duapps.ad.entity.a.a> list) {
        if (!c()) {
            this.d = true;
            int size = 6 - this.f2232b.size();
            Iterator<com.duapps.ad.entity.a.a> it = list.iterator();
            this.f = this.e + this.f2232b.size();
            while (true) {
                int i = size;
                if (!it.hasNext() || i <= 0) {
                    break;
                }
                com.duapps.ad.entity.a.a next = it.next();
                com.duapps.ad.entity.c cVar = (com.duapps.ad.entity.c) next;
                cVar.a().g = this.f;
                com.duapps.ad.stats.h.a(this.f2231a, new com.duapps.ad.stats.f(cVar.a()), this.f);
                this.f2232b.add(next);
                it.remove();
                size = i - 1;
                this.f++;
            }
        }
        return list;
    }

    @Override // com.duapps.ad.offerwall.ui.d
    public boolean c() {
        return 6 <= this.f2232b.size();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() == R.id.item1) {
            a(this.f2232b.get(0));
            return;
        }
        if (view.getId() == R.id.item2) {
            a(this.f2232b.get(1));
            return;
        }
        if (view.getId() == R.id.item3) {
            a(this.f2232b.get(2));
            return;
        }
        if (view.getId() == R.id.item4) {
            a(this.f2232b.get(3));
        } else if (view.getId() == R.id.item5) {
            a(this.f2232b.get(4));
        } else if (view.getId() == R.id.item6) {
            a(this.f2232b.get(5));
        }
    }
}
