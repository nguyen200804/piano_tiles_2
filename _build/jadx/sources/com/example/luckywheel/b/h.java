package com.example.luckywheel.b;

import android.content.Context;
import android.content.Intent;
import com.example.luckywheel.ui.LuckyWheelActivity;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class h implements f {

    /* renamed from: a, reason: collision with root package name */
    private String f2317a;

    @Override // com.example.luckywheel.b.f
    public void a(Context context) {
    }

    @Override // com.example.luckywheel.b.f
    public void a(Context context, String str) {
        if (context == null) {
            return;
        }
        boolean z = !str.equals(this.f2317a);
        Intent intent = new Intent(context, (Class<?>) LuckyWheelActivity.class);
        intent.addFlags(268435456);
        intent.putExtra("extra_user_changed", z);
        context.startActivity(intent);
        this.f2317a = str;
    }
}
