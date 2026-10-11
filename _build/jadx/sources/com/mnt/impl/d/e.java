package com.mnt.impl.d;

import android.content.Context;
import android.database.ContentObserver;
import android.net.Uri;
import android.os.Handler;
import android.os.Message;
import java.io.Closeable;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class e {

    /* renamed from: a, reason: collision with root package name */
    public static final Uri f3964a = Uri.parse(com.mnt.impl.e.ps);
    private static e i;

    /* renamed from: b, reason: collision with root package name */
    public Context f3965b;
    List<String> c = new ArrayList();
    List<String> d = new ArrayList();
    Map<String, String> e = new HashMap();
    public final ArrayList<g> f = new ArrayList<>();
    public final ContentObserver g;
    public boolean h;
    private final Handler j;

    static {
        e.class.getSimpleName();
    }

    private e(Context context) {
        new a();
        this.f3965b = context;
        this.j = new Handler(new f());
        this.g = new b(context, this.j);
    }

    public static e a(Context context) {
        if (i == null) {
            synchronized (e.class) {
                if (i == null) {
                    i = new e(context.getApplicationContext());
                }
            }
        }
        return i;
    }

    static void a(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }

    class a extends Handler {

        /* renamed from: a, reason: collision with root package name */
        private Object f3966a = new Object();

        a() {
        }

        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            if (message.what == 273) {
                synchronized (this.f3966a) {
                    if (e.this.f != null && e.this.f.size() > 0) {
                        Iterator it = e.this.f.iterator();
                        String str = (String) message.obj;
                        while (it.hasNext()) {
                            ((g) it.next()).a((String) e.this.e.get(str), str);
                            e.this.e.remove(str);
                            e.this.c.remove(str);
                            e.this.d.clear();
                        }
                    }
                }
            }
        }
    }
}
