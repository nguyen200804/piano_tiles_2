package com.facebook.share.widget;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import com.facebook.internal.e;
import com.facebook.internal.f;
import com.facebook.internal.g;
import com.facebook.internal.h;
import com.facebook.share.internal.i;
import com.facebook.share.internal.l;
import com.facebook.share.model.AppInviteContent;
import java.util.ArrayList;
import java.util.List;

/* compiled from: AppInviteDialog.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class a extends h<AppInviteContent, b> {

    /* renamed from: b, reason: collision with root package name */
    private static final int f3539b = e.b.AppInvite.a();

    /* compiled from: AppInviteDialog.java */
    public static final class b {

        /* renamed from: a, reason: collision with root package name */
        private final Bundle f3547a;

        public b(Bundle bundle) {
            this.f3547a = bundle;
        }
    }

    public static boolean e() {
        return i() || j();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean i() {
        return g.a(k());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean j() {
        return g.b(k());
    }

    public a(Activity activity) {
        super(activity, f3539b);
    }

    @Override // com.facebook.internal.h
    protected void a(e eVar, final com.facebook.g<b> gVar) {
        final i iVar = gVar == null ? null : new i(gVar) { // from class: com.facebook.share.widget.a.1
            @Override // com.facebook.share.internal.i
            public void a(com.facebook.internal.a aVar, Bundle bundle) {
                if ("cancel".equalsIgnoreCase(l.a(bundle))) {
                    gVar.a();
                } else {
                    gVar.a((com.facebook.g) new b(bundle));
                }
            }
        };
        eVar.b(a(), new e.a() { // from class: com.facebook.share.widget.a.2
            @Override // com.facebook.internal.e.a
            public boolean a(int i, Intent intent) {
                return l.a(a.this.a(), i, intent, iVar);
            }
        });
    }

    @Override // com.facebook.internal.h
    protected com.facebook.internal.a d() {
        return new com.facebook.internal.a(a());
    }

    @Override // com.facebook.internal.h
    protected List<h<AppInviteContent, b>.a> c() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new C0092a());
        arrayList.add(new c());
        return arrayList;
    }

    /* compiled from: AppInviteDialog.java */
    /* renamed from: com.facebook.share.widget.a$a, reason: collision with other inner class name */
    private class C0092a extends h<AppInviteContent, b>.a {
        private C0092a() {
            super();
        }

        @Override // com.facebook.internal.h.a
        public boolean a(AppInviteContent appInviteContent) {
            return a.i();
        }

        @Override // com.facebook.internal.h.a
        public com.facebook.internal.a b(final AppInviteContent appInviteContent) {
            com.facebook.internal.a d = a.this.d();
            g.a(d, new g.a() { // from class: com.facebook.share.widget.a.a.1
                @Override // com.facebook.internal.g.a
                public Bundle a() {
                    return a.b(appInviteContent);
                }

                @Override // com.facebook.internal.g.a
                public Bundle b() {
                    Log.e("AppInviteDialog", "Attempting to present the AppInviteDialog with an outdated Facebook app on the device");
                    return new Bundle();
                }
            }, a.k());
            return d;
        }
    }

    /* compiled from: AppInviteDialog.java */
    private class c extends h<AppInviteContent, b>.a {
        private c() {
            super();
        }

        @Override // com.facebook.internal.h.a
        public boolean a(AppInviteContent appInviteContent) {
            return a.j();
        }

        @Override // com.facebook.internal.h.a
        public com.facebook.internal.a b(AppInviteContent appInviteContent) {
            com.facebook.internal.a d = a.this.d();
            g.a(d, a.b(appInviteContent), a.k());
            return d;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static f k() {
        return com.facebook.share.internal.a.APP_INVITES_DIALOG;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Bundle b(AppInviteContent appInviteContent) {
        Bundle bundle = new Bundle();
        bundle.putString("app_link_url", appInviteContent.a());
        bundle.putString("preview_image_url", appInviteContent.b());
        return bundle;
    }
}
