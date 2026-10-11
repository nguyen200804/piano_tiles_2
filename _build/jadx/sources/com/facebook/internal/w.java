package com.facebook.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;

/* compiled from: PlatformServiceClient.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public abstract class w implements ServiceConnection {

    /* renamed from: a, reason: collision with root package name */
    private final Context f3262a;

    /* renamed from: b, reason: collision with root package name */
    private final Handler f3263b;
    private a c;
    private boolean d;
    private Messenger e;
    private int f;
    private int g;
    private final String h;
    private final int i;

    /* compiled from: PlatformServiceClient.java */
    public interface a {
        void a(Bundle bundle);
    }

    protected abstract void a(Bundle bundle);

    public w(Context context, int i, int i2, int i3, String str) {
        Context applicationContext = context.getApplicationContext();
        this.f3262a = applicationContext != null ? applicationContext : context;
        this.f = i;
        this.g = i2;
        this.h = str;
        this.i = i3;
        this.f3263b = new Handler() { // from class: com.facebook.internal.w.1
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                w.this.a(message);
            }
        };
    }

    public void a(a aVar) {
        this.c = aVar;
    }

    public boolean a() {
        Intent a2;
        if (this.d || v.b(this.i) == -1 || (a2 = v.a(this.f3262a)) == null) {
            return false;
        }
        this.d = true;
        this.f3262a.bindService(a2, this, 1);
        return true;
    }

    public void b() {
        this.d = false;
    }

    @Override // android.content.ServiceConnection
    public void onServiceConnected(ComponentName name, IBinder service) {
        this.e = new Messenger(service);
        c();
    }

    @Override // android.content.ServiceConnection
    public void onServiceDisconnected(ComponentName name) {
        this.e = null;
        try {
            this.f3262a.unbindService(this);
        } catch (IllegalArgumentException e) {
        }
        b(null);
    }

    private void c() {
        Bundle bundle = new Bundle();
        bundle.putString("com.facebook.platform.extra.APPLICATION_ID", this.h);
        a(bundle);
        Message obtain = Message.obtain((Handler) null, this.f);
        obtain.arg1 = this.i;
        obtain.setData(bundle);
        obtain.replyTo = new Messenger(this.f3263b);
        try {
            this.e.send(obtain);
        } catch (RemoteException e) {
            b(null);
        }
    }

    protected void a(Message message) {
        if (message.what == this.g) {
            Bundle data = message.getData();
            if (data.getString("com.facebook.platform.status.ERROR_TYPE") != null) {
                b(null);
            } else {
                b(data);
            }
            try {
                this.f3262a.unbindService(this);
            } catch (IllegalArgumentException e) {
            }
        }
    }

    private void b(Bundle bundle) {
        if (this.d) {
            this.d = false;
            a aVar = this.c;
            if (aVar != null) {
                aVar.a(bundle);
            }
        }
    }
}
