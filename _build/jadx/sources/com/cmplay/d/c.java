package com.cmplay.d;

import com.cmplay.d.a;
import com.cmplay.tile2.GameApp;

/* compiled from: MainSceneListener.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class c implements a.b {
    @Override // com.cmplay.d.a.b
    public void a(a.EnumC0039a enumC0039a) {
        if (a.a().b()) {
            a();
            GameApp.g().a(new Runnable() { // from class: com.cmplay.d.c.1
                @Override // java.lang.Runnable
                public void run() {
                    com.cmplay.b.b.a().e();
                }
            });
        }
    }

    public void a() {
    }
}
