package com.jirbo.adcolony;

import android.app.Activity;
import android.content.Intent;
import android.graphics.Bitmap;
import android.media.MediaScannerConnection;
import android.net.Uri;
import android.os.Environment;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.webkit.WebView;
import android.widget.Toast;
import com.applovin.sdk.AppLovinEventTypes;
import com.mopub.common.Constants;
import com.mopub.mobileads.VastExtensionXmlManager;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.net.URLDecoder;
import java.util.HashMap;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class am {

    /* renamed from: a, reason: collision with root package name */
    WebView f3723a;

    /* renamed from: b, reason: collision with root package name */
    Activity f3724b;
    ADCVideo c;
    Handler d = new Handler();
    Runnable e = new Runnable() { // from class: com.jirbo.adcolony.am.1
        @Override // java.lang.Runnable
        public void run() {
            t.y = false;
        }
    };
    g f;
    String g;

    public am(ADCVideo aDCVideo, WebView webView, Activity activity) {
        this.f3723a = webView;
        this.f3724b = activity;
        this.c = aDCVideo;
    }

    void a(String str) {
        String str2;
        String[] strArr;
        String replace = str.replace("mraid://", "");
        if (replace.contains("?")) {
            String[] split = replace.split("\\?");
            str2 = split[0];
            strArr = split;
        } else {
            str2 = replace;
            strArr = null;
        }
        String[] split2 = strArr != null ? strArr[1].split("&") : new String[0];
        HashMap hashMap = new HashMap();
        for (String str3 : split2) {
            hashMap.put(str3.split("=")[0], str3.split("=")[1]);
        }
        this.f = t.H;
        this.g = "{\"ad_slot\":" + t.c.e.j + "}";
        if (str2.equals("send_adc_event")) {
            b((String) hashMap.get(VastExtensionXmlManager.TYPE));
        } else if (str2.equals("close")) {
            b();
        } else if (str2.equals("open_store") && !t.y) {
            c((String) hashMap.get("item"));
        } else if (str2.equals("open") && !t.y) {
            d((String) hashMap.get("url"));
        } else if (str2.equals("expand")) {
            e((String) hashMap.get("url"));
        } else if (str2.equals("create_calendar_event") && !t.y) {
            c(hashMap);
        } else if (str2.equals("mail") && !t.y) {
            d(hashMap);
        } else if (str2.equals("sms") && !t.y) {
            e(hashMap);
        } else if (str2.equals("tel") && !t.y) {
            f(hashMap);
        } else if (str2.equals("custom_event")) {
            g(hashMap);
        } else if (str2.equals("launch_app") && !t.y) {
            h(hashMap);
        } else if (str2.equals("check_app_presence")) {
            i(hashMap);
        } else if (str2.equals("auto_play")) {
            j(hashMap);
        } else if (str2.equals("save_screenshot")) {
            a();
        } else if (str2.equals("social_post") && !t.y) {
            b(hashMap);
        } else if (str2.equals("make_in_app_purchase") && !t.y) {
            a(hashMap);
        }
        f("adc_bridge.nativeCallComplete()");
    }

    void a(HashMap hashMap) {
        t.y = true;
        this.d.postDelayed(this.e, 1000L);
        t.a("html5_interaction", this.g, this.c.F);
        String g = g((String) hashMap.get(AppLovinEventTypes.USER_VIEWED_PRODUCT));
        Integer.parseInt(g((String) hashMap.get("quantity")));
        this.f3724b.finish();
        this.c.F.i = g;
        this.c.F.u = k.END_CARD;
        t.K.a(this.c.F);
    }

    void b(HashMap hashMap) {
        t.y = true;
        this.d.postDelayed(this.e, 1000L);
        String g = g((String) hashMap.get("text"));
        String g2 = g((String) hashMap.get("url"));
        Intent intent = new Intent("android.intent.action.SEND");
        intent.setType("text/plain");
        intent.putExtra("android.intent.extra.TEXT", g + " " + g2);
        this.f3724b.startActivity(Intent.createChooser(intent, "Share this post using..."));
    }

    void a() {
        t.y = true;
        this.d.postDelayed(this.e, 1000L);
        t.a("html5_interaction", this.g, this.c.F);
        String str = Environment.getExternalStorageDirectory().toString() + "/Pictures/AdColony_Screenshots/AdColony_Screenshot_" + System.currentTimeMillis() + ".jpg";
        View rootView = this.f3723a.getRootView();
        rootView.setDrawingCacheEnabled(true);
        Bitmap createBitmap = Bitmap.createBitmap(rootView.getDrawingCache());
        rootView.setDrawingCacheEnabled(false);
        File file = new File(Environment.getExternalStorageDirectory().toString() + "/Pictures");
        File file2 = new File(Environment.getExternalStorageDirectory().toString() + "/Pictures/AdColony_Screenshots");
        try {
            file.mkdir();
            file2.mkdir();
        } catch (Exception e) {
        }
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(new File(str));
            createBitmap.compress(Bitmap.CompressFormat.JPEG, 90, fileOutputStream);
            fileOutputStream.flush();
            fileOutputStream.close();
            MediaScannerConnection.scanFile(this.f3724b, new String[]{str}, null, new MediaScannerConnection.OnScanCompletedListener() { // from class: com.jirbo.adcolony.am.2
                @Override // android.media.MediaScannerConnection.OnScanCompletedListener
                public void onScanCompleted(String path, Uri uri) {
                    if (Looper.myLooper() == null) {
                        Looper.prepare();
                    }
                    Toast.makeText(am.this.f3724b, "Screenshot saved to Gallery!", 0).show();
                }
            });
        } catch (FileNotFoundException e2) {
            Toast.makeText(this.f3724b, "Error saving screenshot.", 0).show();
            al.f3721a.a("ADC [info] FileNotFoundException in MRAIDCommandTakeScreenshot");
        } catch (IOException e3) {
            Toast.makeText(this.f3724b, "Error saving screenshot.", 0).show();
            al.f3721a.a("ADC [info] IOException in MRAIDCommandTakeScreenshot");
        }
    }

    void b(String str) {
        al.f3721a.a("ADC [info] MRAIDCommandSendADCEvent called with type: ").b((Object) str);
        t.a(str, this.c.F);
    }

    void b() {
        al.f3721a.b((Object) "ADC [info] MRAIDCommandClose called");
        this.f3724b.finish();
        t.K.a(this.c.F);
    }

    void c(String str) {
        al.f3721a.a("ADC [info] MRAIDCommandOpenStore called with item: ").b((Object) str);
        t.y = true;
        this.d.postDelayed(this.e, 1000L);
        t.a("html5_interaction", this.g, this.c.F);
        try {
            this.f3724b.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(g(str))));
        } catch (Exception e) {
            Toast.makeText(this.f3724b, "Unable to open store.", 0).show();
        }
    }

    void d(String str) {
        al.f3721a.a("ADC [info] MRAIDCommandOpen called with url: ").b((Object) str);
        t.y = true;
        this.d.postDelayed(this.e, 1000L);
        String g = g(str);
        if (g.startsWith("adcvideo")) {
            this.c.a(g.replace("adcvideo", Constants.HTTP));
            return;
        }
        if (str.contains("youtube")) {
            try {
                this.f3724b.startActivity(new Intent("android.intent.action.VIEW", Uri.parse("vnd.youtube:" + g.substring(g.indexOf(118) + 2))));
                return;
            } catch (Exception e) {
                String g2 = g(str);
                if (g2.contains("safari")) {
                    g2 = g2.replace("safari", Constants.HTTP);
                }
                this.f3724b.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(g2)));
                return;
            }
        }
        if (g.startsWith("browser")) {
            t.a("html5_interaction", this.c.F);
            this.f3724b.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(g.replace("browser", Constants.HTTP))));
        } else {
            t.a("html5_interaction", this.g, this.c.F);
            AdColonyBrowser.f3674a = g;
            this.f3724b.startActivity(new Intent(this.f3724b, (Class<?>) AdColonyBrowser.class));
        }
    }

    void e(String str) {
        al.f3721a.a("ADC [info] MRAIDCommandExpand called with url: ").b((Object) str);
        f("adc_bridge.fireChangeEvent({state:'expanded'});");
    }

    /* JADX WARN: Can't wrap try/catch for region: R(14:0|1|(4:3|(1:5)|6|7)|8|(1:10)|11|12|(2:14|15)|(3:59|60|61)(1:17)|18|19|(2:52|53)|(2:22|23)(9:25|(1:27)|28|(1:30)(2:42|(1:44)(2:45|(1:47)(2:48|(1:50)(1:51))))|31|(1:33)(1:41)|34|35|37)|(1:(0))) */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x01d8, code lost:
    
        r4 = null;
     */
    /* JADX WARN: Removed duplicated region for block: B:17:0x02e9  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x01c1  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x01da  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x01bb A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:59:0x01a8 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    void c(java.util.HashMap r26) {
        /*
            Method dump skipped, instructions count: 748
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.jirbo.adcolony.am.c(java.util.HashMap):void");
    }

    void d(HashMap hashMap) {
        al.f3721a.a("ADC [info] MRAIDCommandMail called with parameters: ").b(hashMap);
        t.y = true;
        this.d.postDelayed(this.e, 1000L);
        String g = g((String) hashMap.get("subject"));
        String g2 = g((String) hashMap.get("body"));
        String g3 = g((String) hashMap.get("to"));
        t.a("html5_interaction", this.g, this.c.F);
        try {
            Intent intent = new Intent("android.intent.action.SEND");
            intent.setType("plain/text");
            intent.putExtra("android.intent.extra.SUBJECT", g).putExtra("android.intent.extra.TEXT", g2).putExtra("android.intent.extra.EMAIL", new String[]{g3});
            this.f3724b.startActivity(intent);
        } catch (Exception e) {
            e.printStackTrace();
            Toast.makeText(this.f3724b, "Unable to launch email client.", 0).show();
        }
    }

    void e(HashMap hashMap) {
        al.f3721a.a("ADC [info] MRAIDCommandSMS called with parameters: ").b(hashMap);
        t.y = true;
        this.d.postDelayed(this.e, 1000L);
        String g = g((String) hashMap.get("to"));
        String g2 = g((String) hashMap.get("body"));
        t.a("html5_interaction", this.g, this.c.F);
        try {
            this.f3724b.startActivity(new Intent("android.intent.action.VIEW", Uri.parse("sms:" + g)).putExtra("sms_body", g2));
        } catch (Exception e) {
            e.printStackTrace();
            Toast.makeText(this.f3724b, "Failed to create sms.", 0).show();
        }
    }

    void f(HashMap hashMap) {
        al.f3721a.a("ADC [info] MRAIDCommandTel called with parameters: ").b(hashMap);
        t.y = true;
        this.d.postDelayed(this.e, 1000L);
        String g = g((String) hashMap.get("number"));
        t.a("html5_interaction", this.g, this.c.F);
        try {
            this.f3724b.startActivity(new Intent("android.intent.action.DIAL").setData(Uri.parse("tel:" + g)));
        } catch (Exception e) {
            Toast.makeText(this.f3724b, "Failed to dial number.", 0).show();
        }
    }

    void g(HashMap hashMap) {
        al.f3721a.a("ADC [info] MRAIDCommandSendCustomADCEvent called with parameters: ").b(hashMap);
        t.a("custom_event", "{\"event_type\":\"" + g((String) hashMap.get("event_type")) + "\",\"ad_slot\":" + t.c.e.j + "}", this.c.F);
    }

    void h(HashMap hashMap) {
        al.f3721a.a("ADC [info] MRAIDCommandLaunchApp called with parameters: ").b(hashMap);
        t.y = true;
        this.d.postDelayed(this.e, 1000L);
        String g = g((String) hashMap.get("handle"));
        t.a("html5_interaction", this.g, this.c.F);
        try {
            this.f3724b.startActivity(this.f3724b.getPackageManager().getLaunchIntentForPackage(g));
        } catch (Exception e) {
            Toast.makeText(this.f3724b, "Failed to launch external application.", 0).show();
        }
    }

    void i(HashMap hashMap) {
        al.f3721a.a("ADC [info] MRAIDCommandCheckAppPresence called with parameters: ").b(hashMap);
        String g = g((String) hashMap.get("handle"));
        f("adc_bridge.fireAppPresenceEvent('" + g + "'," + u.a(g) + ")");
    }

    void j(HashMap hashMap) {
        al.f3721a.a("ADC [info] MRAIDCommandCheckAutoPlay called with parameters: ").b(hashMap);
    }

    void f(String str) {
        this.f3723a.loadUrl("javascript:" + str);
    }

    String g(String str) {
        return str == null ? "" : URLDecoder.decode(str);
    }
}
