package com.facebook.share.widget;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.os.EnvironmentCompat;
import com.applovin.sdk.AppLovinEventTypes;
import com.facebook.internal.e;
import com.facebook.internal.f;
import com.facebook.internal.g;
import com.facebook.internal.h;
import com.facebook.share.a;
import com.facebook.share.internal.ShareFeedContent;
import com.facebook.share.internal.j;
import com.facebook.share.internal.k;
import com.facebook.share.internal.l;
import com.facebook.share.internal.m;
import com.facebook.share.model.ShareContent;
import com.facebook.share.model.ShareLinkContent;
import com.facebook.share.model.ShareOpenGraphContent;
import com.facebook.share.model.SharePhotoContent;
import com.facebook.share.model.ShareVideoContent;
import java.util.ArrayList;
import java.util.List;

/* compiled from: ShareDialog.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class d extends h<ShareContent, a.C0091a> implements com.facebook.share.a {

    /* renamed from: b, reason: collision with root package name */
    private static final int f3561b = e.b.Share.a();
    private boolean c;
    private boolean d;

    /* compiled from: ShareDialog.java */
    public enum b {
        AUTOMATIC,
        NATIVE,
        WEB,
        FEED
    }

    public static boolean a(Class<? extends ShareContent> cls) {
        return f(cls) || e(cls);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean e(Class<? extends ShareContent> cls) {
        f g = g(cls);
        return g != null && g.a(g);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean f(Class<? extends ShareContent> cls) {
        return ShareLinkContent.class.isAssignableFrom(cls) || ShareOpenGraphContent.class.isAssignableFrom(cls);
    }

    public d(Activity activity) {
        super(activity, f3561b);
        this.c = false;
        this.d = true;
        l.a(f3561b);
    }

    d(Activity activity, int i) {
        super(activity, i);
        this.c = false;
        this.d = true;
        l.a(i);
    }

    d(Fragment fragment, int i) {
        this(new com.facebook.internal.l(fragment), i);
    }

    d(android.app.Fragment fragment, int i) {
        this(new com.facebook.internal.l(fragment), i);
    }

    private d(com.facebook.internal.l lVar, int i) {
        super(lVar, i);
        this.c = false;
        this.d = true;
        l.a(i);
    }

    @Override // com.facebook.internal.h
    protected void a(e eVar, com.facebook.g<a.C0091a> gVar) {
        l.a(a(), eVar, gVar);
    }

    public boolean e() {
        return this.c;
    }

    public void a(ShareContent shareContent, b bVar) {
        this.d = bVar == b.AUTOMATIC;
        Object obj = bVar;
        if (this.d) {
            obj = f3198a;
        }
        b(shareContent, obj);
    }

    @Override // com.facebook.internal.h
    protected com.facebook.internal.a d() {
        return new com.facebook.internal.a(a());
    }

    @Override // com.facebook.internal.h
    protected List<h<ShareContent, a.C0091a>.a> c() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new c());
        arrayList.add(new a());
        arrayList.add(new C0094d());
        return arrayList;
    }

    /* compiled from: ShareDialog.java */
    private class c extends h<ShareContent, a.C0091a>.a {
        private c() {
            super();
        }

        @Override // com.facebook.internal.h.a
        public Object a() {
            return b.NATIVE;
        }

        @Override // com.facebook.internal.h.a
        public boolean a(ShareContent shareContent) {
            return shareContent != null && d.e(shareContent.getClass());
        }

        @Override // com.facebook.internal.h.a
        public com.facebook.internal.a b(final ShareContent shareContent) {
            d.this.a(d.this.b(), shareContent, b.NATIVE);
            j.b(shareContent);
            final com.facebook.internal.a d = d.this.d();
            final boolean e = d.this.e();
            g.a(d, new g.a() { // from class: com.facebook.share.widget.d.c.1
                @Override // com.facebook.internal.g.a
                public Bundle a() {
                    return com.facebook.share.internal.e.a(d.c(), shareContent, e);
                }

                @Override // com.facebook.internal.g.a
                public Bundle b() {
                    return com.facebook.share.internal.c.a(d.c(), shareContent, e);
                }
            }, d.g(shareContent.getClass()));
            return d;
        }
    }

    /* compiled from: ShareDialog.java */
    /* renamed from: com.facebook.share.widget.d$d, reason: collision with other inner class name */
    private class C0094d extends h<ShareContent, a.C0091a>.a {
        private C0094d() {
            super();
        }

        @Override // com.facebook.internal.h.a
        public Object a() {
            return b.WEB;
        }

        @Override // com.facebook.internal.h.a
        public boolean a(ShareContent shareContent) {
            return shareContent != null && d.f(shareContent.getClass());
        }

        @Override // com.facebook.internal.h.a
        public com.facebook.internal.a b(ShareContent shareContent) {
            Bundle a2;
            d.this.a(d.this.b(), shareContent, b.WEB);
            com.facebook.internal.a d = d.this.d();
            j.c(shareContent);
            if (shareContent instanceof ShareLinkContent) {
                a2 = m.a((ShareLinkContent) shareContent);
            } else {
                a2 = m.a((ShareOpenGraphContent) shareContent);
            }
            g.a(d, c(shareContent), a2);
            return d;
        }

        private String c(ShareContent shareContent) {
            if (shareContent instanceof ShareLinkContent) {
                return AppLovinEventTypes.USER_SHARED_LINK;
            }
            if (shareContent instanceof ShareOpenGraphContent) {
                return "share_open_graph";
            }
            return null;
        }
    }

    /* compiled from: ShareDialog.java */
    private class a extends h<ShareContent, a.C0091a>.a {
        private a() {
            super();
        }

        @Override // com.facebook.internal.h.a
        public Object a() {
            return b.FEED;
        }

        @Override // com.facebook.internal.h.a
        public boolean a(ShareContent shareContent) {
            return (shareContent instanceof ShareLinkContent) || (shareContent instanceof ShareFeedContent);
        }

        @Override // com.facebook.internal.h.a
        public com.facebook.internal.a b(ShareContent shareContent) {
            Bundle a2;
            d.this.a(d.this.b(), shareContent, b.FEED);
            com.facebook.internal.a d = d.this.d();
            if (shareContent instanceof ShareLinkContent) {
                ShareLinkContent shareLinkContent = (ShareLinkContent) shareContent;
                j.c(shareLinkContent);
                a2 = m.b(shareLinkContent);
            } else {
                a2 = m.a((ShareFeedContent) shareContent);
            }
            g.a(d, "feed", a2);
            return d;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static f g(Class<? extends ShareContent> cls) {
        if (ShareLinkContent.class.isAssignableFrom(cls)) {
            return k.SHARE_DIALOG;
        }
        if (SharePhotoContent.class.isAssignableFrom(cls)) {
            return k.PHOTOS;
        }
        if (ShareVideoContent.class.isAssignableFrom(cls)) {
            return k.VIDEO;
        }
        if (ShareOpenGraphContent.class.isAssignableFrom(cls)) {
            return com.facebook.share.internal.f.OG_ACTION_DIALOG;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Context context, ShareContent shareContent, b bVar) {
        String str;
        String str2;
        if (this.d) {
            bVar = b.AUTOMATIC;
        }
        switch (bVar) {
            case AUTOMATIC:
                str = "automatic";
                break;
            case WEB:
                str = "web";
                break;
            case NATIVE:
                str = "native";
                break;
            default:
                str = EnvironmentCompat.MEDIA_UNKNOWN;
                break;
        }
        f g = g(shareContent.getClass());
        if (g == k.SHARE_DIALOG) {
            str2 = "status";
        } else if (g == k.PHOTOS) {
            str2 = "photo";
        } else if (g == k.VIDEO) {
            str2 = "video";
        } else if (g == com.facebook.share.internal.f.OG_ACTION_DIALOG) {
            str2 = "open_graph";
        } else {
            str2 = EnvironmentCompat.MEDIA_UNKNOWN;
        }
        com.facebook.appevents.a b2 = com.facebook.appevents.a.b(context);
        Bundle bundle = new Bundle();
        bundle.putString("fb_share_dialog_show", str);
        bundle.putString("fb_share_dialog_content_type", str2);
        b2.a("fb_share_dialog_show", (Double) null, bundle);
    }
}
