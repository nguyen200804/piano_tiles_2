package com.jirbo.adcolony;

import android.app.Activity;
import android.os.AsyncTask;
import android.os.Build;
import android.os.Handler;
import android.support.v4.os.EnvironmentCompat;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.jirbo.adcolony.an;
import java.util.HashMap;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class f {

    /* renamed from: a, reason: collision with root package name */
    static boolean f3827a = true;

    /* renamed from: b, reason: collision with root package name */
    static boolean f3828b;

    public static void a() {
        t.n = true;
    }

    public static void a(Activity activity, String str, String str2, String... strArr) {
        f3828b = false;
        if (!f3827a) {
            t.ac.clear();
            t.ad.clear();
            return;
        }
        f3827a = false;
        if (Build.VERSION.SDK_INT >= 11) {
            new a(activity).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
        } else {
            new a(activity).execute(new Void[0]);
        }
        t.ae.clear();
        Handler handler = new Handler();
        Runnable runnable = new Runnable() { // from class: com.jirbo.adcolony.f.1
            @Override // java.lang.Runnable
            public void run() {
                t.w = false;
            }
        };
        if (!t.w || t.x) {
            if (!t.n) {
                if (str2 == null) {
                    t.a("Null App ID - disabling AdColony.");
                    return;
                }
                if (strArr == null) {
                    t.a("Null Zone IDs array - disabling AdColony.");
                    return;
                }
                if (strArr.length == 0) {
                    t.a("No Zone IDs provided - disabling AdColony.");
                    return;
                }
                t.b(activity);
                t.c.a(str, str2, strArr);
                t.l = true;
                t.w = true;
                handler.postDelayed(runnable, 120000L);
            } else {
                return;
            }
        }
        if (t.I == null) {
            t.t = true;
        }
        t.ac.clear();
        t.ad.clear();
        t.af = new HashMap();
        for (String str3 : strArr) {
            t.af.put(str3, false);
        }
    }

    public static boolean b() {
        return ah.i();
    }

    public static void a(final Activity activity) {
        al.c.b((Object) "[ADC] AdColony resume called.");
        t.q = false;
        t.i = false;
        t.a(activity);
        t.p = false;
        t.f();
        if (activity == null) {
            al.d.b((Object) "Activity reference is null. Disabling AdColony.");
            a();
            return;
        }
        if (t.k != null) {
            t.K.a(t.k);
            t.k = null;
        }
        new Thread(new Runnable() { // from class: com.jirbo.adcolony.f.2
            @Override // java.lang.Runnable
            public void run() {
                activity.runOnUiThread(new Runnable() { // from class: com.jirbo.adcolony.f.2.1
                    @Override // java.lang.Runnable
                    public void run() {
                        for (int i = 0; i < t.ae.size(); i++) {
                            o oVar = t.ae.get(i);
                            if (oVar != null && t.b() == oVar.f3837a && !oVar.p) {
                                oVar.u = false;
                                oVar.invalidate();
                                if (oVar.L != null) {
                                    oVar.L.f3844a = false;
                                    oVar.L.invalidate();
                                }
                            }
                        }
                    }
                });
            }
        }).start();
        t.B = false;
    }

    public static void c() {
        al.c.b((Object) "[ADC] AdColony pause called.");
        t.i = true;
        t.q = true;
        for (int i = 0; i < t.ae.size(); i++) {
            if (t.ae.get(i) != null) {
                o oVar = t.ae.get(i);
                oVar.u = true;
                if (oVar.V != null && !oVar.p && oVar.V.isPlaying()) {
                    if (t.t) {
                        oVar.L.setVisibility(0);
                    }
                    oVar.e();
                }
            }
        }
    }

    public static Activity d() {
        return t.b();
    }

    public static boolean a(String str) {
        if (t.c == null || t.c.f3702b == null || t.c.f3702b.i == null || t.c.f3702b.i.n == null) {
            return false;
        }
        return t.c.f3702b.a(str, false);
    }

    public static boolean b(String str) {
        if (t.c == null || t.c.f3702b == null || t.c.f3702b.i == null || t.c.f3702b.i.n == null || t.c.f3702b.i.n.a(str) == null || t.c.f3702b.i.n.a(str).m == null || t.c.f3702b.i.n.a(str).m.f3759a == null) {
            return false;
        }
        for (int i = 0; i < t.c.f3702b.i.n.a(str).m.f3759a.size(); i++) {
            if (t.c.f3702b.i.n.a(str).m.a(i).z.f3781a) {
                return true;
            }
        }
        return false;
    }

    public static void a(q qVar) {
        if (!t.ac.contains(qVar)) {
            t.ac.add(qVar);
        }
    }

    public static void a(h hVar) {
        if (!t.ad.contains(hVar)) {
            t.ad.add(hVar);
        }
    }

    public static String c(String str) {
        if (t.c == null || t.c.f3702b == null || t.c.f3702b.i == null || t.c.f3702b.i.n == null) {
            return EnvironmentCompat.MEDIA_UNKNOWN;
        }
        if (t.n) {
            return EnvironmentCompat.MEDIA_UNKNOWN;
        }
        an.e a2 = t.c.f3702b.i.n.a(str);
        return a2 != null ? !a2.g ? "off" : (a2.h && t.c.f3702b.c(str, true)) ? "active" : "loading" : !t.m ? EnvironmentCompat.MEDIA_UNKNOWN : "invalid";
    }

    private static class a extends AsyncTask<Void, Void, Void> {

        /* renamed from: a, reason: collision with root package name */
        Activity f3831a;

        /* renamed from: b, reason: collision with root package name */
        String f3832b = "";
        boolean c;

        a(Activity activity) {
            this.f3831a = activity;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Void doInBackground(Void... voidArr) {
            try {
                AdvertisingIdClient.Info advertisingIdInfo = AdvertisingIdClient.getAdvertisingIdInfo(this.f3831a);
                this.f3832b = advertisingIdInfo.getId();
                this.c = advertisingIdInfo.isLimitAdTrackingEnabled();
            } catch (Exception e) {
                if (!Build.MANUFACTURER.equals("Amazon")) {
                    al.d.b((Object) "Advertising Id not available! Collecting Android Id instead of Advertising Id.");
                    e.printStackTrace();
                }
            } catch (NoClassDefFoundError e2) {
                al.d.b((Object) "Google Play Services SDK not installed! Collecting Android Id instead of Advertising Id.");
            } catch (NoSuchMethodError e3) {
                al.d.b((Object) "Google Play Services SDK is out of date! Collecting Android Id instead of Advertising Id.");
            }
            return null;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void onPostExecute(Void r2) {
            ah.f3718a = this.f3832b;
            ah.f3719b = this.c;
            f.f3828b = true;
        }
    }
}
