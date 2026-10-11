package com.example.luckywheel.ui;

import android.content.Context;
import android.support.v7.widget.helper.ItemTouchHelper;
import com.whatscall.luckywheel.R;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class j {

    /* renamed from: a, reason: collision with root package name */
    public static int f2379a = -6304;

    /* renamed from: b, reason: collision with root package name */
    public static int f2380b = -1;
    private static j d;
    private Context e;
    private int g;
    private ArrayList<i> c = new ArrayList<>();
    private int[] f = {300, ItemTouchHelper.Callback.DEFAULT_DRAG_ANIMATION_DURATION, 20, 100, 50, 500, 0, 10};
    private int h = f2380b;

    private j(Context context) {
        this.e = context;
        a();
    }

    public static synchronized j a(Context context) {
        j jVar;
        synchronized (j.class) {
            if (d == null) {
                d = new j(context);
            }
            jVar = d;
        }
        return jVar;
    }

    public void a() {
        c();
    }

    public void a(int i) {
        a(i, this.h);
    }

    public void a(int i, int i2) {
        this.g = i;
        this.h = i2;
        this.c.clear();
        i iVar = new i();
        iVar.f(1);
        iVar.a("+" + (this.f[0] + i));
        iVar.e(i2);
        iVar.d(-18762);
        iVar.c(60);
        iVar.b(300);
        iVar.a(this.f[0] + i);
        this.c.add(iVar);
        i iVar2 = new i();
        iVar2.f(2);
        iVar2.a("+" + (this.f[1] + i));
        iVar2.e(i2);
        iVar2.d(-30841);
        iVar2.c(40);
        iVar2.b(260);
        iVar2.a(this.f[1] + i);
        this.c.add(iVar2);
        i iVar3 = new i();
        iVar3.f(3);
        iVar3.a("+" + (this.f[2] + i));
        iVar3.e(i2);
        iVar3.d(-18762);
        iVar3.c(55);
        iVar3.b(205);
        iVar3.a(this.f[2] + i);
        this.c.add(iVar3);
        i iVar4 = new i();
        iVar4.f(4);
        iVar4.a("+" + (this.f[3] + i));
        iVar4.e(i2);
        iVar4.d(-30841);
        iVar4.c(45);
        iVar4.b(160);
        iVar4.a(this.f[3] + i);
        this.c.add(iVar4);
        i iVar5 = new i();
        iVar5.f(5);
        iVar5.a("+" + (this.f[4] + i));
        iVar5.e(i2);
        iVar5.d(-18762);
        iVar5.c(50);
        iVar5.b(110);
        iVar5.a(this.f[4] + i);
        this.c.add(iVar5);
        i iVar6 = new i();
        iVar6.f(6);
        iVar6.a("+" + (this.f[5] + i));
        iVar6.e(i2);
        iVar6.d(-30841);
        iVar6.c(35);
        iVar6.b(75);
        iVar6.a(this.f[5] + i);
        this.c.add(iVar6);
        i iVar7 = new i();
        iVar7.f(7);
        iVar7.a(this.e.getResources().getString(R.string.try_again_1));
        iVar7.e(i2);
        iVar7.d(-18762);
        iVar7.c(45);
        iVar7.b(30);
        iVar7.a(this.f[6] + i);
        this.c.add(iVar7);
        i iVar8 = new i();
        iVar8.f(8);
        iVar8.a("+" + (this.f[7] + i));
        iVar8.e(i2);
        iVar8.d(-30841);
        iVar8.c(30);
        iVar8.b(0);
        iVar8.a(this.f[7] + i);
        this.c.add(iVar8);
    }

    public i b(int i) {
        Iterator<i> it = this.c.iterator();
        while (it.hasNext()) {
            i next = it.next();
            if (next.a() == i) {
                return next;
            }
        }
        if (i == 0) {
            return null;
        }
        return b(0);
    }

    public void b() {
        this.g = 0;
        this.h = f2380b;
    }

    public void c() {
        a(0);
    }

    public ArrayList<i> d() {
        return this.c;
    }
}
