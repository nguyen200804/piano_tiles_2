package com.cmplay.tile2.ui;

import android.R;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Handler;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.widget.TextView;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class TipsGetGiftSuccedDialog extends Activity {

    /* renamed from: a, reason: collision with root package name */
    private TextView f1662a;

    /* renamed from: b, reason: collision with root package name */
    private TextView f1663b;

    @Override // android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        overridePendingTransition(R.anim.fade_in, R.anim.fade_out);
        Typeface createFromAsset = Typeface.createFromAsset(getAssets(), "fonts/Futura condensed.ttf");
        getIntent().getStringExtra("song_name");
        setContentView(com.cmplay.tiles4.R.layout.tipsgetgift_dialog);
        this.f1662a = (TextView) findViewById(com.cmplay.tiles4.R.id.tipsgetgift_dialog_tvtop);
        this.f1663b = (TextView) findViewById(com.cmplay.tiles4.R.id.tipsgetgift_dialog_tvbottom);
        this.f1662a.setText(getResources().getString(com.cmplay.tiles4.R.string.installsuccess));
        int intExtra = getIntent().getIntExtra("type_rewardes", -1);
        int intExtra2 = getIntent().getIntExtra("count_rewardes", -1);
        if (intExtra == 1) {
            this.f1663b.setCompoundDrawablesWithIntrinsicBounds(getResources().getDrawable(2130837689), (Drawable) null, (Drawable) null, (Drawable) null);
        } else {
            this.f1663b.setCompoundDrawablesWithIntrinsicBounds(getResources().getDrawable(com.cmplay.tiles4.R.drawable.musicnote), (Drawable) null, (Drawable) null, (Drawable) null);
        }
        this.f1663b.setText(" x " + intExtra2);
        if (createFromAsset != null) {
            this.f1663b.setTypeface(createFromAsset);
            this.f1662a.setTypeface(createFromAsset);
        }
        setFinishOnTouchOutside(true);
        new Handler().postDelayed(new Runnable() { // from class: com.cmplay.tile2.ui.TipsGetGiftSuccedDialog.1
            @Override // java.lang.Runnable
            public void run() {
                if (!TipsGetGiftSuccedDialog.this.isFinishing()) {
                    TipsGetGiftSuccedDialog.this.finish();
                }
            }
        }, 3000L);
    }

    @Override // android.app.Activity
    public boolean onTouchEvent(MotionEvent event) {
        finish();
        return super.onTouchEvent(event);
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean dispatchKeyEvent(KeyEvent event) {
        finish();
        return super.dispatchKeyEvent(event);
    }

    public static void a(Context context, int i, int i2) {
        if ((i2 == 1 || i2 == 2) && i >= 1) {
            Intent intent = new Intent();
            intent.setClass(context, TipsGetGiftSuccedDialog.class);
            intent.putExtra("count_rewardes", i);
            intent.putExtra("type_rewardes", i2);
            if (!(context instanceof Activity)) {
                intent.addFlags(268435456);
            }
            context.startActivity(intent);
        }
    }
}
