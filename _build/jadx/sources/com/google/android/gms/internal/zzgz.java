package com.google.android.gms.internal;

import android.annotation.TargetApi;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.Resources;
import android.provider.CalendarContract;
import android.text.TextUtils;
import com.google.android.gms.R;
import java.util.Map;

@zzin
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class zzgz extends zzhf {
    private final Context mContext;
    private final Map<String, String> zzbeg;
    private String zzbpy;
    private long zzbpz;
    private long zzbqa;
    private String zzbqb;
    private String zzbqc;

    public zzgz(zzlh zzlhVar, Map<String, String> map) {
        super(zzlhVar, "createCalendarEvent");
        this.zzbeg = map;
        this.mContext = zzlhVar.zzue();
        zzmt();
    }

    private String zzbq(String str) {
        return TextUtils.isEmpty(this.zzbeg.get(str)) ? "" : this.zzbeg.get(str);
    }

    private long zzbr(String str) {
        String str2 = this.zzbeg.get(str);
        if (str2 == null) {
            return -1L;
        }
        try {
            return Long.parseLong(str2);
        } catch (NumberFormatException e) {
            return -1L;
        }
    }

    private void zzmt() {
        this.zzbpy = zzbq("description");
        this.zzbqb = zzbq("summary");
        this.zzbpz = zzbr("start_ticks");
        this.zzbqa = zzbr("end_ticks");
        this.zzbqc = zzbq("location");
    }

    @TargetApi(14)
    Intent createIntent() {
        Intent data = new Intent("android.intent.action.EDIT").setData(CalendarContract.Events.CONTENT_URI);
        data.putExtra("title", this.zzbpy);
        data.putExtra("eventLocation", this.zzbqc);
        data.putExtra("description", this.zzbqb);
        if (this.zzbpz > -1) {
            data.putExtra("beginTime", this.zzbpz);
        }
        if (this.zzbqa > -1) {
            data.putExtra("endTime", this.zzbqa);
        }
        data.setFlags(268435456);
        return data;
    }

    public void execute() {
        if (this.mContext == null) {
            zzbt("Activity context is not available.");
            return;
        }
        if (!com.google.android.gms.ads.internal.zzu.zzfq().zzag(this.mContext).zzju()) {
            zzbt("This feature is not available on the device.");
            return;
        }
        AlertDialog.Builder zzaf = com.google.android.gms.ads.internal.zzu.zzfq().zzaf(this.mContext);
        Resources resources = com.google.android.gms.ads.internal.zzu.zzft().getResources();
        zzaf.setTitle(resources != null ? resources.getString(R.string.create_calendar_title) : "Create calendar event");
        zzaf.setMessage(resources != null ? resources.getString(R.string.create_calendar_message) : "Allow Ad to create a calendar event?");
        zzaf.setPositiveButton(resources != null ? resources.getString(R.string.accept) : "Accept", new DialogInterface.OnClickListener() { // from class: com.google.android.gms.internal.zzgz.1
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                com.google.android.gms.ads.internal.zzu.zzfq().zzb(zzgz.this.mContext, zzgz.this.createIntent());
            }
        });
        zzaf.setNegativeButton(resources != null ? resources.getString(R.string.decline) : "Decline", new DialogInterface.OnClickListener() { // from class: com.google.android.gms.internal.zzgz.2
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                zzgz.this.zzbt("Operation denied by user.");
            }
        });
        zzaf.create().show();
    }
}
