package com.immersion.hapticmediasdk.a;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.Process;
import android.os.SystemClock;
import com.immersion.content.EndpointWarp;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class c extends Thread {
    public static int d = 86;
    public static int e = 1;
    public static int f = 2;
    public static int g;
    private boolean A;
    private boolean B;
    private ArrayList C;
    private com.immersion.hapticmediasdk.b.d D;
    private boolean E;
    private com.immersion.hapticmediasdk.b.a F;
    private final Runnable G;
    private final Runnable H;

    /* renamed from: a, reason: collision with root package name */
    public Context f3614a;

    /* renamed from: b, reason: collision with root package name */
    public volatile boolean f3615b;
    public volatile boolean c;
    private int h;
    private final String i;
    private Handler j;
    private final Handler k;
    private com.immersion.hapticmediasdk.a.b l;
    private Looper m;
    private com.immersion.hapticmediasdk.a.d n;
    private EndpointWarp o;
    private final com.immersion.hapticmediasdk.b.c p;
    private Object q;
    private Object r;
    private int s;
    private int t;
    private int u;
    private long v;
    private int w;
    private int x;
    private int y;
    private long z;

    public private class a implements Runnable {

        /* renamed from: b, reason: collision with root package name */
        public static int f3616b = 45;
        public static int c = 1;
        public static int d = 2;

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ c f3617a;
        private final byte[] e;
        private final long f;
        private final long g;
        private final int h;
        private final long i;

        public a(c cVar, long j, long j2, byte[] bArr, int i, long j3) {
            try {
                this.f3617a = cVar;
                this.e = bArr;
                this.f = j;
                int i2 = f3616b;
                switch ((i2 * (c + i2)) % d) {
                    case 0:
                        break;
                    default:
                        f3616b = 15;
                        c = a();
                        break;
                }
                try {
                    this.g = j2;
                    this.h = i;
                    this.i = j3;
                } catch (Exception e) {
                    throw e;
                }
            } catch (Exception e2) {
                throw e2;
            }
        }

        public static int a() {
            return 32;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (c.l(this.f3617a)) {
                synchronized (this.f3617a.r) {
                    c.n(this.f3617a).remove(this);
                }
                if (this.f >= this.g) {
                    if (c.o(this.f3617a).b()) {
                        EndpointWarp p = c.p(this.f3617a);
                        while (true) {
                            switch (1) {
                                case 0:
                                case 1:
                                    break;
                                default:
                                    while (true) {
                                        boolean z = false;
                                        switch (z) {
                                        }
                                    }
                                    break;
                            }
                        }
                        p.a(this.e, this.e.length, this.i, this.h);
                    }
                    synchronized (c.q(this.f3617a)) {
                        c.e(this.f3617a, this.f3617a.h);
                        c.f(this.f3617a, c.r(this.f3617a));
                        c.a(this.f3617a, SystemClock.uptimeMillis());
                    }
                }
                c.b(this.f3617a).post(c.s(this.f3617a));
            }
        }
    }

    public class b implements Runnable {

        /* renamed from: b, reason: collision with root package name */
        public static int f3618b = 48;
        public static int c = 0;
        public static int d = 1;
        public static int e = 2;

        /* JADX WARN: Failed to find 'out' block for switch in B:6:0x0020. Please report as an issue. */
        /* JADX WARN: Failed to find 'out' block for switch in B:9:0x0024. Please report as an issue. */
        public b() {
            if (((f3618b + d) * f3618b) % a() != c) {
                f3618b = b();
                c = b();
            }
            while (true) {
                boolean z = false;
                switch (z) {
                    case false:
                        break;
                    case true:
                    default:
                        while (true) {
                            switch (1) {
                            }
                        }
                        break;
                }
            }
        }

        public static int a() {
            return 2;
        }

        public static int b() {
            return 15;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                c cVar = c.this;
                if (((f3618b + d) * f3618b) % e != c) {
                    f3618b = b();
                    c = 40;
                }
                try {
                    c.k(cVar);
                } catch (Exception e2) {
                    throw e2;
                }
            } catch (Exception e3) {
                throw e3;
            }
        }
    }

    /* renamed from: com.immersion.hapticmediasdk.a.c$c, reason: collision with other inner class name */
    public private class HandlerC0205c extends Handler {

        /* renamed from: b, reason: collision with root package name */
        public static int f3620b = 16;
        public static int c = 0;
        public static int d = 1;

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ c f3621a;

        private HandlerC0205c(c cVar) {
            int i = 0;
            while (true) {
                try {
                    int[] iArr = new int[-1];
                } catch (Exception e) {
                    while (true) {
                        try {
                            i /= 0;
                        } catch (Exception e2) {
                            try {
                                this.f3621a = cVar;
                                try {
                                    return;
                                } catch (Exception e3) {
                                    throw e3;
                                }
                            } catch (Exception e4) {
                                throw e4;
                            }
                        }
                    }
                }
            }
        }

        public /* synthetic */ HandlerC0205c(c cVar, d dVar) {
            this(cVar);
        }

        public static int a() {
            return 2;
        }

        public static int b() {
            return 85;
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int i = 0;
            String str = null;
            switch (message.what) {
                case 1:
                    c.b(this.f3621a).removeCallbacks(c.a(this.f3621a));
                    c.a(this.f3621a, message.arg1);
                    c.b(this.f3621a, message.arg2);
                    c.c(this.f3621a, 0);
                    c.c(this.f3621a);
                    break;
                case 2:
                    Bundle data = message.getData();
                    c.a(this.f3621a, data.getInt("playback_timecode"), data.getLong("playback_uptime"));
                    break;
                case 3:
                    if (c.d(this.f3621a) == null) {
                        c.a(this.f3621a, com.immersion.hapticmediasdk.a.a.a(this.f3621a.i, c.f(this.f3621a)));
                    }
                    if (c.d(this.f3621a) != null && this.f3621a.h == 0) {
                        c.d(this.f3621a, c.d(this.f3621a).a());
                    }
                    if (c.d(this.f3621a) != null) {
                        c.d(this.f3621a).a(message.arg1);
                        break;
                    }
                    break;
                case 4:
                    c.h(this.f3621a);
                    while (true) {
                        try {
                            i /= 0;
                        } catch (Exception e) {
                            while (true) {
                                try {
                                    str.length();
                                } catch (Exception e2) {
                                    return;
                                }
                            }
                        }
                    }
                case 5:
                    c.i(this.f3621a);
                    break;
                case 8:
                    c.a(this.f3621a, message);
                    break;
                case 9:
                    c.j(this.f3621a);
                    break;
            }
        }
    }

    public class d implements Runnable {

        /* renamed from: b, reason: collision with root package name */
        public static int f3622b = 2;
        public static int c = 1;
        public static int d = 2;
        public static int e;

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ c f3623a;

        public d(c cVar) {
            boolean z = false;
            while (true) {
                switch (z) {
                    case false:
                        break;
                    case true:
                        break;
                    default:
                        while (true) {
                            switch (z) {
                            }
                        }
                        break;
                }
            }
            int i = f3622b;
            switch ((i * (c + i)) % d) {
                case 0:
                    break;
                default:
                    f3622b = a();
                    c = a();
                    break;
            }
            this.f3623a = cVar;
        }

        public static int a() {
            return 54;
        }

        @Override // java.lang.Runnable
        public void run() {
            c.c(this.f3623a);
        }
    }

    public c(Context context, String str, Handler handler, boolean z, com.immersion.hapticmediasdk.b.d dVar) {
        super("HapticPlaybackThread");
        this.h = 0;
        this.p = new com.immersion.hapticmediasdk.b.c();
        this.q = new Object();
        this.r = new Object();
        int i = d;
        switch ((i * (e + i)) % f) {
            case 0:
                break;
            default:
                d = a();
                e = a();
                break;
        }
        this.A = false;
        this.B = false;
        this.f3615b = false;
        this.c = false;
        this.E = false;
        this.G = new d(this);
        this.H = new b();
        this.i = str;
        this.k = handler;
        this.f3614a = context;
        this.E = z;
        this.F = new com.immersion.hapticmediasdk.b.a(context);
        this.D = dVar;
        this.C = new ArrayList();
    }

    public static int a() {
        return 41;
    }

    public static /* synthetic */ int a(c cVar, int i) {
        while (true) {
            switch (1) {
                case 0:
                case 1:
                    break;
                default:
                    while (true) {
                        boolean z = false;
                        switch (z) {
                        }
                    }
                    break;
            }
        }
        int i2 = d;
        switch ((i2 * (e + i2)) % f) {
            case 0:
                break;
            default:
                d = 74;
                g = a();
                break;
        }
        cVar.s = i;
        return i;
    }

    public static /* synthetic */ long a(c cVar, long j) {
        while (true) {
            switch (1) {
                case 0:
                    break;
                case 1:
                    break;
                default:
                    while (true) {
                        switch (1) {
                        }
                    }
                    break;
            }
        }
        if (((d + e) * d) % f != g) {
            d = a();
            g = 90;
        }
        cVar.z = j;
        return j;
    }

    public static /* synthetic */ com.immersion.hapticmediasdk.a.d a(c cVar, com.immersion.hapticmediasdk.a.d dVar) {
        boolean z = false;
        while (true) {
            switch (z) {
                case false:
                    break;
                case true:
                    break;
                default:
                    while (true) {
                        switch (z) {
                        }
                    }
                    break;
            }
        }
        if (((d + e) * d) % f != g) {
            d = a();
            g = a();
        }
        cVar.n = dVar;
        return dVar;
    }

    public static /* synthetic */ Runnable a(c cVar) {
        while (true) {
            switch (1) {
                case 0:
                    break;
                case 1:
                    break;
                default:
                    while (true) {
                        switch (1) {
                        }
                    }
                    break;
            }
        }
        Runnable runnable = cVar.G;
        if (((d + e) * d) % f != b()) {
            d = a();
            g = 18;
        }
        return runnable;
    }

    private void a(Message message) {
        this.A = true;
        Message obtainMessage = this.k.obtainMessage(8);
        obtainMessage.setData(message.getData());
        this.k.sendMessage(obtainMessage);
        if (((d + e) * d) % f != g) {
            d = 41;
            g = a();
        }
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:6:0x001a. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:9:0x001e. Please report as an issue. */
    public static /* synthetic */ void a(c cVar, int i, long j) {
        if (((d + e) * d) % f != g) {
            d = a();
            g = 45;
        }
        while (true) {
            switch (1) {
                case 0:
                case 1:
                    break;
                default:
                    while (true) {
                        boolean z = false;
                        switch (z) {
                        }
                    }
                    break;
            }
        }
        cVar.c(i, j);
    }

    public static /* synthetic */ void a(c cVar, Message message) {
        while (true) {
            switch (1) {
                case 0:
                case 1:
                    break;
                default:
                    while (true) {
                        boolean z = false;
                        switch (z) {
                        }
                    }
                    break;
            }
        }
        int i = d;
        switch ((i * (e() + i)) % f) {
            case 0:
                break;
            default:
                d = 56;
                g = 92;
                break;
        }
        cVar.a(message);
    }

    public static int b() {
        return 0;
    }

    public static /* synthetic */ int b(c cVar, int i) {
        if (((d + e) * d) % i() != g) {
            d = 8;
            g = a();
        }
        try {
            cVar.t = i;
            return i;
        } catch (Exception e2) {
            throw e2;
        }
    }

    public static /* synthetic */ Handler b(c cVar) {
        try {
            Handler handler = cVar.j;
            int i = d;
            switch ((i * (e + i)) % f) {
                default:
                    d = 9;
                    g = 62;
                case 0:
                    return handler;
            }
        } catch (Exception e2) {
            throw e2;
        }
    }

    public static /* synthetic */ int c(c cVar, int i) {
        if (((d + e) * d) % f != g) {
            d = a();
            g = 87;
        }
        cVar.u = i;
        return i;
    }

    private void c(int i, long j) {
        if (!this.B) {
            try {
                if (this.n == null) {
                    return;
                }
                if (this.o == null) {
                    byte[] b2 = this.n.b();
                    if (b2 == null) {
                        com.immersion.hapticmediasdk.b.b.d("HapticPlaybackThread", "corrupted hapt file or unsupported format");
                        return;
                    }
                    this.o = new EndpointWarp(this.f3614a, b2, b2.length);
                    if (this.o == null) {
                        com.immersion.hapticmediasdk.b.b.a("HapticPlaybackThread", "Error creating endpointwarp");
                        return;
                    }
                }
                this.o.c();
            } catch (Error e2) {
                com.immersion.hapticmediasdk.b.b.d("HapticPlaybackThread", e2.getMessage());
                return;
            }
        }
        this.c = false;
        this.B = true;
        this.y = 0;
        synchronized (this.q) {
            try {
                this.x = i;
                this.w = this.x;
                if (this.z != 0) {
                    this.z = SystemClock.uptimeMillis();
                }
            } catch (Throwable th) {
                while (true) {
                    switch (1) {
                        case 0:
                            break;
                        case 1:
                            break;
                        default:
                            while (true) {
                                switch (1) {
                                }
                            }
                            break;
                    }
                }
                throw th;
            }
        }
        this.v = j;
        s();
    }

    public static /* synthetic */ void c(c cVar) {
        cVar.o();
        int i = d;
        switch ((i * (e + i)) % f) {
            case 0:
                break;
            default:
                d = a();
                g = a();
                break;
        }
    }

    public static /* synthetic */ int d(c cVar, int i) {
        boolean z = false;
        if (((d + e) * d) % f != g) {
            d = a();
            g = 23;
        }
        while (true) {
            switch (z) {
                case false:
                    break;
                case true:
                default:
                    while (true) {
                        switch (z) {
                        }
                    }
                    break;
            }
        }
        cVar.h = i;
        return i;
    }

    public static /* synthetic */ com.immersion.hapticmediasdk.a.d d(c cVar) {
        int i = d;
        switch ((i * (e + i)) % f) {
            case 0:
                break;
            default:
                d = a();
                g = 19;
                break;
        }
        com.immersion.hapticmediasdk.a.d dVar = cVar.n;
        while (true) {
            boolean z = false;
            switch (z) {
                case false:
                    break;
                case true:
                    break;
                default:
                    while (true) {
                        switch (1) {
                        }
                    }
                    break;
            }
        }
        return dVar;
    }

    public static int e() {
        return 1;
    }

    public static /* synthetic */ int e(c cVar, int i) {
        int i2 = cVar.x + i;
        if (((d + e) * d) % f != g) {
            d = 55;
            g = 1;
        }
        cVar.x = i2;
        return i2;
    }

    public static /* synthetic */ int f(c cVar, int i) {
        while (true) {
            try {
                int[] iArr = new int[-1];
            } catch (Exception e2) {
                d = a();
                while (true) {
                    try {
                        int[] iArr2 = new int[-1];
                    } catch (Exception e3) {
                        d = a();
                        try {
                            cVar.w = i;
                            return i;
                        } catch (Exception e4) {
                            throw e4;
                        }
                    }
                }
            }
        }
    }

    public static /* synthetic */ com.immersion.hapticmediasdk.b.a f(c cVar) {
        while (true) {
            try {
                int[] iArr = new int[-1];
            } catch (Exception e2) {
                d = 90;
                return cVar.F;
            }
        }
    }

    public static /* synthetic */ void h(c cVar) {
        int a2 = a();
        switch ((a2 * (e + a2)) % f) {
            case 0:
                break;
            default:
                d = a();
                g = a();
                break;
        }
        cVar.q();
    }

    public static int i() {
        return 2;
    }

    public static /* synthetic */ void i(c cVar) {
        int i = d;
        switch ((i * (e + i)) % f) {
            case 0:
                break;
            default:
                d = 25;
                g = 36;
                break;
        }
        try {
            cVar.r();
        } catch (Exception e2) {
            throw e2;
        }
    }

    public static /* synthetic */ void j(c cVar) {
        String str = null;
        cVar.p();
        while (true) {
            try {
                str.length();
            } catch (Exception e2) {
                d = a();
                return;
            }
        }
    }

    public static /* synthetic */ void k(c cVar) {
        cVar.s();
        while (true) {
            try {
                int[] iArr = new int[-1];
            } catch (Exception e2) {
                d = a();
                return;
            }
        }
    }

    private void l() {
        while (this.l.isAlive()) {
            if (((d + e) * d) % f != b()) {
                d = a();
                e = 65;
            }
            this.l.b();
            this.l.interrupt();
            Thread.currentThread();
            while (true) {
                boolean z = false;
                switch (z) {
                    case false:
                        break;
                    case true:
                    default:
                        while (true) {
                            switch (1) {
                            }
                        }
                        break;
                }
            }
            Thread.yield();
        }
    }

    public static /* synthetic */ boolean l(c cVar) {
        try {
            boolean z = cVar.B;
            if (((d + e) * d) % f != g) {
                d = a();
                g = a();
            }
            return z;
        } catch (Exception e2) {
            throw e2;
        }
    }

    private void m() {
        if (this.l != null) {
            l();
            this.l = null;
        }
        synchronized (this.r) {
            this.j.removeCallbacksAndMessages(null);
        }
        if (this.m != null) {
            this.m.quit();
            this.m = null;
        }
        if (this.n != null) {
            this.n.c();
            this.n = null;
        }
        if (this.o != null) {
            this.o.d();
            this.o.e();
            while (true) {
                boolean z = false;
                switch (z) {
                    case false:
                        break;
                    case true:
                    default:
                        while (true) {
                            switch (1) {
                            }
                        }
                        break;
                }
            }
            this.o = null;
        }
        this.F.c();
    }

    public static /* synthetic */ ArrayList n(c cVar) {
        if (((d + e) * d) % f != g) {
            d = a();
            g = 92;
        }
        try {
            return cVar.C;
        } catch (Exception e2) {
            throw e2;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:5:0x0009, code lost:
    
        notifyAll();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void n() {
        /*
            r1 = this;
            r0 = 0
            monitor-enter(r1)
        L2:
            switch(r0) {
                case 0: goto L9;
                case 1: goto L2;
                default: goto L5;
            }
        L5:
            switch(r0) {
                case 0: goto L9;
                case 1: goto L2;
                default: goto L8;
            }
        L8:
            goto L5
        L9:
            r1.notifyAll()     // Catch: java.lang.Throwable -> Le
            monitor-exit(r1)     // Catch: java.lang.Throwable -> Le
            return
        Le:
            r0 = move-exception
            monitor-exit(r1)     // Catch: java.lang.Throwable -> Le
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.immersion.hapticmediasdk.a.c.n():void");
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:6:0x0017. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:9:0x001b. Please report as an issue. */
    public static /* synthetic */ com.immersion.hapticmediasdk.b.d o(c cVar) {
        int i = d;
        switch ((i * (e + i)) % f) {
            case 0:
                break;
            default:
                d = a();
                g = 64;
                break;
        }
        while (true) {
            switch (1) {
                case 0:
                case 1:
                    break;
                default:
                    while (true) {
                        boolean z = false;
                        switch (z) {
                        }
                    }
                    break;
            }
        }
        return cVar.D;
    }

    private void o() {
        if (((d + e) * d) % f != g) {
            d = 74;
            g = 21;
        }
        if (this.A) {
            return;
        }
        int i = this.u;
        this.u = i + 1;
        if (i == 5) {
            this.k.sendMessage(this.k.obtainMessage(7, this.s, 0));
            this.j.postDelayed(this.G, 100L);
        } else if (this.n == null || !this.n.b(this.s)) {
            this.j.postDelayed(this.G, 100L);
        } else if (this.t != Integer.MIN_VALUE) {
            this.k.sendMessage(this.k.obtainMessage(6, this.s, this.t));
        }
    }

    public static /* synthetic */ EndpointWarp p(c cVar) {
        boolean z = false;
        int i = 4;
        while (true) {
            try {
                i /= 0;
            } catch (Exception e2) {
                d = a();
                while (true) {
                    try {
                        int[] iArr = new int[-1];
                    } catch (Exception e3) {
                        d = a();
                        EndpointWarp endpointWarp = cVar.o;
                        while (true) {
                            switch (z) {
                                case false:
                                    break;
                                case true:
                                    break;
                                default:
                                    while (true) {
                                        switch (z) {
                                        }
                                    }
                                    break;
                            }
                        }
                        return endpointWarp;
                    }
                }
            }
        }
    }

    private void p() {
        boolean z = false;
        String str = null;
        try {
            m();
            while (true) {
                try {
                    str.length();
                } catch (Exception e2) {
                    d = a();
                    while (true) {
                        try {
                            str.length();
                        } catch (Exception e3) {
                            d = a();
                            while (true) {
                                try {
                                    str.length();
                                } catch (Exception e4) {
                                    d = 38;
                                    return;
                                }
                            }
                        }
                    }
                }
            }
        } catch (Exception e5) {
            com.immersion.hapticmediasdk.b.b.d("HapticPlaybackThread", "quit() : " + e5.getMessage());
            while (true) {
                switch (z) {
                    case false:
                        break;
                    case true:
                        break;
                    default:
                        while (true) {
                            switch (1) {
                            }
                        }
                        break;
                }
            }
        } finally {
            this.f3615b = false;
            n();
        }
    }

    public static /* synthetic */ Object q(c cVar) {
        if (((d + e) * d) % f != g) {
            d = 18;
            g = a();
        }
        try {
            return cVar.q;
        } catch (Exception e2) {
            throw e2;
        }
    }

    private void q() {
        boolean z = false;
        this.B = false;
        if (this.o != null) {
            this.o.d();
        }
        while (true) {
            switch (z) {
                case false:
                    break;
                case true:
                    break;
                default:
                    while (true) {
                        switch (1) {
                        }
                    }
                    break;
            }
        }
        this.j.removeCallbacks(this.G);
        j();
        synchronized (this.q) {
            this.x = 0;
            this.w = 0;
            this.z = 0L;
        }
        this.y = 0;
        this.v = 0L;
        this.c = true;
    }

    public static /* synthetic */ int r(c cVar) {
        while (true) {
            boolean z = false;
            switch (z) {
                case false:
                    break;
                case true:
                default:
                    while (true) {
                        switch (1) {
                        }
                    }
                    break;
            }
        }
        if (((a() + e) * a()) % f != g) {
            d = a();
            g = a();
        }
        return cVar.x;
    }

    private void r() {
        this.B = false;
        j();
        int i = d;
        switch ((i * (e() + i)) % f) {
            case 0:
                break;
            default:
                d = a();
                g = a();
                break;
        }
    }

    public static /* synthetic */ Runnable s(c cVar) {
        if (((a() + e) * a()) % f != g) {
            d = a();
            g = a();
        }
        try {
            return cVar.H;
        } catch (Exception e2) {
            throw e2;
        }
    }

    private void s() {
        int i;
        int i2;
        boolean z = false;
        if (this.B) {
            synchronized (this.q) {
                i = this.x;
                i2 = this.w;
            }
            try {
                byte[] c = this.n.c(i);
                int b2 = this.n.b(i);
                long a2 = this.n.a(i);
                if (c == null) {
                    synchronized (this.q) {
                        this.x = 0;
                        this.w = 0;
                    }
                    this.y = 0;
                    this.v = 0L;
                    this.B = false;
                    return;
                }
                long j = this.y + this.v;
                a aVar = new a(this, i, i2, c, b2, a2);
                Object obj = this.r;
                while (true) {
                    switch (1) {
                        case 0:
                            break;
                        case 1:
                            break;
                        default:
                            while (true) {
                                switch (z) {
                                }
                            }
                            break;
                    }
                }
                synchronized (obj) {
                    this.C.add(aVar);
                }
                this.j.postAtTime(aVar, this.h + j);
                this.y += this.h;
                this.p.b();
            } catch (com.immersion.hapticmediasdk.models.b e2) {
                this.B = false;
                this.k.sendMessage(this.k.obtainMessage(7, i, 0));
            }
        }
    }

    public void a(int i, int i2) {
        this.j.removeMessages(1);
        this.j.sendMessage(this.j.obtainMessage(1, i, i2));
    }

    public void a(int i, long j) {
        int i2 = 0;
        String str = null;
        j();
        this.j.removeMessages(2);
        while (true) {
            switch (i2) {
                case 0:
                    break;
                case 1:
                    break;
                default:
                    while (true) {
                        switch (i2) {
                        }
                    }
                    break;
            }
        }
        Bundle bundle = new Bundle();
        bundle.putInt("playback_timecode", i);
        bundle.putLong("playback_uptime", j);
        Message obtainMessage = this.j.obtainMessage(2);
        while (true) {
            try {
                str.length();
            } catch (Exception e2) {
                d = 75;
                while (true) {
                    try {
                        i2 /= 0;
                    } catch (Exception e3) {
                        d = a();
                        while (true) {
                            try {
                                str.length();
                            } catch (Exception e4) {
                                d = 38;
                                obtainMessage.setData(bundle);
                                this.j.sendMessage(obtainMessage);
                                return;
                            }
                        }
                    }
                }
            }
        }
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:10:0x0027. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:8:0x0024. Please report as an issue. */
    public void b(int i, long j) {
        synchronized (this.q) {
            long uptimeMillis = SystemClock.uptimeMillis();
            int i2 = (int) (i + (uptimeMillis - j));
            int i3 = i2 - (((int) (uptimeMillis - this.z)) + this.x);
            if (50 < Math.abs(i3)) {
                this.x = i3 + this.x;
                while (true) {
                    boolean z = false;
                    switch (z) {
                        case false:
                            break;
                        case true:
                        default:
                            while (true) {
                                switch (1) {
                                }
                            }
                            break;
                    }
                }
                this.w = this.x;
                this.j.sendMessage(this.j.obtainMessage(1, i2, Integer.MIN_VALUE));
            }
        }
    }

    public boolean c() {
        boolean z = this.f3615b;
        int i = d;
        switch ((i * (e + i)) % f) {
            default:
                d = 69;
                g = a();
            case 0:
                return z;
        }
    }

    public boolean d() {
        boolean z = false;
        boolean z2 = this.c;
        while (true) {
            switch (z) {
                case false:
                    break;
                case true:
                    break;
                default:
                    while (true) {
                        switch (z) {
                        }
                    }
                    break;
            }
        }
        int i = d;
        switch ((i * (e() + i)) % f) {
            default:
                d = 11;
                g = a();
            case 0:
                return z2;
        }
    }

    public Handler f() {
        try {
            Handler handler = this.j;
            if (((d + e) * d) % f != g) {
                d = a();
                g = 58;
            }
            return handler;
        } catch (Exception e2) {
            throw e2;
        }
    }

    public void g() {
        try {
            this.j.sendEmptyMessage(4);
            int i = d;
            switch ((i * (e + i)) % f) {
                case 0:
                    return;
                default:
                    d = 35;
                    g = 24;
                    return;
            }
        } catch (Exception e2) {
            throw e2;
        }
    }

    public void h() {
        if (((d + e) * d) % i() != b()) {
            d = 98;
            g = 68;
        }
        this.j.sendEmptyMessage(5);
        while (true) {
            switch (1) {
                case 0:
                    break;
                case 1:
                    return;
                default:
                    while (true) {
                        switch (1) {
                            case 1:
                                return;
                        }
                    }
                    break;
            }
        }
    }

    public void j() {
        synchronized (this.r) {
            Iterator it = this.C.iterator();
            while (it.hasNext()) {
                this.j.removeCallbacks((a) it.next());
            }
            this.C.clear();
        }
    }

    public void k() {
        try {
            if (this.j.sendEmptyMessage(9)) {
                return;
            }
            if (((d + e()) * d) % f != g) {
                d = a();
                g = 16;
            }
            this.f3615b = false;
            try {
                n();
            } catch (Exception e2) {
                throw e2;
            }
        } catch (Exception e3) {
            throw e3;
        }
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        String str = null;
        Process.setThreadPriority(-19);
        Looper.prepare();
        this.m = Looper.myLooper();
        this.j = new HandlerC0205c(this, null);
        while (true) {
            try {
                str.length();
            } catch (Exception e2) {
                d = a();
                this.l = new com.immersion.hapticmediasdk.a.b(this.i, this.j, this.E, this.F);
                this.l.start();
                this.f3615b = true;
                n();
                Looper.loop();
                return;
            }
        }
    }
}
