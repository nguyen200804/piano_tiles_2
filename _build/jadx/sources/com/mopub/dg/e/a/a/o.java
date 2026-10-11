package com.mopub.dg.e.a.a;

import android.content.Context;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
final class o implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ Context f4325a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ String f4326b;
    final /* synthetic */ String c;
    final /* synthetic */ String d;
    final /* synthetic */ l e;

    o(Context context, String str, String str2, String str3, l lVar) {
        this.f4325a = context;
        this.f4326b = str;
        this.c = str2;
        this.d = str3;
        this.e = lVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        i iVar = new i(this.f4325a, this.f4326b);
        iVar.f4317b = this.c;
        iVar.f4316a = this.d;
        iVar.c = true;
        iVar.a();
        this.e.a(this.c, "InitName", "");
    }
}
