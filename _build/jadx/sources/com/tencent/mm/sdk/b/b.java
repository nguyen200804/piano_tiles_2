package com.tencent.mm.sdk.b;

import android.util.Log;
import com.tencent.mm.sdk.b.a;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
final class b implements a.InterfaceC0216a {
    b() {
    }

    @Override // com.tencent.mm.sdk.b.a.InterfaceC0216a
    public final void e(String str, String str2) {
        int i;
        i = a.level;
        if (i <= 2) {
            Log.i(str, str2);
        }
    }

    @Override // com.tencent.mm.sdk.b.a.InterfaceC0216a
    public final void f(String str, String str2) {
        int i;
        i = a.level;
        if (i <= 1) {
            Log.d(str, str2);
        }
    }

    @Override // com.tencent.mm.sdk.b.a.InterfaceC0216a
    public final void g(String str, String str2) {
        int i;
        i = a.level;
        if (i <= 3) {
            Log.w(str, str2);
        }
    }

    @Override // com.tencent.mm.sdk.b.a.InterfaceC0216a
    public final int h() {
        int i;
        i = a.level;
        return i;
    }

    @Override // com.tencent.mm.sdk.b.a.InterfaceC0216a
    public final void h(String str, String str2) {
        int i;
        i = a.level;
        if (i <= 4) {
            Log.e(str, str2);
        }
    }
}
