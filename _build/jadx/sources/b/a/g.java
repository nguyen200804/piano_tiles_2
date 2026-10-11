package b.a;

import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.Iterator;

/* compiled from: UError.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class g extends s implements cs {
    public g() {
        a(System.currentTimeMillis());
        a(t.LEGIT);
    }

    public g(Throwable th) {
        this();
        a(a(th));
    }

    private String a(Throwable th) {
        String str = null;
        if (th == null) {
            return null;
        }
        try {
            StringWriter stringWriter = new StringWriter();
            PrintWriter printWriter = new PrintWriter(stringWriter);
            th.printStackTrace(printWriter);
            for (Throwable cause = th.getCause(); cause != null; cause = cause.getCause()) {
                cause.printStackTrace(printWriter);
            }
            str = stringWriter.toString();
            printWriter.close();
            stringWriter.close();
            return str;
        } catch (Exception e) {
            e.printStackTrace();
            return str;
        }
    }

    @Override // b.a.cs
    public void a(am amVar, String str) {
        ab abVar;
        if (amVar.b() > 0) {
            Iterator<ab> it = amVar.c().iterator();
            while (it.hasNext()) {
                abVar = it.next();
                if (str.equals(abVar.a())) {
                    break;
                }
            }
        }
        abVar = null;
        if (abVar == null) {
            abVar = new ab();
            abVar.a(str);
            amVar.a(abVar);
        }
        abVar.a(this);
    }
}
