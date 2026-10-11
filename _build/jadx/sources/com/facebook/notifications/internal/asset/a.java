package com.facebook.notifications.internal.asset;

import android.content.Context;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.view.View;
import com.facebook.notifications.internal.asset.a.b;
import com.facebook.notifications.internal.asset.handlers.BitmapAssetHandler;
import com.facebook.notifications.internal.asset.handlers.ColorAssetHandler;
import com.facebook.notifications.internal.asset.handlers.GifAssetHandler;
import java.io.File;
import java.net.URL;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONObject;

/* compiled from: AssetManager.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class a {

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    private final b f3370a;

    /* renamed from: b, reason: collision with root package name */
    @NonNull
    private final Map<String, b<? extends Asset>> f3371b = new ConcurrentHashMap();

    /* compiled from: AssetManager.java */
    /* renamed from: com.facebook.notifications.internal.asset.a$a, reason: collision with other inner class name */
    public interface InterfaceC0089a {
        File a(URL url);
    }

    /* compiled from: AssetManager.java */
    public interface b<AssetType extends Asset> {
        @NonNull
        View a(@NonNull AssetType assettype, @NonNull Context context);

        @Nullable
        AssetType a(@NonNull JSONObject jSONObject, @NonNull InterfaceC0089a interfaceC0089a);

        @Nullable
        Set<URL> a(@NonNull JSONObject jSONObject);
    }

    /* compiled from: AssetManager.java */
    public interface c {
        void a(@NonNull JSONObject jSONObject);
    }

    public a(Context context) {
        this.f3370a = new b(context);
        this.f3371b.put("Color", new ColorAssetHandler());
        this.f3371b.put("Image", new BitmapAssetHandler());
        this.f3371b.put("GIF", new GifAssetHandler());
    }

    public void a(@NonNull String str, @NonNull b<? extends Asset> bVar) {
        this.f3371b.put(str, bVar);
    }

    @Nullable
    public Asset a(@Nullable JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        b<? extends Asset> bVar = this.f3371b.get(jSONObject.optString("_type"));
        if (bVar == null) {
            return null;
        }
        return bVar.a(jSONObject, this.f3370a);
    }

    @NonNull
    public <AssetType extends Asset> View a(@NonNull AssetType assettype, @NonNull Context context) {
        String a2 = assettype.a();
        b<? extends Asset> bVar = this.f3371b.get(a2);
        if (bVar == null) {
            throw new IllegalArgumentException("Asset type \"" + a2 + "\" not registered!");
        }
        return bVar.a((b<? extends Asset>) assettype, context);
    }

    public void a(@NonNull final JSONObject jSONObject, @NonNull final c cVar) {
        this.f3370a.a(c(jSONObject), new b.a() { // from class: com.facebook.notifications.internal.asset.a.1
            @Override // com.facebook.notifications.internal.asset.a.b.a
            public void a(@NonNull Set<URL> set) {
                cVar.a(jSONObject);
            }
        });
    }

    public void b(@NonNull JSONObject jSONObject) {
        this.f3370a.a(c(jSONObject));
    }

    public void a() {
        this.f3370a.a();
    }

    @NonNull
    private Set<URL> c(@Nullable JSONObject jSONObject) {
        if (jSONObject == null) {
            return new HashSet();
        }
        final HashSet hashSet = new HashSet();
        com.facebook.notifications.internal.utilities.c.a(jSONObject, new com.facebook.notifications.internal.utilities.c() { // from class: com.facebook.notifications.internal.asset.a.2
            @Override // com.facebook.notifications.internal.utilities.c
            protected void a(JSONObject jSONObject2) {
                Set<URL> a2;
                super.a(jSONObject2);
                b bVar = (b) a.this.f3371b.get(jSONObject2.optString("_type"));
                if (bVar != null && (a2 = bVar.a(jSONObject2)) != null) {
                    hashSet.addAll(a2);
                }
            }
        });
        return hashSet;
    }
}
