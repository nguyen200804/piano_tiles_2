.class public Lcom/mopub/nativesdk/c/m;
.super Lcom/mopub/nativesdk/c/a;
.source "StrategyLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mopub/nativesdk/c/a",
        "<",
        "Lcom/mopub/nativesdk/core/y;",
        ">;"
    }
.end annotation


# instance fields
.field private final b:Ljava/lang/String;

.field private c:Landroid/content/Context;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/mopub/nativesdk/a/d;Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0, p2}, Lcom/mopub/nativesdk/c/a;-><init>(Landroid/content/Context;)V

    .line 27
    const-class v0, Lcom/mopub/nativesdk/c/m;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/nativesdk/c/m;->b:Ljava/lang/String;

    .line 31
    const-string v0, "5745-186"

    iput-object v0, p0, Lcom/mopub/nativesdk/c/m;->d:Ljava/lang/String;

    .line 36
    iput-object p2, p0, Lcom/mopub/nativesdk/c/m;->c:Landroid/content/Context;

    .line 37
    iput-object p3, p0, Lcom/mopub/nativesdk/c/m;->d:Ljava/lang/String;

    .line 38
    return-void
.end method

.method private a(Ljava/lang/String;)Lcom/mopub/nativesdk/core/y;
    .locals 4

    .prologue
    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RESPONSE: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    const/4 v1, 0x0

    .line 87
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 89
    const-string v0, "status"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 90
    const-string v3, "msg"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 93
    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    .line 95
    new-instance v0, Lcom/mopub/nativesdk/core/y;

    invoke-direct {v0}, Lcom/mopub/nativesdk/core/y;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    :try_start_1
    const-string v1, "data"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 99
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mopub/nativesdk/core/y;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 107
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method protected final a()I
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    return v0
.end method

