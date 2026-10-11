package com.cmplay.tile2.ui.view;

import android.content.Context;
import android.content.Intent;
import android.net.wifi.WifiManager;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import com.cmplay.tile2.ui.view.NetStatReceiver;
import com.cmplay.tiles4.R;
import com.cmplay.util.u;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class MsgBoxNetworkStateViewFlipper extends MsgBoxViewAnimator {

    /* renamed from: a, reason: collision with root package name */
    private NetStatReceiver f1676a;

    /* renamed from: b, reason: collision with root package name */
    private b f1677b;
    private View c;
    private View d;
    private View e;
    private LoadingView f;

    public MsgBoxNetworkStateViewFlipper(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.f1676a = null;
        this.f1677b = null;
        LayoutInflater.from(context).inflate(R.layout.message_tag_network_viewflip_layout, this);
        f();
        this.c.setOnClickListener(new View.OnClickListener() { // from class: com.cmplay.tile2.ui.view.MsgBoxNetworkStateViewFlipper.1
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                MsgBoxNetworkStateViewFlipper.this.o();
            }
        });
        this.d.setOnClickListener(new View.OnClickListener() { // from class: com.cmplay.tile2.ui.view.MsgBoxNetworkStateViewFlipper.2
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                MsgBoxNetworkStateViewFlipper.this.n();
            }
        });
        this.e.setOnClickListener(new View.OnClickListener() { // from class: com.cmplay.tile2.ui.view.MsgBoxNetworkStateViewFlipper.3
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                MsgBoxNetworkStateViewFlipper.this.o();
            }
        });
    }

    private void f() {
        this.c = findViewById(2131230877);
        this.d = findViewById(2131230878);
        this.e = findViewById(2131230876);
        this.f = (LoadingView) findViewById(2131230872);
    }

    public void a(String str) {
        this.f.a(str);
    }

    public void a(b bVar) {
        this.f1677b = bVar;
    }

    @Override // com.cmplay.tile2.ui.view.MsgBoxViewAnimator, android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        h();
        super.onDetachedFromWindow();
    }

    private void g() {
        this.f1676a = new NetStatReceiver(getContext());
        this.f1676a.a(new NetStatReceiver.a() { // from class: com.cmplay.tile2.ui.view.MsgBoxNetworkStateViewFlipper.4
            @Override // com.cmplay.tile2.ui.view.NetStatReceiver.a
            public void a() {
                MsgBoxNetworkStateViewFlipper.this.k();
            }

            @Override // com.cmplay.tile2.ui.view.NetStatReceiver.a
            public void b() {
                MsgBoxNetworkStateViewFlipper.this.m();
            }

            @Override // com.cmplay.tile2.ui.view.NetStatReceiver.a
            public void c() {
                MsgBoxNetworkStateViewFlipper.this.h();
                if (MsgBoxNetworkStateViewFlipper.this.f1677b != null) {
                    MsgBoxNetworkStateViewFlipper.this.f1677b.a();
                }
            }

            @Override // com.cmplay.tile2.ui.view.NetStatReceiver.a
            public void d() {
                MsgBoxNetworkStateViewFlipper.this.h();
                MsgBoxNetworkStateViewFlipper.this.e();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h() {
        if (getContext() != null && this.f1676a != null) {
            try {
                getContext().unregisterReceiver(this.f1676a);
            } catch (Exception e) {
                e.printStackTrace();
            } finally {
                this.f1676a = null;
            }
        }
    }

    private boolean i() {
        return ((WifiManager) getContext().getSystemService("wifi")).isWifiEnabled();
    }

    protected void a() {
        setDisplayedChild(1);
    }

    protected void b() {
        setDisplayedChild(2);
    }

    protected void c() {
        setDisplayedChild(3);
    }

    public void d() {
        setDisplayedChild(0);
    }

    public void e() {
        if (getContext() != null) {
            if (this.f1676a == null) {
                g();
            }
            if (u.a(getContext())) {
                j();
            } else if (i()) {
                l();
            } else {
                k();
            }
        }
    }

    private void j() {
        c();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void k() {
        b();
    }

    private void l() {
        a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void m() {
        d();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void n() {
        if (u.a(getContext())) {
            d();
            if (this.f1677b != null) {
                this.f1677b.a();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean o() {
        if (getContext() != null) {
            Intent intent = new Intent("android.settings.WIFI_SETTINGS");
            intent.setFlags(268435456);
            getContext().startActivity(intent);
        }
        return false;
    }
}
