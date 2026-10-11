package com.cmcm.orion.picks.b;

import android.content.Context;
import android.os.Build;
import android.support.v4.media.TransportMediator;
import android.text.TextUtils;
import android.view.View;
import com.cmcm.orion.adsdk.b;
import com.cmcm.orion.picks.impl.a;
import com.cmcm.orion.picks.impl.g;
import com.cmcm.orion.picks.impl.h;
import com.mopub.mobileads.BaseVideoPlayerActivity;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

/* compiled from: BrandVideoCardAd.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class a {

    /* renamed from: a, reason: collision with root package name */
    private static final String f855a = a.class.getSimpleName();
    private long A;
    private long B;
    private long C;

    /* renamed from: b, reason: collision with root package name */
    private Context f856b;
    private String c;
    private InterfaceC0013a d;
    private b e;
    private c f;
    private com.cmcm.orion.picks.a.a.a g;
    private com.cmcm.orion.picks.impl.b j;
    private h k;
    private String t;
    private int h = 0;
    private int i = 1;
    private int l = 5;
    private boolean m = true;
    private boolean n = false;
    private boolean o = true;
    private boolean p = false;
    private boolean q = false;
    private boolean r = false;
    private boolean s = false;
    private int u = 0;
    private com.cmcm.orion.picks.impl.f v = new com.cmcm.orion.picks.impl.f();
    private int w = 20;
    private float x = 0.0f;
    private e y = e.LOAD;
    private f z = f.IDLE;

    /* compiled from: BrandVideoCardAd.java */
    /* renamed from: com.cmcm.orion.picks.b.a$a, reason: collision with other inner class name */
    public interface InterfaceC0013a {
        void a();

        void a(String str);

        void b();

        void c();

        void d();
    }

    /* compiled from: BrandVideoCardAd.java */
    public interface b extends d {
        void a(View view, int i);
    }

    /* compiled from: BrandVideoCardAd.java */
    public interface c extends d {
        void a(int i);
    }

    /* compiled from: BrandVideoCardAd.java */
    public interface d {
        void b(int i);
    }

    /* compiled from: BrandVideoCardAd.java */
    enum e {
        LOAD,
        PRELOAD
    }

    static /* synthetic */ int d(a aVar) {
        int i = aVar.h;
        aVar.h = i + 1;
        return i;
    }

    static /* synthetic */ boolean k(a aVar) {
        aVar.p = true;
        return true;
    }

    /* compiled from: BrandVideoCardAd.java */
    enum f {
        IDLE(0),
        LOADING_AD(1),
        AD_LOADED(2),
        LOADING_MATERIAL(3),
        MATERIAL_LOADED(4),
        READY(5),
        ERROR(6);

        private int h;

        f(int i2) {
            this.h = i2;
        }

        static /* synthetic */ boolean a(f fVar, f fVar2) {
            return fVar2 == null || fVar.h > fVar2.h;
        }
    }

    public a(Context context, String str, InterfaceC0013a interfaceC0013a) {
        this.f856b = context;
        this.c = str;
        this.d = interfaceC0013a;
        com.cmcm.orion.picks.a.a.h.d(str);
        if (!com.cmcm.orion.picks.impl.a.a.f920a) {
            com.cmcm.orion.utils.a.b(new Runnable() { // from class: com.cmcm.orion.picks.b.a.1
                @Override // java.lang.Runnable
                public void run() {
                    com.cmcm.orion.picks.impl.a.a.a(a.this.f856b);
                }
            });
        }
    }

    public void a(b bVar) {
        if (!com.cmcm.orion.utils.c.c(this.f856b)) {
            b(115);
            return;
        }
        if (Build.VERSION.SDK_INT < 14) {
            b(TransportMediator.KEYCODE_MEDIA_RECORD);
            return;
        }
        this.y = e.LOAD;
        this.e = bVar;
        this.A = System.currentTimeMillis();
        a(b.a.BS_LOAD, 0, 0L);
        if (p()) {
            q();
        }
    }

    public void a() {
        if (this.j != null) {
            this.j.b_();
        }
    }

    public boolean b() {
        return this.n;
    }

    public boolean c() {
        return this.g != null && this.g.y() && !this.p && com.cmcm.orion.utils.c.c(this.f856b);
    }

    public h d() {
        return this.k;
    }

    public void a(InterfaceC0013a interfaceC0013a) {
        if (this.d == null) {
            this.d = interfaceC0013a;
        }
    }

    public View e() {
        if (this.j != null) {
            return this.j;
        }
        return null;
    }

    public g f() {
        if (this.j != null) {
            return this.j.d();
        }
        return null;
    }

    public void a(boolean z) {
        this.v.g.f974a = z;
    }

    public void b(boolean z) {
        this.v.h.f974a = z;
    }

    public void c(boolean z) {
        this.v.f973b.f974a = z;
    }

    public void d(boolean z) {
        this.v.d.f974a = z;
    }

    public void a(float f2) {
        this.x = f2;
        if (this.j != null) {
            this.j.a(this.x);
        }
    }

    public float g() {
        return this.x;
    }

    public void h() {
        if (this.j != null) {
            this.j.a();
        }
    }

    public void i() {
        if (this.j != null) {
            this.j.a_();
        }
    }

    private boolean p() {
        if (!TextUtils.isEmpty(this.c) && this.f856b != null) {
            return true;
        }
        b(138);
        return false;
    }

    private void q() {
        if (!com.cmcm.orion.utils.c.c(this.f856b)) {
            b(115);
            return;
        }
        if (f.a(this.z, f.IDLE)) {
            b(120);
            return;
        }
        this.z = f.LOADING_AD;
        this.C = System.currentTimeMillis();
        a(b.a.LOAD_PICKS_AD_START, 0, 0L);
        com.cmcm.orion.picks.a.a aVar = new com.cmcm.orion.picks.a.a(this.c);
        aVar.b(this.u);
        aVar.a(this.w);
        if (this.y == e.PRELOAD) {
            aVar.a();
        }
        aVar.a(new a.InterfaceC0019a() { // from class: com.cmcm.orion.picks.b.a.2
            @Override // com.cmcm.orion.picks.impl.a.InterfaceC0019a
            public void a(com.cmcm.orion.picks.a.b bVar) {
                String unused = a.f855a;
                a.this.z = f.AD_LOADED;
                ArrayList arrayList = new ArrayList(bVar.a());
                if (arrayList.isEmpty()) {
                    a.this.b(125);
                    return;
                }
                a.this.a(b.a.LOAD_PICKS_AD_SUCCESS, 0, System.currentTimeMillis() - a.this.C);
                String unused2 = a.f855a;
                new StringBuilder("onAdLoaded: loaded ad count = ").append(arrayList.size());
                ArrayList a2 = a.a(a.this, arrayList);
                if (a.this.t != null && !a.this.t.isEmpty()) {
                    a2 = a.b(a.this, a2);
                }
                if (a2.isEmpty()) {
                    a.this.a(b.a.LOAD_PICKS_AD_FAIL, 146, System.currentTimeMillis() - a.this.C);
                    String unused3 = a.f855a;
                    a.this.b(121);
                    return;
                }
                a.a(a.this, (List) a2);
            }

            @Override // com.cmcm.orion.picks.impl.a.InterfaceC0019a
            public void b(com.cmcm.orion.picks.a.b bVar) {
                String unused = a.f855a;
                new StringBuilder("onFailed: loadAdList error = ").append(bVar.b());
                a.this.z = f.ERROR;
                a.this.a(b.a.LOAD_PICKS_AD_FAIL, bVar.b(), System.currentTimeMillis() - a.this.C);
                a.this.b(bVar.b());
            }
        });
        aVar.b();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(final com.cmcm.orion.picks.a.a.a aVar) {
        com.cmcm.orion.utils.a.a(new Runnable() { // from class: com.cmcm.orion.picks.b.a.3
            @Override // java.lang.Runnable
            public void run() {
                com.cmcm.orion.picks.a.b.a(aVar.d(), aVar, com.cmcm.orion.adsdk.a.ABANDON);
            }
        });
    }

    public void a(int i) {
        this.u = i;
    }

    public boolean j() {
        return this.m;
    }

    public boolean k() {
        return this.q;
    }

    private static boolean a(String str, String str2) {
        if (TextUtils.isEmpty(str2) || a(str)) {
            return true;
        }
        try {
            JSONArray jSONArray = new JSONArray(new JSONObject(str).optString("app", ""));
            for (int i = 0; i < jSONArray.length(); i++) {
                new StringBuilder("check app pkgName:").append(str2).append(",app str:").append(jSONArray.get(i));
                if (str2.equals(jSONArray.get(i))) {
                    return true;
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        return false;
    }

    private static boolean a(String str) {
        if (TextUtils.isEmpty(str)) {
            return true;
        }
        try {
            String optString = new JSONObject(str).optString("app", "");
            if (TextUtils.isEmpty(optString)) {
                return true;
            }
            JSONArray jSONArray = new JSONArray(optString);
            if (jSONArray.length() <= 0) {
                return true;
            }
            for (int i = 0; i < jSONArray.length(); i++) {
                if (!TextUtils.isEmpty((String) jSONArray.get(i))) {
                    return false;
                }
            }
            return true;
        } catch (Exception e2) {
            e2.printStackTrace();
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(final int i) {
        final d dVar = null;
        switch (this.y) {
            case LOAD:
                dVar = this.e;
                a(b.a.BS_LOAD_FAIL, i, System.currentTimeMillis() - this.A);
                break;
            case PRELOAD:
                dVar = this.f;
                a(b.a.BS_PRELOAD_FAIL, i, System.currentTimeMillis() - this.B);
                break;
        }
        if (dVar != null) {
            com.cmcm.orion.utils.e.a(new Runnable() { // from class: com.cmcm.orion.picks.b.a.8
                @Override // java.lang.Runnable
                public void run() {
                    if (dVar != null) {
                        dVar.b(i);
                    }
                }
            });
        }
    }

    public String l() {
        return this.c;
    }

    public boolean m() {
        return this.o;
    }

    public void a(b.a aVar, int i, long j) {
        HashMap hashMap = new HashMap();
        hashMap.put("video_length", "");
        hashMap.put(BaseVideoPlayerActivity.VIDEO_URL, "");
        a.AnonymousClass1.a(aVar, this.g, this.c, i, j, hashMap);
        com.cmcm.orion.adsdk.e.a(aVar, this.c, "brand", j, String.valueOf(i), hashMap);
    }

    public void a(b.a aVar, int i, long j, long j2, String str) {
        HashMap hashMap = new HashMap();
        hashMap.put("video_length", String.valueOf(j2));
        hashMap.put(BaseVideoPlayerActivity.VIDEO_URL, str);
        a.AnonymousClass1.a(aVar, this.g, this.c, i, j, hashMap);
        com.cmcm.orion.adsdk.e.a(aVar, this.c, "brand", j, String.valueOf(i), hashMap);
    }

    public void n() {
        this.d = null;
        this.e = null;
        this.f = null;
        if (this.j != null) {
            this.j = null;
        }
    }

    static /* synthetic */ ArrayList a(a aVar, ArrayList arrayList) {
        boolean z;
        e eVar = e.PRELOAD;
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            com.cmcm.orion.picks.a.a.a aVar2 = (com.cmcm.orion.picks.a.a.a) it.next();
            if (aVar2 != null) {
                switch (aVar2.t()) {
                    case 50012:
                        if (!TextUtils.isEmpty(aVar2.E()) && !aVar.s) {
                            z = true;
                            break;
                        } else {
                            z = false;
                            break;
                        }
                    case 50013:
                        if (!TextUtils.isEmpty(aVar2.E()) && !aVar.r) {
                            z = true;
                            break;
                        } else {
                            z = false;
                            break;
                        }
                    default:
                        new StringBuilder("checkAdIsValid: invalid app show type = ").append(aVar2.t());
                        z = false;
                        break;
                }
            } else {
                z = false;
            }
            if (!z) {
                new StringBuilder("filterAdList: filter invalid ad, title = ").append(aVar2.i());
                aVar.a(aVar2);
                it.remove();
            }
        }
        return arrayList;
    }

    static /* synthetic */ ArrayList b(a aVar, ArrayList arrayList) {
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            com.cmcm.orion.picks.a.a.a aVar2 = (com.cmcm.orion.picks.a.a.a) it.next();
            new StringBuilder("app locker get ad:").append(aVar2.l());
            if (!a(aVar2.D(), aVar.t)) {
                it.remove();
            }
        }
        return arrayList;
    }

    static /* synthetic */ void a(a aVar, final List list) {
        aVar.z = f.LOADING_MATERIAL;
        if (list == null || list.isEmpty()) {
            aVar.b(125);
        } else {
            final com.cmcm.orion.picks.a.a.a aVar2 = (com.cmcm.orion.picks.a.a.a) list.remove(0);
            com.cmcm.orion.picks.impl.a.a(aVar, aVar.f856b, aVar2, new a.InterfaceC0019a() { // from class: com.cmcm.orion.picks.b.a.4
                /* JADX WARN: Multi-variable type inference failed */
                @Override // com.cmcm.orion.picks.impl.a.InterfaceC0019a
                public void a(HashMap<String, String> hashMap, h hVar) {
                    com.cmcm.orion.picks.impl.c cVar;
                    a.d(a.this);
                    String unused = a.f855a;
                    new StringBuilder("onSuccess: already loaded ").append(a.this.h).append(" ad; remain ").append(list.size()).append(" ad");
                    switch (AnonymousClass9.f869a[a.this.y.ordinal()]) {
                        case 1:
                            InterfaceC0013a g = a.g(a.this);
                            Context context = a.this.f856b;
                            a aVar3 = a.this;
                            com.cmcm.orion.picks.a.a.a aVar4 = aVar2;
                            com.cmcm.orion.picks.impl.f fVar = a.this.v;
                            String str = a.this.t;
                            if (context != null && aVar3 != null && aVar4 != null && hashMap != null) {
                                switch (aVar4.t()) {
                                    case 50012:
                                        com.cmcm.orion.picks.impl.d dVar = new com.cmcm.orion.picks.impl.d(context, fVar);
                                        dVar.a(g);
                                        boolean a2 = dVar.a(aVar3, aVar3.l(), aVar4, hashMap, hVar, str);
                                        cVar = dVar;
                                        if (!a2) {
                                            cVar = null;
                                            break;
                                        }
                                        break;
                                    case 50013:
                                        com.cmcm.orion.picks.impl.c cVar2 = new com.cmcm.orion.picks.impl.c(context, fVar);
                                        cVar2.a(g);
                                        boolean a3 = cVar2.a(aVar3, aVar3.l(), aVar4, hashMap, hVar, str);
                                        cVar = cVar2;
                                        if (!a3) {
                                            cVar = null;
                                            break;
                                        }
                                        break;
                                    default:
                                        cVar = null;
                                        break;
                                }
                            } else {
                                cVar = null;
                            }
                            a.this.j = cVar;
                            a.this.k = hVar;
                            if (cVar == null) {
                                String unused2 = a.f855a;
                                if (list.isEmpty()) {
                                    a.this.b(125);
                                    break;
                                } else {
                                    a.a(a.this, list);
                                    break;
                                }
                            } else {
                                a.this.z = f.MATERIAL_LOADED;
                                a.this.g = aVar2;
                                a.a(a.this, cVar, aVar2.t());
                                break;
                            }
                        case 2:
                            if (!list.isEmpty()) {
                                if (a.this.h >= a.this.i) {
                                    a.i(a.this);
                                    break;
                                } else {
                                    a.a(a.this, list);
                                    break;
                                }
                            } else {
                                a.i(a.this);
                                break;
                            }
                    }
                }

                @Override // com.cmcm.orion.picks.impl.a.InterfaceC0019a
                public void a(com.cmcm.orion.adsdk.d dVar) {
                    if (com.cmcm.orion.utils.c.a(a.this.f856b)) {
                        String unused = a.f855a;
                        a.this.a(aVar2);
                    }
                    switch (AnonymousClass9.f869a[a.this.y.ordinal()]) {
                        case 1:
                            if (list.isEmpty()) {
                                String unused2 = a.f855a;
                                a.this.z = f.ERROR;
                                a.this.b(dVar.a());
                                return;
                            }
                            String unused3 = a.f855a;
                            break;
                        case 2:
                            if (list.isEmpty()) {
                                if (a.this.h <= 0) {
                                    a.this.b(dVar.a());
                                    return;
                                } else {
                                    a.i(a.this);
                                    return;
                                }
                            }
                            break;
                        default:
                            return;
                    }
                    a.a(a.this, list);
                }
            });
        }
    }

    static /* synthetic */ InterfaceC0013a g(a aVar) {
        return new InterfaceC0013a() { // from class: com.cmcm.orion.picks.b.a.5
            @Override // com.cmcm.orion.picks.b.a.InterfaceC0013a
            public void a() {
                String unused = a.f855a;
                a.k(a.this);
                a.this.a(b.a.BS_IMPRESSION, com.cmcm.orion.picks.impl.e.f971b, 0L);
                if (a.this.d != null) {
                    a.this.d.a();
                }
            }

            @Override // com.cmcm.orion.picks.b.a.InterfaceC0013a
            public void b() {
                String unused = a.f855a;
                a.this.a(b.a.BS_SKIP, com.cmcm.orion.picks.impl.e.e, 0L);
                if (a.this.d != null) {
                    a.this.d.b();
                }
            }

            @Override // com.cmcm.orion.picks.b.a.InterfaceC0013a
            public void a(String str) {
                String unused = a.f855a;
                a.this.a(b.a.BS_LEARN_MORE, com.cmcm.orion.picks.impl.e.d, 0L);
                if (a.this.d != null) {
                    a.this.d.a(str);
                }
            }

            @Override // com.cmcm.orion.picks.b.a.InterfaceC0013a
            public void c() {
                String unused = a.f855a;
                a.this.a(b.a.BS_REPLAY, com.cmcm.orion.picks.impl.e.h, 0L);
                if (a.this.d != null) {
                    a.this.d.c();
                }
            }

            @Override // com.cmcm.orion.picks.b.a.InterfaceC0013a
            public void d() {
                String unused = a.f855a;
                a.this.a(b.a.BS_FINISHED, com.cmcm.orion.picks.impl.e.c, 0L);
                if (a.this.d != null) {
                    a.this.d.d();
                }
            }
        };
    }

    static /* synthetic */ void a(a aVar, final View view, final int i) {
        aVar.z = f.READY;
        aVar.a(b.a.BS_LOAD_SUCCESS, 0, System.currentTimeMillis() - aVar.A);
        if (aVar.e == null) {
            return;
        }
        com.cmcm.orion.utils.e.a(new Runnable() { // from class: com.cmcm.orion.picks.b.a.6
            @Override // java.lang.Runnable
            public void run() {
                if (a.this.e != null) {
                    a.this.e.a(view, i);
                }
            }
        });
    }

    static /* synthetic */ void i(a aVar) {
        aVar.z = f.READY;
        aVar.a(b.a.BS_PRELOAD_SUCCESS, 0, System.currentTimeMillis() - aVar.B);
        if (aVar.f == null) {
            return;
        }
        com.cmcm.orion.utils.e.a(new Runnable() { // from class: com.cmcm.orion.picks.b.a.7
            @Override // java.lang.Runnable
            public void run() {
                if (a.this.f != null) {
                    a.this.f.a(a.this.h);
                }
            }
        });
    }
}
