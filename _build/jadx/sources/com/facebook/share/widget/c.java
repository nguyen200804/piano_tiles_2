package com.facebook.share.widget;

import android.app.Activity;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import com.facebook.internal.e;
import com.facebook.internal.f;
import com.facebook.internal.g;
import com.facebook.internal.h;
import com.facebook.share.a;
import com.facebook.share.internal.j;
import com.facebook.share.internal.l;
import com.facebook.share.model.ShareContent;
import com.facebook.share.model.ShareLinkContent;
import com.facebook.share.model.ShareOpenGraphContent;
import com.facebook.share.model.SharePhotoContent;
import com.facebook.share.model.ShareVideoContent;
import java.util.ArrayList;
import java.util.List;

/* compiled from: MessageDialog.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class c extends h<ShareContent, a.C0091a> implements com.facebook.share.a {

    /* renamed from: b, reason: collision with root package name */
    private static final int f3557b = e.b.Message.a();
    private boolean c;

    public static boolean a(Class<? extends ShareContent> cls) {
        f c = c(cls);
        return c != null && g.a(c);
    }

    public c(Activity activity) {
        super(activity, f3557b);
        this.c = false;
        l.a(f3557b);
    }

    c(Activity activity, int i) {
        super(activity, i);
        this.c = false;
        l.a(i);
    }

    c(Fragment fragment, int i) {
        this(new com.facebook.internal.l(fragment), i);
    }

    c(android.app.Fragment fragment, int i) {
        this(new com.facebook.internal.l(fragment), i);
    }

    private c(com.facebook.internal.l lVar, int i) {
        super(lVar, i);
        this.c = false;
        l.a(i);
    }

    @Override // com.facebook.internal.h
    protected void a(e eVar, com.facebook.g<a.C0091a> gVar) {
        l.a(a(), eVar, gVar);
    }

    public boolean e() {
        return this.c;
    }

    @Override // com.facebook.internal.h
    protected com.facebook.internal.a d() {
        return new com.facebook.internal.a(a());
    }

    @Override // com.facebook.internal.h
    protected List<h<ShareContent, a.C0091a>.a> c() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new a());
        return arrayList;
    }

    /* compiled from: MessageDialog.java */
    private class a extends h<ShareContent, a.C0091a>.a {
        private a() {
            super();
        }

        @Override // com.facebook.internal.h.a
        public boolean a(ShareContent shareContent) {
            return shareContent != null && c.a((Class<? extends ShareContent>) shareContent.getClass());
        }

        @Override // com.facebook.internal.h.a
        public com.facebook.internal.a b(final ShareContent shareContent) {
            j.a(shareContent);
            final com.facebook.internal.a d = c.this.d();
            final boolean e = c.this.e();
            c.this.b();
            g.a(d, new g.a() { // from class: com.facebook.share.widget.c.a.1
                @Override // com.facebook.internal.g.a
                public Bundle a() {
                    return com.facebook.share.internal.e.a(d.c(), shareContent, e);
                }

                @Override // com.facebook.internal.g.a
                public Bundle b() {
                    return com.facebook.share.internal.c.a(d.c(), shareContent, e);
                }
            }, c.c(shareContent.getClass()));
            return d;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static f c(Class<? extends ShareContent> cls) {
        if (ShareLinkContent.class.isAssignableFrom(cls)) {
            return com.facebook.share.internal.d.MESSAGE_DIALOG;
        }
        if (SharePhotoContent.class.isAssignableFrom(cls)) {
            return com.facebook.share.internal.d.PHOTOS;
        }
        if (ShareVideoContent.class.isAssignableFrom(cls)) {
            return com.facebook.share.internal.d.VIDEO;
        }
        if (ShareOpenGraphContent.class.isAssignableFrom(cls)) {
            return com.facebook.share.internal.h.OG_MESSAGE_DIALOG;
        }
        return null;
    }
}
