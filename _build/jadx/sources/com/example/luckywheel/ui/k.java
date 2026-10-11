package com.example.luckywheel.ui;

import android.app.Activity;
import android.os.Bundle;
import android.os.Handler;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.example.luckywheel.b.j;
import com.whatscall.luckywheel.R;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class k extends c implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    private int f2381a;
    private Handler c;
    private com.example.luckywheel.c.a d;

    public k(Activity activity, int i, Handler handler) {
        super(activity);
        this.f2381a = i;
        this.c = handler;
        this.d = com.example.luckywheel.b.g.a().e();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id == R.id.cancel_btn) {
            dismiss();
            return;
        }
        if (id == R.id.redeem_btn) {
            com.example.luckywheel.b.j.a().a(getContext(), this.f2381a, new an(this, new l(c())));
            if (this.d != null) {
                this.d.a((byte) 1, this.f2381a, 0);
            }
        }
    }

    @Override // android.app.Dialog
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.redeem_confirm_dialog);
        View findViewById = findViewById(R.id.cancel_btn);
        View findViewById2 = findViewById(R.id.redeem_btn);
        findViewById.setOnClickListener(this);
        findViewById2.setOnClickListener(this);
        ImageView imageView = (ImageView) findViewById(R.id.redeem_icon);
        TextView textView = (TextView) findViewById(R.id.redeem_num);
        TextView textView2 = (TextView) findViewById(R.id.redeem_content);
        j.d c = com.example.luckywheel.b.j.a().c();
        if (c != null) {
            int i = c.f2325b;
            int i2 = c.f2324a;
            int i3 = i * this.f2381a;
            imageView.setImageResource(i2);
            textView.setText(String.valueOf(this.f2381a));
            textView2.setText(c().getString(R.string.redeem_confirm_text, new Object[]{Integer.valueOf(i3)}));
        }
    }
}
