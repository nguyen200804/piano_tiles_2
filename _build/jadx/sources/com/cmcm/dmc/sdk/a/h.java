package com.cmcm.dmc.sdk.a;

import android.location.Location;
import java.util.Timer;
import java.util.TimerTask;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class h {

    /* renamed from: a, reason: collision with root package name */
    int f677a;

    /* renamed from: b, reason: collision with root package name */
    private e f678b;
    private Location c;
    private Timer d;

    private void a(int i) {
        if (this.f678b != null) {
            this.f678b.a(this.c, i);
        }
        if (this.f678b != null) {
            this.f678b = null;
            this.c = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0087 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @android.annotation.SuppressLint({"MissingPermission"})
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void a(com.cmcm.dmc.sdk.a.e r12) {
        /*
            Method dump skipped, instructions count: 315
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.cmcm.dmc.sdk.a.h.a(com.cmcm.dmc.sdk.a.e):void");
    }

    private boolean a(String str, String str2) {
        return str == null ? str2 == null : str.equals(str2);
    }

    public void a() {
        if (this.d == null) {
            this.d = new Timer();
            this.d.schedule(new TimerTask() { // from class: com.cmcm.dmc.sdk.a.h.1
                @Override // java.util.TimerTask, java.lang.Runnable
                public void run() {
                    h.this.a((e) null);
                }
            }, 60000L, 120000L);
        }
    }

    public void a(e eVar, String str) {
        if (eVar == null) {
            throw new AssertionError();
        }
        this.f678b = eVar;
        if (this.c != null) {
            a(0);
            return;
        }
        if (this.f677a == 3 || this.f677a == 2) {
            a(4);
        } else if (this.f677a == 4) {
            a(5);
        } else {
            a(0);
        }
    }

    protected boolean a(Location location, Location location2) {
        if (location2 == null) {
            return true;
        }
        long time = location.getTime() - location2.getTime();
        boolean z = time > 120000;
        boolean z2 = time < -120000;
        boolean z3 = time > 0;
        if (z) {
            return true;
        }
        if (z2) {
            return false;
        }
        int accuracy = (int) (location.getAccuracy() - location2.getAccuracy());
        boolean z4 = accuracy > 0;
        boolean z5 = accuracy < 0;
        boolean z6 = accuracy > 200;
        boolean a2 = a(location.getProvider(), location2.getProvider());
        if (z5) {
            return true;
        }
        if (!z3 || z4) {
            return z3 && !z6 && a2;
        }
        return true;
    }
}
