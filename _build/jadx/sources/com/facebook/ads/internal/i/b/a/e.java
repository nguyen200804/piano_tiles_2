package com.facebook.ads.internal.i.b.a;

import android.util.Log;
import java.io.File;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
abstract class e implements com.facebook.ads.internal.i.b.a.a {

    /* renamed from: a, reason: collision with root package name */
    private final ExecutorService f2770a = Executors.newSingleThreadExecutor();

    private class a implements Callable<Void> {

        /* renamed from: b, reason: collision with root package name */
        private final File f2772b;

        public a(File file) {
            this.f2772b = file;
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Void call() {
            e.this.b(this.f2772b);
            return null;
        }
    }

    e() {
    }

    private void a(List<File> list) {
        long b2 = b(list);
        int size = list.size();
        Iterator<File> it = list.iterator();
        while (true) {
            int i = size;
            if (!it.hasNext()) {
                return;
            }
            File next = it.next();
            if (!a(next, b2, i)) {
                long length = next.length();
                if (next.delete()) {
                    i--;
                    b2 -= length;
                    Log.i("ProxyCache", "Cache file " + next + " is deleted because it exceeds cache limit");
                } else {
                    Log.e("ProxyCache", "Error deleting file " + next + " for trimming cache");
                }
            }
            size = i;
        }
    }

    private long b(List<File> list) {
        long j = 0;
        Iterator<File> it = list.iterator();
        while (true) {
            long j2 = j;
            if (!it.hasNext()) {
                return j2;
            }
            j = it.next().length() + j2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(File file) {
        d.c(file);
        a(d.b(file.getParentFile()));
    }

    @Override // com.facebook.ads.internal.i.b.a.a
    public void a(File file) {
        this.f2770a.submit(new a(file));
    }

    protected abstract boolean a(File file, long j, int i);
}
