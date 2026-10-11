package com.cmplay.util.crop;

import android.app.Activity;
import android.os.Bundle;
import java.util.ArrayList;
import java.util.Iterator;

/* compiled from: MonitoredActivity.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
abstract class d extends Activity {

    /* renamed from: a, reason: collision with root package name */
    private final ArrayList<b> f1764a = new ArrayList<>();

    /* compiled from: MonitoredActivity.java */
    public interface b {
        void a(d dVar);

        void b(d dVar);

        void c(d dVar);

        void d(d dVar);
    }

    d() {
    }

    /* compiled from: MonitoredActivity.java */
    public static class a implements b {
        @Override // com.cmplay.util.crop.d.b
        public void d(d dVar) {
        }

        @Override // com.cmplay.util.crop.d.b
        public void a(d dVar) {
        }

        @Override // com.cmplay.util.crop.d.b
        public void c(d dVar) {
        }

        @Override // com.cmplay.util.crop.d.b
        public void b(d dVar) {
        }
    }

    public void b(b bVar) {
        if (!this.f1764a.contains(bVar)) {
            this.f1764a.add(bVar);
        }
    }

    public void a(b bVar) {
        this.f1764a.remove(bVar);
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        Iterator<b> it = this.f1764a.iterator();
        while (it.hasNext()) {
            it.next().d(this);
        }
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        Iterator<b> it = this.f1764a.iterator();
        while (it.hasNext()) {
            it.next().a(this);
        }
    }

    @Override // android.app.Activity
    protected void onStart() {
        super.onStart();
        Iterator<b> it = this.f1764a.iterator();
        while (it.hasNext()) {
            it.next().c(this);
        }
    }

    @Override // android.app.Activity
    protected void onStop() {
        super.onStop();
        Iterator<b> it = this.f1764a.iterator();
        while (it.hasNext()) {
            it.next().b(this);
        }
    }
}
