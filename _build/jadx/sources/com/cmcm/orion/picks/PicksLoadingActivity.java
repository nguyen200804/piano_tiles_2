package com.cmcm.orion.picks;

import android.animation.ValueAnimator;
import android.annotation.TargetApi;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ProgressBar;
import com.cmcm.orion.adsdk.R;
import org.apache.commons.io.IOUtils;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class PicksLoadingActivity extends Activity {
    private static ProgressBar d;
    private static final String c = PicksLoadingActivity.class.getSimpleName();

    /* renamed from: a, reason: collision with root package name */
    public static boolean f810a = true;
    private static int e = 0;

    /* renamed from: b, reason: collision with root package name */
    static Handler f811b = new Handler(Looper.getMainLooper());

    static /* synthetic */ int a(int i) {
        int i2 = e + i;
        e = i2;
        return i2;
    }

    private String a(ViewGroup viewGroup, int i) {
        int i2 = 0;
        String str = "";
        String str2 = "";
        for (int i3 = 0; i3 < i; i3++) {
            str2 = str2 + " ";
        }
        if (viewGroup != null) {
            String str3 = "" + str2 + a(viewGroup) + IOUtils.LINE_SEPARATOR_UNIX;
            String str4 = str2 + " ";
            str = str3;
            while (true) {
                int i4 = i2;
                if (i4 >= viewGroup.getChildCount()) {
                    break;
                }
                View childAt = viewGroup.getChildAt(i4);
                if (childAt instanceof ViewGroup) {
                    str = str + a((ViewGroup) childAt, i + 1);
                } else if (childAt != null) {
                    str = str + str4 + a(childAt) + IOUtils.LINE_SEPARATOR_UNIX;
                }
                i2 = i4 + 1;
            }
        }
        return str;
    }

    private static String a(View view) {
        return view == null ? "[null]" : view.getClass().getSimpleName() + "[" + view.getId() + "]" + view.toString();
    }

    public static void a(Context context) {
        a(context, 0);
    }

    public static void b(Context context) {
        if (d != null) {
            e = 100;
            d.setProgress(e);
        }
        a(context, 1);
    }

    private static void a(Context context, int i) {
        Intent intent = new Intent(context, (Class<?>) PicksLoadingActivity.class);
        if (i == 0) {
            f810a = true;
        } else {
            intent.putExtra("tag_close_dialog", true);
        }
        intent.addFlags(268435456);
        context.startActivity(intent);
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        if (getIntent().getBooleanExtra("tag_close_dialog", false)) {
            finish();
            return;
        }
        requestWindowFeature(2);
        requestWindowFeature(5);
        setContentView(R.layout.cm_picks_loading);
        a((ViewGroup) getWindow().getDecorView(), 0);
        try {
            ProgressBar progressBar = (ProgressBar) findViewById(R.id.wait_progressbar);
            d = progressBar;
            progressBar.setProgress(0);
            d.setMax(100);
        } catch (Exception e2) {
            finish();
        }
        if (Build.VERSION.SDK_INT >= 11) {
            a(0, 80, true);
        } else {
            f811b.postDelayed(new a(80, 8), 50L);
        }
        f811b.postDelayed(new Runnable() { // from class: com.cmcm.orion.picks.PicksLoadingActivity.1
            @Override // java.lang.Runnable
            public final void run() {
                PicksLoadingActivity.a(PicksLoadingActivity.this);
            }
        }, 500L);
    }

    @Override // android.app.Activity
    protected void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        if (intent.getBooleanExtra("tag_close_dialog", false)) {
            finish();
        }
    }

    static class a implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        private int f814a;

        /* renamed from: b, reason: collision with root package name */
        private int f815b;

        public a(int i, int i2) {
            this.f814a = i;
            this.f815b = i2;
        }

        @Override // java.lang.Runnable
        public final void run() {
            if (PicksLoadingActivity.e < this.f814a) {
                PicksLoadingActivity.a(this.f815b);
                if (PicksLoadingActivity.d != null) {
                    PicksLoadingActivity.d.setProgress(PicksLoadingActivity.e);
                }
                PicksLoadingActivity.f811b.postDelayed(this, 50L);
            }
        }
    }

    @TargetApi(11)
    private void a(int i, int i2, boolean z) {
        if (Build.VERSION.SDK_INT >= 11) {
            ValueAnimator ofInt = ValueAnimator.ofInt(i, i2);
            if (z) {
                ofInt.setDuration(500L);
            }
            ofInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.cmcm.orion.picks.PicksLoadingActivity.2
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator animation) {
                    int unused = PicksLoadingActivity.e = ((Integer) animation.getAnimatedValue()).intValue();
                    String unused2 = PicksLoadingActivity.c;
                    new StringBuilder("attrAnimation status =").append(PicksLoadingActivity.e);
                    if (PicksLoadingActivity.d != null) {
                        PicksLoadingActivity.d.setProgress(PicksLoadingActivity.e);
                    }
                }
            });
            ofInt.start();
        }
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        e = 0;
        d = null;
    }

    @Override // android.app.Activity
    public void finish() {
        if (Build.VERSION.SDK_INT >= 21) {
            super.finishAndRemoveTask();
        } else {
            super.finish();
        }
    }

    static /* synthetic */ void a(PicksLoadingActivity picksLoadingActivity) {
        if (Build.VERSION.SDK_INT >= 11) {
            picksLoadingActivity.a(e, 94, false);
        } else {
            f811b.postDelayed(new a(94, 2), 50L);
        }
    }
}
