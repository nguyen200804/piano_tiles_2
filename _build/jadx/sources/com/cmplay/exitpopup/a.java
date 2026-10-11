package com.cmplay.exitpopup;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import com.cmplay.base.util.g;
import com.cmplay.internalpush.i;
import com.cmplay.internalpush.o;
import com.cmplay.tile2.ui.ReportService;
import com.cmplay.util.aa;
import java.util.HashMap;

/* compiled from: ExitGame.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class a implements i {

    /* renamed from: a, reason: collision with root package name */
    private int f1345a;

    /* renamed from: b, reason: collision with root package name */
    private i.a f1346b;

    /* compiled from: ExitGame.java */
    /* renamed from: com.cmplay.exitpopup.a$a, reason: collision with other inner class name */
    private static class C0042a {

        /* renamed from: a, reason: collision with root package name */
        private static a f1347a = new a();
    }

    public static a a() {
        return C0042a.f1347a;
    }

    public boolean a(Context context, int i, boolean z) {
        this.f1345a = i;
        return b.a(context).a(z, true);
    }

    public int a(Context context) {
        if (b.a(context).f1348a.containsKey("not_data")) {
            return b.a(context).f1348a.get("not_data").booleanValue() ? 5 : 50;
        }
        return 0;
    }

    public HashMap<String, Integer> b(Context context) {
        return b.a(context).b();
    }

    public String c(Context context) {
        return b.a(context).b(true);
    }

    public void a(Activity activity, int i, String[] strArr) {
        String c = c(activity);
        g.a("Exit game show");
        Intent intent = new Intent(activity, (Class<?>) ReportService.class);
        intent.putExtra("command_start_report", "command_game_exit_popup");
        intent.putExtra("game_exit_data", c);
        intent.putExtra("game_exit_songs_num", i);
        intent.putExtra("game_exit_playedsongs_text", strArr);
        activity.startService(intent);
    }

    public void a(Context context, com.cmplay.internalpush.data.d dVar) {
        if (dVar != null) {
            com.cmplay.internalpush.a.b.a(context, dVar);
            b.a(context).a(dVar.d(), 2);
            if (this.f1346b != null) {
                this.f1346b.a();
            }
            o.a().a(5, 2, dVar.f(), dVar.d(), "", b(), 0, dVar.m());
        }
    }

    public int b() {
        return this.f1345a;
    }

    public void b(Context context, com.cmplay.internalpush.data.d dVar) {
        aa.a("last_last_shield_time" + b.a(context).a() + dVar.f(), System.currentTimeMillis());
        o.a().a(5, 11, dVar.f(), dVar.d(), "", b(), 0, dVar.m());
    }
}
