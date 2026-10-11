package com.google.android.gms.internal;

import java.lang.annotation.Annotation;
import java.lang.reflect.Field;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class zzamm {
    private final Field bdH;

    public zzamm(Field field) {
        zzann.zzy(field);
        this.bdH = field;
    }

    public <T extends Annotation> T getAnnotation(Class<T> cls) {
        return (T) this.bdH.getAnnotation(cls);
    }
}
