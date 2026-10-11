package com.cmcm.orion.picks.a.a;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import android.util.Base64;
import com.cmcm.orion.picks.impl.a;
import com.mopub.common.Constants;
import com.mopub.mobileads.VastIconXmlManager;
import java.net.URI;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import org.apache.http.NameValuePair;
import org.apache.http.client.utils.URIUtils;
import org.apache.http.client.utils.URLEncodedUtils;
import org.apache.http.message.BasicNameValuePair;

/* compiled from: CmMarketHttpClient.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class g {

    /* renamed from: b, reason: collision with root package name */
    public static String f834b;
    private Runnable d;
    private static g c = new g();

    /* renamed from: a, reason: collision with root package name */
    public static String f833a = "";

    static {
        f834b = (h.f839a ? "http://" : "https://") + h.h() + h.i();
    }

    private g() {
    }

    public static g a() {
        return c;
    }

    public final void a(final String str) {
        if (this.d == null) {
            this.d = new a(str);
        }
        com.cmcm.orion.utils.a.a(this.d);
        com.cmcm.orion.utils.a.a(new Runnable() { // from class: com.cmcm.orion.picks.a.a.g.1
            @Override // java.lang.Runnable
            public final void run() {
                g.this.a(str);
            }
        }, 86400000L);
    }

    /* compiled from: CmMarketHttpClient.java */
    static class a implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        List<NameValuePair> f837a = new ArrayList();

        /* renamed from: b, reason: collision with root package name */
        private String f838b;

        a(String str) {
            this.f838b = str;
        }

        @Override // java.lang.Runnable
        public final void run() {
            String c;
            String c2 = com.cmcm.orion.utils.b.c(com.cmcm.orion.adsdk.e.a());
            String d = com.cmcm.orion.utils.b.d(com.cmcm.orion.adsdk.e.a());
            Context a2 = com.cmcm.orion.adsdk.e.a();
            a("action", "get_config");
            a("mid", this.f838b);
            a("lan", String.format("%s_%s", c2, d));
            a("brand", com.cmcm.orion.utils.b.a("ro.product.brand", "unknow"));
            a("model", com.cmcm.orion.utils.b.a("ro.product.model", "unknow"));
            a("androidid", com.cmcm.orion.utils.b.a());
            if (a2 != null) {
                a("cver", Integer.valueOf(com.cmcm.orion.utils.b.e(a2)));
                a("mcc", com.cmcm.orion.utils.b.a(a2));
                a("mnc", com.cmcm.orion.utils.b.b(a2));
                a("resolution", a.AnonymousClass1.c(a2));
            }
            a("ov", Integer.valueOf(Build.VERSION.SDK_INT));
            a("ch", com.cmcm.orion.adsdk.e.c());
            a("gaid", h.c());
            a("lv", "4.3.4");
            try {
                URI create = URI.create(g.f834b);
                if (create != null && (c = com.cmcm.orion.utils.d.c(URIUtils.createURI(create.getScheme(), create.getHost(), create.getPort(), create.getPath(), URLEncodedUtils.format(this.f837a, "UTF-8"), null).toString())) != null) {
                    h.a(c);
                }
            } catch (Exception e) {
                new StringBuilder("ConfigRefreshRunnable: e = ").append(e.getMessage());
            }
        }

        private void a(String str, Object obj) {
            if (!TextUtils.isEmpty(str)) {
                this.f837a.add(new BasicNameValuePair(str, obj != null ? String.valueOf(obj) : ""));
            }
        }
    }

    /* compiled from: CmMarketHttpClient.java */
    public static class b extends d {
        String e = Constants.HTTPS;
        String f = Constants.HTTP;

        public b() {
            Context a2 = com.cmcm.orion.adsdk.e.a();
            String c = com.cmcm.orion.utils.b.c(a2);
            String d = com.cmcm.orion.utils.b.d(a2);
            a("mid", (Object) com.cmcm.orion.adsdk.e.b());
            a("sdkt", (Object) 1);
            a("lan", (Object) String.format("%s_%s", c, d));
            a("brand", (Object) com.cmcm.orion.utils.b.a("ro.product.brand", "unknow"));
            a("model", (Object) com.cmcm.orion.utils.b.a("ro.product.model", "unknow"));
            a("androidid", (Object) com.cmcm.orion.utils.b.a());
            a("cver", Integer.valueOf(com.cmcm.orion.utils.b.e(a2)));
            a("mcc", (Object) com.cmcm.orion.utils.b.a(a2));
            a("mnc", (Object) com.cmcm.orion.utils.b.b(a2));
            a("ov", Integer.valueOf(Build.VERSION.SDK_INT));
            a("nt", Integer.valueOf(com.cmcm.orion.utils.c.a(a2) ? 1 : 2));
            a("ch", (Object) com.cmcm.orion.adsdk.e.c());
            a("resolution", (Object) a.AnonymousClass1.c(a2));
            a("gaid", (Object) com.cmcm.orion.utils.internal.a.a.c().a());
            a("pl", "2");
            a("lv", "4.3.4");
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("Z", Locale.US);
            simpleDateFormat.setTimeZone(TimeZone.getDefault());
            a("tz", (Object) simpleDateFormat.format(new Date()));
            if (!TextUtils.isEmpty(g.f833a)) {
                a("test_country", (Object) g.f833a);
            }
            if (com.cmcm.orion.adsdk.e.d()) {
                a("test", (Object) 1);
            }
            a("dnt", Integer.valueOf(!com.cmcm.orion.utils.internal.a.a.c().b() ? 2 : 1));
            a("lat", (Object) com.cmcm.orion.adsdk.e.f());
            a("lon", (Object) com.cmcm.orion.adsdk.e.g());
        }

        public final b a(String str) {
            a("posid", (Object) str);
            return this;
        }

        public final b a(int i) {
            a("adn", Integer.valueOf(i));
            return this;
        }

        public final b b(int i) {
            a("pg", Integer.valueOf(i));
            return this;
        }

        public final b b(String str) {
            a("tabid", (Object) str);
            return this;
        }

        public final b c(int i) {
            a("iab_type", Integer.valueOf(i));
            return this;
        }

        public final b d(int i) {
            a(VastIconXmlManager.OFFSET, Integer.valueOf(i));
            return this;
        }

        public final b e(int i) {
            a("vext", Integer.valueOf(i));
            return this;
        }

        public final b f(int i) {
            a("comver", Integer.valueOf(i));
            return this;
        }

        public final b g(int i) {
            a("spot", Integer.valueOf(i));
            return this;
        }

        private void a(String str, Object obj) {
            if (!TextUtils.isEmpty(str)) {
                this.d.add(new BasicNameValuePair(str, obj != null ? String.valueOf(obj) : ""));
            }
        }

        public final b a(String str, String str2) {
            try {
                StringBuilder sb = new StringBuilder("pkg=");
                if (str == null) {
                    str = "";
                }
                StringBuilder append = new StringBuilder().append(sb.append(str).toString()).append("&title=");
                if (TextUtils.isEmpty(str2)) {
                    str2 = "";
                }
                a("append", (Object) com.cmcm.orion.utils.b.a(com.cmcm.orion.utils.b.a("7069636b733230313531313034".getBytes(), append.append(Base64.encodeToString(str2.getBytes("UTF-8"), 2)).toString().getBytes("UTF-8"))));
            } catch (Exception e) {
            }
            return this;
        }

        public final b c(String str) {
            a("na", (Object) str);
            return this;
        }

        public final void a(Map<String, String> map) {
            if (map != null && map.size() > 0) {
                for (String str : map.keySet()) {
                    a(str, (Object) map.get(str));
                }
            }
        }

        public final URI a() {
            try {
                String str = this.f827a;
                String str2 = this.f828b;
                String b2 = h.b();
                if (!this.f.equalsIgnoreCase(b2) && !this.e.equalsIgnoreCase(b2)) {
                    b2 = h.f839a ? this.f : this.e;
                }
                return URIUtils.createURI(b2, str, this.c, str2, URLEncodedUtils.format(this.d, "UTF-8"), null);
            } catch (Exception e) {
                return null;
            }
        }

        public final String toString() {
            return String.valueOf(a());
        }

        public final URI d(String str) {
            try {
                URI create = URI.create(str);
                if (create != null) {
                    return URIUtils.createURI(create.getScheme(), create.getHost(), create.getPort(), create.getPath(), URLEncodedUtils.format(this.d, "UTF-8"), null);
                }
            } catch (Exception e) {
            }
            return null;
        }
    }
}
