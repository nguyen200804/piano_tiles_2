package com.b.a.a;

import android.content.Context;
import android.content.SharedPreferences;
import b.a.cw;
import b.a.cz;
import java.io.Serializable;

/* compiled from: GameState.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class c {

    /* renamed from: a, reason: collision with root package name */
    public String f604a;

    /* renamed from: b, reason: collision with root package name */
    public String f605b;
    private Context c;
    private final String d = "um_g_cache";
    private final String e = "single_level";
    private final String f = "stat_player_level";
    private final String g = "stat_game_level";
    private a h = null;

    public c(Context context) {
        this.c = context;
    }

    public a a(String str) {
        this.h = new a(str);
        this.h.a();
        return this.h;
    }

    public void a() {
        if (this.h != null) {
            this.h.b();
            SharedPreferences.Editor edit = this.c.getSharedPreferences("um_g_cache", 0).edit();
            edit.putString("single_level", cw.a(this.h));
            edit.putString("stat_player_level", this.f605b);
            edit.putString("stat_game_level", this.f604a);
            edit.commit();
        }
    }

    public void b() {
        SharedPreferences a2 = cz.a(this.c, "um_g_cache");
        String string = a2.getString("single_level", null);
        if (string != null) {
            this.h = (a) cw.a(string);
            if (this.h != null) {
                this.h.c();
            }
        }
        if (this.f605b == null) {
            this.f605b = a2.getString("stat_player_level", null);
        }
        if (this.f604a == null) {
            this.f604a = a2.getString("stat_game_level", null);
        }
    }

    public a b(String str) {
        if (this.h != null) {
            this.h.d();
            if (this.h.a(str)) {
                a aVar = this.h;
                this.h = null;
                return aVar;
            }
        }
        return null;
    }

    /* compiled from: GameState.java */
    static class a implements Serializable {

        /* renamed from: a, reason: collision with root package name */
        private String f606a;

        /* renamed from: b, reason: collision with root package name */
        private long f607b;
        private long c;

        public a(String str) {
            this.f606a = str;
        }

        public boolean a(String str) {
            return this.f606a.equals(str);
        }

        public void a() {
            this.c = System.currentTimeMillis();
        }

        public void b() {
            this.f607b += System.currentTimeMillis() - this.c;
            this.c = 0L;
        }

        public void c() {
            a();
        }

        public void d() {
            b();
        }

        public long e() {
            return this.f607b;
        }
    }
}
