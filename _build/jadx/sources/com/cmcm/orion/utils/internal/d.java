package com.cmcm.orion.utils.internal;

import com.cmcm.orion.picks.impl.a;
import com.cmcm.orion.utils.d;
import java.io.InputStream;

/* compiled from: ParseUrlUtils.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class d {

    /* renamed from: a, reason: collision with root package name */
    private String f1121a;

    /* renamed from: b, reason: collision with root package name */
    private a.InterfaceC0019a f1122b;
    private d.b c;

    public d(String str, a.InterfaceC0019a interfaceC0019a) {
        this.f1122b = null;
        this.f1121a = str;
        this.f1122b = interfaceC0019a;
    }

    public final void a() {
        if (this.f1121a == null) {
            a(new com.cmcm.orion.picks.webview.e(8, this.f1121a));
        } else {
            this.c = com.cmcm.orion.utils.d.a(this.f1121a, new AnonymousClass1());
        }
    }

    /* compiled from: ParseUrlUtils.java */
    /* renamed from: com.cmcm.orion.utils.internal.d$1, reason: invalid class name */
    final class AnonymousClass1 implements a.InterfaceC0019a {
        AnonymousClass1() {
        }

        @Override // com.cmcm.orion.picks.impl.a.InterfaceC0019a
        public final void a(int i, InputStream inputStream, String str, int i2) {
            String str2 = null;
            if (i == 200) {
                str2 = com.cmcm.orion.utils.d.a(inputStream, str);
            }
            a(i, str2);
        }

        @Override // com.cmcm.orion.picks.impl.a.InterfaceC0019a
        public final void a(int i, com.cmcm.orion.adsdk.d dVar) {
            a(i, (String) null);
        }

        private void a(final int i, final String str) {
            com.cmcm.orion.utils.e.b(new Runnable() { // from class: com.cmcm.orion.utils.internal.d.1.1
                @Override // java.lang.Runnable
                public final void run() {
                    if (d.this.c != null) {
                        String c = d.this.c.c();
                        if (com.cmcm.orion.utils.b.a(c)) {
                            d.this.a(new com.cmcm.orion.picks.webview.e(0, c));
                            return;
                        }
                        if (i != 200) {
                            d.this.a(new com.cmcm.orion.picks.webview.e(i + 9000, c));
                            return;
                        }
                        if (str == null || !str.contains("<html>")) {
                            d.this.a(new com.cmcm.orion.picks.webview.e(6, c));
                            return;
                        }
                        try {
                            com.cmcm.orion.picks.webview.c cVar = new com.cmcm.orion.picks.webview.c(com.cmcm.orion.adsdk.e.a());
                            cVar.a(new a.InterfaceC0019a() { // from class: com.cmcm.orion.utils.internal.d.1.1.1
                                @Override // com.cmcm.orion.picks.impl.a.InterfaceC0019a
                                public final void b(com.cmcm.orion.picks.webview.e eVar) {
                                    d.this.a(eVar);
                                }
                            });
                            cVar.a(str, "", "", "");
                            return;
                        } catch (Exception e) {
                            d.this.a(new com.cmcm.orion.picks.webview.e(1, c));
                            return;
                        }
                    }
                    d.this.a(new com.cmcm.orion.picks.webview.e(7, d.this.f1121a));
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(com.cmcm.orion.picks.webview.e eVar) {
        if (this.f1122b != null) {
            this.f1122b.a(eVar);
        }
    }
}
