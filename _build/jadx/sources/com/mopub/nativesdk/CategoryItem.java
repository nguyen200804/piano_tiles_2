package com.mopub.nativesdk;

import java.io.Serializable;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class CategoryItem implements Serializable {

    /* renamed from: a, reason: collision with root package name */
    String f4583a;

    /* renamed from: b, reason: collision with root package name */
    String f4584b;

    public String getCategoryCode() {
        return this.f4583a;
    }

    public void setCategoryCode(String str) {
        this.f4583a = str;
    }

    public String getCategoryTitle() {
        return this.f4584b;
    }

    public void setCategoryTitle(String str) {
        this.f4584b = str;
    }
}
