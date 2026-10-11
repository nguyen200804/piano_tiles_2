package com.mopub.nativesdk.a;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;

/* compiled from: SDKDBHelper.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
final class e extends SQLiteOpenHelper {

    /* renamed from: a, reason: collision with root package name */
    private /* synthetic */ d f4594a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public e(d dVar, Context context, String str, int i) {
        super(context, str, (SQLiteDatabase.CursorFactory) null, i);
        this.f4594a = dVar;
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onCreate(SQLiteDatabase sQLiteDatabase) {
        d dVar = this.f4594a;
        sQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS rushrefer (packagename TEXT,refer TEXT,starttime INTEGER,campaignid INTEGER,PRIMARY KEY (packagename))");
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        d dVar = this.f4594a;
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS 'rushrefer'");
        d dVar2 = this.f4594a;
        sQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS rushrefer (packagename TEXT,refer TEXT,starttime INTEGER,campaignid INTEGER,PRIMARY KEY (packagename))");
    }
}
