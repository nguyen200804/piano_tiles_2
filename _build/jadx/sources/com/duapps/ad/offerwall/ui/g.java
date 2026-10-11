package com.duapps.ad.offerwall.ui;

import android.content.Context;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentPagerAdapter;
import android.support.v4.app.FragmentTransaction;
import android.view.View;
import android.view.ViewGroup;
import com.duapps.ad.R;

/* compiled from: SlidePageFragmentAdapter.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class g extends FragmentPagerAdapter {

    /* renamed from: a, reason: collision with root package name */
    private Context f2240a;

    /* renamed from: b, reason: collision with root package name */
    private final FragmentManager f2241b;
    private FragmentTransaction c;
    private Fragment d;
    private int e;

    public g(Context context, FragmentManager fragmentManager, int i) {
        super(fragmentManager);
        this.c = null;
        this.d = null;
        this.f2240a = context;
        this.f2241b = fragmentManager;
        this.e = i;
    }

    @Override // android.support.v4.app.FragmentPagerAdapter
    public Fragment getItem(int i) {
        Fragment bVar;
        Bundle bundle = new Bundle();
        switch (i) {
            case 0:
                bVar = new f();
                bundle.putInt("pos", 0);
                break;
            case 1:
                bVar = new b();
                bundle.putInt("pos", 1);
                break;
            default:
                bVar = new a();
                bundle.putInt("pos", 2);
                break;
        }
        bundle.putInt("pid", this.e);
        bVar.setArguments(bundle);
        return bVar;
    }

    @Override // android.support.v4.view.PagerAdapter
    public int getCount() {
        return 3;
    }

    @Override // android.support.v4.view.PagerAdapter
    public CharSequence getPageTitle(int i) {
        switch (i) {
            case 0:
                return this.f2240a.getString(R.string.duapps_ad_offer_wall_tab_recommend);
            case 1:
                return this.f2240a.getString(R.string.duapps_ad_offer_wall_tab_games);
            default:
                return this.f2240a.getString(R.string.duapps_ad_offer_wall_tab_apps);
        }
    }

    @Override // android.support.v4.app.FragmentPagerAdapter, android.support.v4.view.PagerAdapter
    public Object instantiateItem(ViewGroup viewGroup, int i) {
        if (this.c == null) {
            this.c = this.f2241b.beginTransaction();
        }
        Fragment findFragmentByTag = this.f2241b.findFragmentByTag(b(i));
        if (findFragmentByTag != null) {
            this.c.attach(findFragmentByTag);
        } else {
            findFragmentByTag = getItem(i);
            this.c.add(viewGroup.getId(), findFragmentByTag, b(i));
        }
        if (findFragmentByTag != this.d) {
            findFragmentByTag.setMenuVisibility(false);
            findFragmentByTag.setUserVisibleHint(false);
        }
        return findFragmentByTag;
    }

    @Override // android.support.v4.app.FragmentPagerAdapter, android.support.v4.view.PagerAdapter
    public void destroyItem(ViewGroup viewGroup, int i, Object obj) {
        if (this.c == null) {
            this.c = this.f2241b.beginTransaction();
        }
        this.c.detach((Fragment) obj);
    }

    @Override // android.support.v4.app.FragmentPagerAdapter, android.support.v4.view.PagerAdapter
    public void setPrimaryItem(ViewGroup viewGroup, int i, Object obj) {
        Fragment fragment = (Fragment) obj;
        if (fragment != this.d) {
            if (this.d != null) {
                this.d.setMenuVisibility(false);
                this.d.setUserVisibleHint(false);
            }
            if (fragment != null) {
                fragment.setMenuVisibility(true);
                fragment.setUserVisibleHint(true);
            }
            this.d = fragment;
        }
    }

    @Override // android.support.v4.app.FragmentPagerAdapter, android.support.v4.view.PagerAdapter
    public void finishUpdate(ViewGroup viewGroup) {
        if (this.c != null) {
            this.c.commitAllowingStateLoss();
            this.c = null;
            this.f2241b.executePendingTransactions();
        }
    }

    @Override // android.support.v4.app.FragmentPagerAdapter, android.support.v4.view.PagerAdapter
    public boolean isViewFromObject(View view, Object obj) {
        return ((Fragment) obj).getView() == view;
    }

    public h a(int i) {
        return (h) this.f2241b.findFragmentByTag(b(i));
    }

    private static String b(int i) {
        return "android:switcher:dianxin:long" + i;
    }
}
