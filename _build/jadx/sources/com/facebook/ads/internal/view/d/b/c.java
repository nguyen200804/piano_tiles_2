package com.facebook.ads.internal.view.d.b;

import android.content.Context;
import android.widget.TextView;
import com.facebook.ads.internal.g.q;
import com.facebook.ads.internal.g.r;
import com.facebook.ads.internal.g.s;
import java.util.concurrent.TimeUnit;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class c extends n {

    /* renamed from: b, reason: collision with root package name */
    private final TextView f2973b;
    private final String c;
    private final s<com.facebook.ads.internal.view.d.a.n> d;

    public c(Context context, String str) {
        super(context);
        this.d = new s<com.facebook.ads.internal.view.d.a.n>() { // from class: com.facebook.ads.internal.view.d.b.c.1
            @Override // com.facebook.ads.internal.g.s
            public Class<com.facebook.ads.internal.view.d.a.n> a() {
                return com.facebook.ads.internal.view.d.a.n.class;
            }

            @Override // com.facebook.ads.internal.g.s
            public void a(com.facebook.ads.internal.view.d.a.n nVar) {
                c.this.f2973b.setText(c.this.a(c.this.getVideoView().getDuration() - c.this.getVideoView().getCurrentPosition()));
            }
        };
        this.f2973b = new TextView(context);
        this.c = str;
        addView(this.f2973b);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String a(long j) {
        if (j <= 0) {
            return "00:00";
        }
        long minutes = TimeUnit.MILLISECONDS.toMinutes(j);
        long seconds = TimeUnit.MILLISECONDS.toSeconds(j % 60000);
        return this.c.isEmpty() ? String.format("%02d:%02d", Long.valueOf(minutes), Long.valueOf(seconds)) : this.c.replace("{{REMAINING_TIME}}", String.format("%02d:%02d", Long.valueOf(minutes), Long.valueOf(seconds)));
    }

    @Override // com.facebook.ads.internal.view.d.b.n
    protected void a_(com.facebook.ads.internal.view.o oVar) {
        oVar.getEventBus().a((r<s, q>) this.d);
        super.a_(oVar);
    }

    public void setCountdownTextColor(int i) {
        this.f2973b.setTextColor(i);
    }
}
