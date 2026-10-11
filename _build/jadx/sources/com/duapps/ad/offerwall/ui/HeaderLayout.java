package com.duapps.ad.offerwall.ui;

import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
import com.duapps.ad.R;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class HeaderLayout extends LinearLayout {

    /* renamed from: a, reason: collision with root package name */
    private int f2210a;

    /* renamed from: b, reason: collision with root package name */
    private int f2211b;
    private boolean c;
    private boolean d;
    private Context e;
    private List<d> f;

    public HeaderLayout(Context context) {
        super(context);
        this.f2210a = 0;
        this.f2211b = 1;
        this.c = true;
        this.d = false;
        this.f = new ArrayList();
        this.e = context;
    }

    public HeaderLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f2210a = 0;
        this.f2211b = 1;
        this.c = true;
        this.d = false;
        this.f = new ArrayList();
        this.e = context;
    }

    public List<com.duapps.ad.entity.a.a> a(int i, List<com.duapps.ad.entity.a.a> list) {
        a(i);
        List<com.duapps.ad.entity.a.a> a2 = a(list);
        this.f.clear();
        if (this.f2211b == 0) {
            if (a2.size() > 0) {
                i iVar = new i(this.e);
                a2 = iVar.a(a2);
                iVar.a();
                this.f.add(iVar);
                addView(iVar);
            }
        } else {
            View view = new View(this.e);
            view.setLayoutParams(new LinearLayout.LayoutParams(-1, com.duapps.ad.c.b.c.a(this.e, 10.0f)));
            addView(view);
        }
        if (a2.size() > 0) {
            k kVar = new k(this.e);
            kVar.a(this.f2210a);
            a2 = kVar.a(a2);
            kVar.a();
            this.f.add(kVar);
            addView(kVar);
        }
        if (a2.size() > 0) {
            j jVar = new j(this.e);
            jVar.a(this.f2210a + 6);
            a2 = jVar.a(a2);
            jVar.a();
            this.f.add(jVar);
            addView(jVar);
        }
        this.c = false;
        if (a2.size() > 0) {
            this.d = true;
            addView(inflate(this.e, R.layout.duapps_ad_offer_wall_topic_list_title, null));
        }
        return a2;
    }

    public void a() {
        if (!this.d) {
            addView(inflate(this.e, R.layout.duapps_ad_offer_wall_topic_list_title, null));
        }
    }

    public void b(int i, List<com.duapps.ad.entity.a.a> list) {
        if (i != 0) {
            throw new IllegalArgumentException("view type must be HEADER_TYPE_0.");
        }
        a(i);
        this.f.clear();
        if (this.f2211b == 0 && list.size() > 0) {
            i iVar = new i(this.e);
            iVar.c(list);
            iVar.a();
            this.f.add(iVar);
            addView(iVar);
        }
        this.c = false;
    }

    public boolean b() {
        return this.c;
    }

    public List<com.duapps.ad.entity.a.a> a(List<com.duapps.ad.entity.a.a> list) {
        if (this.f2211b == 0) {
            int i = 1;
            ArrayList arrayList = new ArrayList();
            Iterator<com.duapps.ad.entity.a.a> it = list.iterator();
            while (true) {
                int i2 = i;
                if (!it.hasNext() || i2 <= 0) {
                    break;
                }
                com.duapps.ad.entity.a.a next = it.next();
                if (TextUtils.isEmpty(next.d())) {
                    i = i2;
                } else {
                    it.remove();
                    arrayList.add(next);
                    i = i2 - 1;
                }
            }
            list.addAll(0, arrayList);
        }
        return list;
    }

    public void b(List<com.duapps.ad.entity.a.a> list) {
        if (this.f2211b == 0) {
            if (this.f.size() > 0) {
                d dVar = this.f.get(0);
                if (dVar instanceof i) {
                    ((i) dVar).d(list);
                    dVar.b();
                    return;
                }
                i iVar = new i(this.e);
                iVar.c(list);
                iVar.a();
                this.f.add(0, iVar);
                addView(iVar, 0);
                return;
            }
            com.duapps.ad.base.h.d("HeaderLayout", "addNativeData currentSize error.");
        }
    }

    public List<com.duapps.ad.entity.a.a> c(List<com.duapps.ad.entity.a.a> list) {
        List<com.duapps.ad.entity.a.a> a2 = a(list);
        switch (this.f2211b) {
            case 0:
                a2 = d(a2);
            case 1:
                a2 = e(a2);
                break;
        }
        if (a2.size() > 0) {
            this.d = true;
            addView(inflate(this.e, R.layout.duapps_ad_offer_wall_topic_list_title, null));
        }
        return a2;
    }

    public List<com.duapps.ad.entity.a.a> d(List<com.duapps.ad.entity.a.a> list) {
        int size = this.f.size();
        if (list.size() > 0) {
            if (size < 1) {
                i iVar = new i(this.e);
                list = iVar.a(list);
                iVar.a();
                this.f.add(iVar);
                addView(iVar);
            } else {
                list = this.f.get(0).b(list);
                this.f.get(0).b();
            }
        }
        if (list.size() > 0) {
            if (size < 2) {
                k kVar = new k(this.e);
                kVar.a(this.f2210a);
                list = kVar.a(list);
                kVar.a();
                this.f.add(kVar);
                addView(kVar);
            } else {
                list = this.f.get(1).b(list);
                this.f.get(1).b();
            }
        }
        if (list.size() > 0) {
            if (size < 3) {
                j jVar = new j(this.e);
                jVar.a(this.f2210a + 6);
                List<com.duapps.ad.entity.a.a> a2 = jVar.a(list);
                jVar.a();
                this.f.add(jVar);
                addView(jVar);
                return a2;
            }
            List<com.duapps.ad.entity.a.a> b2 = this.f.get(2).b(list);
            this.f.get(2).b();
            return b2;
        }
        return list;
    }

    public List<com.duapps.ad.entity.a.a> e(List<com.duapps.ad.entity.a.a> list) {
        int size = this.f.size();
        if (list.size() > 0) {
            if (size < 1) {
                k kVar = new k(this.e);
                kVar.a(this.f2210a);
                list = kVar.a(list);
                kVar.a();
                this.f.add(kVar);
                addView(kVar);
            } else {
                list = this.f.get(0).b(list);
                this.f.get(0).b();
            }
        }
        if (list.size() > 0) {
            if (size < 2) {
                j jVar = new j(this.e);
                jVar.a(this.f2210a + 6);
                List<com.duapps.ad.entity.a.a> a2 = jVar.a(list);
                jVar.a();
                this.f.add(jVar);
                addView(jVar);
                return a2;
            }
            List<com.duapps.ad.entity.a.a> b2 = this.f.get(1).b(list);
            this.f.get(1).b();
            return b2;
        }
        return list;
    }

    public boolean c() {
        switch (this.f2211b) {
            case 0:
                if (this.f.size() == 3) {
                    break;
                }
                break;
            case 1:
                if (this.f.size() == 2) {
                    break;
                }
                break;
        }
        return false;
    }

    public void a(int i) {
        switch (i) {
            case 0:
                this.f2211b = 0;
                this.f2210a = 1;
                break;
            default:
                this.f2210a = 0;
                this.f2211b = 1;
                break;
        }
    }

    public void d() {
        Iterator<d> it = this.f.iterator();
        while (it.hasNext()) {
            it.next().d();
        }
    }

    public void e() {
        Iterator<d> it = this.f.iterator();
        while (it.hasNext()) {
            it.next().e();
        }
    }

    public void f() {
        Iterator<d> it = this.f.iterator();
        while (it.hasNext()) {
            it.next().f();
        }
        this.f.clear();
    }
}
