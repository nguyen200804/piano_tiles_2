package com.google.android.gms.internal;

import android.R;
import android.app.Activity;
import android.app.ActivityManager;
import android.app.AlertDialog;
import android.app.KeyguardManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.media.AudioManager;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Debug;
import android.os.Handler;
import android.os.Looper;
import android.os.PowerManager;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import android.view.Window;
import android.view.WindowManager;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.widget.AdapterView;
import android.widget.PopupWindow;
import com.google.android.gms.ads.AdActivity;
import com.google.android.gms.ads.internal.ClientApi;
import com.google.android.gms.ads.internal.client.AdSizeParcel;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.ads.internal.util.client.zza;
import com.google.android.gms.internal.zzdq;
import com.mopub.mobileads.VastExtensionXmlManager;
import com.mopub.mobileads.VastIconXmlManager;
import com.unity3d.ads.adunit.AdUnitActivity;
import java.io.IOException;
import java.io.InputStreamReader;
import java.math.BigInteger;
import java.net.HttpURLConnection;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.UUID;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@zzin
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class zzkh {
    public static final Handler zzclc = new zzke(Looper.getMainLooper());
    private String zzbjf;
    private zzfs zzcea;
    private final Object zzail = new Object();
    private boolean zzcld = true;
    private boolean zzcle = false;

    private final class zza extends BroadcastReceiver {
        private zza() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if ("android.intent.action.USER_PRESENT".equals(intent.getAction())) {
                zzkh.this.zzcld = true;
            } else if ("android.intent.action.SCREEN_OFF".equals(intent.getAction())) {
                zzkh.this.zzcld = false;
            }
        }
    }

    private JSONArray zza(Collection<?> collection) throws JSONException {
        JSONArray jSONArray = new JSONArray();
        Iterator<?> it = collection.iterator();
        while (it.hasNext()) {
            zza(jSONArray, it.next());
        }
        return jSONArray;
    }

    private void zza(JSONArray jSONArray, Object obj) throws JSONException {
        if (obj instanceof Bundle) {
            jSONArray.put(zzh((Bundle) obj));
            return;
        }
        if (obj instanceof Map) {
            jSONArray.put(zzam((Map<String, ?>) obj));
            return;
        }
        if (obj instanceof Collection) {
            jSONArray.put(zza((Collection<?>) obj));
        } else if (obj instanceof Object[]) {
            jSONArray.put(zza((Object[]) obj));
        } else {
            jSONArray.put(obj);
        }
    }

    private void zza(JSONObject jSONObject, String str, Object obj) throws JSONException {
        if (obj instanceof Bundle) {
            jSONObject.put(str, zzh((Bundle) obj));
            return;
        }
        if (obj instanceof Map) {
            jSONObject.put(str, zzam((Map<String, ?>) obj));
            return;
        }
        if (obj instanceof Collection) {
            if (str == null) {
                str = "null";
            }
            jSONObject.put(str, zza((Collection<?>) obj));
        } else if (obj instanceof Object[]) {
            jSONObject.put(str, zza(Arrays.asList((Object[]) obj)));
        } else {
            jSONObject.put(str, obj);
        }
    }

    private boolean zza(KeyguardManager keyguardManager) {
        if (keyguardManager == null) {
            return false;
        }
        return keyguardManager.inKeyguardRestrictedInputMode();
    }

    private boolean zza(PowerManager powerManager) {
        return powerManager == null || powerManager.isScreenOn();
    }

    public static void zzb(Runnable runnable) {
        if (Looper.getMainLooper().getThread() != Thread.currentThread()) {
            runnable.run();
        } else {
            zzkg.zza(runnable);
        }
    }

    private JSONObject zzh(Bundle bundle) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        for (String str : bundle.keySet()) {
            zza(jSONObject, str, bundle.get(str));
        }
        return jSONObject;
    }

    private boolean zzj(Context context) {
        PowerManager powerManager = (PowerManager) context.getSystemService("power");
        if (powerManager == null) {
            return false;
        }
        return powerManager.isScreenOn();
    }

    private Bitmap zzl(@NonNull View view) {
        Bitmap bitmap;
        try {
            int width = view.getWidth();
            int height = view.getHeight();
            if (width == 0 || height == 0) {
                zzkd.zzcx("Width or height of view is zero");
                bitmap = null;
            } else {
                bitmap = Bitmap.createBitmap(view.getWidth(), view.getHeight(), Bitmap.Config.RGB_565);
                Canvas canvas = new Canvas(bitmap);
                view.layout(0, 0, width, height);
                view.draw(canvas);
            }
            return bitmap;
        } catch (RuntimeException e) {
            zzkd.zzb("Fail to capture the webview", e);
            return null;
        }
    }

    private Bitmap zzm(@NonNull View view) {
        Bitmap bitmap;
        RuntimeException e;
        boolean isDrawingCacheEnabled;
        try {
            isDrawingCacheEnabled = view.isDrawingCacheEnabled();
            view.setDrawingCacheEnabled(true);
            Bitmap drawingCache = view.getDrawingCache();
            bitmap = drawingCache != null ? Bitmap.createBitmap(drawingCache) : null;
        } catch (RuntimeException e2) {
            bitmap = null;
            e = e2;
        }
        try {
            view.setDrawingCacheEnabled(isDrawingCacheEnabled);
        } catch (RuntimeException e3) {
            e = e3;
            zzkd.zzb("Fail to capture the web view", e);
            return bitmap;
        }
        return bitmap;
    }

    public void runOnUiThread(Runnable runnable) {
        if (Looper.getMainLooper().getThread() == Thread.currentThread()) {
            runnable.run();
        } else {
            zzclc.post(runnable);
        }
    }

    public DisplayMetrics zza(WindowManager windowManager) {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        windowManager.getDefaultDisplay().getMetrics(displayMetrics);
        return displayMetrics;
    }

    public PopupWindow zza(View view, int i, int i2, boolean z) {
        return new PopupWindow(view, i, i2, z);
    }

    public String zza(Context context, View view, AdSizeParcel adSizeParcel) {
        if (!zzdc.zzazx.get().booleanValue()) {
            return null;
        }
        try {
            JSONObject jSONObject = new JSONObject();
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put(VastIconXmlManager.WIDTH, adSizeParcel.width);
            jSONObject2.put(VastIconXmlManager.HEIGHT, adSizeParcel.height);
            jSONObject.put("size", jSONObject2);
            jSONObject.put("activity", zzah(context));
            if (!adSizeParcel.zzaus) {
                JSONArray jSONArray = new JSONArray();
                while (view != null) {
                    Object parent = view.getParent();
                    if (parent != null) {
                        int indexOfChild = parent instanceof ViewGroup ? ((ViewGroup) parent).indexOfChild(view) : -1;
                        JSONObject jSONObject3 = new JSONObject();
                        jSONObject3.put(VastExtensionXmlManager.TYPE, parent.getClass().getName());
                        jSONObject3.put("index_of_child", indexOfChild);
                        jSONArray.put(jSONObject3);
                    }
                    view = (parent == null || !(parent instanceof View)) ? null : (View) parent;
                }
                if (jSONArray.length() > 0) {
                    jSONObject.put("parents", jSONArray);
                }
            }
            return jSONObject.toString();
        } catch (JSONException e) {
            zzkd.zzd("Fail to get view hierarchy json", e);
            return null;
        }
    }

    public String zza(Context context, zzas zzasVar, String str) {
        if (zzasVar == null) {
            return str;
        }
        try {
            Uri parse = Uri.parse(str);
            if (zzasVar.zzd(parse)) {
                parse = zzasVar.zzb(parse, context);
            }
            return parse.toString();
        } catch (Exception e) {
            return str;
        }
    }

    public String zza(zzlh zzlhVar, String str) {
        return zza(zzlhVar.getContext(), zzlhVar.zzul(), str);
    }

    public String zza(InputStreamReader inputStreamReader) throws IOException {
        StringBuilder sb = new StringBuilder(8192);
        char[] cArr = new char[2048];
        while (true) {
            int read = inputStreamReader.read(cArr);
            if (read == -1) {
                return sb.toString();
            }
            sb.append(cArr, 0, read);
        }
    }

    JSONArray zza(Object[] objArr) throws JSONException {
        JSONArray jSONArray = new JSONArray();
        for (Object obj : objArr) {
            zza(jSONArray, obj);
        }
        return jSONArray;
    }

    public void zza(Activity activity, ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener) {
        Window window = activity.getWindow();
        if (window == null || window.getDecorView() == null || window.getDecorView().getViewTreeObserver() == null) {
            return;
        }
        window.getDecorView().getViewTreeObserver().addOnGlobalLayoutListener(onGlobalLayoutListener);
    }

    public void zza(Activity activity, ViewTreeObserver.OnScrollChangedListener onScrollChangedListener) {
        Window window = activity.getWindow();
        if (window == null || window.getDecorView() == null || window.getDecorView().getViewTreeObserver() == null) {
            return;
        }
        window.getDecorView().getViewTreeObserver().addOnScrollChangedListener(onScrollChangedListener);
    }

    public void zza(Context context, String str, WebSettings webSettings) {
        webSettings.setUserAgentString(zzg(context, str));
    }

    public void zza(final Context context, @Nullable final String str, String str2, Bundle bundle, boolean z) {
        if (z) {
            bundle.putString("device", com.google.android.gms.ads.internal.zzu.zzfq().zztg());
            bundle.putString("eids", TextUtils.join(",", zzdc.zzjx()));
        }
        com.google.android.gms.ads.internal.client.zzm.zziw().zza(context, str, str2, bundle, z, new zza.InterfaceC0124zza() { // from class: com.google.android.gms.internal.zzkh.3
            @Override // com.google.android.gms.ads.internal.util.client.zza.InterfaceC0124zza
            public void zzcr(String str3) {
                com.google.android.gms.ads.internal.zzu.zzfq().zzc(context, str, str3);
            }
        });
    }

    public void zza(Context context, String str, List<String> list) {
        Iterator<String> it = list.iterator();
        while (it.hasNext()) {
        }
    }

    public void zza(Context context, String str, boolean z, HttpURLConnection httpURLConnection) {
        zza(context, str, z, httpURLConnection, false);
    }

    public void zza(Context context, String str, boolean z, HttpURLConnection httpURLConnection, boolean z2) {
        httpURLConnection.setConnectTimeout(60000);
        httpURLConnection.setInstanceFollowRedirects(z);
        httpURLConnection.setReadTimeout(60000);
        httpURLConnection.setRequestProperty("User-Agent", zzg(context, str));
        httpURLConnection.setUseCaches(z2);
    }

    public void zza(final Context context, final List<String> list) {
        if ((context instanceof Activity) && !TextUtils.isEmpty(zzaqa.zzex((Activity) context))) {
            if (list == null) {
                zzkd.v("Cannot ping urls: empty list.");
            } else {
                if (!zzdq.zzo(context)) {
                    zzkd.v("Cannot ping url because custom tabs is not supported");
                    return;
                }
                final zzdq zzdqVar = new zzdq();
                zzdqVar.zza(new zzdq.zza() { // from class: com.google.android.gms.internal.zzkh.1
                    @Override // com.google.android.gms.internal.zzdq.zza
                    public void zzkn() {
                        for (String str : list) {
                            String valueOf = String.valueOf(str);
                            zzkd.zzcw(valueOf.length() != 0 ? "Pinging url: ".concat(valueOf) : new String("Pinging url: "));
                            zzdqVar.mayLaunchUrl(Uri.parse(str), null, null);
                        }
                        zzdqVar.zzd((Activity) context);
                    }

                    @Override // com.google.android.gms.internal.zzdq.zza
                    public void zzko() {
                    }
                });
                zzdqVar.zze((Activity) context);
            }
        }
    }

    public void zza(List<String> list, String str) {
        Iterator<String> it = list.iterator();
        while (it.hasNext()) {
        }
    }

    public boolean zza(PackageManager packageManager, String str, String str2) {
        return packageManager.checkPermission(str2, str) == 0;
    }

    public boolean zza(View view, Context context) {
        KeyguardManager keyguardManager = null;
        Context applicationContext = context.getApplicationContext();
        PowerManager powerManager = applicationContext != null ? (PowerManager) applicationContext.getSystemService("power") : null;
        Object systemService = context.getSystemService("keyguard");
        if (systemService != null && (systemService instanceof KeyguardManager)) {
            keyguardManager = (KeyguardManager) systemService;
        }
        return zza(view, powerManager, keyguardManager);
    }

    public boolean zza(View view, PowerManager powerManager, KeyguardManager keyguardManager) {
        return view.getVisibility() == 0 && view.isShown() && zza(powerManager) && (com.google.android.gms.ads.internal.zzu.zzfq().zztc() || !zza(keyguardManager)) && (!zzdc.zzbaq.get().booleanValue() || view.getLocalVisibleRect(new Rect()) || view.getGlobalVisibleRect(new Rect()));
    }

    public boolean zza(ClassLoader classLoader, Class<?> cls, String str) {
        try {
            return cls.isAssignableFrom(Class.forName(str, false, classLoader));
        } catch (Throwable th) {
            return false;
        }
    }

    public boolean zzac(Context context) {
        boolean z;
        Intent intent = new Intent();
        intent.setClassName(context, AdActivity.CLASS_NAME);
        ResolveInfo resolveActivity = context.getPackageManager().resolveActivity(intent, 65536);
        if (resolveActivity == null || resolveActivity.activityInfo == null) {
            zzkd.zzcx("Could not find com.google.android.gms.ads.AdActivity, please make sure it is declared in AndroidManifest.xml.");
            return false;
        }
        if ((resolveActivity.activityInfo.configChanges & 16) == 0) {
            zzkd.zzcx(String.format("com.google.android.gms.ads.AdActivity requires the android:configChanges value to contain \"%s\".", "keyboard"));
            z = false;
        } else {
            z = true;
        }
        if ((resolveActivity.activityInfo.configChanges & 32) == 0) {
            zzkd.zzcx(String.format("com.google.android.gms.ads.AdActivity requires the android:configChanges value to contain \"%s\".", "keyboardHidden"));
            z = false;
        }
        if ((resolveActivity.activityInfo.configChanges & 128) == 0) {
            zzkd.zzcx(String.format("com.google.android.gms.ads.AdActivity requires the android:configChanges value to contain \"%s\".", AdUnitActivity.EXTRA_ORIENTATION));
            z = false;
        }
        if ((resolveActivity.activityInfo.configChanges & 256) == 0) {
            zzkd.zzcx(String.format("com.google.android.gms.ads.AdActivity requires the android:configChanges value to contain \"%s\".", "screenLayout"));
            z = false;
        }
        if ((resolveActivity.activityInfo.configChanges & 512) == 0) {
            zzkd.zzcx(String.format("com.google.android.gms.ads.AdActivity requires the android:configChanges value to contain \"%s\".", "uiMode"));
            z = false;
        }
        if ((resolveActivity.activityInfo.configChanges & 1024) == 0) {
            zzkd.zzcx(String.format("com.google.android.gms.ads.AdActivity requires the android:configChanges value to contain \"%s\".", "screenSize"));
            z = false;
        }
        if ((resolveActivity.activityInfo.configChanges & 2048) != 0) {
            return z;
        }
        zzkd.zzcx(String.format("com.google.android.gms.ads.AdActivity requires the android:configChanges value to contain \"%s\".", "smallestScreenSize"));
        return false;
    }

    public boolean zzad(Context context) {
        if (this.zzcle) {
            return false;
        }
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.USER_PRESENT");
        intentFilter.addAction("android.intent.action.SCREEN_OFF");
        context.getApplicationContext().registerReceiver(new zza(), intentFilter);
        this.zzcle = true;
        return true;
    }

    protected String zzae(Context context) {
        return new WebView(context).getSettings().getUserAgentString();
    }

    public AlertDialog.Builder zzaf(Context context) {
        return new AlertDialog.Builder(context);
    }

    public zzcu zzag(Context context) {
        return new zzcu(context);
    }

    public String zzah(Context context) {
        ActivityManager activityManager;
        ActivityManager.RunningTaskInfo runningTaskInfo;
        try {
            activityManager = (ActivityManager) context.getSystemService("activity");
        } catch (Exception e) {
        }
        if (activityManager == null) {
            return null;
        }
        List<ActivityManager.RunningTaskInfo> runningTasks = activityManager.getRunningTasks(1);
        if (runningTasks != null && !runningTasks.isEmpty() && (runningTaskInfo = runningTasks.get(0)) != null && runningTaskInfo.topActivity != null) {
            return runningTaskInfo.topActivity.getClassName();
        }
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x003b, code lost:
    
        if (r0.importance != 100) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0041, code lost:
    
        if (r1.inKeyguardRestrictedInputMode() != false) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0047, code lost:
    
        if (zzj(r7) == false) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0049, code lost:
    
        return true;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean zzai(android.content.Context r7) {
        /*
            r6 = this;
            r2 = 0
            java.lang.String r0 = "activity"
            java.lang.Object r0 = r7.getSystemService(r0)     // Catch: java.lang.Throwable -> L4d
            android.app.ActivityManager r0 = (android.app.ActivityManager) r0     // Catch: java.lang.Throwable -> L4d
            java.lang.String r1 = "keyguard"
            java.lang.Object r1 = r7.getSystemService(r1)     // Catch: java.lang.Throwable -> L4d
            android.app.KeyguardManager r1 = (android.app.KeyguardManager) r1     // Catch: java.lang.Throwable -> L4d
            if (r0 == 0) goto L15
            if (r1 != 0) goto L17
        L15:
            r0 = r2
        L16:
            return r0
        L17:
            java.util.List r0 = r0.getRunningAppProcesses()     // Catch: java.lang.Throwable -> L4d
            if (r0 != 0) goto L1f
            r0 = r2
            goto L16
        L1f:
            java.util.Iterator r3 = r0.iterator()     // Catch: java.lang.Throwable -> L4d
        L23:
            boolean r0 = r3.hasNext()     // Catch: java.lang.Throwable -> L4d
            if (r0 == 0) goto L4b
            java.lang.Object r0 = r3.next()     // Catch: java.lang.Throwable -> L4d
            android.app.ActivityManager$RunningAppProcessInfo r0 = (android.app.ActivityManager.RunningAppProcessInfo) r0     // Catch: java.lang.Throwable -> L4d
            int r4 = android.os.Process.myPid()     // Catch: java.lang.Throwable -> L4d
            int r5 = r0.pid     // Catch: java.lang.Throwable -> L4d
            if (r4 != r5) goto L23
            int r0 = r0.importance     // Catch: java.lang.Throwable -> L4d
            r3 = 100
            if (r0 != r3) goto L4b
            boolean r0 = r1.inKeyguardRestrictedInputMode()     // Catch: java.lang.Throwable -> L4d
            if (r0 != 0) goto L4b
            boolean r0 = r6.zzj(r7)     // Catch: java.lang.Throwable -> L4d
            if (r0 == 0) goto L4b
            r0 = 1
            goto L16
        L4b:
            r0 = r2
            goto L16
        L4d:
            r0 = move-exception
            r0 = r2
            goto L16
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzkh.zzai(android.content.Context):boolean");
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0028, code lost:
    
        r0 = null;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.graphics.Bitmap zzaj(android.content.Context r4) {
        /*
            r3 = this;
            r1 = 0
            boolean r0 = r4 instanceof android.app.Activity
            if (r0 != 0) goto L6
        L5:
            return r1
        L6:
            com.google.android.gms.internal.zzcy<java.lang.Boolean> r0 = com.google.android.gms.internal.zzdc.zzbcb     // Catch: java.lang.RuntimeException -> L39
            java.lang.Object r0 = r0.get()     // Catch: java.lang.RuntimeException -> L39
            java.lang.Boolean r0 = (java.lang.Boolean) r0     // Catch: java.lang.RuntimeException -> L39
            boolean r0 = r0.booleanValue()     // Catch: java.lang.RuntimeException -> L39
            if (r0 == 0) goto L2a
            android.app.Activity r4 = (android.app.Activity) r4     // Catch: java.lang.RuntimeException -> L39
            android.view.Window r0 = r4.getWindow()     // Catch: java.lang.RuntimeException -> L39
            if (r0 == 0) goto L3f
            android.view.View r0 = r0.getDecorView()     // Catch: java.lang.RuntimeException -> L39
            android.view.View r0 = r0.getRootView()     // Catch: java.lang.RuntimeException -> L39
            android.graphics.Bitmap r0 = r3.zzm(r0)     // Catch: java.lang.RuntimeException -> L39
        L28:
            r1 = r0
            goto L5
        L2a:
            android.app.Activity r4 = (android.app.Activity) r4     // Catch: java.lang.RuntimeException -> L39
            android.view.Window r0 = r4.getWindow()     // Catch: java.lang.RuntimeException -> L39
            android.view.View r0 = r0.getDecorView()     // Catch: java.lang.RuntimeException -> L39
            android.graphics.Bitmap r0 = r3.zzl(r0)     // Catch: java.lang.RuntimeException -> L39
            goto L28
        L39:
            r0 = move-exception
            java.lang.String r2 = "Fail to capture screen shot"
            com.google.android.gms.internal.zzkd.zzb(r2, r0)
        L3f:
            r0 = r1
            goto L28
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzkh.zzaj(android.content.Context):android.graphics.Bitmap");
    }

    public AudioManager zzak(Context context) {
        return (AudioManager) context.getSystemService("audio");
    }

    public float zzal(Context context) {
        AudioManager zzak = zzak(context);
        if (zzak == null) {
            return 0.0f;
        }
        int streamMaxVolume = zzak.getStreamMaxVolume(3);
        int streamVolume = zzak.getStreamVolume(3);
        if (streamMaxVolume != 0) {
            return streamVolume / streamMaxVolume;
        }
        return 0.0f;
    }

    public int zzam(Context context) {
        ApplicationInfo applicationInfo = context.getApplicationInfo();
        if (applicationInfo == null) {
            return 0;
        }
        return applicationInfo.targetSdkVersion;
    }

    public JSONObject zzam(Map<String, ?> map) throws JSONException {
        try {
            JSONObject jSONObject = new JSONObject();
            for (String str : map.keySet()) {
                zza(jSONObject, str, map.get(str));
            }
            return jSONObject;
        } catch (ClassCastException e) {
            String valueOf = String.valueOf(e.getMessage());
            throw new JSONException(valueOf.length() != 0 ? "Could not convert map to JSON: ".concat(valueOf) : new String("Could not convert map to JSON: "));
        }
    }

    public boolean zzan(Context context) {
        try {
            context.getClassLoader().loadClass(ClientApi.class.getName());
            return false;
        } catch (ClassNotFoundException e) {
            return true;
        }
    }

    public String zzb(String str, Map<String, String> map) {
        for (String str2 : map.keySet()) {
            str = str.replaceAll(String.format("(?<!@)((?:@@)*)@%s(?<!@)((?:@@)*)@", str2), String.format("$1%s$2", Uri.encode(map.get(str2))));
        }
        return str.replaceAll(String.format("(?<!@)((?:@@)*)@%s(?<!@)((?:@@)*)@", "[^@]+"), String.format("$1%s$2", "")).replaceAll("@@", "@");
    }

    public void zzb(Activity activity, ViewTreeObserver.OnScrollChangedListener onScrollChangedListener) {
        Window window = activity.getWindow();
        if (window == null || window.getDecorView() == null || window.getDecorView().getViewTreeObserver() == null) {
            return;
        }
        window.getDecorView().getViewTreeObserver().removeOnScrollChangedListener(onScrollChangedListener);
    }

    public void zzb(Context context, Intent intent) {
        try {
            context.startActivity(intent);
        } catch (Throwable th) {
            intent.addFlags(268435456);
            context.startActivity(intent);
        }
    }

    public void zzb(Context context, String str, String str2, Bundle bundle, boolean z) {
        if (zzdc.zzbau.get().booleanValue()) {
            zza(context, str, str2, bundle, z);
        }
    }

    public zzfs zzc(Context context, VersionInfoParcel versionInfoParcel) {
        zzfs zzfsVar;
        synchronized (this.zzail) {
            if (this.zzcea == null) {
                if (context.getApplicationContext() != null) {
                    context = context.getApplicationContext();
                }
                this.zzcea = new zzfs(context, versionInfoParcel, zzdc.zzaxy.get());
            }
            zzfsVar = this.zzcea;
        }
        return zzfsVar;
    }

    public void zzc(Context context, String str, String str2) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(str2);
        zza(context, str, arrayList);
    }

    public String zzco(String str) {
        return Uri.parse(str).buildUpon().query(null).build().toString();
    }

    public int zzcp(String str) {
        try {
            return Integer.parseInt(str);
        } catch (NumberFormatException e) {
            String valueOf = String.valueOf(e);
            zzkd.zzcx(new StringBuilder(String.valueOf(valueOf).length() + 22).append("Could not parse value:").append(valueOf).toString());
            return 0;
        }
    }

    public boolean zzcq(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return str.matches("([^\\s]+(\\.(?i)(jpg|png|gif|bmp|webp))$)");
    }

    public float zzey() {
        com.google.android.gms.ads.internal.zzo zzex = com.google.android.gms.ads.internal.zzu.zzgg().zzex();
        if (zzex == null || !zzex.zzez()) {
            return 1.0f;
        }
        return zzex.zzey();
    }

    public Map<String, String> zzf(Uri uri) {
        if (uri == null) {
            return null;
        }
        HashMap hashMap = new HashMap();
        for (String str : com.google.android.gms.ads.internal.zzu.zzfs().zzg(uri)) {
            hashMap.put(str, uri.getQueryParameter(str));
        }
        return hashMap;
    }

    public boolean zzfa() {
        com.google.android.gms.ads.internal.zzo zzex = com.google.android.gms.ads.internal.zzu.zzgg().zzex();
        if (zzex != null) {
            return zzex.zzfa();
        }
        return false;
    }

    public String zzg(final Context context, String str) {
        String str2;
        synchronized (this.zzail) {
            if (this.zzbjf != null) {
                str2 = this.zzbjf;
            } else {
                try {
                    this.zzbjf = com.google.android.gms.ads.internal.zzu.zzfs().getDefaultUserAgent(context);
                } catch (Exception e) {
                }
                if (TextUtils.isEmpty(this.zzbjf)) {
                    if (com.google.android.gms.ads.internal.client.zzm.zziw().zztx()) {
                        try {
                            this.zzbjf = zzae(context);
                        } catch (Exception e2) {
                            this.zzbjf = zztd();
                        }
                    } else {
                        this.zzbjf = null;
                        zzclc.post(new Runnable() { // from class: com.google.android.gms.internal.zzkh.2
                            @Override // java.lang.Runnable
                            public void run() {
                                synchronized (zzkh.this.zzail) {
                                    zzkh.this.zzbjf = zzkh.this.zzae(context);
                                    zzkh.this.zzail.notifyAll();
                                }
                            }
                        });
                        while (this.zzbjf == null) {
                            try {
                                this.zzail.wait();
                            } catch (InterruptedException e3) {
                                this.zzbjf = zztd();
                                String valueOf = String.valueOf(this.zzbjf);
                                zzkd.zzcx(valueOf.length() != 0 ? "Interrupted, use default user agent: ".concat(valueOf) : new String("Interrupted, use default user agent: "));
                            }
                        }
                    }
                }
                String valueOf2 = String.valueOf(this.zzbjf);
                this.zzbjf = new StringBuilder(String.valueOf(valueOf2).length() + 11 + String.valueOf(str).length()).append(valueOf2).append(" (Mobile; ").append(str).append(")").toString();
                str2 = this.zzbjf;
            }
        }
        return str2;
    }

    public int[] zzh(Activity activity) {
        View findViewById;
        Window window = activity.getWindow();
        return (window == null || (findViewById = window.findViewById(R.id.content)) == null) ? zzth() : new int[]{findViewById.getWidth(), findViewById.getHeight()};
    }

    public int[] zzi(Activity activity) {
        int[] zzh = zzh(activity);
        return new int[]{com.google.android.gms.ads.internal.client.zzm.zziw().zzb(activity, zzh[0]), com.google.android.gms.ads.internal.client.zzm.zziw().zzb(activity, zzh[1])};
    }

    public int[] zzj(Activity activity) {
        View findViewById;
        Window window = activity.getWindow();
        return (window == null || (findViewById = window.findViewById(R.id.content)) == null) ? zzth() : new int[]{findViewById.getTop(), findViewById.getBottom()};
    }

    public Bitmap zzk(View view) {
        view.setDrawingCacheEnabled(true);
        Bitmap createBitmap = Bitmap.createBitmap(view.getDrawingCache());
        view.setDrawingCacheEnabled(false);
        return createBitmap;
    }

    public int[] zzk(Activity activity) {
        int[] zzj = zzj(activity);
        return new int[]{com.google.android.gms.ads.internal.client.zzm.zziw().zzb(activity, zzj[0]), com.google.android.gms.ads.internal.client.zzm.zziw().zzb(activity, zzj[1])};
    }

    public int zzn(@Nullable View view) {
        if (view == null) {
            return -1;
        }
        ViewParent parent = view.getParent();
        while (parent != null && !(parent instanceof AdapterView)) {
            parent = parent.getParent();
        }
        if (parent == null) {
            return -1;
        }
        return ((AdapterView) parent).getPositionForView(view);
    }

    public boolean zztc() {
        return this.zzcld;
    }

    String zztd() {
        StringBuffer stringBuffer = new StringBuffer(256);
        stringBuffer.append("Mozilla/5.0 (Linux; U; Android");
        if (Build.VERSION.RELEASE != null) {
            stringBuffer.append(" ").append(Build.VERSION.RELEASE);
        }
        stringBuffer.append("; ").append(Locale.getDefault());
        if (Build.DEVICE != null) {
            stringBuffer.append("; ").append(Build.DEVICE);
            if (Build.DISPLAY != null) {
                stringBuffer.append(" Build/").append(Build.DISPLAY);
            }
        }
        stringBuffer.append(") AppleWebKit/533 Version/4.0 Safari/533");
        return stringBuffer.toString();
    }

    public String zzte() {
        return UUID.randomUUID().toString();
    }

    public String zztf() {
        UUID randomUUID = UUID.randomUUID();
        byte[] byteArray = BigInteger.valueOf(randomUUID.getLeastSignificantBits()).toByteArray();
        byte[] byteArray2 = BigInteger.valueOf(randomUUID.getMostSignificantBits()).toByteArray();
        String bigInteger = new BigInteger(1, byteArray).toString();
        for (int i = 0; i < 2; i++) {
            try {
                MessageDigest messageDigest = MessageDigest.getInstance("MD5");
                messageDigest.update(byteArray);
                messageDigest.update(byteArray2);
                byte[] bArr = new byte[8];
                System.arraycopy(messageDigest.digest(), 0, bArr, 0, 8);
                bigInteger = new BigInteger(1, bArr).toString();
            } catch (NoSuchAlgorithmException e) {
            }
        }
        return bigInteger;
    }

    public String zztg() {
        String str = Build.MANUFACTURER;
        String str2 = Build.MODEL;
        return str2.startsWith(str) ? str2 : new StringBuilder(String.valueOf(str).length() + 1 + String.valueOf(str2).length()).append(str).append(" ").append(str2).toString();
    }

    protected int[] zzth() {
        return new int[]{0, 0};
    }

    public Bundle zzti() {
        Bundle bundle = new Bundle();
        try {
            Debug.MemoryInfo memoryInfo = new Debug.MemoryInfo();
            Debug.getMemoryInfo(memoryInfo);
            bundle.putParcelable("debug_memory_info", memoryInfo);
            Runtime runtime = Runtime.getRuntime();
            bundle.putLong("runtime_free_memory", runtime.freeMemory());
            bundle.putLong("runtime_max_memory", runtime.maxMemory());
            bundle.putLong("runtime_total_memory", runtime.totalMemory());
        } catch (Exception e) {
            zzkd.zzd("Unable to gather memory stats", e);
        }
        return bundle;
    }
}
