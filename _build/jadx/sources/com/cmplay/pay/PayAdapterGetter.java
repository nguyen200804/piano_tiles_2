package com.cmplay.pay;

import android.content.Context;
import com.cmplay.base.a;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class PayAdapterGetter {
    private static PayAdapterGetter sInstance;
    private PayAdapter sAdapter;

    public static PayAdapterGetter getInstance() {
        if (sInstance == null) {
            synchronized (PayAdapterGetter.class) {
                if (sInstance == null) {
                    sInstance = new PayAdapterGetter();
                }
            }
        }
        return sInstance;
    }

    public void init(Context context) {
        this.sAdapter = new PayAdapter();
        this.sAdapter.init(context);
    }

    public a getAdapter() {
        return this.sAdapter;
    }
}
