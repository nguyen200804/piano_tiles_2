.class public final Lcom/cmcm/orion/picks/a/a/g$b;
.super Lcom/cmcm/orion/picks/a/a/d;
.source "CmMarketHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmcm/orion/picks/a/a/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field e:Ljava/lang/String;

.field f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 9

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 159
    invoke-direct {p0}, Lcom/cmcm/orion/picks/a/a/d;-><init>()V

    .line 335
    const-string v0, "https"

    iput-object v0, p0, Lcom/cmcm/orion/picks/a/a/g$b;->e:Ljava/lang/String;

    .line 336
    const-string v0, "http"

    iput-object v0, p0, Lcom/cmcm/orion/picks/a/a/g$b;->f:Ljava/lang/String;

    .line 160
    invoke-static {}, Lcom/cmcm/orion/adsdk/e;->a()Landroid/content/Context;

    move-result-object v3

    .line 161
    invoke-static {v3}, Lcom/cmcm/orion/utils/b;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 162
    invoke-static {v3}, Lcom/cmcm/orion/utils/b;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 163
    const-string v5, "mid"

    invoke-static {}, Lcom/cmcm/orion/adsdk/e;->b()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/cmcm/orion/picks/a/a/g$b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 164
    const-string v5, "sdkt"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/cmcm/orion/picks/a/a/g$b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 165
    const-string v5, "lan"

    const-string v6, "%s_%s"

    new-array v7, v2, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    aput-object v4, v7, v1

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v5, v0}, Lcom/cmcm/orion/picks/a/a/g$b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 166
    const-string v0, "brand"

    const-string v4, "ro.product.brand"

    const-string v5, "unknow"

    invoke-static {v4, v5}, Lcom/cmcm/orion/utils/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v0, v4}, Lcom/cmcm/orion/picks/a/a/g$b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 167
    const-string v0, "model"

    const-string v4, "ro.product.model"

    const-string v5, "unknow"

    invoke-static {v4, v5}, Lcom/cmcm/orion/utils/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v0, v4}, Lcom/cmcm/orion/picks/a/a/g$b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 168
    const-string v0, "androidid"

    invoke-static {}, Lcom/cmcm/orion/utils/b;->a()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v0, v4}, Lcom/cmcm/orion/picks/a/a/g$b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 169
    const-string v0, "cver"

    invoke-static {v3}, Lcom/cmcm/orion/utils/b;->e(Landroid/content/Context;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {p0, v0, v4}, Lcom/cmcm/orion/picks/a/a/g$b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 170
    const-string v0, "mcc"

    invoke-static {v3}, Lcom/cmcm/orion/utils/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v0, v4}, Lcom/cmcm/orion/picks/a/a/g$b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 171
    const-string v0, "mnc"

    invoke-static {v3}, Lcom/cmcm/orion/utils/b;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v0, v4}, Lcom/cmcm/orion/picks/a/a/g$b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 172
    const-string v0, "ov"

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {p0, v0, v4}, Lcom/cmcm/orion/picks/a/a/g$b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 173
    const-string v4, "nt"

    invoke-static {v3}, Lcom/cmcm/orion/utils/c;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v4, v0}, Lcom/cmcm/orion/picks/a/a/g$b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 174
    const-string v0, "ch"

    invoke-static {}, Lcom/cmcm/orion/adsdk/e;->c()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v0, v4}, Lcom/cmcm/orion/picks/a/a/g$b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 175
    const-string v0, "resolution"

    invoke-static {v3}, Lcom/cmcm/orion/picks/impl/a$1;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lcom/cmcm/orion/picks/a/a/g$b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 176
    const-string v0, "gaid"

    invoke-static {}, Lcom/cmcm/orion/utils/internal/a/a;->c()Lcom/cmcm/orion/utils/internal/a/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cmcm/orion/utils/internal/a/a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lcom/cmcm/orion/picks/a/a/g$b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 177
    const-string v0, "pl"

    const-string v3, "2"

    invoke-direct {p0, v0, v3}, Lcom/cmcm/orion/picks/a/a/g$b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 178
    const-string v0, "lv"

    const-string v3, "4.3.4"

    invoke-direct {p0, v0, v3}, Lcom/cmcm/orion/picks/a/a/g$b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 179
    const-string v0, "tz"

    .line 1196
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "Z"

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v3, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 1197
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 1198
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 179
    invoke-direct {p0, v0, v3}, Lcom/cmcm/orion/picks/a/a/g$b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 183
    sget-object v0, Lcom/cmcm/orion/picks/a/a/g;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 184
    const-string v0, "test_country"

    sget-object v3, Lcom/cmcm/orion/picks/a/a/g;->a:Ljava/lang/String;

    invoke-direct {p0, v0, v3}, Lcom/cmcm/orion/picks/a/a/g$b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 186
    :cond_0
    invoke-static {}, Lcom/cmcm/orion/adsdk/e;->d()Z

    move-result v0

    .line 187
    if-eqz v0, :cond_1

    .line 188
    const-string v0, "test"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lcom/cmcm/orion/picks/a/a/g$b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 190
    :cond_1
    const-string v0, "dnt"

    invoke-static {}, Lcom/cmcm/orion/utils/internal/a/a;->c()Lcom/cmcm/orion/utils/internal/a/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cmcm/orion/utils/internal/a/a;->b()Z

    move-result v3

    if-ne v3, v1, :cond_3

    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/cmcm/orion/picks/a/a/g$b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 191
    const-string v0, "lat"

    invoke-static {}, Lcom/cmcm/orion/adsdk/e;->f()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/cmcm/orion/picks/a/a/g$b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 192
    const-string v0, "lon"

    invoke-static {}, Lcom/cmcm/orion/adsdk/e;->g()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/cmcm/orion/picks/a/a/g$b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 193
    return-void

    :cond_2
    move v0, v2

    .line 173
    goto/16 :goto_0

    :cond_3
    move v1, v2

    .line 190
    goto :goto_1
