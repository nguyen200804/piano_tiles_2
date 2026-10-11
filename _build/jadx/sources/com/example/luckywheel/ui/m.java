package com.example.luckywheel.ui;

import android.app.Activity;
import android.os.Bundle;
import android.view.View;
import com.whatscall.luckywheel.R;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class m extends b implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    private a f2383a;

    public interface a {
        void a();

        void b();
    }

    public m(Activity activity, a aVar) {
        super(activity);
        this.f2383a = aVar;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id == R.id.retry_btn) {
            if (this.f2383a != null) {
                this.f2383a.a();
            }
        } else if (id == R.id.cancel_btn && this.f2383a != null) {
            this.f2383a.b();
        }
        dismiss();
    }

    @Override // android.app.Dialog
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.sync_fail_dialog);
        View findViewById = findViewById(R.id.retry_btn);
        View findViewById2 = findViewById(R.id.cancel_btn);
        findViewById.setOnClickListener(this);
        findViewById2.setOnClickListener(this);
    }
}
