package com.facebook.ads.internal.adapters;

import android.graphics.Color;
import android.support.v7.widget.RecyclerView;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.facebook.ads.NativeAd;
import java.util.List;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class g extends RecyclerView.Adapter<com.facebook.ads.internal.view.g> {

    /* renamed from: a, reason: collision with root package name */
    private static final int f2593a = Color.argb(51, 0, 0, 0);

    /* renamed from: b, reason: collision with root package name */
    private final List<NativeAd> f2594b;
    private final int c;
    private final int d;

    public g(com.facebook.ads.internal.view.hscroll.b bVar, List<NativeAd> list) {
        float f = bVar.getContext().getResources().getDisplayMetrics().density;
        this.f2594b = list;
        this.c = Math.round(f * 1.0f);
        this.d = bVar.getChildSpacing();
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public com.facebook.ads.internal.view.g onCreateViewHolder(ViewGroup viewGroup, int i) {
        com.facebook.ads.internal.view.r rVar = new com.facebook.ads.internal.view.r(viewGroup.getContext());
        rVar.setScaleType(ImageView.ScaleType.CENTER_CROP);
        return new com.facebook.ads.internal.view.g(rVar);
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public void onBindViewHolder(final com.facebook.ads.internal.view.g gVar, int i) {
        ViewGroup.MarginLayoutParams marginLayoutParams = new ViewGroup.MarginLayoutParams(-2, -1);
        marginLayoutParams.setMargins(i == 0 ? this.d * 2 : this.d, 0, i >= this.f2594b.size() + (-1) ? this.d * 2 : this.d, 0);
        gVar.f3054a.setBackgroundColor(0);
        gVar.f3054a.setImageDrawable(null);
        gVar.f3054a.setLayoutParams(marginLayoutParams);
        gVar.f3054a.setPadding(this.c, this.c, this.c, this.c);
        NativeAd nativeAd = this.f2594b.get(i);
        nativeAd.registerViewForInteraction(gVar.f3054a);
        NativeAd.Image adCoverImage = nativeAd.getAdCoverImage();
        if (adCoverImage != null) {
            com.facebook.ads.internal.util.q qVar = new com.facebook.ads.internal.util.q(gVar.f3054a);
            qVar.a(new com.facebook.ads.internal.util.r() { // from class: com.facebook.ads.internal.adapters.g.1
                @Override // com.facebook.ads.internal.util.r
                public void a() {
                    gVar.f3054a.setBackgroundColor(g.f2593a);
                }
            });
            qVar.a(adCoverImage.getUrl());
        }
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.f2594b.size();
    }
}
