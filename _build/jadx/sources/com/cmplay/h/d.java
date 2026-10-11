package com.cmplay.h;

import android.net.Uri;
import android.text.TextUtils;
import com.cmplay.tile2.GameApp;
import com.cmplay.util.aa;
import java.util.UUID;

/* compiled from: ShareCommons.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class d {

    /* renamed from: b, reason: collision with root package name */
    public static String f1384b;
    public static String c;
    public static int d;
    public static String e;
    public static String f;
    public static String g;
    public static String h;
    public static int l;
    public static int m;
    public static int n;
    public static float o;
    public static int p;
    public static int q;

    /* renamed from: a, reason: collision with root package name */
    public static final String f1383a = com.cmplay.cloud.a.a().a(2, "section_common", "cloud_key_ip_when_unable_to_resolve_host", "52.23.127.237");
    public static boolean i = false;
    public static boolean j = true;
    public static boolean k = true;

    public static void a() {
        f1384b = UUID.randomUUID().toString();
    }

    public static String b() {
        if (TextUtils.isEmpty(f1384b)) {
            a();
        }
        return f1384b;
    }

    public static String a(int i2, int i3) {
        switch (i3) {
            case 1:
                switch (i2) {
                    case 1:
                    case 3:
                    case 5:
                    case 6:
                    case 7:
                    case 9:
                        return "http://s.p2.cmcm.com/transfer.html";
                    case 2:
                    case 4:
                    case 8:
                    default:
                        return null;
                }
            case 2:
            case 5:
            case 13:
            case 14:
            case 15:
            case 16:
            case 17:
            case 18:
            case 20:
                if (1 == n) {
                    switch (i2) {
                        case 2:
                        case 3:
                            return d();
                        case 4:
                        case 5:
                        case 6:
                        case 7:
                            return "http://s.p2.cmcm.com/transfer.html";
                        default:
                            return null;
                    }
                }
                if (n != 0 && 3 != n) {
                    return null;
                }
                return aa.b("key_share_h5_url", "");
            case 3:
                switch (i2) {
                    case 1:
                    case 3:
                    case 5:
                    case 6:
                    case 7:
                    case 9:
                        return "http://s.p2.cmcm.com/transfer.html";
                    case 2:
                    case 4:
                    case 8:
                    default:
                        return null;
                }
            case 4:
            case 10:
            case 11:
            case 19:
            default:
                return null;
            case 6:
            case 7:
            case 8:
            case 9:
            case 12:
                switch (i2) {
                    case 1:
                    case 2:
                    case 3:
                    case 9:
                        return d();
                    case 4:
                    case 5:
                    case 6:
                    case 7:
                        return "http://s.p2.cmcm.com/transfer.html";
                    case 8:
                    default:
                        return null;
                }
        }
    }

    public static int c() {
        switch (m) {
            case 1:
            default:
                return 2;
            case 2:
            case 3:
                return 5;
            case 4:
            case 5:
            case 6:
                return 15;
            case 7:
                return 17;
            case 8:
                return 18;
        }
    }

    public static String d() {
        return "http://p2.cmcm.com/transfer_v2?uuid=" + b() + "&title=" + Uri.encode(GameApp.f1598a.getResources().getString(2131034150)) + "&desc=" + Uri.encode(h) + "&image_url=" + Uri.encode(e.a(l));
    }
}
