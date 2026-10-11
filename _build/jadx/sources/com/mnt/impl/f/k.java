package com.mnt.impl.f;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class k extends com.mnt.impl.b.e<String> {

    /* renamed from: a, reason: collision with root package name */
    private f f4018a;

    /* renamed from: b, reason: collision with root package name */
    private a f4019b;
    private String c;

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.mnt.impl.b.e
    public final /* bridge */ /* synthetic */ void a(String str) {
        String str2 = str;
        if (this.f4019b == null) {
            return;
        }
        this.f4019b.a(str2);
    }

    public k(f fVar, a aVar) {
        this.f4018a = fVar;
        this.f4019b = aVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.mnt.impl.b.e
    public final /* synthetic */ String a() {
        System.currentTimeMillis();
        this.c = new e().a(this.f4018a.a(), this.f4018a.b(), null);
        return this.c;
    }
}
