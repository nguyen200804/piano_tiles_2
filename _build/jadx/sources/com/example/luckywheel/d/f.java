package com.example.luckywheel.d;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class f {

    /* renamed from: a, reason: collision with root package name */
    private String f2343a = null;

    /* renamed from: b, reason: collision with root package name */
    private SharedPreferences f2344b = null;
    private boolean c = false;

    public f(String str, Context context) {
        a(str, context, 0, false);
    }

    private void a(SharedPreferences.Editor editor) {
        if (this.c) {
            editor.commit();
        } else if (Build.VERSION.SDK_INT >= 9) {
            editor.apply();
        } else {
            editor.commit();
        }
    }

    private void a(String str, Context context, int i, boolean z) {
        if (context != null) {
            this.f2344b = context.getSharedPreferences(str, i);
        }
        this.f2343a = str;
        this.c = z;
    }

    public int a(String str, int i) {
        return this.f2344b.getInt(str, i);
    }

    public void b(String str, int i) {
        SharedPreferences.Editor edit = this.f2344b.edit();
        edit.putInt(str, i);
        a(edit);
    }
}
