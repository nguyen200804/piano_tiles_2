package com.duapps.ad.offerwall.ui;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.support.v4.view.PagerAdapter;
import android.support.v4.view.ViewPager;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.duapps.ad.DuAdMediaView;
import com.duapps.ad.R;
import com.facebook.ads.AdChoicesView;
import com.facebook.ads.AdError;
import com.facebook.ads.NativeAd;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* compiled from: TopicBannerView.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class i extends d {
    int f;
    private ViewPager g;
    private LinearLayout h;
    private a i;
    private boolean j;
    private boolean k;
    private int l;
    private Handler m;
    private ViewPager.OnPageChangeListener n;

    @Override // com.duapps.ad.offerwall.ui.d
    public void a(int i) {
        super.a(i);
        this.l = i;
    }

    public i(Context context) {
        super(context);
        this.f = 0;
        this.j = true;
        this.k = false;
        this.l = 0;
        this.m = new Handler() { // from class: com.duapps.ad.offerwall.ui.i.1
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                removeMessages(message.what);
                if (message.what == 0) {
                    i.this.g.setCurrentItem(i.this.g.getCurrentItem() + 1, true);
                    if (i.this.j && !i.this.k) {
                        sendEmptyMessageDelayed(0, 5000L);
                        return;
                    }
                    return;
                }
                if (message.what == 1 && i.this.j && !i.this.k) {
                    sendEmptyMessageDelayed(0, 5000L);
                }
            }
        };
        this.n = new ViewPager.OnPageChangeListener() { // from class: com.duapps.ad.offerwall.ui.i.2
            @Override // android.support.v4.view.ViewPager.OnPageChangeListener
            public void onPageSelected(int i) {
                i.this.f = i;
                int a2 = i % i.this.i.a();
                int childCount = i.this.h.getChildCount();
                for (int i2 = 0; i2 < childCount; i2++) {
                    View childAt = i.this.h.getChildAt(i2);
                    if (i2 == a2) {
                        childAt.setBackgroundResource(R.drawable.duapps_ad_offer_wall_banner_indicator_bg_selected);
                    } else {
                        childAt.setBackgroundResource(R.drawable.duapps_ad_offer_wall_banner_indicator_bg_normal);
                    }
                }
            }

            @Override // android.support.v4.view.ViewPager.OnPageChangeListener
            public void onPageScrolled(int i, float f, int i2) {
            }

            @Override // android.support.v4.view.ViewPager.OnPageChangeListener
            public void onPageScrollStateChanged(int i) {
            }
        };
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            this.j = false;
            this.k = true;
            this.m.removeCallbacksAndMessages(null);
        } else if (motionEvent.getAction() == 1 || motionEvent.getAction() == 3) {
            this.j = true;
            this.k = false;
            this.m.removeCallbacksAndMessages(null);
            this.m.sendEmptyMessage(1);
        } else if (motionEvent.getAction() == 2) {
            this.j = false;
            this.k = false;
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    @Override // com.duapps.ad.offerwall.ui.d
    public void d() {
        this.m.sendEmptyMessageAtTime(1, 5000L);
    }

    @Override // com.duapps.ad.offerwall.ui.d
    public void e() {
        this.m.removeCallbacksAndMessages(null);
    }

    /* compiled from: TopicBannerView.java */
    class a extends PagerAdapter implements View.OnClickListener {

        /* renamed from: b, reason: collision with root package name */
        private Context f2247b;
        private List<com.duapps.ad.entity.a.a> c = new ArrayList();
        private List<View> d = new ArrayList();

        public a(Context context) {
            this.f2247b = context;
        }

        private void b() {
            for (com.duapps.ad.entity.a.a aVar : this.c) {
                View inflate = LayoutInflater.from(this.f2247b).inflate(R.layout.duapps_ad_offer_wall_topic_banner_item, (ViewGroup) null);
                TextView textView = (TextView) inflate.findViewById(R.id.banner_title);
                TextView textView2 = (TextView) inflate.findViewById(R.id.banner_desc);
                TextView textView3 = (TextView) inflate.findViewById(R.id.banner_btn);
                textView.setText(aVar.h());
                textView2.setText(aVar.g());
                textView3.setText(aVar.f());
                ImageView imageView = (ImageView) inflate.findViewById(R.id.banner_icon);
                ImageView imageView2 = (ImageView) inflate.findViewById(R.id.banner_img);
                DuAdMediaView duAdMediaView = (DuAdMediaView) inflate.findViewById(R.id.media_view);
                boolean z = com.duapps.ad.c.b.c.b() && (aVar instanceof com.duapps.ad.entity.d);
                imageView.setBackgroundResource(R.drawable.ad_icon_bg);
                com.duapps.ad.base.a.b.a().a(aVar.e(), imageView);
                if (z) {
                    imageView2.setVisibility(8);
                    duAdMediaView.setVisibility(0);
                    duAdMediaView.a(true);
                    duAdMediaView.a(aVar);
                    aVar.a(inflate);
                    ((LinearLayout) inflate.findViewById(R.id.banner_fb_adchoices_view)).addView(new AdChoicesView(this.f2247b, (NativeAd) aVar.k(), true));
                } else {
                    imageView2.setVisibility(0);
                    duAdMediaView.setVisibility(8);
                    imageView2.setBackgroundResource(R.drawable.ad_image_bg);
                    com.duapps.ad.base.a.b.a().a(aVar.d(), imageView2);
                    ((LinearLayout) inflate.findViewById(R.id.banner_fb_adchoices_view)).removeAllViews();
                    inflate.setOnClickListener(this);
                }
                this.d.add(inflate);
            }
        }

        @Override // android.support.v4.view.PagerAdapter
        public void destroyItem(ViewGroup viewGroup, int i, Object obj) {
        }

        @Override // android.support.v4.view.PagerAdapter
        public Object instantiateItem(ViewGroup viewGroup, int i) {
            View view = this.d.get(i % a());
            ViewParent parent = view.getParent();
            if (parent != null) {
                ((ViewGroup) parent).removeView(view);
            }
            viewGroup.addView(view);
            return view;
        }

        @Override // android.support.v4.view.PagerAdapter
        public final boolean isViewFromObject(View view, Object obj) {
            return view == obj;
        }

        public void a(List<com.duapps.ad.entity.a.a> list) {
            this.c = list;
            this.d.clear();
            b();
            notifyDataSetChanged();
        }

        @Override // android.support.v4.view.PagerAdapter
        public void notifyDataSetChanged() {
            super.notifyDataSetChanged();
            i.this.h.removeAllViews();
            int size = this.c.size();
            if (size > 1) {
                for (int i = 0; i < size; i++) {
                    View.inflate(this.f2247b, R.layout.duapps_ad_offer_wall_topic_banner_indicator, i.this.h);
                }
            }
            if (i.this.f == 0) {
                i.this.g.setCurrentItem(1000 - (1000 % size));
            } else {
                i.this.g.setCurrentItem(i.this.f);
            }
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            i.this.a(a(i.this.f));
        }

        public int a() {
            return this.c.size();
        }

        @Override // android.support.v4.view.PagerAdapter
        public int getCount() {
            int a2 = a();
            if (a2 > 1) {
                return AdError.SERVER_ERROR_CODE;
            }
            return a2;
        }

        public com.duapps.ad.entity.a.a a(int i) {
            if (this.c.size() == 0) {
                return null;
            }
            return this.c.get(i % this.c.size());
        }
    }

    @Override // com.duapps.ad.offerwall.ui.d
    public d a() {
        if (this.f2232b.size() == 0) {
            throw new IllegalArgumentException("The data empty, you should call <setData> before <createView>.");
        }
        LayoutInflater.from(this.f2231a).inflate(R.layout.duapps_ad_offer_wall_topic_banner, this);
        this.i = new a(this.f2231a);
        this.g = (ViewPager) findViewById(R.id.viewpager);
        this.g.setAdapter(this.i);
        this.g.setOnPageChangeListener(this.n);
        this.h = (LinearLayout) findViewById(R.id.indicator);
        b();
        return this;
    }

    @Override // com.duapps.ad.offerwall.ui.d
    public List<com.duapps.ad.entity.a.a> a(List<com.duapps.ad.entity.a.a> list) {
        int i = 1;
        if (list == null || list.size() == 0) {
            throw new IllegalArgumentException("You should not pass empty data to this method.");
        }
        this.d = true;
        this.f2232b.clear();
        Iterator<com.duapps.ad.entity.a.a> it = list.iterator();
        while (true) {
            int i2 = i;
            if (!it.hasNext() || i2 <= 0) {
                break;
            }
            com.duapps.ad.entity.a.a next = it.next();
            com.duapps.ad.entity.c cVar = (com.duapps.ad.entity.c) next;
            cVar.a().g = this.l;
            com.duapps.ad.stats.h.a(this.f2231a, new com.duapps.ad.stats.f(cVar.a()), this.l);
            this.f2232b.add(next);
            it.remove();
            i = i2 - 1;
            this.l++;
        }
        return list;
    }

    public void c(List<com.duapps.ad.entity.a.a> list) {
        int i = 1;
        if (list == null || list.size() == 0) {
            throw new IllegalArgumentException("You should not pass empty data to this method.");
        }
        this.d = true;
        this.f2232b.clear();
        Iterator<com.duapps.ad.entity.a.a> it = list.iterator();
        while (true) {
            int i2 = i;
            if (it.hasNext() && i2 > 0) {
                this.f2232b.add(0, it.next());
                it.remove();
                i = i2 - 1;
            } else {
                return;
            }
        }
    }

    @Override // com.duapps.ad.offerwall.ui.d
    public void b() {
        if (this.d) {
            this.d = false;
            this.i.a(this.f2232b);
            this.m.removeCallbacksAndMessages(null);
            this.m.sendEmptyMessageAtTime(1, 5000L);
        }
    }

    @Override // com.duapps.ad.offerwall.ui.d
    public List<com.duapps.ad.entity.a.a> b(List<com.duapps.ad.entity.a.a> list) {
        int i;
        if (!c()) {
            this.d = true;
            int i2 = 0;
            Iterator<com.duapps.ad.entity.a.a> it = this.f2232b.iterator();
            while (true) {
                i = i2;
                if (!it.hasNext()) {
                    break;
                }
                i2 = it.next() instanceof com.duapps.ad.entity.c ? i + 1 : i;
            }
            int i3 = 1 - i;
            Iterator<com.duapps.ad.entity.a.a> it2 = list.iterator();
            while (true) {
                int i4 = i3;
                if (!it2.hasNext() || i4 <= 0) {
                    break;
                }
                com.duapps.ad.entity.a.a next = it2.next();
                com.duapps.ad.entity.c cVar = (com.duapps.ad.entity.c) next;
                cVar.a().g = this.l;
                com.duapps.ad.stats.h.a(this.f2231a, new com.duapps.ad.stats.f(cVar.a()), this.l);
                this.f2232b.add(next);
                it2.remove();
                i3 = i4 - 1;
                this.l++;
            }
        }
        return list;
    }

    @Override // com.duapps.ad.offerwall.ui.d
    public boolean c() {
        Iterator<com.duapps.ad.entity.a.a> it = this.f2232b.iterator();
        int i = 0;
        while (it.hasNext()) {
            i = it.next() instanceof com.duapps.ad.entity.c ? i + 1 : i;
        }
        return 1 <= i;
    }

    public void d(List<com.duapps.ad.entity.a.a> list) {
        int i = 1;
        this.d = true;
        Iterator<com.duapps.ad.entity.a.a> it = list.iterator();
        while (true) {
            int i2 = i;
            if (it.hasNext() && i2 > 0) {
                this.f2232b.add(0, it.next());
                it.remove();
                i = i2 - 1;
            } else {
                return;
            }
        }
    }
}
