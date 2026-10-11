package com.duapps.ad.offerwall.ui;

import android.content.Context;
import android.util.SparseBooleanArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.duapps.ad.R;
import java.util.List;

/* compiled from: OfferWallAdapter2.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class e extends BaseAdapter {

    /* renamed from: a, reason: collision with root package name */
    private Context f2233a;

    /* renamed from: b, reason: collision with root package name */
    private List<com.duapps.ad.entity.a.a> f2234b;
    private int d;
    private SparseBooleanArray c = new SparseBooleanArray();
    private int e = 0;

    public e(Context context, List<com.duapps.ad.entity.a.a> list, int i) {
        this.f2234b = list;
        this.f2233a = context;
        this.d = i;
    }

    public void a(int i) {
        this.e = i;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f2234b.size();
    }

    public void a(List<com.duapps.ad.entity.a.a> list) {
        this.f2234b.addAll(list);
        notifyDataSetChanged();
    }

    @Override // android.widget.Adapter
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public com.duapps.ad.entity.a.a getItem(int i) {
        return this.f2234b.get(i);
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        int size = this.c.size();
        com.duapps.ad.entity.a.a aVar = this.f2234b.get(i);
        if (size == i) {
            if (aVar instanceof com.duapps.ad.entity.c) {
                com.duapps.ad.stats.h.a(this.f2233a, new com.duapps.ad.stats.f(((com.duapps.ad.entity.c) aVar).a()), this.e + i);
                com.duapps.ad.base.h.c("OfferWallAdapter2", "Has reported at position: " + (this.e + i) + " ,title: " + ((com.duapps.ad.entity.c) aVar).a().c);
            }
            this.c.append(i, true);
        }
        return a(i, view, viewGroup);
    }

    private View a(int i, View view, ViewGroup viewGroup) {
        a aVar;
        if (view == null) {
            view = LayoutInflater.from(this.f2233a).inflate(R.layout.duapps_ad_offer_wall_topic_list_item, viewGroup, false);
            a aVar2 = new a();
            aVar2.f2235a = (ImageView) view.findViewById(R.id.icon);
            aVar2.f2236b = (TextView) view.findViewById(R.id.title);
            aVar2.c = (TextView) view.findViewById(R.id.desc);
            aVar2.d = (TextView) view.findViewById(R.id.btn);
            view.setTag(aVar2);
            aVar = aVar2;
        } else {
            aVar = (a) view.getTag();
        }
        com.duapps.ad.entity.a.a aVar3 = this.f2234b.get(i);
        if (aVar3 instanceof com.duapps.ad.entity.c) {
            ((com.duapps.ad.entity.c) aVar3).a().g = this.e + i;
        }
        aVar.f2235a.setBackgroundResource(R.drawable.ad_icon_bg);
        com.duapps.ad.base.a.b.a().a(aVar3.e(), aVar.f2235a);
        aVar.f2236b.setText(aVar3.h());
        aVar.c.setText(aVar3.g());
        aVar.d.setText(aVar3.f());
        return view;
    }

    /* compiled from: OfferWallAdapter2.java */
    static class a {

        /* renamed from: a, reason: collision with root package name */
        ImageView f2235a;

        /* renamed from: b, reason: collision with root package name */
        TextView f2236b;
        TextView c;
        TextView d;

        a() {
        }
    }

    public void a() {
        this.c.clear();
        this.f2234b.clear();
    }
}
