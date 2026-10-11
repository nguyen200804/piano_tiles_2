package com.cmcm.orion.picks.impl;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.WindowManager;
import android.widget.RelativeLayout;
import com.cmcm.orion.adsdk.R;
import com.cmcm.orion.picks.b.a;
import com.cmcm.orion.picks.b.b;

@TargetApi(14)
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class IncentiveVideoPlayActivity extends Activity {

    /* renamed from: b, reason: collision with root package name */
    private static com.cmcm.orion.picks.b.a f890b;
    private static b.a f;

    /* renamed from: a, reason: collision with root package name */
    private RelativeLayout f891a;
    private com.cmcm.orion.picks.b.a c;
    private h d;
    private g e;
    private a.InterfaceC0013a g = new a.InterfaceC0013a() { // from class: com.cmcm.orion.picks.impl.IncentiveVideoPlayActivity.2
        @Override // com.cmcm.orion.picks.b.a.InterfaceC0013a
        public final void a() {
            if (IncentiveVideoPlayActivity.f != null) {
                com.cmcm.orion.utils.e.b(new Runnable() { // from class: com.cmcm.orion.picks.impl.IncentiveVideoPlayActivity.2.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        IncentiveVideoPlayActivity.f.a();
                    }
                });
            }
        }

        @Override // com.cmcm.orion.picks.b.a.InterfaceC0013a
        public final void b() {
        }

        @Override // com.cmcm.orion.picks.b.a.InterfaceC0013a
        public final void a(String str) {
        }

        @Override // com.cmcm.orion.picks.b.a.InterfaceC0013a
        public final void c() {
        }

        @Override // com.cmcm.orion.picks.b.a.InterfaceC0013a
        public final void d() {
            IncentiveVideoPlayActivity.a(IncentiveVideoPlayActivity.this);
        }
    };

    public static void a(b.a aVar) {
        f = aVar;
    }

    public static boolean a(Context context, com.cmcm.orion.picks.b.a aVar) {
        if (context == null || aVar == null) {
            return false;
        }
        f890b = aVar;
        Intent intent = new Intent(context, (Class<?>) IncentiveVideoPlayActivity.class);
        intent.setFlags(268435456);
        context.startActivity(intent);
        return true;
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.orion_activity_brand_incentive_video);
        if (f890b == null || f890b.d() == null || f890b.f() == null) {
            if (f != null) {
                com.cmcm.orion.utils.e.b(new Runnable() { // from class: com.cmcm.orion.picks.impl.IncentiveVideoPlayActivity.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        IncentiveVideoPlayActivity.f.a("no cache ad");
                    }
                });
            }
            finish();
            return;
        }
        this.c = f890b;
        f890b = null;
        this.c.a(this.g);
        this.d = this.c.d();
        this.e = this.c.f();
        WindowManager.LayoutParams attributes = getWindow().getAttributes();
        attributes.flags |= 1024;
        getWindow().setAttributes(attributes);
        this.f891a = (RelativeLayout) findViewById(R.id.full_screen_brand_root_view);
        this.f891a.removeAllViews();
        this.f891a.addView(this.c.e());
        if (this.d != null) {
            if (this.d.b(this) != null) {
                this.c.a(r0.a() / r0.b());
                return;
            }
            g.a(this.d, 403);
        }
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration newConfig) {
        super.onConfigurationChanged(newConfig);
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        if (this.c != null) {
            this.c.i();
            this.c.a();
        }
    }

    @Override // android.app.Activity
    protected void onPause() {
        super.onPause();
        if (this.c != null) {
            this.c.h();
        }
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        if (this.c != null) {
            this.c.n();
        }
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int keyCode, KeyEvent event) {
        if (keyCode == 4) {
            return false;
        }
        return super.onKeyDown(keyCode, event);
    }

    @Override // android.app.Activity
    public void finish() {
        super.finish();
    }

    static /* synthetic */ void a(IncentiveVideoPlayActivity incentiveVideoPlayActivity) {
        if (incentiveVideoPlayActivity.e == null) {
            return;
        }
        VideoAdDetailActivity.a(f);
        VideoAdDetailActivity.a(incentiveVideoPlayActivity, incentiveVideoPlayActivity.e);
        incentiveVideoPlayActivity.finish();
    }
}
