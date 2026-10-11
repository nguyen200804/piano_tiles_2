package com.tencent.wxop.stat.a;

import android.content.Context;
import com.tencent.wxop.stat.b.r;
import java.io.PrintWriter;
import java.io.StringWriter;
import org.json.JSONObject;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class c extends d {

    /* renamed from: a, reason: collision with root package name */
    private String f4817a;
    private int ay;
    private int bn;
    private Thread bo;

    public c(Context context, int i, Throwable th, com.tencent.wxop.stat.f fVar) {
        super(context, i, fVar);
        this.bn = 100;
        this.bo = null;
        a(99, th);
    }

    public c(Context context, int i, Throwable th, Thread thread) {
        super(context, i, null);
        this.bn = 100;
        this.bo = null;
        a(2, th);
        this.bo = thread;
    }

    private void a(int i, Throwable th) {
        if (th != null) {
            StringWriter stringWriter = new StringWriter();
            PrintWriter printWriter = new PrintWriter(stringWriter);
            th.printStackTrace(printWriter);
            this.f4817a = stringWriter.toString();
            this.ay = i;
            printWriter.close();
        }
    }

    @Override // com.tencent.wxop.stat.a.d
    public final e ac() {
        return e.ERROR;
    }

    @Override // com.tencent.wxop.stat.a.d
    public final boolean b(JSONObject jSONObject) {
        r.a(jSONObject, "er", this.f4817a);
        jSONObject.put("ea", this.ay);
        if (this.ay != 2 && this.ay != 3) {
            return true;
        }
        new com.tencent.wxop.stat.b.d(this.bv).a(jSONObject, this.bo);
        return true;
    }
}
