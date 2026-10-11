package com.facebook.ads;

import android.app.Activity;
import android.content.Intent;
import android.content.res.Configuration;
import android.graphics.Color;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import android.support.v4.content.LocalBroadcastManager;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.facebook.ads.internal.a.b;
import com.facebook.ads.internal.adapters.j;
import com.facebook.ads.internal.adapters.k;
import com.facebook.ads.internal.g.q;
import com.facebook.ads.internal.i;
import com.facebook.ads.internal.l;
import com.facebook.ads.internal.util.aa;
import com.facebook.ads.internal.util.g;
import com.facebook.ads.internal.util.h;
import com.facebook.ads.internal.util.z;
import com.facebook.ads.internal.view.c;
import com.facebook.ads.internal.view.d;
import com.facebook.ads.internal.view.f;
import com.facebook.ads.internal.view.m;
import com.facebook.ads.internal.view.o;
import com.facebook.ads.internal.view.s;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class AudienceNetworkActivity extends Activity {
    public static final String AD_ICON_URL = "adIconUrl";
    public static final String AD_SUBTITLE = "adSubtitle";
    public static final String AD_TITLE = "adTitle";
    public static final String AUDIENCE_NETWORK_UNIQUE_ID_EXTRA = "uniqueId";
    public static final String AUTOPLAY = "autoplay";
    public static final String BROWSER_URL = "browserURL";
    public static final String CLIENT_TOKEN = "clientToken";
    public static final String CONTEXT_SWITCH_BEHAVIOR = "contextSwitchBehavior";
    public static final String END_CARD_ACTIVATION_COMMAND = "facebookRewardedVideoEndCardActivationCommand";
    public static final String END_CARD_MARKUP = "facebookRewardedVideoEndCardMarkup";
    public static final String HANDLER_TIME = "handlerTime";
    public static final String PLACEMENT_ID = "placementId";
    public static final String PREDEFINED_ORIENTATION_KEY = "predefinedOrientationKey";
    public static final String REQUEST_TIME = "requestTime";
    public static final String REWARD_SERVER_URL = "rewardServerURL";
    public static final String SKIP_DELAY_SECONDS_KEY = "skipAfterSeconds";
    public static final String VIDEO_LOGGER = "videoLogger";
    public static final String VIDEO_MPD = "videoMPD";
    public static final String VIDEO_REPORT_URL = "videoReportURL";
    public static final String VIDEO_SEEK_TIME = "videoSeekTime";
    public static final String VIDEO_URL = "videoURL";
    public static final String VIEW_TYPE = "viewType";
    public static final String WEBVIEW_ENCODING = "utf-8";
    public static final String WEBVIEW_MIME_TYPE = "text/html";

    /* renamed from: a, reason: collision with root package name */
    private static final String f2456a = AudienceNetworkActivity.class.getSimpleName();

    /* renamed from: b, reason: collision with root package name */
    private String f2457b;
    private String c;
    private c d;
    private RelativeLayout f;
    private Intent g;
    private String i;
    private Type j;
    private long k;
    private long l;
    private int m;
    private d n;
    private TextView p;
    private i q;
    private boolean r;
    private String s;
    private long t;
    private boolean e = false;
    private int h = -1;
    private List<BackButtonInterceptor> o = new ArrayList();

    public interface BackButtonInterceptor {
        boolean interceptBackButton();
    }

    public enum Type {
        DISPLAY,
        VIDEO,
        REWARDED_VIDEO,
        NATIVE,
        BROWSER
    }

    private class a implements View.OnLongClickListener {
        private a() {
        }

        @Override // android.view.View.OnLongClickListener
        public boolean onLongClick(View view) {
            if (AudienceNetworkActivity.this.q != null && AudienceNetworkActivity.this.f != null) {
                AudienceNetworkActivity.this.q.setBounds(0, 0, AudienceNetworkActivity.this.f.getWidth(), AudienceNetworkActivity.this.f.getHeight());
                AudienceNetworkActivity.this.q.a(AudienceNetworkActivity.this.q.a() ? false : true);
            }
            return true;
        }
    }

    private void a(Intent intent, Bundle bundle) {
        if (bundle != null) {
            this.h = bundle.getInt(PREDEFINED_ORIENTATION_KEY, -1);
            this.i = bundle.getString(AUDIENCE_NETWORK_UNIQUE_ID_EXTRA);
            this.j = (Type) bundle.getSerializable(VIEW_TYPE);
        } else {
            this.h = intent.getIntExtra(PREDEFINED_ORIENTATION_KEY, -1);
            this.i = intent.getStringExtra(AUDIENCE_NETWORK_UNIQUE_ID_EXTRA);
            this.j = (Type) intent.getSerializableExtra(VIEW_TYPE);
            this.m = intent.getIntExtra(SKIP_DELAY_SECONDS_KEY, 0) * 1000;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str) {
        LocalBroadcastManager.getInstance(this).sendBroadcast(new Intent(str + ":" + this.i));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str, q qVar) {
        Intent intent = new Intent(str + ":" + this.i);
        intent.putExtra("event", qVar);
        LocalBroadcastManager.getInstance(this).sendBroadcast(intent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        String stringExtra = this.g.getStringExtra(REWARD_SERVER_URL);
        if (TextUtils.isEmpty(stringExtra)) {
            return;
        }
        z zVar = new z(new HashMap());
        zVar.a(new z.a() { // from class: com.facebook.ads.AudienceNetworkActivity.7
            @Override // com.facebook.ads.internal.util.z.a
            public void a() {
                AudienceNetworkActivity.this.a(l.REWARD_SERVER_FAILED.a());
            }

            @Override // com.facebook.ads.internal.util.z.a
            public void a(aa aaVar) {
                if (aaVar == null || !aaVar.a()) {
                    AudienceNetworkActivity.this.a(l.REWARD_SERVER_FAILED.a());
                } else {
                    AudienceNetworkActivity.this.a(l.REWARD_SERVER_SUCCESS.a());
                }
            }
        });
        zVar.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, stringExtra);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        String a2 = g.a(this.g.getByteArrayExtra(END_CARD_MARKUP));
        if (TextUtils.isEmpty(a2)) {
            return;
        }
        this.d = new c(this, new c.b() { // from class: com.facebook.ads.AudienceNetworkActivity.8
            @Override // com.facebook.ads.internal.view.c.b
            public void a() {
                if (AudienceNetworkActivity.this.d == null || TextUtils.isEmpty(AudienceNetworkActivity.this.c)) {
                    return;
                }
                AudienceNetworkActivity.this.d.post(new Runnable() { // from class: com.facebook.ads.AudienceNetworkActivity.8.1
                    @Override // java.lang.Runnable
                    public void run() {
                        if (AudienceNetworkActivity.this.d.c()) {
                            Log.w(AudienceNetworkActivity.f2456a, "Webview already destroyed, cannot activate");
                        } else {
                            AudienceNetworkActivity.this.d.loadUrl("javascript:" + AudienceNetworkActivity.this.c);
                        }
                    }
                });
            }

            @Override // com.facebook.ads.internal.view.c.b
            public void a(int i) {
            }

            @Override // com.facebook.ads.internal.view.c.b
            public void a(String str, Map<String, String> map) {
                Uri parse = Uri.parse(str);
                if ("fbad".equals(parse.getScheme()) && parse.getAuthority().equals("close")) {
                    AudienceNetworkActivity.this.finish();
                    return;
                }
                if ("fbad".equals(parse.getScheme()) && b.a(parse.getAuthority())) {
                    AudienceNetworkActivity.this.a(l.REWARDED_VIDEO_AD_CLICK.a());
                }
                com.facebook.ads.internal.a.a a3 = b.a(AudienceNetworkActivity.this, AudienceNetworkActivity.this.f2457b, parse, map);
                if (a3 != null) {
                    try {
                        a3.b();
                    } catch (Exception e) {
                        Log.e(AudienceNetworkActivity.f2456a, "Error executing action", e);
                    }
                }
            }

            @Override // com.facebook.ads.internal.view.c.b
            public void b() {
            }
        }, 1);
        this.d.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
        this.c = this.g.getStringExtra(END_CARD_ACTIVATION_COMMAND);
        this.d.loadDataWithBaseURL(h.a(), a2, WEBVIEW_MIME_TYPE, WEBVIEW_ENCODING, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
        if (this.d == null) {
            finish();
            return;
        }
        this.f.removeAllViews();
        this.f.setOnLongClickListener(null);
        this.n.onDestroy();
        this.n = null;
        this.f.addView(this.d);
        if (this.p != null) {
            this.f.addView(this.p);
        }
    }

    public void addBackButtonInterceptor(BackButtonInterceptor backButtonInterceptor) {
        this.o.add(backButtonInterceptor);
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        boolean z;
        long currentTimeMillis = System.currentTimeMillis();
        this.l += currentTimeMillis - this.k;
        this.k = currentTimeMillis;
        if (this.l > this.m) {
            boolean z2 = false;
            Iterator<BackButtonInterceptor> it = this.o.iterator();
            while (true) {
                z = z2;
                if (!it.hasNext()) {
                    break;
                } else {
                    z2 = it.next().interceptBackButton() ? true : z;
                }
            }
            if (z) {
                return;
            }
            super.onBackPressed();
        }
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        if (this.n instanceof k) {
            ((k) this.n).a(configuration);
        }
        super.onConfigurationChanged(configuration);
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        requestWindowFeature(1);
        getWindow().setFlags(1024, 1024);
        this.f = new RelativeLayout(this);
        this.f.setBackgroundColor(-16777216);
        setContentView(this.f, new RelativeLayout.LayoutParams(-1, -1));
        this.g = getIntent();
        this.f2457b = this.g.getStringExtra(CLIENT_TOKEN);
        this.s = this.g.getStringExtra(PLACEMENT_ID);
        this.t = this.g.getLongExtra(REQUEST_TIME, 0L);
        a(this.g, bundle);
        this.r = false;
        if (this.j == Type.VIDEO) {
            s sVar = new s(this, new d.a() { // from class: com.facebook.ads.AudienceNetworkActivity.1
                @Override // com.facebook.ads.internal.view.d.a
                public void a(View view) {
                    AudienceNetworkActivity.this.f.addView(view);
                }

                @Override // com.facebook.ads.internal.view.d.a
                public void a(String str) {
                    AudienceNetworkActivity.this.a(str);
                }

                @Override // com.facebook.ads.internal.view.d.a
                public void a(String str, q qVar) {
                    AudienceNetworkActivity.this.a(str, qVar);
                }
            });
            sVar.a(this.f);
            this.n = sVar;
        } else if (this.j == Type.REWARDED_VIDEO) {
            this.n = new m(this, new o(this), new d.a() { // from class: com.facebook.ads.AudienceNetworkActivity.2
                @Override // com.facebook.ads.internal.view.d.a
                public void a(View view) {
                    AudienceNetworkActivity.this.f.addView(view);
                }

                @Override // com.facebook.ads.internal.view.d.a
                public void a(String str) {
                    AudienceNetworkActivity.this.a(str);
                    if (str.equals(l.REWARDED_VIDEO_END_ACTIVITY.a())) {
                        AudienceNetworkActivity.this.finish();
                    }
                }

                @Override // com.facebook.ads.internal.view.d.a
                public void a(String str, q qVar) {
                    AudienceNetworkActivity.this.a(str);
                    if (str.startsWith(l.REWARDED_VIDEO_COMPLETE.a())) {
                        if (!str.equals(l.REWARDED_VIDEO_COMPLETE_WITHOUT_REWARD.a())) {
                            AudienceNetworkActivity.this.b();
                        }
                        AudienceNetworkActivity.this.e = true;
                        AudienceNetworkActivity.this.c();
                        AudienceNetworkActivity.this.d();
                    }
                }
            });
            addBackButtonInterceptor(new BackButtonInterceptor() { // from class: com.facebook.ads.AudienceNetworkActivity.3
                @Override // com.facebook.ads.AudienceNetworkActivity.BackButtonInterceptor
                public boolean interceptBackButton() {
                    return !AudienceNetworkActivity.this.e;
                }
            });
        } else if (this.j == Type.DISPLAY) {
            this.r = true;
            this.n = new com.facebook.ads.internal.view.i(this, new d.a() { // from class: com.facebook.ads.AudienceNetworkActivity.4
                @Override // com.facebook.ads.internal.view.d.a
                public void a(View view) {
                    AudienceNetworkActivity.this.f.addView(view);
                }

                @Override // com.facebook.ads.internal.view.d.a
                public void a(String str) {
                    AudienceNetworkActivity.this.a(str);
                }

                @Override // com.facebook.ads.internal.view.d.a
                public void a(String str, q qVar) {
                    AudienceNetworkActivity.this.a(str, qVar);
                }
            });
        } else if (this.j == Type.BROWSER) {
            this.n = new f(this, new d.a() { // from class: com.facebook.ads.AudienceNetworkActivity.5
                @Override // com.facebook.ads.internal.view.d.a
                public void a(View view) {
                    AudienceNetworkActivity.this.f.addView(view);
                }

                @Override // com.facebook.ads.internal.view.d.a
                public void a(String str) {
                    AudienceNetworkActivity.this.a(str);
                }

                @Override // com.facebook.ads.internal.view.d.a
                public void a(String str, q qVar) {
                    AudienceNetworkActivity.this.a(str, qVar);
                }
            });
        } else if (this.j != Type.NATIVE) {
            com.facebook.ads.internal.util.c.a(com.facebook.ads.internal.util.b.a(null, "Unable to infer viewType from intent or savedInstanceState"));
            a("com.facebook.ads.interstitial.error");
            finish();
            return;
        } else {
            this.n = j.a(this.g.getStringExtra(AUDIENCE_NETWORK_UNIQUE_ID_EXTRA));
            if (this.n == null) {
                com.facebook.ads.internal.util.c.a(com.facebook.ads.internal.util.b.a(null, "Unable to find view"));
                a("com.facebook.ads.interstitial.error");
                finish();
                return;
            }
            this.n.a(new d.a() { // from class: com.facebook.ads.AudienceNetworkActivity.6
                @Override // com.facebook.ads.internal.view.d.a
                public void a(View view) {
                    AudienceNetworkActivity.this.f.addView(view);
                }

                @Override // com.facebook.ads.internal.view.d.a
                public void a(String str) {
                    AudienceNetworkActivity.this.a(str);
                }

                @Override // com.facebook.ads.internal.view.d.a
                public void a(String str, q qVar) {
                    AudienceNetworkActivity.this.a(str, qVar);
                }
            });
        }
        this.n.a(this.g, bundle, this);
        a("com.facebook.ads.interstitial.displayed");
        this.k = System.currentTimeMillis();
        if (!com.facebook.ads.internal.j.b(this) || this.j == Type.BROWSER) {
            return;
        }
        this.q = new i();
        this.q.a(this.s);
        this.q.b(getPackageName());
        if (this.t != 0) {
            this.q.a(this.t);
        }
        this.p = new TextView(this);
        this.p.setText("Debug");
        this.p.setTextColor(-1);
        this.p.setBackgroundColor(Color.argb(160, 0, 0, 0));
        this.p.setPadding(5, 5, 5, 5);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(12, -1);
        layoutParams.addRule(11, -1);
        this.p.setLayoutParams(layoutParams);
        a aVar = new a();
        this.p.setOnLongClickListener(aVar);
        if (this.r) {
            this.f.addView(this.p);
        } else {
            this.f.setOnLongClickListener(aVar);
        }
        this.f.getOverlay().add(this.q);
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        this.f.removeAllViews();
        if (this.n != null) {
            j.a(this.n);
            this.n.onDestroy();
            this.n = null;
        }
        if (this.d != null) {
            h.a(this.d);
            this.d.destroy();
            this.d = null;
            this.c = null;
        }
        if (this.j == Type.REWARDED_VIDEO) {
            a(l.REWARDED_VIDEO_CLOSED.a());
        } else {
            a("com.facebook.ads.interstitial.dismissed");
        }
        if (this.q != null && com.facebook.ads.internal.j.b(this)) {
            this.q.b();
        }
        super.onDestroy();
    }

    @Override // android.app.Activity
    public void onPause() {
        this.l += System.currentTimeMillis() - this.k;
        if (this.n != null && !this.e) {
            this.n.h();
        }
        super.onPause();
    }

    @Override // android.app.Activity
    public void onResume() {
        super.onResume();
        this.k = System.currentTimeMillis();
        if (this.n != null) {
            this.n.i();
        }
    }

    @Override // android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        if (this.n != null) {
            this.n.a(bundle);
        }
        bundle.putInt(PREDEFINED_ORIENTATION_KEY, this.h);
        bundle.putString(AUDIENCE_NETWORK_UNIQUE_ID_EXTRA, this.i);
        bundle.putSerializable(VIEW_TYPE, this.j);
    }

    @Override // android.app.Activity
    public void onStart() {
        super.onStart();
        if (this.h != -1) {
            setRequestedOrientation(this.h);
        }
    }

    public void removeBackButtonInterceptor(BackButtonInterceptor backButtonInterceptor) {
        this.o.remove(backButtonInterceptor);
    }
}
