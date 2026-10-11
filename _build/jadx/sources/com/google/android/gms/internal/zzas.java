package com.google.android.gms.internal;

import android.content.Context;
import android.net.Uri;
import android.view.MotionEvent;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class zzas {
    private static final String[] zzafy = {"/aclk", "/pcs/click"};
    private String zzafu = "googleads.g.doubleclick.net";
    private String zzafv = "/pagead/ads";
    private String zzafw = "ad.doubleclick.net";
    private String[] zzafx = {".doubleclick.net", ".googleadservices.com", ".googlesyndication.com"};
    private zzan zzafz;

    public zzas(zzan zzanVar) {
        this.zzafz = zzanVar;
    }

    private Uri zza(Uri uri, Context context, String str, boolean z) throws zzat {
        try {
            boolean zzb = zzb(uri);
            if (zzb) {
                if (uri.toString().contains("dc_ms=")) {
                    throw new zzat("Parameter already exists: dc_ms");
                }
            } else if (uri.getQueryParameter("ms") != null) {
                throw new zzat("Query parameter already exists: ms");
            }
            String zzb2 = z ? this.zzafz.zzb(context, str) : this.zzafz.zzb(context);
            return zzb ? zzb(uri, "dc_ms", zzb2) : zza(uri, "ms", zzb2);
        } catch (UnsupportedOperationException e) {
            throw new zzat("Provided Uri is not in a valid state");
        }
    }

    private Uri zza(Uri uri, String str, String str2) throws UnsupportedOperationException {
        String uri2 = uri.toString();
        int indexOf = uri2.indexOf("&adurl");
        if (indexOf == -1) {
            indexOf = uri2.indexOf("?adurl");
        }
        return indexOf != -1 ? Uri.parse(uri2.substring(0, indexOf + 1) + str + "=" + str2 + "&" + uri2.substring(indexOf + 1)) : uri.buildUpon().appendQueryParameter(str, str2).build();
    }

    private Uri zzb(Uri uri, String str, String str2) {
        String uri2 = uri.toString();
        int indexOf = uri2.indexOf(";adurl");
        if (indexOf != -1) {
            return Uri.parse(uri2.substring(0, indexOf + 1) + str + "=" + str2 + ";" + uri2.substring(indexOf + 1));
        }
        String encodedPath = uri.getEncodedPath();
        int indexOf2 = uri2.indexOf(encodedPath);
        return Uri.parse(uri2.substring(0, encodedPath.length() + indexOf2) + ";" + str + "=" + str2 + ";" + uri2.substring(encodedPath.length() + indexOf2));
    }

    public Uri zza(Uri uri, Context context) throws zzat {
        return zza(uri, context, null, false);
    }

    public void zza(MotionEvent motionEvent) {
        this.zzafz.zza(motionEvent);
    }

    public boolean zza(Uri uri) {
        if (uri == null) {
            throw new NullPointerException();
        }
        try {
            if (uri.getHost().equals(this.zzafu)) {
                return uri.getPath().equals(this.zzafv);
            }
            return false;
        } catch (NullPointerException e) {
            return false;
        }
    }

    public zzan zzaw() {
        return this.zzafz;
    }

    public Uri zzb(Uri uri, Context context) throws zzat {
        try {
            return zza(uri, context, uri.getQueryParameter("ai"), true);
        } catch (UnsupportedOperationException e) {
            throw new zzat("Provided Uri is not in a valid state");
        }
    }

    public void zzb(String str, String str2) {
        this.zzafu = str;
        this.zzafv = str2;
    }

    public boolean zzb(Uri uri) {
        if (uri == null) {
            throw new NullPointerException();
        }
        try {
            return uri.getHost().equals(this.zzafw);
        } catch (NullPointerException e) {
            return false;
        }
    }

    public boolean zzc(Uri uri) {
        if (uri == null) {
            throw new NullPointerException();
        }
        try {
            String host = uri.getHost();
            for (String str : this.zzafx) {
                if (host.endsWith(str)) {
                    return true;
                }
            }
            return false;
        } catch (NullPointerException e) {
            return false;
        }
    }

    public boolean zzd(Uri uri) {
        if (!zzc(uri)) {
            return false;
        }
        for (String str : zzafy) {
            if (uri.getPath().endsWith(str)) {
                return true;
            }
        }
        return false;
    }

    public void zzk(String str) {
        this.zzafx = str.split(",");
    }
}
