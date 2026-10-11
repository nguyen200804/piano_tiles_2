package com.facebook.share.widget;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import com.facebook.g;
import com.facebook.internal.e;
import com.facebook.internal.h;
import com.facebook.share.internal.i;
import com.facebook.share.internal.l;
import com.facebook.share.internal.m;
import com.facebook.share.model.GameRequestContent;
import java.util.ArrayList;
import java.util.List;

/* compiled from: GameRequestDialog.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class b extends h<GameRequestContent, a> {

    /* renamed from: b, reason: collision with root package name */
    private static final int f3549b = e.b.GameRequest.a();

    /* compiled from: GameRequestDialog.java */
    public static final class a {

        /* renamed from: a, reason: collision with root package name */
        String f3554a;

        /* renamed from: b, reason: collision with root package name */
        List<String> f3555b;

        private a(Bundle bundle) {
            this.f3554a = bundle.getString("request");
            this.f3555b = new ArrayList();
            while (bundle.containsKey(String.format("to[%d]", Integer.valueOf(this.f3555b.size())))) {
                this.f3555b.add(bundle.getString(String.format("to[%d]", Integer.valueOf(this.f3555b.size()))));
            }
        }
    }

    public static void a(Activity activity, GameRequestContent gameRequestContent) {
        new b(activity).b(gameRequestContent);
    }

    public b(Activity activity) {
        super(activity, f3549b);
    }

    @Override // com.facebook.internal.h
    protected void a(e eVar, final g<a> gVar) {
        final i iVar = gVar == null ? null : new i(gVar) { // from class: com.facebook.share.widget.b.1
            @Override // com.facebook.share.internal.i
            public void a(com.facebook.internal.a aVar, Bundle bundle) {
                if (bundle != null) {
                    gVar.a((g) new a(bundle));
                } else {
                    a(aVar);
                }
            }
        };
        eVar.b(a(), new e.a() { // from class: com.facebook.share.widget.b.2
            @Override // com.facebook.internal.e.a
            public boolean a(int i, Intent intent) {
                return l.a(b.this.a(), i, intent, iVar);
            }
        });
    }

    @Override // com.facebook.internal.h
    protected com.facebook.internal.a d() {
        return new com.facebook.internal.a(a());
    }

    @Override // com.facebook.internal.h
    protected List<h<GameRequestContent, a>.a> c() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new C0093b());
        return arrayList;
    }

    /* compiled from: GameRequestDialog.java */
    /* renamed from: com.facebook.share.widget.b$b, reason: collision with other inner class name */
    private class C0093b extends h<GameRequestContent, a>.a {
        private C0093b() {
            super();
        }

        @Override // com.facebook.internal.h.a
        public boolean a(GameRequestContent gameRequestContent) {
            return true;
        }

        @Override // com.facebook.internal.h.a
        public com.facebook.internal.a b(GameRequestContent gameRequestContent) {
            com.facebook.share.internal.b.a(gameRequestContent);
            com.facebook.internal.a d = b.this.d();
            com.facebook.internal.g.a(d, "apprequests", m.a(gameRequestContent));
            return d;
        }
    }
}
