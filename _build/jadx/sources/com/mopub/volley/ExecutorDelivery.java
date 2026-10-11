package com.mopub.volley;

import android.os.Handler;
import java.util.concurrent.Executor;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class ExecutorDelivery implements ResponseDelivery {

    /* renamed from: a, reason: collision with root package name */
    private final Executor f4754a;

    public ExecutorDelivery(final Handler handler) {
        this.f4754a = new Executor() { // from class: com.mopub.volley.ExecutorDelivery.1
            @Override // java.util.concurrent.Executor
            public void execute(Runnable command) {
                handler.post(command);
            }
        };
    }

    public ExecutorDelivery(Executor executor) {
        this.f4754a = executor;
    }

    @Override // com.mopub.volley.ResponseDelivery
    public void postResponse(Request<?> request, Response<?> response) {
        postResponse(request, response, null);
    }

    @Override // com.mopub.volley.ResponseDelivery
    public void postResponse(Request<?> request, Response<?> response, Runnable runnable) {
        request.markDelivered();
        request.addMarker("post-response");
        this.f4754a.execute(new a(request, response, runnable));
    }

    @Override // com.mopub.volley.ResponseDelivery
    public void postError(Request<?> request, VolleyError error) {
        request.addMarker("post-error");
        this.f4754a.execute(new a(request, Response.error(error), null));
    }

    private class a implements Runnable {

        /* renamed from: b, reason: collision with root package name */
        private final Request f4758b;
        private final Response c;
        private final Runnable d;

        public a(Request request, Response response, Runnable runnable) {
            this.f4758b = request;
            this.c = response;
            this.d = runnable;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f4758b.isCanceled()) {
                this.f4758b.b("canceled-at-delivery");
                return;
            }
            if (this.c.isSuccess()) {
                this.f4758b.deliverResponse(this.c.result);
            } else {
                this.f4758b.deliverError(this.c.error);
            }
            if (this.c.intermediate) {
                this.f4758b.addMarker("intermediate-response");
            } else {
                this.f4758b.b("done");
            }
            if (this.d != null) {
                this.d.run();
            }
        }
    }
}
