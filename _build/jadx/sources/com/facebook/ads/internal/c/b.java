package com.facebook.ads.internal.c;

import android.content.Context;
import android.os.Handler;
import android.util.Log;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class b {

    /* renamed from: a, reason: collision with root package name */
    private static final String f2658a = b.class.getSimpleName();

    /* renamed from: b, reason: collision with root package name */
    private static final ExecutorService f2659b = Executors.newFixedThreadPool(5);
    private final c d;
    private final d e;
    private final Handler c = new Handler();
    private final List<Callable<Boolean>> f = new ArrayList();

    private class a implements Callable<Boolean> {

        /* renamed from: b, reason: collision with root package name */
        private final String f2665b;

        public a(String str) {
            this.f2665b = str;
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Boolean call() {
            b.this.d.a(this.f2665b);
            return true;
        }
    }

    /* renamed from: com.facebook.ads.internal.c.b$b, reason: collision with other inner class name */
    private class CallableC0074b implements Callable<Boolean> {

        /* renamed from: b, reason: collision with root package name */
        private final String f2667b;

        public CallableC0074b(String str) {
            this.f2667b = str;
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Boolean call() {
            b.this.e.a(this.f2667b);
            return true;
        }
    }

    public b(Context context) {
        this.d = c.a(context);
        this.e = d.a(context);
    }

    public void a(final com.facebook.ads.internal.c.a aVar) {
        final ArrayList arrayList = new ArrayList(this.f);
        f2659b.submit(new Runnable() { // from class: com.facebook.ads.internal.c.b.1
            @Override // java.lang.Runnable
            public void run() {
                ArrayList arrayList2 = new ArrayList(arrayList.size());
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    arrayList2.add(b.f2659b.submit((Callable) it.next()));
                }
                try {
                    Iterator it2 = arrayList2.iterator();
                    while (it2.hasNext()) {
                        ((Future) it2.next()).get();
                    }
                    b.this.c.post(new Runnable() { // from class: com.facebook.ads.internal.c.b.1.2
                        @Override // java.lang.Runnable
                        public void run() {
                            aVar.a();
                        }
                    });
                } catch (InterruptedException | ExecutionException e) {
                    Log.e(b.f2658a, "Exception while executing cache downloads.", e);
                    b.this.c.post(new Runnable() { // from class: com.facebook.ads.internal.c.b.1.1
                        @Override // java.lang.Runnable
                        public void run() {
                            aVar.b();
                        }
                    });
                }
            }
        });
        this.f.clear();
    }

    public void a(String str) {
        this.f.add(new a(str));
    }

    public void b(String str) {
        this.f.add(new CallableC0074b(str));
    }

    public String c(String str) {
        return this.e.b(str);
    }
}
