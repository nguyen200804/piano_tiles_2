package com.google.android.gms.common.api;

import com.google.android.gms.common.api.Result;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public abstract class OptionalPendingResult<R extends Result> extends PendingResult<R> {
    public abstract R get();

    public abstract boolean isDone();
}
