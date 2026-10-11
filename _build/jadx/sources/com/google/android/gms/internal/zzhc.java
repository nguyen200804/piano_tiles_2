package com.google.android.gms.internal;

import android.app.AlertDialog;
import android.app.DownloadManager;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Environment;
import android.text.TextUtils;
import android.webkit.URLUtil;
import com.google.android.gms.R;
import java.util.Map;

@zzin
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class zzhc extends zzhf {
    private final Context mContext;
    private final Map<String, String> zzbeg;

    public zzhc(zzlh zzlhVar, Map<String, String> map) {
        super(zzlhVar, "storePicture");
        this.zzbeg = map;
        this.mContext = zzlhVar.zzue();
    }

    public void execute() {
        if (this.mContext == null) {
            zzbt("Activity context is not available");
            return;
        }
        if (!com.google.android.gms.ads.internal.zzu.zzfq().zzag(this.mContext).zzjr()) {
            zzbt("Feature is not supported by the device.");
            return;
        }
        final String str = this.zzbeg.get("iurl");
        if (TextUtils.isEmpty(str)) {
            zzbt("Image url cannot be empty.");
            return;
        }
        if (!URLUtil.isValidUrl(str)) {
            String valueOf = String.valueOf(str);
            zzbt(valueOf.length() != 0 ? "Invalid image url: ".concat(valueOf) : new String("Invalid image url: "));
            return;
        }
        final String zzbs = zzbs(str);
        if (!com.google.android.gms.ads.internal.zzu.zzfq().zzcq(zzbs)) {
            String valueOf2 = String.valueOf(zzbs);
            zzbt(valueOf2.length() != 0 ? "Image type not recognized: ".concat(valueOf2) : new String("Image type not recognized: "));
            return;
        }
        Resources resources = com.google.android.gms.ads.internal.zzu.zzft().getResources();
        AlertDialog.Builder zzaf = com.google.android.gms.ads.internal.zzu.zzfq().zzaf(this.mContext);
        zzaf.setTitle(resources != null ? resources.getString(R.string.store_picture_title) : "Save image");
        zzaf.setMessage(resources != null ? resources.getString(R.string.store_picture_message) : "Allow Ad to store image in Picture gallery?");
        zzaf.setPositiveButton(resources != null ? resources.getString(R.string.accept) : "Accept", new DialogInterface.OnClickListener() { // from class: com.google.android.gms.internal.zzhc.1
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                try {
                    ((DownloadManager) zzhc.this.mContext.getSystemService("download")).enqueue(zzhc.this.zzk(str, zzbs));
                } catch (IllegalStateException e) {
                    zzhc.this.zzbt("Could not store picture.");
                }
            }
        });
        zzaf.setNegativeButton(resources != null ? resources.getString(R.string.decline) : "Decline", new DialogInterface.OnClickListener() { // from class: com.google.android.gms.internal.zzhc.2
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                zzhc.this.zzbt("User canceled the download.");
            }
        });
        zzaf.create().show();
    }

    String zzbs(String str) {
        return Uri.parse(str).getLastPathSegment();
    }

    DownloadManager.Request zzk(String str, String str2) {
        DownloadManager.Request request = new DownloadManager.Request(Uri.parse(str));
        request.setDestinationInExternalPublicDir(Environment.DIRECTORY_PICTURES, str2);
        com.google.android.gms.ads.internal.zzu.zzfs().zza(request);
        return request;
    }
}
