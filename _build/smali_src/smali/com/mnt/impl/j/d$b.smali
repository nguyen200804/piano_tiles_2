.class final Lcom/mnt/impl/j/d$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mnt/impl/f/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mnt/impl/j/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field private synthetic a:Lcom/mnt/impl/j/d;


# direct methods
.method private constructor <init>(Lcom/mnt/impl/j/d;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/mnt/impl/j/d$b;->a:Lcom/mnt/impl/j/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mnt/impl/j/d;B)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/mnt/impl/j/d$b;-><init>(Lcom/mnt/impl/j/d;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 101
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 8

    .prologue
    const/16 v6, 0xc8

    const/4 v0, 0x0

    .line 58
    const/4 v1, 0x0

    .line 59
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 61
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 62
    sget-object v4, Lcom/mnt/impl/e;->iA:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 63
    sget-object v5, Lcom/mnt/impl/e;->iB:Ljava/lang/String;

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 66
    if-eqz v4, :cond_4

    .line 67
    :try_start_1
    sget-object v0, Lcom/mnt/impl/e;->iC:Ljava/lang/String;

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    .line 68
    sget-object v0, Lcom/mnt/impl/e;->iD:Ljava/lang/String;

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 70
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    if-eq v2, v6, :cond_1

    .line 96
    :cond_0
    :goto_1
    return-void

    .line 73
    :cond_1
    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 74
    invoke-static {v1}, Lcom/mnt/impl/b/k;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 76
    :cond_2
    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    .line 77
    invoke-static {v1}, Lcom/mnt/impl/b/k;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 78
    sget-object v0, Lcom/mnt/impl/e;->iE:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/mnt/impl/i/a/b;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 79
    if-eqz v0, :cond_0

    .line 85
    :goto_2
    :try_start_2
    sget-object v1, Lcom/mnt/impl/e;->iF:Ljava/lang/String;

    const/16 v2, 0xc8

    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 86
    sget-object v1, Lcom/mnt/impl/e;->iG:Ljava/lang/String;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 87
    iget-object v1, p0, Lcom/mnt/impl/j/d$b;->a:Lcom/mnt/impl/j/d;

    invoke-static {v1}, Lcom/mnt/impl/j/d;->a(Lcom/mnt/impl/j/d;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mnt/impl/b/h;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 88
    iget-object v1, p0, Lcom/mnt/impl/j/d$b;->a:Lcom/mnt/impl/j/d;

    invoke-static {v1}, Lcom/mnt/impl/j/d;->a(Lcom/mnt/impl/j/d;)Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v1, v4, v5}, Lcom/mnt/impl/b/h;->b(Landroid/content/Context;J)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 92
    :goto_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/mnt/impl/j/d$b;->a:Lcom/mnt/impl/j/d;

    new-instance v1, Lcom/mnt/impl/j/b;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/mnt/impl/j/b;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/mnt/impl/j/d;->a(Lcom/mnt/impl/j/d;Lcom/mnt/impl/j/b;)Lcom/mnt/impl/j/b;

    goto :goto_1

    .line 90
    :catch_0
    move-exception v0

    move-object v7, v0

    move-object v0, v1

    move-object v1, v7

    :goto_4
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v7, v0

    move-object v0, v1

    move-object v1, v7

    goto :goto_4

    :catch_2
    move-exception v1

    goto :goto_4

    :cond_3
    move-object v0, v1

    goto :goto_2

    :cond_4
    move v2, v0

    goto :goto_0
.end method
