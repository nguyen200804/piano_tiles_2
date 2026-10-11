package com.facebook.ads.internal.adapters;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.support.v4.content.LocalBroadcastManager;
import android.text.TextUtils;
import android.util.Log;
import com.facebook.ads.AdError;
import com.facebook.ads.AdSettings;
import com.facebook.ads.AudienceNetworkActivity;
import com.google.ads.mediation.facebook.FacebookAdapter;
import com.mopub.mobileads.BaseVideoPlayerActivity;
import java.util.Map;
import java.util.UUID;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class m extends x {

    /* renamed from: b, reason: collision with root package name */
    private y f2627b;
    private Context c;
    private String e;
    private String f;
    private String g;
    private String i;
    private String j;
    private String k;
    private String l;
    private String m;
    private String n;
    private String o;
    private int p;
    private String q;
    private long r;
    private z s;
    private com.facebook.ads.internal.c.b t;
    private boolean d = false;
    private String h = UUID.randomUUID().toString();

    private void c() {
        LocalBroadcastManager.getInstance(this.c).registerReceiver(this.s, this.s.a());
    }

    private void d() {
        if (this.s != null) {
            try {
                LocalBroadcastManager.getInstance(this.c).unregisterReceiver(this.s);
            } catch (Exception e) {
            }
        }
    }

    private String e() {
        if (this.f2643a == null) {
            return null;
        }
        String urlPrefix = AdSettings.getUrlPrefix();
        Uri parse = Uri.parse((urlPrefix == null || urlPrefix.isEmpty()) ? "https://www.facebook.com/audience_network/server_side_reward" : String.format("https://www.%s.facebook.com/audience_network/server_side_reward", urlPrefix));
        Uri.Builder builder = new Uri.Builder();
        builder.scheme(parse.getScheme());
        builder.authority(parse.getAuthority());
        builder.path(parse.getPath());
        builder.query(parse.getQuery());
        builder.fragment(parse.getFragment());
        builder.appendQueryParameter("puid", this.f2643a.getUserID());
        builder.appendQueryParameter("pc", this.f2643a.getCurrency());
        builder.appendQueryParameter("ptid", this.h);
        builder.appendQueryParameter("appid", this.m);
        return builder.build().toString();
    }

    private String f() {
        return this.n;
    }

    public String a() {
        String c = this.t != null ? this.t.c(this.i) : "";
        return TextUtils.isEmpty(c) ? this.i : c;
    }

    @Override // com.facebook.ads.internal.adapters.x
    public void a(Context context, y yVar, Map<String, Object> map, final boolean z) {
        this.f2627b = yVar;
        this.c = context;
        this.d = false;
        JSONObject jSONObject = (JSONObject) map.get("data");
        this.i = jSONObject.optString(BaseVideoPlayerActivity.VIDEO_URL);
        if (this.i == null || this.i.isEmpty()) {
            this.f2627b.a(this, AdError.INTERNAL_ERROR);
            return;
        }
        this.j = jSONObject.optString("video_report_url");
        this.o = jSONObject.optString("ct");
        this.k = jSONObject.optString("end_card_markup");
        this.l = jSONObject.optString("activation_command");
        this.n = jSONObject.optString("context_switch", "endvideo");
        this.g = jSONObject.optString("title");
        this.f = jSONObject.optString(FacebookAdapter.KEY_SUBTITLE_ASSET);
        if (jSONObject.has("icon") && !jSONObject.isNull("icon")) {
            try {
                this.e = jSONObject.getJSONObject("icon").getString("url");
            } catch (JSONException e) {
                Log.w(m.class.toString(), "Failed to get adIconURL", e);
            }
        }
        this.p = jSONObject.optInt("skippable_seconds");
        this.q = (String) map.get(AudienceNetworkActivity.PLACEMENT_ID);
        if (this.q != null) {
            this.m = this.q.split("_")[0];
        } else {
            this.m = "";
        }
        this.r = ((Long) map.get(AudienceNetworkActivity.REQUEST_TIME)).longValue();
        this.s = new z(this.h, this, yVar);
        c();
        this.t = new com.facebook.ads.internal.c.b(context);
        this.t.b(this.i);
        this.t.a(new com.facebook.ads.internal.c.a() { // from class: com.facebook.ads.internal.adapters.m.1
            private void c() {
                m.this.d = true;
                m.this.f2627b.a(m.this);
            }

            @Override // com.facebook.ads.internal.c.a
            public void a() {
                c();
            }

            @Override // com.facebook.ads.internal.c.a
            public void b() {
                if (z) {
                    m.this.f2627b.a(m.this, AdError.CACHE_ERROR);
                } else {
                    c();
                }
            }
        });
    }

    @Override // com.facebook.ads.internal.adapters.x
    public boolean b() {
        if (!this.d) {
            return false;
        }
        Intent intent = new Intent(this.c, (Class<?>) AudienceNetworkActivity.class);
        intent.putExtra(AudienceNetworkActivity.VIEW_TYPE, AudienceNetworkActivity.Type.REWARDED_VIDEO);
        intent.putExtra(AudienceNetworkActivity.VIDEO_URL, a());
        intent.putExtra(AudienceNetworkActivity.VIDEO_REPORT_URL, this.j);
        if (!com.facebook.ads.internal.j.j(this.c)) {
            intent.putExtra(AudienceNetworkActivity.PREDEFINED_ORIENTATION_KEY, 6);
        }
        intent.putExtra(AudienceNetworkActivity.END_CARD_ACTIVATION_COMMAND, this.l);
        intent.putExtra(AudienceNetworkActivity.AUDIENCE_NETWORK_UNIQUE_ID_EXTRA, this.h);
        intent.putExtra(AudienceNetworkActivity.END_CARD_MARKUP, com.facebook.ads.internal.util.g.a(this.k));
        intent.putExtra(AudienceNetworkActivity.CLIENT_TOKEN, this.o);
        intent.putExtra(AudienceNetworkActivity.REWARD_SERVER_URL, e());
        intent.putExtra(AudienceNetworkActivity.CONTEXT_SWITCH_BEHAVIOR, f());
        intent.putExtra(AudienceNetworkActivity.AD_TITLE, this.g);
        intent.putExtra(AudienceNetworkActivity.AD_SUBTITLE, this.f);
        intent.putExtra(AudienceNetworkActivity.AD_ICON_URL, this.e);
        intent.putExtra(AudienceNetworkActivity.SKIP_DELAY_SECONDS_KEY, this.p);
        intent.putExtra(AudienceNetworkActivity.PLACEMENT_ID, this.q);
        intent.putExtra(AudienceNetworkActivity.REQUEST_TIME, this.r);
        if (!(this.c instanceof Activity)) {
            intent.setFlags(intent.getFlags() | 268435456);
        }
        this.c.startActivity(intent);
        return true;
    }

    @Override // com.facebook.ads.internal.adapters.AdAdapter
    public void onDestroy() {
        d();
    }
}
