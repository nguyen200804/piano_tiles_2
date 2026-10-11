package com.facebook.share.internal;

import android.graphics.Bitmap;
import android.net.Uri;
import com.facebook.internal.aa;
import com.facebook.internal.ab;
import com.facebook.share.model.ShareContent;
import com.facebook.share.model.ShareLinkContent;
import com.facebook.share.model.ShareOpenGraphAction;
import com.facebook.share.model.ShareOpenGraphContent;
import com.facebook.share.model.ShareOpenGraphObject;
import com.facebook.share.model.ShareOpenGraphValueContainer;
import com.facebook.share.model.SharePhoto;
import com.facebook.share.model.SharePhotoContent;
import com.facebook.share.model.ShareVideo;
import com.facebook.share.model.ShareVideoContent;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

/* compiled from: ShareContentValidation.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class j {

    /* renamed from: a, reason: collision with root package name */
    private static a f3484a;

    /* renamed from: b, reason: collision with root package name */
    private static a f3485b;

    public static void a(ShareContent shareContent) {
        a(shareContent, a());
    }

    public static void b(ShareContent shareContent) {
        a(shareContent, a());
    }

    public static void c(ShareContent shareContent) {
        a(shareContent, b());
    }

    private static a a() {
        if (f3485b == null) {
            f3485b = new a();
        }
        return f3485b;
    }

    private static a b() {
        if (f3484a == null) {
            f3484a = new b();
        }
        return f3484a;
    }

    private static void a(ShareContent shareContent, a aVar) throws com.facebook.i {
        if (shareContent == null) {
            throw new com.facebook.i("Must provide non-null content to share");
        }
        if (shareContent instanceof ShareLinkContent) {
            aVar.a((ShareLinkContent) shareContent);
            return;
        }
        if (shareContent instanceof SharePhotoContent) {
            aVar.a((SharePhotoContent) shareContent);
        } else if (shareContent instanceof ShareVideoContent) {
            aVar.a((ShareVideoContent) shareContent);
        } else if (shareContent instanceof ShareOpenGraphContent) {
            aVar.a((ShareOpenGraphContent) shareContent);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(ShareLinkContent shareLinkContent, a aVar) {
        Uri c = shareLinkContent.c();
        if (c != null && !aa.b(c)) {
            throw new com.facebook.i("Image Url must be an http:// or https:// url");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(SharePhotoContent sharePhotoContent, a aVar) {
        List<SharePhoto> a2 = sharePhotoContent.a();
        if (a2 == null || a2.isEmpty()) {
            throw new com.facebook.i("Must specify at least one Photo in SharePhotoContent.");
        }
        if (a2.size() > 6) {
            throw new com.facebook.i(String.format(Locale.ROOT, "Cannot add more than %d photos.", 6));
        }
        Iterator<SharePhoto> it = a2.iterator();
        while (it.hasNext()) {
            aVar.a(it.next());
        }
    }

    private static void c(SharePhoto sharePhoto, a aVar) {
        if (sharePhoto == null) {
            throw new com.facebook.i("Cannot share a null SharePhoto");
        }
        Bitmap b2 = sharePhoto.b();
        Uri c = sharePhoto.c();
        if (b2 == null) {
            if (c == null) {
                throw new com.facebook.i("SharePhoto does not have a Bitmap or ImageUrl specified");
            }
            if (aa.b(c) && !aVar.a()) {
                throw new com.facebook.i("Cannot set the ImageUrl of a SharePhoto to the Uri of an image on the web when sharing SharePhotoContent");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void d(SharePhoto sharePhoto, a aVar) {
        c(sharePhoto, aVar);
        if (sharePhoto.b() != null || !aa.b(sharePhoto.c())) {
            ab.c(com.facebook.l.f());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void e(SharePhoto sharePhoto, a aVar) {
        if (sharePhoto == null) {
            throw new com.facebook.i("Cannot share a null SharePhoto");
        }
        Uri c = sharePhoto.c();
        if (c == null || !aa.b(c)) {
            throw new com.facebook.i("SharePhoto must have a non-null imageUrl set to the Uri of an image on the web");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(ShareVideoContent shareVideoContent, a aVar) {
        aVar.a(shareVideoContent.d());
        SharePhoto c = shareVideoContent.c();
        if (c != null) {
            aVar.a(c);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(ShareVideo shareVideo, a aVar) {
        if (shareVideo == null) {
            throw new com.facebook.i("Cannot share a null ShareVideo");
        }
        Uri b2 = shareVideo.b();
        if (b2 == null) {
            throw new com.facebook.i("ShareVideo does not have a LocalUrl specified");
        }
        if (!aa.c(b2) && !aa.d(b2)) {
            throw new com.facebook.i("ShareVideo must reference a video that is on the device");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(ShareOpenGraphContent shareOpenGraphContent, a aVar) {
        aVar.a(shareOpenGraphContent.a());
        String b2 = shareOpenGraphContent.b();
        if (aa.a(b2)) {
            throw new com.facebook.i("Must specify a previewPropertyName.");
        }
        if (shareOpenGraphContent.a().a(b2) == null) {
            throw new com.facebook.i("Property \"" + b2 + "\" was not found on the action. The name of the preview property must match the name of an action property.");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(ShareOpenGraphAction shareOpenGraphAction, a aVar) {
        if (shareOpenGraphAction == null) {
            throw new com.facebook.i("Must specify a non-null ShareOpenGraphAction");
        }
        if (aa.a(shareOpenGraphAction.a())) {
            throw new com.facebook.i("ShareOpenGraphAction must have a non-empty actionType");
        }
        aVar.a(shareOpenGraphAction, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(ShareOpenGraphObject shareOpenGraphObject, a aVar) {
        if (shareOpenGraphObject == null) {
            throw new com.facebook.i("Cannot share a null ShareOpenGraphObject");
        }
        aVar.a(shareOpenGraphObject, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(ShareOpenGraphValueContainer shareOpenGraphValueContainer, a aVar, boolean z) {
        for (String str : shareOpenGraphValueContainer.c()) {
            a(str, z);
            Object a2 = shareOpenGraphValueContainer.a(str);
            if (a2 instanceof List) {
                for (Object obj : (List) a2) {
                    if (obj == null) {
                        throw new com.facebook.i("Cannot put null objects in Lists in ShareOpenGraphObjects and ShareOpenGraphActions");
                    }
                    a(obj, aVar);
                }
            } else {
                a(a2, aVar);
            }
        }
    }

    private static void a(String str, boolean z) {
        if (z) {
            String[] split = str.split(":");
            if (split.length < 2) {
                throw new com.facebook.i("Open Graph keys must be namespaced: %s", str);
            }
            for (String str2 : split) {
                if (str2.isEmpty()) {
                    throw new com.facebook.i("Invalid key found in Open Graph dictionary: %s", str);
                }
            }
        }
    }

    private static void a(Object obj, a aVar) {
        if (obj instanceof ShareOpenGraphObject) {
            aVar.a((ShareOpenGraphObject) obj);
        } else if (obj instanceof SharePhoto) {
            aVar.a((SharePhoto) obj);
        }
    }

    /* compiled from: ShareContentValidation.java */
    private static class b extends a {
        private b() {
            super();
        }

        @Override // com.facebook.share.internal.j.a
        public void a(SharePhotoContent sharePhotoContent) {
            throw new com.facebook.i("Cannot share SharePhotoContent via web sharing dialogs");
        }

        @Override // com.facebook.share.internal.j.a
        public void a(ShareVideoContent shareVideoContent) {
            throw new com.facebook.i("Cannot share ShareVideoContent via web sharing dialogs");
        }

        @Override // com.facebook.share.internal.j.a
        public void a(SharePhoto sharePhoto) {
            j.e(sharePhoto, this);
        }
    }

    /* compiled from: ShareContentValidation.java */
    private static class a {

        /* renamed from: a, reason: collision with root package name */
        private boolean f3486a;

        private a() {
            this.f3486a = false;
        }

        public void a(ShareLinkContent shareLinkContent) {
            j.b(shareLinkContent, this);
        }

        public void a(SharePhotoContent sharePhotoContent) {
            j.b(sharePhotoContent, this);
        }

        public void a(ShareVideoContent shareVideoContent) {
            j.b(shareVideoContent, this);
        }

        public void a(ShareOpenGraphContent shareOpenGraphContent) {
            this.f3486a = true;
            j.b(shareOpenGraphContent, this);
        }

        public void a(ShareOpenGraphAction shareOpenGraphAction) {
            j.b(shareOpenGraphAction, this);
        }

        public void a(ShareOpenGraphObject shareOpenGraphObject) {
            j.b(shareOpenGraphObject, this);
        }

        public void a(ShareOpenGraphValueContainer shareOpenGraphValueContainer, boolean z) {
            j.b(shareOpenGraphValueContainer, this, z);
        }

        public void a(SharePhoto sharePhoto) {
            j.d(sharePhoto, this);
        }

        public void a(ShareVideo shareVideo) {
            j.b(shareVideo, this);
        }

        public boolean a() {
            return this.f3486a;
        }
    }
}
