package com.mopub.volley.toolbox;

import com.mopub.volley.Request;
import com.mopub.volley.Response;
import com.mopub.volley.VolleyError;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class RequestFuture<T> implements Response.ErrorListener, Response.Listener<T>, Future<T> {

    /* renamed from: a, reason: collision with root package name */
    private Request<?> f4811a;

    /* renamed from: b, reason: collision with root package name */
    private boolean f4812b = false;
    private T c;
    private VolleyError d;

    public static <E> RequestFuture<E> newFuture() {
        return new RequestFuture<>();
    }

    private RequestFuture() {
    }

    public void setRequest(Request<?> request) {
        this.f4811a = request;
    }

    @Override // java.util.concurrent.Future
    public synchronized boolean cancel(boolean mayInterruptIfRunning) {
        boolean z = false;
        synchronized (this) {
            if (this.f4811a != null && !isDone()) {
                this.f4811a.cancel();
                z = true;
            }
        }
        return z;
    }

    @Override // java.util.concurrent.Future
    public T get() throws InterruptedException, ExecutionException {
        try {
            return a(null);
        } catch (TimeoutException e) {
            throw new AssertionError(e);
        }
    }

    @Override // java.util.concurrent.Future
    public T get(long timeout, TimeUnit unit) throws InterruptedException, ExecutionException, TimeoutException {
        return a(Long.valueOf(TimeUnit.MILLISECONDS.convert(timeout, unit)));
    }

    private synchronized T a(Long l) throws InterruptedException, ExecutionException, TimeoutException {
        T t;
        if (this.d != null) {
            throw new ExecutionException(this.d);
        }
        if (this.f4812b) {
            t = this.c;
        } else {
            if (l == null) {
                wait(0L);
            } else if (l.longValue() > 0) {
                wait(l.longValue());
            }
            if (this.d != null) {
                throw new ExecutionException(this.d);
            }
            if (!this.f4812b) {
                throw new TimeoutException();
            }
            t = this.c;
        }
        return t;
    }

    @Override // java.util.concurrent.Future
    public boolean isCancelled() {
        if (this.f4811a == null) {
            return false;
        }
        return this.f4811a.isCanceled();
    }

    @Override // java.util.concurrent.Future
    public synchronized boolean isDone() {
        boolean z;
        if (!this.f4812b && this.d == null) {
            z = isCancelled();
        }
        return z;
    }

    @Override // com.mopub.volley.Response.Listener
    public synchronized void onResponse(T response) {
        this.f4812b = true;
        this.c = response;
        notifyAll();
    }

    @Override // com.mopub.volley.Response.ErrorListener
    public synchronized void onErrorResponse(VolleyError error) {
        this.d = error;
        notifyAll();
    }
}
