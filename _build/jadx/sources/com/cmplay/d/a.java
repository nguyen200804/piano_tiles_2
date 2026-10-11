package com.cmplay.d;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* compiled from: GameSceneHolder.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class a {

    /* renamed from: a, reason: collision with root package name */
    private static a f1317a = null;

    /* renamed from: b, reason: collision with root package name */
    private EnumC0039a f1318b = null;
    private List<b> c = new ArrayList();

    /* compiled from: GameSceneHolder.java */
    public interface b {
        void a(EnumC0039a enumC0039a);
    }

    /* compiled from: GameSceneHolder.java */
    /* renamed from: com.cmplay.d.a$a, reason: collision with other inner class name */
    public enum EnumC0039a {
        UI_HOME,
        UI_MUSIC,
        UI_HALL,
        UI_SETTING,
        UI_GAMEING,
        UI_RESULT;

        public static EnumC0039a a(int i) {
            switch (i) {
                case 0:
                    return UI_HOME;
                case 1:
                    return UI_MUSIC;
                case 2:
                    return UI_HALL;
                case 3:
                    return UI_SETTING;
                case 4:
                    return UI_GAMEING;
                case 5:
                    return UI_RESULT;
                default:
                    return null;
            }
        }
    }

    private a() {
    }

    public static synchronized a a() {
        a aVar;
        synchronized (a.class) {
            if (f1317a == null) {
                f1317a = new a();
            }
            aVar = f1317a;
        }
        return aVar;
    }

    public void a(EnumC0039a enumC0039a) {
        if (this.f1318b != enumC0039a) {
            this.f1318b = enumC0039a;
            b(enumC0039a);
        }
    }

    public boolean b() {
        return this.f1318b == EnumC0039a.UI_HOME || this.f1318b == EnumC0039a.UI_MUSIC || this.f1318b == EnumC0039a.UI_HALL || this.f1318b == EnumC0039a.UI_SETTING;
    }

    public boolean c() {
        return this.f1318b == EnumC0039a.UI_RESULT;
    }

    public boolean d() {
        return this.f1318b == EnumC0039a.UI_GAMEING;
    }

    public void a(b bVar) {
        this.c.add(bVar);
    }

    private void b(EnumC0039a enumC0039a) {
        if (this.c != null) {
            Iterator<b> it = this.c.iterator();
            while (it.hasNext()) {
                it.next().a(enumC0039a);
            }
        }
    }
}
