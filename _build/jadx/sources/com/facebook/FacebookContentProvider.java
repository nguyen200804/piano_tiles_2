package com.facebook;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.database.Cursor;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import android.util.Log;
import android.util.Pair;
import java.io.FileNotFoundException;
import java.util.UUID;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class FacebookContentProvider extends ContentProvider {

    /* renamed from: a, reason: collision with root package name */
    private static final String f2408a = FacebookContentProvider.class.getName();

    public static String a(String str, UUID uuid, String str2) {
        return String.format("%s%s/%s/%s", "content://com.facebook.app.FacebookContentProvider", str, uuid.toString(), str2);
    }

    @Override // android.content.ContentProvider
    public boolean onCreate() {
        return true;
    }

    @Override // android.content.ContentProvider
    public Cursor query(Uri uri, String[] strings, String s, String[] strings2, String s2) {
        return null;
    }

    @Override // android.content.ContentProvider
    public String getType(Uri uri) {
        return null;
    }

    @Override // android.content.ContentProvider
    public Uri insert(Uri uri, ContentValues contentValues) {
        return null;
    }

    @Override // android.content.ContentProvider
    public int delete(Uri uri, String s, String[] strings) {
        return 0;
    }

    @Override // android.content.ContentProvider
    public int update(Uri uri, ContentValues contentValues, String s, String[] strings) {
        return 0;
    }

    @Override // android.content.ContentProvider
    public ParcelFileDescriptor openFile(Uri uri, String mode) throws FileNotFoundException {
        Pair<UUID, String> a2 = a(uri);
        if (a2 == null) {
            throw new FileNotFoundException();
        }
        try {
            return ParcelFileDescriptor.open(com.facebook.internal.u.a((UUID) a2.first, (String) a2.second), 268435456);
        } catch (FileNotFoundException e) {
            Log.e(f2408a, "Got unexpected exception:" + e);
            throw e;
        }
    }

    Pair<UUID, String> a(Uri uri) {
        try {
            String[] split = uri.getPath().substring(1).split("/");
            String str = split[0];
            return new Pair<>(UUID.fromString(str), split[1]);
        } catch (Exception e) {
            return null;
        }
    }
}
