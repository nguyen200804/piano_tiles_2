package com.duapps.ad.offerwall.ui;

import android.app.Activity;
import android.os.Bundle;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.ListAdapter;
import android.widget.ListView;
import com.duapps.ad.R;
import java.util.ArrayList;
import java.util.List;

/* compiled from: RecommendFragment.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class f extends h implements View.OnClickListener, c {
    private com.duapps.ad.offerwall.a f;
    private ListView g;
    private LoadingView h;
    private PullUpForMore i;
    private HeaderLayout j;
    private e k;
    private com.duapps.ad.stats.d o;
    private ArrayList<com.duapps.ad.entity.a.a> l = new ArrayList<>();
    private int m = 0;
    private int n = 0;
    private boolean p = true;
    private boolean q = true;

    @Override // android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View inflate = layoutInflater.inflate(R.layout.duapps_ad_offer_wall_recommend_layout, viewGroup, false);
        a(inflate, layoutInflater);
        this.f = new com.duapps.ad.offerwall.a(a(this.f2242a), this.f2242a, this, this.d);
        return inflate;
    }

    private int a(int i) {
        return (i * 1000) + 1;
    }

    private void a(View view, LayoutInflater layoutInflater) {
        this.g = (ListView) view.findViewById(R.id.duapps_ad_offer_wall_lv);
        this.h = (LoadingView) view.findViewById(R.id.duapps_ad_offer_wall_loading);
        this.j = (HeaderLayout) layoutInflater.inflate(R.layout.duapps_ad_offer_wall_fragment_header_container, (ViewGroup) this.g, false);
        this.i = (PullUpForMore) layoutInflater.inflate(R.layout.duapps_ad_offer_wall_load_more_footer, (ViewGroup) this.g, false);
        this.k = new e(this.d, this.l, this.f2242a);
        this.k.a(11);
        this.g.addHeaderView(this.j);
        this.g.addFooterView(this.i);
        this.g.setAdapter((ListAdapter) this.k);
        new Handler().post(new Runnable() { // from class: com.duapps.ad.offerwall.ui.f.1
            @Override // java.lang.Runnable
            public void run() {
                f.this.g.requestFocusFromTouch();
                f.this.g.setSelection(0);
            }
        });
        this.g.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: com.duapps.ad.offerwall.ui.f.2
            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view2, int i, long j) {
                int headerViewsCount;
                if (i >= f.this.g.getHeaderViewsCount() && (headerViewsCount = i - f.this.g.getHeaderViewsCount()) < f.this.k.getCount()) {
                    com.duapps.ad.entity.a.a item = f.this.k.getItem(headerViewsCount);
                    if (item instanceof com.duapps.ad.entity.c) {
                        if (f.this.o == null) {
                            f.this.o = new com.duapps.ad.stats.d(f.this.d);
                        }
                        f.this.o.a(new com.duapps.ad.stats.f(((com.duapps.ad.entity.c) item).a(), "offerwall"));
                    }
                }
            }
        });
        this.g.setOnScrollListener(new AbsListView.OnScrollListener() { // from class: com.duapps.ad.offerwall.ui.f.3
            @Override // android.widget.AbsListView.OnScrollListener
            public void onScrollStateChanged(AbsListView absListView, int i) {
                if (f.this.m == f.this.n && i == 0 && f.this.i.a() != 3) {
                    f.this.f.a(f.this.f.f2199a + 1);
                }
            }

            @Override // android.widget.AbsListView.OnScrollListener
            public void onScroll(AbsListView absListView, int i, int i2, int i3) {
                f.this.m = (i + i2) - (f.this.g.getHeaderViewsCount() + f.this.g.getFooterViewsCount());
            }
        });
        this.h.setOnClickListener(this);
    }

    @Override // com.duapps.ad.offerwall.ui.c
    public void a(boolean z) {
        if (z || this.h.a() == 2) {
            this.h.a(1);
        } else {
            this.i.a(2);
        }
    }

    @Override // com.duapps.ad.offerwall.ui.c
    public void a(boolean z, long j) {
        if (z) {
            this.f.b();
            this.g.setVisibility(0);
            this.h.a(0);
            if (this.q) {
                this.q = false;
                com.duapps.ad.stats.c.c(this.d, a(this.f2242a), j);
            }
        }
        this.i.a(0);
    }

    @Override // com.duapps.ad.offerwall.ui.c
    public void a() {
        this.i.a(3);
    }

    @Override // com.duapps.ad.offerwall.ui.c
    public void a(boolean z, int i, long j) {
        if (z) {
            this.f.b();
            this.h.a(2);
            if (this.q) {
                this.q = false;
                com.duapps.ad.stats.c.a(this.d, a(this.f2242a), j, i);
                return;
            }
            return;
        }
        this.i.a(3);
    }

    @Override // com.duapps.ad.offerwall.ui.c
    public void a(int i, long j) {
        if (this.q) {
            this.q = false;
            com.duapps.ad.stats.c.a(this.d, a(this.f2242a), j, i);
        }
        this.g.setVisibility(0);
        this.h.a(0);
        this.i.a(3);
    }

    @Override // com.duapps.ad.offerwall.ui.c
    public void a(List<com.duapps.ad.entity.a.a> list) {
        if (this.j.b()) {
            list = this.j.a(0, list);
        } else if (!this.j.c()) {
            list = this.j.c(list);
        }
        this.k.a(list);
        this.n = this.k.getCount();
    }

    @Override // com.duapps.ad.offerwall.ui.c
    public void b(List<com.duapps.ad.entity.a.a> list) {
        if (this.j.b()) {
            this.j.b(0, list);
        } else {
            this.j.b(list);
        }
    }

    @Override // com.duapps.ad.offerwall.ui.h
    public void b(boolean z) {
        if (this.f2243b != z) {
            this.f2243b = z;
            if (z) {
                if (this.p) {
                    this.p = false;
                    this.f.a();
                    return;
                } else {
                    this.j.d();
                    return;
                }
            }
            this.j.e();
        }
    }

    @Override // android.support.v4.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.f.c();
        this.k.a();
        this.j.f();
        com.duapps.ad.c.b.c.a((Activity) getActivity());
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view == this.h && this.h.a() == 2) {
            this.f.a();
        }
    }

    public boolean b() {
        if (!this.q) {
            return false;
        }
        this.q = false;
        return this.h.a() == 1;
    }
}
