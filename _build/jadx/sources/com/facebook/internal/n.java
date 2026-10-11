package com.facebook.internal;

import android.content.Context;
import android.net.Uri;
import com.mopub.common.Constants;
import com.mopub.mobileads.VastIconXmlManager;
import java.util.Locale;

/* compiled from: ImageRequest.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class n {

    /* renamed from: a, reason: collision with root package name */
    private Context f3236a;

    /* renamed from: b, reason: collision with root package name */
    private Uri f3237b;
    private b c;
    private boolean d;
    private Object e;

    /* compiled from: ImageRequest.java */
    public interface b {
        void a(o oVar);
    }

    public static Uri a(String str, int i, int i2) {
        ab.a(str, "userId");
        int max = Math.max(i, 0);
        int max2 = Math.max(i2, 0);
        if (max == 0 && max2 == 0) {
            throw new IllegalArgumentException("Either width or height must be greater than 0");
        }
        Uri.Builder path = new Uri.Builder().scheme(Constants.HTTPS).authority("graph.facebook.com").path(String.format(Locale.US, "%s/picture", str));
        if (max2 != 0) {
            path.appendQueryParameter(VastIconXmlManager.HEIGHT, String.valueOf(max2));
        }
        if (max != 0) {
            path.appendQueryParameter(VastIconXmlManager.WIDTH, String.valueOf(max));
        }
        path.appendQueryParameter("migration_overrides", "{october_2012:true}");
        return path.build();
    }

    private n(a aVar) {
        this.f3236a = aVar.f3238a;
        this.f3237b = aVar.f3239b;
        this.c = aVar.c;
        this.d = aVar.d;
        this.e = aVar.e == null ? new Object() : aVar.e;
    }

    public Context a() {
        return this.f3236a;
    }

    public Uri b() {
        return this.f3237b;
    }

    public b c() {
        return this.c;
    }

    public boolean d() {
        return this.d;
    }

    public Object e() {
        return this.e;
    }

    /* compiled from: ImageRequest.java */
    public static class a {

        /* renamed from: a, reason: collision with root package name */
        private Context f3238a;

        /* renamed from: b, reason: collision with root package name */
        private Uri f3239b;
        private b c;
        private boolean d;
        private Object e;

        public a(Context context, Uri uri) {
            ab.a(uri, "imageUri");
            this.f3238a = context;
            this.f3239b = uri;
        }

        public a a(b bVar) {
            this.c = bVar;
            return this;
        }

        public a a(Object obj) {
            this.e = obj;
            return this;
        }

        public a a(boolean z) {
            this.d = z;
            return this;
        }

        public n a() {
            return new n(this);
        }
    }
}
