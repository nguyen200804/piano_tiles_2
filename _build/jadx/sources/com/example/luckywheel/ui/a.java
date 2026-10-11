package com.example.luckywheel.ui;

import android.app.Activity;
import android.os.Bundle;
import android.util.Log;
import android.widget.TextView;
import com.whatscall.luckywheel.R;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class a extends c {

    /* renamed from: a, reason: collision with root package name */
    int f2353a;
    private InterfaceC0066a c;

    /* renamed from: com.example.luckywheel.ui.a$a, reason: collision with other inner class name */
    public interface InterfaceC0066a {
        void a();
    }

    public a(Activity activity, int i, InterfaceC0066a interfaceC0066a) {
        super(activity);
        this.f2353a = i;
        this.c = interfaceC0066a;
    }

    @Override // com.example.luckywheel.ui.c, android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        Log.d("liufan", "dismiss");
        super.dismiss();
        if (this.c != null) {
            this.c.a();
        }
    }

    @Override // android.app.Dialog
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.red_pocket_layout);
        ((TextView) findViewById(R.id.award_credits)).setText(getContext().getString(R.string.award_credits, Integer.valueOf(this.f2353a)));
        getWindow().setGravity(119);
        getWindow().setLayout(-1, -1);
    }
}
