package com.mopub.nativesdk.core;

import android.content.Context;
import com.mopub.nativesdk.Campaign;
import com.mopub.nativesdk.a.b;
import com.mopub.nativesdk.a.d;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* compiled from: BTManager.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
final class u implements com.mopub.nativesdk.c.l {

    /* renamed from: a, reason: collision with root package name */
    private /* synthetic */ j f4678a;

    u(j jVar) {
        this.f4678a = jVar;
    }

    @Override // com.mopub.nativesdk.c.l
    public final void a() {
    }

    @Override // com.mopub.nativesdk.c.l
    public final void a(Object obj) {
        int i;
        Context context;
        List list = (List) obj;
        if (list != null && list.size() > 0) {
            new StringBuilder("BTManager 2  load: OnLoadFinish: ").append(list.size());
            ArrayList<String> arrayList = new ArrayList();
            j jVar = this.f4678a;
            i = this.f4678a.f;
            jVar.f = i + list.size();
            if (list != null && this.f4678a.f4666a != null && list.size() > 0 && this.f4678a.f4666a.size() > 0) {
                for (int size = list.size() - 1; size >= 0; size--) {
                    Iterator<Campaign> it = this.f4678a.f4666a.iterator();
                    while (true) {
                        if (it.hasNext()) {
                            if (((Campaign) list.get(size)).getId() == it.next().getId()) {
                                list.remove(size);
                                break;
                            }
                        }
                    }
                }
            }
            context = this.f4678a.d;
            Iterator<x> it2 = b.a(d.a(context)).a().iterator();
            while (it2.hasNext()) {
                arrayList.add(it2.next().a());
            }
            for (String str : arrayList) {
                int size2 = list.size() - 1;
                while (true) {
                    if (size2 < 0) {
                        break;
                    }
                    String packageName = ((Campaign) list.get(size2)).getPackageName();
                    if (packageName != null && packageName.equals(str)) {
                        list.remove(size2);
                        break;
                    }
                    size2--;
                }
            }
            Iterator it3 = list.iterator();
            while (it3.hasNext()) {
                this.f4678a.f4666a.add((Campaign) it3.next());
            }
            new StringBuilder("BTManager 2  load: OnLoadFinish: save: ").append(list.size());
        }
    }

    @Override // com.mopub.nativesdk.c.l
    public final void a(String str) {
    }

    @Override // com.mopub.nativesdk.c.l
    public final void b() {
    }
}
