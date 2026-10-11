package com.cmcm.dmc.sdk.c;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.provider.MediaStore;
import com.cmcm.dmc.sdk.a.k;
import com.mopub.mobileads.VastIconXmlManager;
import java.util.List;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class c extends b<com.cmcm.dmc.sdk.c.a.b> {
    public c(Context context) {
        super(context);
    }

    private void a(Long l) {
        k.a("receiver").c().putLong("config_music_last_added_time", l.longValue()).apply();
    }

    private Long h() {
        return Long.valueOf(k.a("receiver").c("config_music_last_added_time"));
    }

    @Override // com.cmcm.dmc.sdk.c.b
    public /* bridge */ /* synthetic */ List<com.cmcm.dmc.sdk.c.a.b> a() {
        return super.a();
    }

    @Override // com.cmcm.dmc.sdk.c.b
    void a(List<com.cmcm.dmc.sdk.c.a.b> list) {
        super.a(list);
        if (list == null || list.isEmpty()) {
            return;
        }
        new a(this.f711a, "music").a(list);
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
    public com.cmcm.dmc.sdk.c.a.b a(Cursor cursor) {
        com.cmcm.dmc.sdk.c.a.b bVar = new com.cmcm.dmc.sdk.c.a.b();
        bVar.a(cursor.getLong(cursor.getColumnIndex("_id")));
        bVar.d(cursor.getLong(cursor.getColumnIndex("year")));
        bVar.e(cursor.getLong(cursor.getColumnIndex(VastIconXmlManager.DURATION)));
        bVar.b(cursor.getLong(cursor.getColumnIndex("_size")));
        bVar.f(cursor.getLong(cursor.getColumnIndex("date_modified")));
        bVar.c(cursor.getLong(cursor.getColumnIndex("date_added")));
        bVar.c(cursor.getString(cursor.getColumnIndex("title")));
        bVar.d(cursor.getString(cursor.getColumnIndex("album")));
        bVar.b(cursor.getString(cursor.getColumnIndex("artist")));
        bVar.e(cursor.getString(cursor.getColumnIndex("_display_name")));
        bVar.a(cursor.getString(cursor.getColumnIndex("_data")));
        bVar.f(cursor.getString(cursor.getColumnIndex("mime_type")));
        return bVar;
    }

    @Override // com.cmcm.dmc.sdk.c.b
    Uri c() {
        return MediaStore.Audio.Media.EXTERNAL_CONTENT_URI;
    }

    @Override // com.cmcm.dmc.sdk.c.b
    String[] d() {
        return new String[]{"_id", "title", "_display_name", "date_modified", "_data", "date_added", "album", "artist", VastIconXmlManager.DURATION, "year", "_size", "mime_type"};
    }

    @Override // com.cmcm.dmc.sdk.c.b
    String e() {
        return "mime_type=? or mime_type=? and date_added > ? and is_music > 0";
    }

    @Override // com.cmcm.dmc.sdk.c.b
    String[] f() {
        return new String[]{"audio/mpeg", "audio/x-ms-wma", "" + h()};
    }

    @Override // com.cmcm.dmc.sdk.c.b
    String g() {
        return "date_modified desc limit 100";
    }
}
