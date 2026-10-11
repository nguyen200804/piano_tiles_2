package com.cmcm.dmc.sdk.c;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.provider.MediaStore;
import com.cmcm.dmc.sdk.a.k;
import com.mopub.mobileads.VastIconXmlManager;
import java.util.List;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class d extends b<com.cmcm.dmc.sdk.c.a.c> {
    public d(Context context) {
        super(context);
    }

    private void a(Long l) {
        k.a("receiver").c().putLong("config_photo_last_added_time", l.longValue()).apply();
    }

    private Long h() {
        return Long.valueOf(k.a("receiver").c("config_photo_last_added_time"));
    }

    @Override // com.cmcm.dmc.sdk.c.b
    public /* bridge */ /* synthetic */ List<com.cmcm.dmc.sdk.c.a.c> a() {
        return super.a();
    }

    @Override // com.cmcm.dmc.sdk.c.b
    void a(List<com.cmcm.dmc.sdk.c.a.c> list) {
        if (list == null || list.isEmpty()) {
            return;
        }
        new a(this.f711a, "photo").a(list);
        if (list.isEmpty()) {
            return;
        }
        long c = list.get(0).c();
        if (c > 0) {
            a(Long.valueOf(c));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.cmcm.dmc.sdk.c.b
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public com.cmcm.dmc.sdk.c.a.c a(Cursor cursor) {
        com.cmcm.dmc.sdk.c.a.c cVar = new com.cmcm.dmc.sdk.c.a.c();
        cVar.a(cursor.getInt(cursor.getColumnIndex(VastIconXmlManager.WIDTH)));
        cVar.b(cursor.getInt(cursor.getColumnIndex(VastIconXmlManager.HEIGHT)));
        cVar.a(cursor.getLong(cursor.getColumnIndex("_id")));
        cVar.b(cursor.getLong(cursor.getColumnIndex("_size")));
        cVar.c(cursor.getLong(cursor.getColumnIndex("datetaken")));
        cVar.d(cursor.getLong(cursor.getColumnIndex("date_modified")));
        cVar.b(cursor.getString(cursor.getColumnIndex("latitude")));
        cVar.c(cursor.getString(cursor.getColumnIndex("longitude")));
        cVar.a(cursor.getString(cursor.getColumnIndex("_data")));
        cVar.d(cursor.getString(cursor.getColumnIndex("_display_name")));
        cVar.e(cursor.getString(cursor.getColumnIndex("bucket_display_name")));
        cVar.f(cursor.getString(cursor.getColumnIndex("mime_type")));
        cVar.g(cursor.getString(cursor.getColumnIndex("description")));
        return cVar;
    }

    @Override // com.cmcm.dmc.sdk.c.b
    Uri c() {
        return MediaStore.Images.Media.EXTERNAL_CONTENT_URI;
    }

    @Override // com.cmcm.dmc.sdk.c.b
    String[] d() {
        return new String[]{VastIconXmlManager.WIDTH, VastIconXmlManager.HEIGHT, "_id", "_size", "datetaken", "date_modified", "latitude", "longitude", "_data", "_display_name", "bucket_display_name", "mime_type", "description"};
    }

    @Override // com.cmcm.dmc.sdk.c.b
    String e() {
        return "mime_type=? and datetaken > ? ";
    }

    @Override // com.cmcm.dmc.sdk.c.b
    String[] f() {
        return new String[]{"image/jpeg", "" + h()};
    }

    @Override // com.cmcm.dmc.sdk.c.b
    String g() {
        return "date_modified desc limit 100";
    }
}
