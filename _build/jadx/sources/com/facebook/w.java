package com.facebook;

import android.content.Intent;
import android.support.v4.content.LocalBroadcastManager;
import com.facebook.internal.ab;

/* compiled from: ProfileManager.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
final class w {

    /* renamed from: a, reason: collision with root package name */
    private static volatile w f3575a;

    /* renamed from: b, reason: collision with root package name */
    private final LocalBroadcastManager f3576b;
    private final v c;
    private Profile d;

    w(LocalBroadcastManager localBroadcastManager, v vVar) {
        ab.a(localBroadcastManager, "localBroadcastManager");
        ab.a(vVar, "profileCache");
        this.f3576b = localBroadcastManager;
        this.c = vVar;
    }

    static w a() {
        if (f3575a == null) {
            synchronized (w.class) {
                if (f3575a == null) {
                    f3575a = new w(LocalBroadcastManager.getInstance(l.f()), new v());
                }
            }
        }
        return f3575a;
    }

    Profile b() {
        return this.d;
    }

    boolean c() {
        Profile a2 = this.c.a();
        if (a2 == null) {
            return false;
        }
        a(a2, false);
        return true;
    }

    void a(Profile profile) {
        a(profile, true);
    }

    private void a(Profile profile, boolean z) {
        Profile profile2 = this.d;
        this.d = profile;
        if (z) {
            if (profile != null) {
                this.c.a(profile);
            } else {
                this.c.b();
            }
        }
        if (!com.facebook.internal.aa.a(profile2, profile)) {
            a(profile2, profile);
        }
    }

    private void a(Profile profile, Profile profile2) {
        Intent intent = new Intent("com.facebook.sdk.ACTION_CURRENT_PROFILE_CHANGED");
        intent.putExtra("com.facebook.sdk.EXTRA_OLD_PROFILE", profile);
        intent.putExtra("com.facebook.sdk.EXTRA_NEW_PROFILE", profile2);
        this.f3576b.sendBroadcast(intent);
    }
}
