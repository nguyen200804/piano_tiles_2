package com.a.a;

/* compiled from: FloatEvaluator.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class b implements j<Number> {
    @Override // com.a.a.j
    public Float a(float f, Number number, Number number2) {
        float floatValue = number.floatValue();
        return Float.valueOf(floatValue + ((number2.floatValue() - floatValue) * f));
    }
}
