package com.cmplay.util.crop;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;

/* compiled from: Crop.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class a {

    /* renamed from: a, reason: collision with root package name */
    private Intent f1754a = new Intent();

    public static a a(Uri uri, Uri uri2) {
        return new a(uri, uri2);
    }

    private a(Uri uri, Uri uri2) {
        this.f1754a.setData(uri);
        this.f1754a.putExtra("output", uri2);
    }

    public a a() {
        this.f1754a.putExtra("aspect_x", 1);
        this.f1754a.putExtra("aspect_y", 1);
        return this;
    }

    public a a(int i, int i2) {
        this.f1754a.putExtra("max_x", i);
        this.f1754a.putExtra("max_y", i2);
        return this;
    }

    public Intent a(Context context) {
        this.f1754a.setClass(context, CropImageActivity.class);
        return this.f1754a;
    }
}
