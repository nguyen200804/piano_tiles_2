package com.cmplay.util;

import android.content.Context;
import android.text.Html;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import android.widget.Toast;
import com.cmplay.tiles4.R;

/* compiled from: ToastUtil.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class ac {
    public static void a(Context context, int i, int i2) {
        View inflate = LayoutInflater.from(context.getApplicationContext()).inflate(R.layout.toast_getgoldsucced, (ViewGroup) null);
        TextView textView = (TextView) inflate.findViewById(R.id.toast_toptextview);
        TextView textView2 = (TextView) inflate.findViewById(R.id.toast_bottomtextview);
        textView.setText(context.getResources().getString(R.string.installsuccess));
        textView.getPaint().setFakeBoldText(true);
        textView2.getPaint().setFakeBoldText(true);
        String string = context.getResources().getString(R.string.coins);
        if (i == 1) {
            string = context.getResources().getString(R.string.diamonds);
        }
        textView2.setText(Html.fromHtml(context.getResources().getString(R.string.toast_get, Integer.valueOf(i2), string)));
        Toast toast = new Toast(context);
        toast.setGravity(80, 0, e.a(60));
        toast.setDuration(0);
        toast.setView(inflate);
        toast.show();
    }
}
