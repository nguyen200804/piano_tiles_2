package com.cmcm.orion.utils.internal;

import android.os.AsyncTask;
import android.text.TextUtils;
import com.cmcm.orion.picks.a.a.f;
import com.cmcm.orion.picks.a.a.h;
import com.cmcm.orion.picks.impl.a;
import java.util.ArrayList;
import java.util.List;

/* compiled from: BusinessDataReportHelper.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class b extends AsyncTask<Void, Void, Void> {

    /* renamed from: a, reason: collision with root package name */
    private f f1117a;

    /* renamed from: b, reason: collision with root package name */
    private List<com.cmcm.orion.picks.a.a.e> f1118b;
    private a.InterfaceC0019a c;

    public final void a(com.cmcm.orion.picks.a.a.e eVar, f fVar) {
        this.f1117a = fVar;
        this.f1118b = new ArrayList();
        this.f1118b.add(eVar);
    }

    public final void a(a.InterfaceC0019a interfaceC0019a) {
        this.c = interfaceC0019a;
    }

    @Override // android.os.AsyncTask
    protected final /* synthetic */ Void doInBackground(Void[] voidArr) {
        String str;
        if (this.f1117a != null) {
            String a2 = this.f1117a.a();
            if (this.f1118b == null || this.f1118b.size() == 0) {
                str = null;
            } else {
                StringBuilder sb = new StringBuilder();
                sb.append("&attach=[");
                boolean z = true;
                for (com.cmcm.orion.picks.a.a.e eVar : this.f1118b) {
                    if (z) {
                        z = false;
                    } else {
                        sb.append(",");
                    }
                    sb.append(eVar.a());
                }
                sb.append("]");
                str = sb.toString();
            }
            if (!TextUtils.isEmpty(a2) && !TextUtils.isEmpty(str)) {
                com.cmcm.orion.utils.d.a(h.j(), a2 + str, this.c);
            }
        }
        return null;
    }
}
