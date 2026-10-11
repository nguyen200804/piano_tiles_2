package com.facebook.ads.internal.b;

import android.content.Context;
import android.os.Bundle;
import android.os.Parcelable;
import android.view.View;
import com.facebook.ads.internal.util.af;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class a implements af<Bundle> {

    /* renamed from: a, reason: collision with root package name */
    private final View f2648a;

    /* renamed from: b, reason: collision with root package name */
    private final List<d> f2649b;
    private final Context c;
    private c d;

    public a(Context context, View view, List<b> list) {
        this.c = context;
        this.f2648a = view;
        this.f2649b = new ArrayList(list.size());
        Iterator<b> it = list.iterator();
        while (it.hasNext()) {
            this.f2649b.add(new d(it.next()));
        }
        this.d = new c();
    }

    public a(Context context, View view, List<b> list, Bundle bundle) {
        this.c = context;
        this.f2648a = view;
        this.f2649b = new ArrayList(list.size());
        ArrayList parcelableArrayList = bundle.getParcelableArrayList("TESTS");
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= list.size()) {
                this.d = (c) bundle.getSerializable("STATISTICS");
                return;
            } else {
                this.f2649b.add(new d(list.get(i2), (Bundle) parcelableArrayList.get(i2)));
                i = i2 + 1;
            }
        }
    }

    public void a() {
        this.d.a();
    }

    public void a(double d, double d2) {
        if (d2 >= 0.0d) {
            this.d.b(d, d2);
        }
        double c = com.facebook.ads.internal.j.a.a(this.f2648a, 0).c();
        this.d.a(d, c);
        Iterator<d> it = this.f2649b.iterator();
        while (it.hasNext()) {
            it.next().a(d, c);
        }
    }

    public c b() {
        return this.d;
    }

    @Override // com.facebook.ads.internal.util.af
    public Bundle getSaveInstanceState() {
        Bundle bundle = new Bundle();
        bundle.putSerializable("STATISTICS", this.d);
        ArrayList<? extends Parcelable> arrayList = new ArrayList<>(this.f2649b.size());
        Iterator<d> it = this.f2649b.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().getSaveInstanceState());
        }
        bundle.putParcelableArrayList("TESTS", arrayList);
        return bundle;
    }
}