.end method

.method private a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 300
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 301
    iget-object v1, p0, Lcom/cmcm/orion/picks/a/a/g$b;->d:Ljava/util/List;

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    if-eqz p2, :cond_1

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-direct {v2, p1, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 303
    :cond_0
    return-void

    .line 301
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method


# virtual methods
.method public final a(I)Lcom/cmcm/orion/picks/a/a/g$b;
    .locals 2

    .prologue
    .line 227
    const-string v0, "adn"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/cmcm/orion/picks/a/a/g$b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 228
    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lcom/cmcm/orion/picks/a/a/g$b;
    .locals 1

    .prologue
    .line 218
    const-string v0, "posid"

    invoke-direct {p0, v0, p1}, Lcom/cmcm/orion/picks/a/a/g$b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 219
    return-object p0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Lcom/cmcm/orion/picks/a/a/g$b;
    .locals 3

    .prologue
    .line 308
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "pkg="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 309
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p2, ""

    :cond_1
    const-string v1, "UTF-8"

    invoke-virtual {p2, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 310
    const-string v1, "7069636b733230313531313034"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 311
    const-string v2, "UTF-8"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 312
    invoke-static {v1, v0}, Lcom/cmcm/orion/utils/b;->a([B[B)[B

    move-result-object v0

    .line 313
    invoke-static {v0}, Lcom/cmcm/orion/utils/b;->a([B)Ljava/lang/String;

    move-result-object v0

    .line 314
    const-string v1, "append"

    invoke-direct {p0, v1, v0}, Lcom/cmcm/orion/picks/a/a/g$b;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 318
    :goto_0
    return-object p0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final a()Ljava/net/URI;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 341
    :try_start_0
    iget-object v1, p0, Lcom/cmcm/orion/picks/a/a/g$b;->a:Ljava/lang/String;

    .line 342
    iget-object v3, p0, Lcom/cmcm/orion/picks/a/a/g$b;->b:Ljava/lang/String;

    .line 347
    invoke-static {}, Lcom/cmcm/orion/picks/a/a/h;->b()Ljava/lang/String;

    move-result-object v0

    .line 348
    iget-object v2, p0, Lcom/cmcm/orion/picks/a/a/g$b;->f:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/cmcm/orion/picks/a/a/g$b;->e:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 349
    sget-boolean v0, Lcom/cmcm/orion/picks/a/a/h;->a:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmcm/orion/picks/a/a/g$b;->f:Ljava/lang/String;

    .line 353
    :cond_0
    :goto_0
    iget v2, p0, Lcom/cmcm/orion/picks/a/a/g$b;->c:I

    iget-object v4, p0, Lcom/cmcm/orion/picks/a/a/g$b;->d:Ljava/util/List;

    const-string v5, "UTF-8"

    invoke-static {v4, v5}, Lorg/apache/http/client/utils/URLEncodedUtils;->format(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lorg/apache/http/client/utils/URIUtils;->createURI(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    .line 357
    :goto_1
    return-object v0

    .line 349
    :cond_1
    iget-object v0, p0, Lcom/cmcm/orion/picks/a/a/g$b;->e:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 357
    :catch_0
    move-exception v0

    move-object v0, v6

    goto :goto_1
.end method

.method public final a(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 327
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 328
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 329
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 330
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/cmcm/orion/picks/a/a/g$b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 333
    :cond_0
    return-void
.end method

.method public final b(I)Lcom/cmcm/orion/picks/a/a/g$b;
    .locals 2

    .prologue
    .line 235
    const-string v0, "pg"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/cmcm/orion/picks/a/a/g$b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 236
    return-object p0
.end method

.method public final b(Ljava/lang/String;)Lcom/cmcm/orion/picks/a/a/g$b;
    .locals 1

    .prologue
    .line 240
    const-string v0, "tabid"

    invoke-direct {p0, v0, p1}, Lcom/cmcm/orion/picks/a/a/g$b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 241
    return-object p0
.end method

.method public final c(I)Lcom/cmcm/orion/picks/a/a/g$b;
    .locals 2

    .prologue
    .line 245
    const-string v0, "iab_type"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/cmcm/orion/picks/a/a/g$b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 246
    return-object p0
.end method

.method public final c(Ljava/lang/String;)Lcom/cmcm/orion/picks/a/a/g$b;
    .locals 1

    .prologue
    .line 322
    const-string v0, "na"

    invoke-direct {p0, v0, p1}, Lcom/cmcm/orion/picks/a/a/g$b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 323
    return-object p0
.end method

.method public final d(I)Lcom/cmcm/orion/picks/a/a/g$b;
    .locals 2

    .prologue
    .line 274
    const-string v0, "offset"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/cmcm/orion/picks/a/a/g$b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 275
    return-object p0
.end method

.method public final d(Ljava/lang/String;)Ljava/net/URI;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 368
    :try_start_0
    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v3

    .line 369
    if-eqz v3, :cond_0

    .line 370
    invoke-virtual {v3}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3}, Ljava/net/URI;->getPort()I

    move-result v2

    invoke-virtual {v3}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/cmcm/orion/picks/a/a/g$b;->d:Ljava/util/List;

    const-string v5, "UTF-8"

    invoke-static {v4, v5}, Lorg/apache/http/client/utils/URLEncodedUtils;->format(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lorg/apache/http/client/utils/URIUtils;->createURI(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/URI;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 374
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :cond_0
    move-object v0, v6

    goto :goto_0
.end method

.method public final e(I)Lcom/cmcm/orion/picks/a/a/g$b;
    .locals 2

    .prologue
    .line 282
    const-string v0, "vext"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/cmcm/orion/picks/a/a/g$b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 283
    return-object p0
.end method

.method public final f(I)Lcom/cmcm/orion/picks/a/a/g$b;
    .locals 2

    .prologue
    .line 290
    const-string v0, "comver"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/cmcm/orion/picks/a/a/g$b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 291
    return-object p0
.end method

.method public final g(I)Lcom/cmcm/orion/picks/a/a/g$b;
    .locals 2

    .prologue
    .line 295
    const-string v0, "spot"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/cmcm/orion/picks/a/a/g$b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 296
    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 363
    invoke-virtual {p0}, Lcom/cmcm/orion/picks/a/a/g$b;->a()Ljava/net/URI;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
