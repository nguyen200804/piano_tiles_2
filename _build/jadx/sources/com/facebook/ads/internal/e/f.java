package com.facebook.ads.internal.e;

import android.support.annotation.Nullable;
import com.google.android.gms.auth.api.proxy.AuthApiStatusCodes;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
abstract class f<T> {

    /* renamed from: a, reason: collision with root package name */
    private a f2694a;

    public enum a {
        UNKNOWN(9000, "An unknown error has occurred."),
        DATABASE_SELECT(3001, "Failed to read from database."),
        DATABASE_INSERT(AuthApiStatusCodes.AUTH_API_CLIENT_ERROR, "Failed to insert row into database."),
        DATABASE_UPDATE(AuthApiStatusCodes.AUTH_API_SERVER_ERROR, "Failed to update row in database."),
        DATABASE_DELETE(AuthApiStatusCodes.AUTH_TOKEN_ERROR, "Failed to delete row from database.");

        private final int f;
        private final String g;

        a(int i, String str) {
            this.f = i;
            this.g = str;
        }

        public int a() {
            return this.f;
        }

        public String b() {
            return this.g;
        }
    }

    f() {
    }

    protected void a(a aVar) {
        this.f2694a = aVar;
    }

    @Nullable
    abstract T b();

    public a c() {
        return this.f2694a;
    }
}
