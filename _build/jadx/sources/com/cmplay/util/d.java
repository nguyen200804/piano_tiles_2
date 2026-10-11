package com.cmplay.util;

import android.os.Handler;
import android.os.Looper;
import com.cmplay.tile2.ui.AppActivity;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.cocos2dx.lib.Cocos2dxHelper;

/* compiled from: CNodeHandler.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class d {

    /* renamed from: a, reason: collision with root package name */
    private static List<a> f1767a = new ArrayList();

    /* renamed from: b, reason: collision with root package name */
    private static Handler f1768b = new Handler(Looper.getMainLooper());

    /* compiled from: CNodeHandler.java */
    public interface a {
        void a();
    }

    public static synchronized void a(final a aVar) {
        synchronized (d.class) {
            f1768b.post(new Runnable() { // from class: com.cmplay.util.d.1
                @Override // java.lang.Runnable
                public void run() {
                    AppActivity appActivity = (AppActivity) AppActivity.c();
                    if (appActivity == null || !appActivity.f1609a) {
                        d.f1767a.add(a.this);
                    } else {
                        Cocos2dxHelper.runOnGLThread(new Runnable() { // from class: com.cmplay.util.d.1.1
                            @Override // java.lang.Runnable
                            public void run() {
                                a.this.a();
                            }
                        });
                    }
                }
            });
        }
    }

    public static synchronized void a() {
        synchronized (d.class) {
            f1767a.clear();
        }
    }

    public static synchronized void b() {
        synchronized (d.class) {
            if (f1767a.size() != 0) {
                final ArrayList arrayList = new ArrayList();
                Iterator<a> it = f1767a.iterator();
                while (it.hasNext()) {
                    arrayList.add(it.next());
                }
                f1767a.clear();
                Cocos2dxHelper.runOnGLThread(new Runnable() { // from class: com.cmplay.util.d.2
                    @Override // java.lang.Runnable
                    public void run() {
                        Iterator it2 = arrayList.iterator();
                        while (it2.hasNext()) {
                            ((a) it2.next()).a();
                        }
                    }
                });
            }
        }
    }
}
