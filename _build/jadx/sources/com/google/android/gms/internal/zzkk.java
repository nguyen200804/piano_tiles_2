package com.google.android.gms.internal;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import android.view.MotionEvent;
import java.util.Map;

@zzin
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class zzkk {
    private final Context mContext;
    private int mState;
    private final float zzbre;
    private String zzcll;
    private float zzclm;
    private float zzcln;
    private float zzclo;

    public zzkk(Context context) {
        this.mState = 0;
        this.mContext = context;
        this.zzbre = context.getResources().getDisplayMetrics().density;
    }

    public zzkk(Context context, String str) {
        this(context);
        this.zzcll = str;
    }

    private void showDialog() {
        if (!(this.mContext instanceof Activity)) {
            zzkd.zzcw("Can not create dialog without Activity Context");
            return;
        }
        final String zzct = zzct(this.zzcll);
        AlertDialog.Builder builder = new AlertDialog.Builder(this.mContext);
        builder.setMessage(zzct);
        builder.setTitle("Ad Information");
        builder.setPositiveButton("Share", new DialogInterface.OnClickListener() { // from class: com.google.android.gms.internal.zzkk.1
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                com.google.android.gms.ads.internal.zzu.zzfq().zzb(zzkk.this.mContext, Intent.createChooser(new Intent("android.intent.action.SEND").setType("text/plain").putExtra("android.intent.extra.TEXT", zzct), "Share via"));
            }
        });
        builder.setNegativeButton("Close", new DialogInterface.OnClickListener() { // from class: com.google.android.gms.internal.zzkk.2
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
            }
        });
        builder.create().show();
    }

    static String zzct(String str) {
        if (TextUtils.isEmpty(str)) {
            return "No debug information";
        }
        Uri build = new Uri.Builder().encodedQuery(str.replaceAll("\\+", "%20")).build();
        StringBuilder sb = new StringBuilder();
        Map<String, String> zzf = com.google.android.gms.ads.internal.zzu.zzfq().zzf(build);
        for (String str2 : zzf.keySet()) {
            sb.append(str2).append(" = ").append(zzf.get(str2)).append("\n\n");
        }
        String trim = sb.toString().trim();
        return TextUtils.isEmpty(trim) ? "No debug information" : trim;
    }

    void zza(int i, float f, float f2) {
        if (i == 0) {
            this.mState = 0;
            this.zzclm = f;
            this.zzcln = f2;
            this.zzclo = f2;
            return;
        }
        if (this.mState != -1) {
            if (i != 2) {
                if (i == 1 && this.mState == 4) {
                    showDialog();
                    return;
                }
                return;
            }
            if (f2 > this.zzcln) {
                this.zzcln = f2;
            } else if (f2 < this.zzclo) {
                this.zzclo = f2;
            }
            if (this.zzcln - this.zzclo > 30.0f * this.zzbre) {
                this.mState = -1;
                return;
            }
            if (this.mState == 0 || this.mState == 2) {
                if (f - this.zzclm >= 50.0f * this.zzbre) {
                    this.zzclm = f;
                    this.mState++;
                }
            } else if ((this.mState == 1 || this.mState == 3) && f - this.zzclm <= (-50.0f) * this.zzbre) {
                this.zzclm = f;
                this.mState++;
            }
            if (this.mState == 1 || this.mState == 3) {
                if (f > this.zzclm) {
                    this.zzclm = f;
                }
            } else {
                if (this.mState != 2 || f >= this.zzclm) {
                    return;
                }
                this.zzclm = f;
            }
        }
    }

    public void zzcs(String str) {
        this.zzcll = str;
    }

    public void zze(MotionEvent motionEvent) {
        int historySize = motionEvent.getHistorySize();
        for (int i = 0; i < historySize; i++) {
            zza(motionEvent.getActionMasked(), motionEvent.getHistoricalX(0, i), motionEvent.getHistoricalY(0, i));
        }
        zza(motionEvent.getActionMasked(), motionEvent.getX(), motionEvent.getY());
    }
}
