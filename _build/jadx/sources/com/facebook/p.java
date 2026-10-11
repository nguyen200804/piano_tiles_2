package com.facebook;

import android.os.Handler;
import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: GraphRequestBatch.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class p extends AbstractList<GraphRequest> {

    /* renamed from: a, reason: collision with root package name */
    private static AtomicInteger f3462a = new AtomicInteger();

    /* renamed from: b, reason: collision with root package name */
    private Handler f3463b;
    private List<GraphRequest> c;
    private int d = 0;
    private final String e = Integer.valueOf(f3462a.incrementAndGet()).toString();
    private List<a> f = new ArrayList();
    private String g;

    /* compiled from: GraphRequestBatch.java */
    public interface a {
        void a(p pVar);
    }

    /* compiled from: GraphRequestBatch.java */
    public interface b extends a {
        void a(p pVar, long j, long j2);
    }

    public p() {
        this.c = new ArrayList();
        this.c = new ArrayList();
    }

    public p(Collection<GraphRequest> collection) {
        this.c = new ArrayList();
        this.c = new ArrayList(collection);
    }

    public p(GraphRequest... graphRequestArr) {
        this.c = new ArrayList();
        this.c = Arrays.asList(graphRequestArr);
    }

    public int a() {
        return this.d;
    }

    public void a(a aVar) {
        if (!this.f.contains(aVar)) {
            this.f.add(aVar);
        }
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public final boolean add(GraphRequest graphRequest) {
        return this.c.add(graphRequest);
    }

    @Override // java.util.AbstractList, java.util.List
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public final void add(int i, GraphRequest graphRequest) {
        this.c.add(i, graphRequest);
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final void clear() {
        this.c.clear();
    }

    @Override // java.util.AbstractList, java.util.List
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public final GraphRequest get(int i) {
        return this.c.get(i);
    }

    @Override // java.util.AbstractList, java.util.List
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public final GraphRequest remove(int i) {
        return this.c.remove(i);
    }

    @Override // java.util.AbstractList, java.util.List
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public final GraphRequest set(int i, GraphRequest graphRequest) {
        return this.c.set(i, graphRequest);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.c.size();
    }

    final String b() {
        return this.e;
    }

    final Handler c() {
        return this.f3463b;
    }

    final void a(Handler handler) {
        this.f3463b = handler;
    }

    final List<GraphRequest> d() {
        return this.c;
    }

    final List<a> e() {
        return this.f;
    }

    public final String f() {
        return this.g;
    }

    public final List<q> g() {
        return i();
    }

    public final o h() {
        return j();
    }

    List<q> i() {
        return GraphRequest.b(this);
    }

    o j() {
        return GraphRequest.c(this);
    }
}
