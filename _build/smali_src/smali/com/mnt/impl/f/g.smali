.class public final Lcom/mnt/impl/f/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:Lcom/mnt/impl/j/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/mnt/impl/e;->gO:Ljava/lang/String;

    .line 44
    sget-object v0, Lcom/mnt/impl/e;->gP:Ljava/lang/String;

    sput-object v0, Lcom/mnt/impl/f/g;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 298
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 299
    iput-object p1, p0, Lcom/mnt/impl/f/g;->b:Landroid/content/Context;

    .line 300
    iput-object p2, p0, Lcom/mnt/impl/f/g;->d:Ljava/lang/String;

    .line 301
    iput p3, p0, Lcom/mnt/impl/f/g;->e:I

    .line 302
    invoke-static {p1}, Lcom/mnt/impl/j/d;->b(Landroid/content/Context;)Lcom/mnt/impl/j/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mnt/impl/j/d;->a()Lcom/mnt/impl/j/b;

    move-result-object v0

    iput-object v0, p0, Lcom/mnt/impl/f/g;->f:Lcom/mnt/impl/j/b;

    .line 303
    return-void
.end method

.method private a()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 237
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 239
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 240
    sget-object v1, Lcom/mnt/impl/e;->gX:Ljava/lang/String;

    invoke-direct {p0}, Lcom/mnt/impl/f/g;->b()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 242
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/mnt/impl/e;->gY:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    sget-object v3, Lcom/mnt/impl/e;->gZ:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/mnt/impl/i/a/b;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 243
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 244
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 245
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/mnt/impl/b/k;->a([B)Ljava/lang/String;

    move-result-object v1

    .line 247
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/mnt/impl/e;->ha:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/mnt/impl/e;->ha:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mnt/impl/b/k;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 249
    sget-object v3, Lcom/mnt/impl/e;->hb:Ljava/lang/String;

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    sget-object v1, Lcom/mnt/impl/e;->hc:Ljava/lang/String;

    sget-object v3, Lcom/mnt/impl/e;->hd:Ljava/lang/String;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    sget-object v1, Lcom/mnt/impl/e;->he:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 256
    :goto_0
    return-object v0

    .line 254
    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private b()Lorg/json/JSONObject;
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 260
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 262
    :try_start_0
    iget-object v2, p0, Lcom/mnt/impl/f/g;->d:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 263
    const-string v2, ""

    iput-object v2, p0, Lcom/mnt/impl/f/g;->d:Ljava/lang/String;

    .line 265
    :cond_0
    sget-object v2, Lcom/mnt/impl/e;->hf:Ljava/lang/String;

    iget-object v4, p0, Lcom/mnt/impl/f/g;->c:Ljava/lang/String;

    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 266
    sget-object v2, Lcom/mnt/impl/e;->hg:Ljava/lang/String;

    iget-object v4, p0, Lcom/mnt/impl/f/g;->d:Ljava/lang/String;

    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 267
    sget-object v2, Lcom/mnt/impl/e;->hh:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 268
    sget-object v2, Lcom/mnt/impl/e;->hi:Ljava/lang/String;

    iget-object v4, p0, Lcom/mnt/impl/f/g;->b:Landroid/content/Context;

    invoke-static {v4}, Lcom/mnt/a/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 269
    sget-object v2, Lcom/mnt/impl/e;->hj:Ljava/lang/String;

    iget-object v4, p0, Lcom/mnt/impl/f/g;->b:Landroid/content/Context;

    invoke-static {v4}, Lcom/mnt/impl/b/h;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 270
    sget-object v2, Lcom/mnt/impl/e;->hk:Ljava/lang/String;

    iget-object v4, p0, Lcom/mnt/impl/f/g;->b:Landroid/content/Context;

    invoke-static {v4}, Lcom/mnt/a/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 271
    sget-object v2, Lcom/mnt/impl/e;->hl:Ljava/lang/String;

    iget-object v4, p0, Lcom/mnt/impl/f/g;->b:Landroid/content/Context;

    invoke-static {v4}, Lcom/mnt/a/a;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 272
    sget-object v2, Lcom/mnt/impl/e;->hm:Ljava/lang/String;

    sget-object v4, Lcom/mnt/impl/b/j;->a:Ljava/lang/String;

    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 273
    sget-object v2, Lcom/mnt/impl/e;->hn:Ljava/lang/String;

    const-string v4, "128"

    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 274
    sget-object v2, Lcom/mnt/impl/e;->ho:Ljava/lang/String;

    sget-object v4, Lcom/mnt/impl/e;->hp:Ljava/lang/String;

    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 275
    sget-object v4, Lcom/mnt/impl/e;->hq:Ljava/lang/String;

    invoke-static {}, Lcom/mnt/impl/d;->a()Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v0

    :goto_0
    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 276
    sget-object v2, Lcom/mnt/impl/e;->hr:Ljava/lang/String;

    iget-object v4, p0, Lcom/mnt/impl/f/g;->b:Landroid/content/Context;

    invoke-static {v4}, Lcom/mnt/impl/b/k;->a(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_3

    :goto_1
    invoke-virtual {v3, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 277
    sget-object v0, Lcom/mnt/impl/e;->hs:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 278
    sget-object v0, Lcom/mnt/impl/e;->ht:Ljava/lang/String;

    invoke-static {}, Lcom/mnt/a/a;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 279
    sget-object v0, Lcom/mnt/impl/e;->hu:Ljava/lang/String;

    iget-object v1, p0, Lcom/mnt/impl/f/g;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/mnt/impl/f/g;->d:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/mnt/impl/b/k;->d(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 280
    sget-object v0, Lcom/mnt/impl/e;->hv:Ljava/lang/String;

    iget-object v1, p0, Lcom/mnt/impl/f/g;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/mnt/impl/f/g;->d:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/mnt/impl/b/k;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 281
    sget-object v0, Lcom/mnt/impl/e;->hw:Ljava/lang/String;

    sget-object v1, Lcom/mnt/impl/e;->hx:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 282
    sget-object v0, Lcom/mnt/impl/e;->hy:Ljava/lang/String;

    iget v1, p0, Lcom/mnt/impl/f/g;->e:I

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 283
    sget-object v0, Lcom/mnt/impl/e;->hz:Ljava/lang/String;

    iget-object v1, p0, Lcom/mnt/impl/f/g;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/mnt/a/a;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 284
    sget-object v0, Lcom/mnt/impl/e;->hA:Ljava/lang/String;

    iget-object v1, p0, Lcom/mnt/impl/f/g;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/mnt/impl/b/k;->k(Landroid/content/Context;)J

    move-result-wide v4

    invoke-virtual {v3, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 285
    iget-object v0, p0, Lcom/mnt/impl/f/g;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mnt/impl/j/d;->b(Landroid/content/Context;)Lcom/mnt/impl/j/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mnt/impl/j/d;->a()Lcom/mnt/impl/j/b;

    move-result-object v0

    .line 12156
    iget-boolean v1, v0, Lcom/mnt/impl/j/b;->a:Z

    .line 286
    if-eqz v1, :cond_1

    .line 287
    sget-object v1, Lcom/mnt/impl/e;->hB:Ljava/lang/String;

    .line 12160
    iget-object v0, v0, Lcom/mnt/impl/j/b;->d:Ljava/lang/String;

    .line 287
    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 289
    :cond_1
    sget-object v0, Lcom/mnt/impl/e;->hC:Ljava/lang/String;

    iget-object v1, p0, Lcom/mnt/impl/f/g;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/mnt/impl/f/m;->b(Landroid/content/Context;)J

    move-result-wide v4

    invoke-virtual {v3, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 290
    sget-object v0, Lcom/mnt/impl/e;->hD:Ljava/lang/String;

    iget-object v1, p0, Lcom/mnt/impl/f/g;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/mnt/impl/f/g;->d:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/mnt/impl/b/k;->g(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v3, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 291
    sget-object v0, Lcom/mnt/impl/e;->hE:Ljava/lang/String;

    iget-object v1, p0, Lcom/mnt/impl/f/g;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/mnt/impl/f/g;->d:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/mnt/impl/b/k;->h(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 295
    :goto_2
    return-object v3

    :cond_2
    move v2, v1

    .line 275
    goto/16 :goto_0

    :cond_3
    move v0, v1

    .line 276
    goto/16 :goto_1

    .line 293
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2
.end method


# virtual methods
.method public final run()V
    .locals 15

    .prologue
    const/16 v14, 0xc8

    const-wide/16 v8, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v13, 0x1

    .line 57
    iget-object v2, p0, Lcom/mnt/impl/f/g;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/mnt/impl/b/h;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mnt/impl/f/g;->c:Ljava/lang/String;

    .line 58
    iget-object v2, p0, Lcom/mnt/impl/f/g;->c:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 128
    :cond_0
    :goto_0
    return-void

    .line 62
    :cond_1
    iget-object v2, p0, Lcom/mnt/impl/f/g;->d:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 66
    iget-object v2, p0, Lcom/mnt/impl/f/g;->d:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v10

    monitor-enter v10

    .line 68
    :try_start_0
    invoke-direct {p0}, Lcom/mnt/impl/f/g;->a()Ljava/util/Map;

    move-result-object v2

    .line 70
    iget v3, p0, Lcom/mnt/impl/f/g;->e:I

    if-nez v3, :cond_2

    .line 71
    iget-object v0, p0, Lcom/mnt/impl/f/g;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mnt/impl/b/h;->d(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v3, p0, Lcom/mnt/impl/f/g;->d:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 73
    iget-object v3, p0, Lcom/mnt/impl/f/g;->b:Landroid/content/Context;

    iget-object v4, p0, Lcom/mnt/impl/f/g;->d:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/mnt/impl/b/h;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 75
    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 76
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 77
    sget-object v0, Lcom/mnt/impl/i/b/c;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/mnt/impl/f/g;->d:Ljava/lang/String;

    invoke-virtual {v6, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    sget-object v0, Lcom/mnt/impl/i/b/c;->g:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v6, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 79
    new-instance v0, Lcom/mnt/impl/f/e;

    invoke-direct {v0}, Lcom/mnt/impl/f/e;-><init>()V

    sget-object v3, Lcom/mnt/impl/f/g;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/mnt/impl/f/g;->b:Landroid/content/Context;

    invoke-static {v4}, Lcom/mnt/impl/b/k;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v2, v4}, Lcom/mnt/impl/f/e;->a(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 80
    sget-object v2, Lcom/mnt/impl/i/b/c;->h:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v6, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 82
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 83
    sget-object v0, Lcom/mnt/impl/e;->gQ:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 84
    sget-object v0, Lcom/mnt/impl/e;->gR:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 88
    if-eqz v3, :cond_11

    .line 89
    sget-object v2, Lcom/mnt/impl/e;->gS:Ljava/lang/String;

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    .line 90
    sget-object v2, Lcom/mnt/impl/e;->gT:Ljava/lang/String;

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    .line 91
    sget-object v2, Lcom/mnt/impl/e;->gU:Ljava/lang/String;

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 93
    :goto_1
    sget-object v7, Lcom/mnt/impl/i/b/c;->i:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v7, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    iget-object v2, p0, Lcom/mnt/impl/f/g;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/mnt/impl/i/b/a;->a(Landroid/content/Context;)Lcom/mnt/impl/i/b/a;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/mnt/impl/i/b/a;->a(Landroid/content/ContentValues;)V

    .line 95
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_3

    if-eq v5, v14, :cond_4

    .line 96
    :cond_3
    :try_start_1
    monitor-exit v10

    goto/16 :goto_0

    .line 128
    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 98
    :cond_4
    if-ne v4, v13, :cond_5

    .line 99
    :try_start_2
    invoke-static {v0}, Lcom/mnt/impl/b/k;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 101
    :cond_5
    const/4 v2, 0x2

    if-ne v4, v2, :cond_6

    .line 102
    invoke-static {v0}, Lcom/mnt/impl/b/k;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 103
    sget-object v2, Lcom/mnt/impl/e;->gV:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/mnt/impl/i/a/b;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 111
    :cond_6
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v2

    if-eqz v2, :cond_7

    .line 113
    :try_start_3
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 115
    :cond_7
    :try_start_4
    iget v2, p0, Lcom/mnt/impl/f/g;->e:I

    if-ne v2, v13, :cond_8

    .line 117
    iget-object v2, p0, Lcom/mnt/impl/f/g;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/mnt/impl/f/g;->d:Ljava/lang/String;

    invoke-static {v2, v3, v0}, Lcom/mnt/impl/b/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    :cond_8
    new-instance v11, Lorg/json/JSONArray;

    invoke-direct {v11, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    move v7, v1

    .line 121
    :goto_2
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v7, v0, :cond_a

    .line 122
    new-instance v12, Lcom/mnt/impl/e/f;

    invoke-virtual {v11, v7}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {v12, v0}, Lcom/mnt/impl/e/f;-><init>(Lorg/json/JSONObject;)V

    .line 2044
    iget-object v0, v12, Lcom/mnt/impl/e/f;->c:Ljava/lang/String;

    .line 1138
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 3036
    iget v0, v12, Lcom/mnt/impl/e/f;->b:I

    .line 1142
    packed-switch v0, :pswitch_data_0

    .line 121
    :cond_9
    :goto_3
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_2

    .line 3224
    :pswitch_0
    iget v0, p0, Lcom/mnt/impl/f/g;->e:I

    if-eq v0, v13, :cond_9

    .line 3229
    new-instance v0, Lcom/mnt/impl/f/h;

    iget-object v1, p0, Lcom/mnt/impl/f/g;->b:Landroid/content/Context;

    .line 4044
    iget-object v2, v12, Lcom/mnt/impl/e/f;->c:Ljava/lang/String;

    .line 3229
    invoke-direct {v0, v1, v2}, Lcom/mnt/impl/f/h;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 3230
    invoke-virtual {v0}, Lcom/mnt/impl/f/h;->c()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 128
    :cond_a
    :try_start_5
    monitor-exit v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .line 5056
    :pswitch_1
    :try_start_6
    iget-object v0, v12, Lcom/mnt/impl/e/f;->d:Ljava/lang/String;

    .line 4160
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 4165
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 4166
    sget-object v1, Lcom/mnt/impl/i/b/c;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/mnt/impl/f/g;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4167
    sget-object v1, Lcom/mnt/impl/i/b/c;->j:Ljava/lang/String;

    sget-object v2, Lcom/mnt/impl/e;->gW:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4168
    sget-object v1, Lcom/mnt/impl/i/b/c;->d:Ljava/lang/String;

    .line 5068
    iget-object v2, v12, Lcom/mnt/impl/e/f;->e:Ljava/lang/String;

    .line 4168
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4169
    iget-object v1, p0, Lcom/mnt/impl/f/g;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/mnt/impl/i/b/a;->a(Landroid/content/Context;)Lcom/mnt/impl/i/b/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mnt/impl/i/b/a;->a(Landroid/content/ContentValues;)V

    .line 4171
    iget-object v0, p0, Lcom/mnt/impl/f/g;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mnt/impl/b/a;->a(Landroid/content/Context;)Lcom/mnt/impl/b/a;

    move-result-object v0

    .line 6056
    iget-object v1, v12, Lcom/mnt/impl/e/f;->d:Ljava/lang/String;

    .line 4171
    invoke-virtual {v0, v1}, Lcom/mnt/impl/b/a;->a(Ljava/lang/String;)Lcom/mnt/impl/e/a;

    move-result-object v0

    .line 4175
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/mnt/impl/e/a;->a()Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_b
    iget-object v0, p0, Lcom/mnt/impl/f/g;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/mnt/impl/f/g;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/mnt/impl/b/h;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_c
    iget-object v0, p0, Lcom/mnt/impl/f/g;->f:Lcom/mnt/impl/j/b;

    invoke-virtual {v0}, Lcom/mnt/impl/j/b;->b()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 6060
    :cond_d
    iget v0, v12, Lcom/mnt/impl/e/f;->f:I

    .line 4180
    if-ne v0, v14, :cond_e

    iget v0, p0, Lcom/mnt/impl/f/g;->e:I

    if-nez v0, :cond_e

    .line 4182
    iget-object v0, p0, Lcom/mnt/impl/f/g;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mnt/impl/b/h;->d(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/mnt/impl/f/c;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mnt/impl/f/g;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4183
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 4185
    new-instance v1, Lcom/mnt/impl/e/b;

    invoke-direct {v1, v0}, Lcom/mnt/impl/e/b;-><init>(Ljava/lang/String;)V

    .line 4186
    iget-object v0, p0, Lcom/mnt/impl/f/g;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/mnt/impl/f/g;->d:Ljava/lang/String;

    .line 7044
    iget-object v1, v1, Lcom/mnt/impl/e/b;->c:Ljava/lang/String;

    .line 4186
    invoke-static {v0, v2, v1}, Lcom/mnt/impl/f/l;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 4187
    iget-object v0, p0, Lcom/mnt/impl/f/g;->b:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/mnt/impl/f/c;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mnt/impl/f/g;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mnt/impl/b/h;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 7060
    :cond_e
    iget v0, v12, Lcom/mnt/impl/e/f;->f:I

    .line 4191
    const/16 v1, 0x12c

    if-ne v0, v1, :cond_f

    iget v0, p0, Lcom/mnt/impl/f/g;->e:I

    if-eq v0, v13, :cond_9

    .line 4195
    :cond_f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 4196
    iget v0, p0, Lcom/mnt/impl/f/g;->e:I

    if-ne v0, v13, :cond_10

    iget-object v0, p0, Lcom/mnt/impl/f/g;->f:Lcom/mnt/impl/j/b;

    .line 7156
    iget-boolean v0, v0, Lcom/mnt/impl/j/b;->a:Z

    .line 4196
    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/mnt/impl/f/g;->f:Lcom/mnt/impl/j/b;

    .line 7238
    iget-wide v0, v0, Lcom/mnt/impl/j/b;->k:J
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 4196
    cmp-long v0, v0, v8

    if-lez v0, :cond_10

    .line 4198
    :try_start_7
    iget-object v0, p0, Lcom/mnt/impl/f/g;->f:Lcom/mnt/impl/j/b;

    .line 8238
    iget-wide v0, v0, Lcom/mnt/impl/j/b;->k:J

    .line 4198
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 4203
    :cond_10
    :goto_4
    :try_start_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 4205
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 4206
    sget-object v5, Lcom/mnt/impl/i/b/c;->c:Ljava/lang/String;

    iget-object v6, p0, Lcom/mnt/impl/f/g;->d:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4207
    sget-object v5, Lcom/mnt/impl/i/b/c;->e:Ljava/lang/String;

    iget v6, p0, Lcom/mnt/impl/f/g;->e:I

    add-int/lit8 v6, v6, 0x1

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4208
    sget-object v5, Lcom/mnt/impl/i/b/c;->p:Ljava/lang/String;

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4209
    iget-object v0, p0, Lcom/mnt/impl/f/g;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mnt/impl/i/b/a;->a(Landroid/content/Context;)Lcom/mnt/impl/i/b/a;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/mnt/impl/i/b/a;->a(Landroid/content/ContentValues;)V

    .line 4211
    new-instance v0, Lcom/mnt/impl/e/b;

    .line 9068
    iget-object v1, v12, Lcom/mnt/impl/e/f;->e:Ljava/lang/String;

    .line 10056
    iget-object v2, v12, Lcom/mnt/impl/e/f;->d:Ljava/lang/String;

    .line 11044
    iget-object v3, v12, Lcom/mnt/impl/e/f;->c:Ljava/lang/String;

    .line 4211
    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/mnt/impl/e/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JI)V

    .line 11073
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/mnt/impl/e/b;->f:Z

    .line 4213
    new-instance v1, Lcom/mnt/impl/f/c;

    iget-object v2, p0, Lcom/mnt/impl/f/g;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/mnt/impl/f/g;->d:Ljava/lang/String;

    iget v4, p0, Lcom/mnt/impl/f/g;->e:I

    invoke-direct {v1, v2, v3, v4}, Lcom/mnt/impl/f/c;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 4214
    iget-object v2, p0, Lcom/mnt/impl/f/g;->b:Landroid/content/Context;

    const/4 v3, 0x0

    .line 12040
    iget-object v4, v12, Lcom/mnt/impl/e/f;->a:Ljava/lang/String;

    .line 4214
    invoke-static {v2, v0, v1, v3, v4}, Lcom/mnt/impl/f/h;->a(Landroid/content/Context;Lcom/mnt/impl/e/b;Lcom/mnt/impl/f/h$a;ZLjava/lang/String;)V

    goto/16 :goto_3

    .line 4200
    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_4

    :cond_11
    move-wide v2, v8

    move v4, v1

    move v5, v1

    goto/16 :goto_1

    .line 1142
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
