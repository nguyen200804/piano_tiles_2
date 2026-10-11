package com.mopub.dg.c;

import android.content.Context;
import com.mopub.dg.adapi.AdData;
import com.mopub.dg.adapi.DGAdApi;
import java.util.List;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
final class n implements k {

    /* renamed from: a, reason: collision with root package name */
    DGAdApi f4277a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ String f4278b;
    final /* synthetic */ m c;

    n(m mVar, String str) {
        Context context;
        this.c = mVar;
        this.f4278b = str;
        context = this.c.f4276b;
        this.f4277a = DGAdApi.getInstance(context);
    }

    @Override // com.mopub.dg.c.k
    public final void a() {
        if (this.f4277a != null && this.f4277a.getStatusListener() != null) {
            this.f4277a.getStatusListener().onStatusEvent("Track_Fail", this.f4278b);
        }
        com.mopub.dg.d.n.a("Track_Fail" + this.f4278b);
    }

    @Override // com.mopub.dg.c.k
    public final void a(List list) {
        Context context;
        if (list == null || list.size() == 0) {
            if (this.f4277a != null && this.f4277a.getStatusListener() != null) {
                this.f4277a.getStatusListener().onStatusEvent("Track_No_AD", this.f4278b);
            }
            com.mopub.dg.d.n.a("Track_No_AD" + this.f4278b);
            return;
        }
        if (list.size() > 0) {
            AdData adData = (AdData) list.get(0);
            context = this.c.f4276b;
            com.mopub.dg.e.a.a.l.a(adData, context);
            if (this.f4277a != null && this.f4277a.getStatusListener() != null) {
                this.f4277a.getStatusListener().onStatusEvent("Track_Success", this.f4278b);
            }
            com.mopub.dg.d.n.a("Track_Success" + this.f4278b);
            try {
                String clickRecordUrl = adData.getClickRecordUrl();
                if (clickRecordUrl == null || clickRecordUrl == "") {
                    return;
                }
                com.mopub.dg.d.k.a(clickRecordUrl, new o(this));
            } catch (Exception e) {
                com.mopub.dg.d.n.a(e);
            }
        }
    }
}
