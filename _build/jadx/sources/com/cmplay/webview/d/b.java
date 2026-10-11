package com.cmplay.webview.d;

import com.cmplay.tile2.GameApp;
import com.cmplay.util.NativeUtil;

/* compiled from: GamePageJumpHelper.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class b {
    public static void a(final int i, final String str) {
        GameApp.g().a(new Runnable() { // from class: com.cmplay.webview.d.b.1
            @Override // java.lang.Runnable
            public void run() {
                b.c(i, str);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void c(int i, String str) {
        switch (i) {
            case 1:
                NativeUtil.touchGhost();
                break;
        }
    }
}
