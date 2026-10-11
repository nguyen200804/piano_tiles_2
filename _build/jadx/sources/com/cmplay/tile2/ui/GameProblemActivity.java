package com.cmplay.tile2.ui;

import android.R;
import android.app.Activity;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import android.view.KeyEvent;
import android.widget.RelativeLayout;
import com.cmplay.g.e;
import com.cmplay.util.NativeUtil;
import com.mopub.mobileads.VastExtensionXmlManager;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class GameProblemActivity extends Activity {

    /* renamed from: a, reason: collision with root package name */
    private String f1632a;

    /* renamed from: b, reason: collision with root package name */
    private int f1633b;
    private com.cmplay.b.a c;

    @Override // android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        this.f1633b = getIntent().getIntExtra(VastExtensionXmlManager.TYPE, 0);
        this.f1632a = getIntent().getStringExtra("type_name");
        if (TextUtils.isEmpty(this.f1632a)) {
            finish();
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject(this.f1632a);
            if (jSONObject == null) {
                finish();
                return;
            }
            this.c = new com.cmplay.b.a(jSONObject);
            if (this.c == null) {
                finish();
                return;
            }
            e.a("1", 1, this.f1633b, this.c.h, this.c.c);
            NativeUtil.setCardShow(this.c.f1169a);
            a aVar = new a(this, this.f1633b, this.c);
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
            overridePendingTransition(R.anim.fade_in, R.anim.fade_out);
            setContentView(aVar, layoutParams);
            getWindow().setLayout(-1, -2);
        } catch (JSONException e) {
            finish();
        }
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int keyCode, KeyEvent event) {
        if (keyCode == 4) {
            e.a("1", 4, this.f1633b, this.c.h, this.c.c);
        }
        return super.onKeyDown(keyCode, event);
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        Log.d("finish2", "GameProblemActivity");
    }
}