.method protected final synthetic a(Ljava/util/Map;[B)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 25
    .line 5068
    if-eqz p2, :cond_0

    array-length v0, p2

    if-lez v0, :cond_0

    .line 5069
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p2}, Ljava/lang/String;-><init>([B)V

    .line 5070
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5073
    invoke-direct {p0, v0}, Lcom/mopub/nativesdk/c/m;->a(Ljava/lang/String;)Lcom/mopub/nativesdk/core/y;

    move-result-object v0

    :goto_0
    return-object v0

    .line 5075
    :cond_0
    const/4 v0, 0x0

    .line 25
    goto :goto_0
.end method

.method protected final b()Ljava/lang/String;
    .locals 9

    .prologue
    const/16 v8, 0x29d4

    const/4 v7, 0x1

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://ak.icecyber.org/rule?"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1115
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1118
    new-instance v1, Lcom/mopub/nativesdk/c/n;

    const/4 v4, 0x0

    invoke-direct {v1, v4}, Lcom/mopub/nativesdk/c/n;-><init>(B)V

    .line 1126
    const-string v4, "platform"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/mopub/nativesdk/c/n;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/mopub/nativesdk/c/n;

    .line 1128
    invoke-static {}, Lcom/mopub/nativesdk/core/a;->b()Lcom/mopub/nativesdk/core/a;

    invoke-static {}, Lcom/mopub/nativesdk/core/a;->c()Ljava/util/Map;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1130
    invoke-static {}, Lcom/mopub/nativesdk/core/a;->b()Lcom/mopub/nativesdk/core/a;

    invoke-static {}, Lcom/mopub/nativesdk/core/a;->c()Ljava/util/Map;

    move-result-object v4

    .line 1133
    const-string v5, "os_version"

    const-string v6, "os_version"

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lcom/mopub/nativesdk/c/n;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/mopub/nativesdk/c/n;

    .line 1136
    const-string v5, "package_name"

    const-string v6, "package_name"

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lcom/mopub/nativesdk/c/n;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/mopub/nativesdk/c/n;

    .line 1139
    const-string v5, "app_version_name"

    const-string v6, "app_version_name"

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lcom/mopub/nativesdk/c/n;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/mopub/nativesdk/c/n;

    .line 1142
    const-string v5, "app_version_code"

    const-string v6, "app_version_code"

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lcom/mopub/nativesdk/c/n;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/mopub/nativesdk/c/n;

    .line 1145
    const-string v5, "orientation"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lcom/mopub/nativesdk/c/n;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/mopub/nativesdk/c/n;

    .line 1148
    const-string v5, "brand"

    const-string v6, "brand"

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lcom/mopub/nativesdk/c/n;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/mopub/nativesdk/c/n;

    .line 1151
    const-string v5, "model"

    const-string v6, "model"

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lcom/mopub/nativesdk/c/n;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/mopub/nativesdk/c/n;

    .line 1154
    const-string v5, "gaid"

    const-string v6, "gaid"

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lcom/mopub/nativesdk/c/n;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/mopub/nativesdk/c/n;

    .line 1157
    const-string v5, "mnc"

    const-string v6, "mnc"

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lcom/mopub/nativesdk/c/n;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/mopub/nativesdk/c/n;

    .line 1160
    const-string v5, "mcc"

    const-string v6, "mcc"

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lcom/mopub/nativesdk/c/n;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/mopub/nativesdk/c/n;

    .line 1163
    const-string v5, "network_type"

    const-string v6, "network_type"

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lcom/mopub/nativesdk/c/n;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/mopub/nativesdk/c/n;

    .line 1166
    const-string v5, "language"

    const-string v6, "language"

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lcom/mopub/nativesdk/c/n;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/mopub/nativesdk/c/n;

    .line 1169
    const-string v5, "timezone"

    const-string v6, "timezone"

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lcom/mopub/nativesdk/c/n;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/mopub/nativesdk/c/n;

    .line 1172
    const-string v5, "useragent"

    const-string v6, "useragent"

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lcom/mopub/nativesdk/c/n;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/mopub/nativesdk/c/n;

    .line 1175
    const-string v5, "sdk_version"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lcom/mopub/nativesdk/c/n;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/mopub/nativesdk/c/n;

    .line 1178
    const-string v5, "gp_version"

    const-string v6, "gp_version"

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lcom/mopub/nativesdk/c/n;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/mopub/nativesdk/c/n;

    .line 1181
    const-string v5, "gpsv"

    const-string v6, "gpsv"

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lcom/mopub/nativesdk/c/n;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/mopub/nativesdk/c/n;

    .line 1184
    const-string v5, "screen_size"

    const-string v6, "screen_size"

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lcom/mopub/nativesdk/c/n;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/mopub/nativesdk/c/n;

    .line 1194
    const-string v5, "d1"

    const-string v6, "imei"

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lcom/mopub/nativesdk/c/n;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/mopub/nativesdk/c/n;

    .line 1197
    const-string v5, "d2"

    const-string v6, "mac"

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lcom/mopub/nativesdk/c/n;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/mopub/nativesdk/c/n;

    .line 1200
    const-string v5, "d3"

    const-string v6, "android_id"

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v5, v4}, Lcom/mopub/nativesdk/c/n;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/mopub/nativesdk/c/n;

    .line 1279
    :goto_0
    const-string v4, "timestamp"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/mopub/nativesdk/c/n;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/mopub/nativesdk/c/n;

    .line 1284
    const-string v4, "app_id"

    iget-object v5, p0, Lcom/mopub/nativesdk/c/m;->d:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Lcom/mopub/nativesdk/c/n;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/mopub/nativesdk/c/n;

    .line 1286
    const-string v4, "sdk_subid"

    iget-object v5, p0, Lcom/mopub/nativesdk/c/m;->d:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Lcom/mopub/nativesdk/c/n;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/mopub/nativesdk/c/n;

    .line 1289
    const-string v4, "sign"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/mopub/nativesdk/c/m;->c:Landroid/content/Context;

    invoke-static {v6}, Lcom/mopub/nativesdk/d/f;->l(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-cosiehl6789a**(%$)-12poiuhj,vktoihopbaposiuqh"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mopub/nativesdk/d/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Lcom/mopub/nativesdk/c/n;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/mopub/nativesdk/c/n;

    .line 1293
    invoke-virtual {v1}, Lcom/mopub/nativesdk/c/n;->toString()Ljava/lang/String;

    move-result-object v1

    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1207
    :cond_0
    const-string v4, "os_version"

    sget-object v5, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Lcom/mopub/nativesdk/c/n;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/mopub/nativesdk/c/n;

    .line 1210
    const-string v4, "package_name"

    iget-object v5, p0, Lcom/mopub/nativesdk/c/m;->c:Landroid/content/Context;

    invoke-static {v5}, Lcom/mopub/nativesdk/d/f;->l(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/mopub/nativesdk/c/n;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/mopub/nativesdk/c/n;

    .line 1213
    const-string v4, "app_version_name"

    iget-object v5, p0, Lcom/mopub/nativesdk/c/m;->c:Landroid/content/Context;

    invoke-static {v5}, Lcom/mopub/nativesdk/d/f;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/mopub/nativesdk/c/n;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/mopub/nativesdk/c/n;

    .line 1216
    const-string v4, "app_version_code"

    iget-object v5, p0, Lcom/mopub/nativesdk/c/m;->c:Landroid/content/Context;

    invoke-static {v5}, Lcom/mopub/nativesdk/d/f;->h(Landroid/content/Context;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/mopub/nativesdk/c/n;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/mopub/nativesdk/c/n;

    .line 1219
    const-string v4, "orientation"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/mopub/nativesdk/c/n;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/mopub/nativesdk/c/n;

    .line 1222
    const-string v4, "brand"

    .line 2190
    sget-object v5, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 1222
    invoke-virtual {v1, v4, v5}, Lcom/mopub/nativesdk/c/n;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/mopub/nativesdk/c/n;

    .line 1225
    const-string v4, "model"

    .line 3180
    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 1225
    invoke-virtual {v1, v4, v5}, Lcom/mopub/nativesdk/c/n;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/mopub/nativesdk/c/n;

    .line 1228
    const-string v4, "gaid"

    iget-object v5, p0, Lcom/mopub/nativesdk/c/m;->c:Landroid/content/Context;

    invoke-static {v5}, Lcom/mopub/nativesdk/d/f;->p(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/mopub/nativesdk/c/n;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/mopub/nativesdk/c/n;

    .line 1231
    const-string v4, "mnc"

    iget-object v5, p0, Lcom/mopub/nativesdk/c/m;->c:Landroid/content/Context;

    invoke-static {v5}, Lcom/mopub/nativesdk/d/f;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/mopub/nativesdk/c/n;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/mopub/nativesdk/c/n;

    .line 1234
    const-string v4, "mcc"

    iget-object v5, p0, Lcom/mopub/nativesdk/c/m;->c:Landroid/content/Context;

    invoke-static {v5}, Lcom/mopub/nativesdk/d/f;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/mopub/nativesdk/c/n;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/mopub/nativesdk/c/n;

    .line 1237
    const-string v4, "network_type"

    iget-object v5, p0, Lcom/mopub/nativesdk/c/m;->c:Landroid/content/Context;

    invoke-static {v5}, Lcom/mopub/nativesdk/d/f;->m(Landroid/content/Context;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/mopub/nativesdk/c/n;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/mopub/nativesdk/c/n;

    .line 1240
    const-string v4, "language"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/mopub/nativesdk/c/m;->c:Landroid/content/Context;

    invoke-static {v6}, Lcom/mopub/nativesdk/d/f;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x2d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/mopub/nativesdk/c/m;->c:Landroid/content/Context;

    invoke-static {v6}, Lcom/mopub/nativesdk/d/f;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/mopub/nativesdk/c/n;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/mopub/nativesdk/c/n;

    .line 1243
    const-string v4, "timezone"

    invoke-static {}, Lcom/mopub/nativesdk/d/f;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/mopub/nativesdk/c/n;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/mopub/nativesdk/c/n;

    .line 1249
    const-string v4, "sdk_version"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/mopub/nativesdk/c/n;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/mopub/nativesdk/c/n;

    .line 1252
    const-string v4, "gp_version"

    iget-object v5, p0, Lcom/mopub/nativesdk/c/m;->c:Landroid/content/Context;

    invoke-static {v5}, Lcom/mopub/nativesdk/d/f;->n(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/mopub/nativesdk/c/n;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/mopub/nativesdk/c/n;

    .line 1255
    const-string v4, "gpsv"

    iget-object v5, p0, Lcom/mopub/nativesdk/c/m;->c:Landroid/content/Context;

    invoke-static {v5}, Lcom/mopub/nativesdk/d/f;->o(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/mopub/nativesdk/c/n;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/mopub/nativesdk/c/n;

    .line 1258
    const-string v4, "screen_size"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/mopub/nativesdk/c/m;->c:Landroid/content/Context;

    invoke-static {v6}, Lcom/mopub/nativesdk/d/f;->j(Landroid/content/Context;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x78

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/mopub/nativesdk/c/m;->c:Landroid/content/Context;

    invoke-static {v6}, Lcom/mopub/nativesdk/d/f;->k(Landroid/content/Context;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/mopub/nativesdk/c/n;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/mopub/nativesdk/c/n;

    .line 1268
    const-string v4, "d1"

    iget-object v5, p0, Lcom/mopub/nativesdk/c/m;->c:Landroid/content/Context;

    invoke-static {v5}, Lcom/mopub/nativesdk/d/f;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/mopub/nativesdk/c/n;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/mopub/nativesdk/c/n;

    .line 1271
    const-string v4, "d2"

    iget-object v5, p0, Lcom/mopub/nativesdk/c/m;->c:Landroid/content/Context;

    invoke-static {v5}, Lcom/mopub/nativesdk/d/f;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/mopub/nativesdk/c/n;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/mopub/nativesdk/c/n;

    .line 1274
    const-string v4, "d3"

    iget-object v5, p0, Lcom/mopub/nativesdk/c/m;->c:Landroid/content/Context;

    invoke-static {v5}, Lcom/mopub/nativesdk/d/f;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/mopub/nativesdk/c/n;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/mopub/nativesdk/c/n;

    goto/16 :goto_0
.end method

.method protected final c()[B
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0
.end method
