package com.google.android.gms.internal;

import android.app.ActivityManager;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.overlay.AdLauncherIntentInfoParcel;
import com.mopub.common.AdType;
import com.mopub.common.Constants;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

@zzin
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class zzew implements zzep {
    private final com.google.android.gms.ads.internal.zze zzbit;
    private final zzha zzbiu;
    private final zzer zzbiw;

    public static class zza {
        private final zzlh zzbgf;

        public zza(zzlh zzlhVar) {
            this.zzbgf = zzlhVar;
        }

        public Intent zza(Context context, Map<String, String> map) {
            List<ActivityManager.RunningAppProcessInfo> runningAppProcesses;
            ResolveInfo zza;
            ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
            String str = map.get("u");
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            if (this.zzbgf != null) {
                str = com.google.android.gms.ads.internal.zzu.zzfq().zza(this.zzbgf, str);
            }
            Uri parse = Uri.parse(str);
            boolean parseBoolean = Boolean.parseBoolean(map.get("use_first_package"));
            boolean parseBoolean2 = Boolean.parseBoolean(map.get("use_running_process"));
            Uri build = Constants.HTTP.equalsIgnoreCase(parse.getScheme()) ? parse.buildUpon().scheme(Constants.HTTPS).build() : Constants.HTTPS.equalsIgnoreCase(parse.getScheme()) ? parse.buildUpon().scheme(Constants.HTTP).build() : null;
            ArrayList<ResolveInfo> arrayList = new ArrayList<>();
            Intent zze = zze(parse);
            Intent zze2 = zze(build);
            ResolveInfo zza2 = zza(context, zze, arrayList);
            if (zza2 != null) {
                return zza(zze, zza2);
            }
            if (zze2 != null && (zza = zza(context, zze2)) != null) {
                Intent zza3 = zza(zze, zza);
                if (zza(context, zza3) != null) {
                    return zza3;
                }
            }
            if (arrayList.size() == 0) {
                return zze;
            }
            if (parseBoolean2 && activityManager != null && (runningAppProcesses = activityManager.getRunningAppProcesses()) != null) {
                Iterator<ResolveInfo> it = arrayList.iterator();
                while (it.hasNext()) {
                    ResolveInfo next = it.next();
                    Iterator<ActivityManager.RunningAppProcessInfo> it2 = runningAppProcesses.iterator();
                    while (it2.hasNext()) {
                        if (it2.next().processName.equals(next.activityInfo.packageName)) {
                            return zza(zze, next);
                        }
                    }
                }
            }
            return parseBoolean ? zza(zze, arrayList.get(0)) : zze;
        }

        public Intent zza(Intent intent, ResolveInfo resolveInfo) {
            Intent intent2 = new Intent(intent);
            intent2.setClassName(resolveInfo.activityInfo.packageName, resolveInfo.activityInfo.name);
            return intent2;
        }

        public ResolveInfo zza(Context context, Intent intent) {
            return zza(context, intent, new ArrayList<>());
        }

        public ResolveInfo zza(Context context, Intent intent, ArrayList<ResolveInfo> arrayList) {
            ResolveInfo resolveInfo;
            PackageManager packageManager = context.getPackageManager();
            if (packageManager == null) {
                return null;
            }
            List<ResolveInfo> queryIntentActivities = packageManager.queryIntentActivities(intent, 65536);
            ResolveInfo resolveActivity = packageManager.resolveActivity(intent, 65536);
            if (queryIntentActivities != null && resolveActivity != null) {
                int i = 0;
                while (true) {
                    int i2 = i;
                    if (i2 >= queryIntentActivities.size()) {
                        break;
                    }
                    ResolveInfo resolveInfo2 = queryIntentActivities.get(i2);
                    if (resolveActivity != null && resolveActivity.activityInfo.name.equals(resolveInfo2.activityInfo.name)) {
                        resolveInfo = resolveActivity;
                        break;
                    }
                    i = i2 + 1;
                }
            }
            resolveInfo = null;
            arrayList.addAll(queryIntentActivities);
            return resolveInfo;
        }

        public Intent zze(Uri uri) {
            if (uri == null) {
                return null;
            }
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.addFlags(268435456);
            intent.setData(uri);
            intent.setAction("android.intent.action.VIEW");
            return intent;
        }
    }

    public zzew(zzer zzerVar, com.google.android.gms.ads.internal.zze zzeVar, zzha zzhaVar) {
        this.zzbiw = zzerVar;
        this.zzbit = zzeVar;
        this.zzbiu = zzhaVar;
    }

    private static boolean zzc(Map<String, String> map) {
        return "1".equals(map.get("custom_close"));
    }

    private static int zzd(Map<String, String> map) {
        String str = map.get("o");
        if (str != null) {
            if ("p".equalsIgnoreCase(str)) {
                return com.google.android.gms.ads.internal.zzu.zzfs().zztk();
            }
            if ("l".equalsIgnoreCase(str)) {
                return com.google.android.gms.ads.internal.zzu.zzfs().zztj();
            }
            if ("c".equalsIgnoreCase(str)) {
                return com.google.android.gms.ads.internal.zzu.zzfs().zztl();
            }
        }
        return -1;
    }

    private static void zze(zzlh zzlhVar, Map<String, String> map) {
        Context context = zzlhVar.getContext();
        if (TextUtils.isEmpty(map.get("u"))) {
            zzkd.zzcx("Destination url cannot be empty.");
            return;
        }
        try {
            zzlhVar.zzuj().zza(new AdLauncherIntentInfoParcel(new zza(zzlhVar).zza(context, map)));
        } catch (ActivityNotFoundException e) {
            zzkd.zzcx(e.getMessage());
        }
    }

    private void zzr(boolean z) {
        if (this.zzbiu != null) {
            this.zzbiu.zzs(z);
        }
    }

    @Override // com.google.android.gms.internal.zzep
    public void zza(zzlh zzlhVar, Map<String, String> map) {
        String str = map.get("a");
        if (str == null) {
            zzkd.zzcx("Action missing from an open GMSG.");
            return;
        }
        if (this.zzbit != null && !this.zzbit.zzel()) {
            this.zzbit.zzt(map.get("u"));
            return;
        }
        zzli zzuj = zzlhVar.zzuj();
        if ("expand".equalsIgnoreCase(str)) {
            if (zzlhVar.zzun()) {
                zzkd.zzcx("Cannot expand WebView that is already expanded.");
                return;
            } else {
                zzr(false);
                zzuj.zza(zzc(map), zzd(map));
                return;
            }
        }
        if ("webapp".equalsIgnoreCase(str)) {
            String str2 = map.get("u");
            zzr(false);
            if (str2 != null) {
                zzuj.zza(zzc(map), zzd(map), str2);
                return;
            } else {
                zzuj.zza(zzc(map), zzd(map), map.get(AdType.HTML), map.get("baseurl"));
                return;
            }
        }
        if (!"in_app_purchase".equalsIgnoreCase(str)) {
            if ("app".equalsIgnoreCase(str) && "true".equalsIgnoreCase(map.get("system_browser"))) {
                zzr(true);
                zze(zzlhVar, map);
                return;
            } else {
                zzr(true);
                String str3 = map.get("u");
                zzuj.zza(new AdLauncherIntentInfoParcel(map.get("i"), !TextUtils.isEmpty(str3) ? com.google.android.gms.ads.internal.zzu.zzfq().zza(zzlhVar, str3) : str3, map.get("m"), map.get("p"), map.get("c"), map.get("f"), map.get("e")));
                return;
            }
        }
        String str4 = map.get("product_id");
        String str5 = map.get("report_urls");
        if (this.zzbiw != null) {
            if (str5 == null || str5.isEmpty()) {
                this.zzbiw.zza(str4, new ArrayList<>());
            } else {
                this.zzbiw.zza(str4, new ArrayList<>(Arrays.asList(str5.split(" "))));
            }
        }
    }
}
