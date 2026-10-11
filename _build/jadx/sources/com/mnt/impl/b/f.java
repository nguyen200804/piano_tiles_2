package com.mnt.impl.b;

import android.content.Context;
import android.os.Build;
import android.view.ViewGroup;
import android.view.WindowManager;
import com.facebook.ads.AdError;
import java.util.HashMap;
import java.util.Map;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class f {
    private static final String e = com.mnt.impl.e.mj;
    private static f g;

    /* renamed from: a, reason: collision with root package name */
    public WindowManager f3939a;

    /* renamed from: b, reason: collision with root package name */
    public WindowManager.LayoutParams f3940b;
    public ViewGroup c = null;
    public Map<String, ViewGroup> d = new HashMap();
    private Context f;

    private f(Context context) {
        this.f = context;
        if (this.f3939a == null && this.f3939a == null) {
            this.f3939a = (WindowManager) this.f.getSystemService("window");
        }
        if (this.f3940b == null) {
            this.f3940b = new WindowManager.LayoutParams();
        }
        if (Build.VERSION.SDK_INT >= 19) {
            this.f3940b.type = 2005;
        } else {
            this.f3940b.type = AdError.CACHE_ERROR_CODE;
        }
        this.f3940b.format = 1;
        this.f3940b.gravity = 17;
    }

    public static f a(Context context) {
        if (g != null) {
            return g;
        }
        synchronized (e) {
            if (g != null) {
                return g;
            }
            if (g == null) {
                g = new f(context);
            }
            return g;
        }
    }

    /* JADX WARN: $VALUES field not found */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    public static final class a {

        /* renamed from: a, reason: collision with root package name */
        public static final int f3941a = 1;

        /* renamed from: b, reason: collision with root package name */
        public static final int f3942b = 2;
        public static final int c = 3;
        private static final /* synthetic */ int[] d = {1, 2, 3};

        public static int[] a() {
            return (int[]) d.clone();
        }
    }
}
