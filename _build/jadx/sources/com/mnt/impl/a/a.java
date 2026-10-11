package com.mnt.impl.a;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.widget.RelativeLayout;
import com.mnt.Ad;
import com.mnt.MntActivity;
import com.mnt.impl.b.k;
import com.mnt.impl.f.h;
import com.mnt.impl.view.TitleView;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class a extends com.mnt.impl.a implements h.a {

    /* renamed from: b, reason: collision with root package name */
    private static final String f3916b = com.mnt.impl.e.pW;
    private Ad c;

    public a(Activity activity) {
        super(activity);
    }

    public static void a(Context context, Ad ad) {
        if (context != null && ad != null) {
            try {
                Intent intent = MntActivity.getIntent(context, a.class);
                intent.putExtra(f3916b, ad);
                context.startActivity(intent);
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    @Override // com.mnt.a.g
    public final void b(Bundle bundle) {
        try {
            this.c = (Ad) this.f3915a.getIntent().getParcelableExtra(f3916b);
            if (this.c == null) {
                this.f3915a.finish();
            } else {
                com.mnt.impl.e.c cVar = (com.mnt.impl.e.c) this.c;
                RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
                layoutParams.addRule(13);
                TitleView titleView = new TitleView(this.f3915a);
                RelativeLayout relativeLayout = new RelativeLayout(this.f3915a);
                relativeLayout.addView(titleView, layoutParams);
                ColorDrawable colorDrawable = new ColorDrawable(-16777216);
                colorDrawable.setAlpha(160);
                relativeLayout.setBackgroundDrawable(colorDrawable);
                this.f3915a.setContentView(relativeLayout);
                com.mnt.impl.f.h.a(this.f3915a, new com.mnt.impl.e.b(cVar.getCampId(), cVar.getPackageName(), cVar.f3985a, cVar.e, cVar.j), this, false);
            }
        } catch (Throwable th) {
            th.printStackTrace();
            this.f3915a.finish();
        }
    }

    @Override // com.mnt.impl.f.h.a
    public final void a(com.mnt.impl.e.b bVar) {
        this.f3915a.finish();
        k.a(this.f3915a, bVar);
    }
}
