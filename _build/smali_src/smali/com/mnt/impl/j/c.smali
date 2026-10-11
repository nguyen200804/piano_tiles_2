.class public final Lcom/mnt/impl/j/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/mnt/impl/e;->iJ:Ljava/lang/String;

    .line 51
    sget-object v0, Lcom/mnt/impl/e;->iK:Ljava/lang/String;

    .line 53
    sget-object v0, Lcom/mnt/impl/e;->iL:Ljava/lang/String;

    sput-object v0, Lcom/mnt/impl/j/c;->a:Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/mnt/impl/j/a;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/mnt/impl/j/a;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 57
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 59
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 60
    sget-object v0, Lcom/mnt/impl/e;->iM:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/mnt/impl/j/c;->b(Landroid/content/Context;Lcom/mnt/impl/j/a;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 62
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/mnt/impl/e;->iN:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    sget-object v3, Lcom/mnt/impl/e;->iO:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/mnt/impl/i/a/b;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 63
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 64
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 65
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/mnt/impl/b/k;->a([B)Ljava/lang/String;

    move-result-object v0

    .line 67
    :cond_0
    sget-object v3, Lcom/mnt/impl/e;->iP:Ljava/lang/String;

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lcom/mnt/impl/e;->iQ:Ljava/lang/String;

    sget-object v3, Lcom/mnt/impl/e;->iR:Ljava/lang/String;

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Lcom/mnt/impl/e;->iS:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/mnt/impl/e;->iT:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/mnt/impl/e;->iT:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mnt/impl/b/k;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    :goto_0
    return-object v1

    .line 71
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static b(Landroid/content/Context;Lcom/mnt/impl/j/a;)Lorg/json/JSONObject;
    .locals 10

    .prologue
    const-wide/16 v4, 0x1

    const/4 v1, 0x1

    .line 77
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 79
    :try_start_0
    sget-object v2, Lcom/mnt/impl/e;->iU:Ljava/lang/String;

    sget-object v3, Lcom/mnt/impl/e;->iV:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 80
    sget-object v2, Lcom/mnt/impl/e;->iW:Ljava/lang/String;

    invoke-static {p0}, Lcom/mnt/a/a;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 81
    sget-object v2, Lcom/mnt/impl/e;->iX:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/mnt/impl/j/a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 82
    sget-object v2, Lcom/mnt/impl/e;->iY:Ljava/lang/String;

    .line 1044
    iget-object v3, p1, Lcom/mnt/impl/j/a;->a:Ljava/lang/String;

    .line 82
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 83
    sget-object v2, Lcom/mnt/impl/e;->iZ:Ljava/lang/String;

    invoke-static {p0}, Lcom/mnt/impl/b/k;->i(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 84
    sget-object v2, Lcom/mnt/impl/e;->ja:Ljava/lang/String;

    invoke-static {p0}, Lcom/mnt/a/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 85
    sget-object v2, Lcom/mnt/impl/e;->jb:Ljava/lang/String;

    .line 2040
    iget v3, p1, Lcom/mnt/impl/j/a;->c:I

    .line 85
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 87
    invoke-static {p0}, Lcom/mnt/impl/b/k;->h(Landroid/content/Context;)J

    move-result-wide v2

    .line 88
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v2, v6, v2

    const-wide/32 v6, 0x5265c00

    div-long/2addr v2, v6

    add-long/2addr v2, v4

    .line 89
    sget-object v6, Lcom/mnt/impl/e;->jc:Ljava/lang/String;

    const-wide/16 v8, 0x0

    cmp-long v7, v2, v8

    if-lez v7, :cond_0

    :goto_0
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v6, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 90
    sget-object v3, Lcom/mnt/impl/e;->jd:Ljava/lang/String;

    invoke-static {p0}, Lcom/mnt/impl/b/h;->o(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v1

    :goto_1
    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 91
    sget-object v2, Lcom/mnt/impl/e;->je:Ljava/lang/String;

    invoke-static {p0}, Lcom/mnt/a/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 92
    sget-object v2, Lcom/mnt/impl/e;->jf:Ljava/lang/String;

    .line 3036
    iget-boolean v3, p1, Lcom/mnt/impl/j/a;->d:Z

    .line 92
    if-eqz v3, :cond_2

    :goto_2
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 93
    sget-object v1, Lcom/mnt/impl/e;->jg:Ljava/lang/String;

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 94
    sget-object v1, Lcom/mnt/impl/e;->jh:Ljava/lang/String;

    invoke-static {}, Lcom/mnt/impl/d;->a()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 95
    sget-object v1, Lcom/mnt/impl/e;->ji:Ljava/lang/String;

    sget-object v2, Lcom/mnt/impl/e;->jj:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/mnt/impl/b/k;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 96
    sget-object v1, Lcom/mnt/impl/e;->jk:Ljava/lang/String;

    invoke-static {}, Lcom/mnt/a/a;->f()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 97
    sget-object v1, Lcom/mnt/impl/e;->jl:Ljava/lang/String;

    invoke-static {}, Lcom/mnt/a/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 98
    sget-object v1, Lcom/mnt/impl/e;->jm:Ljava/lang/String;

    invoke-static {p0}, Lcom/mnt/impl/f/m;->b(Landroid/content/Context;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 99
    sget-object v1, Lcom/mnt/impl/e;->jn:Ljava/lang/String;

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    :goto_3
    return-object v0

    :cond_0
    move-wide v2, v4

    .line 89
    goto :goto_0

    .line 90
    :cond_1
    const/4 v2, 0x2

    goto :goto_1

    .line 92
    :cond_2
    const/4 v1, 0x0

    goto :goto_2

    .line 102
    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3
.end method
