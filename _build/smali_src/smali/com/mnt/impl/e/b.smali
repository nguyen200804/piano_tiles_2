.class public final Lcom/mnt/impl/e/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final h:Ljava/lang/String;

.field private static final i:Ljava/lang/String;

.field private static final j:Ljava/lang/String;

.field private static final k:Ljava/lang/String;

.field private static final l:Ljava/lang/String;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:J

.field public f:Z

.field public g:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/mnt/impl/e;->lk:Ljava/lang/String;

    sput-object v0, Lcom/mnt/impl/e/b;->h:Ljava/lang/String;

    .line 19
    sget-object v0, Lcom/mnt/impl/e;->ll:Ljava/lang/String;

    sput-object v0, Lcom/mnt/impl/e/b;->i:Ljava/lang/String;

    .line 20
    sget-object v0, Lcom/mnt/impl/e;->lm:Ljava/lang/String;

    sput-object v0, Lcom/mnt/impl/e/b;->j:Ljava/lang/String;

    .line 21
    sget-object v0, Lcom/mnt/impl/e;->ln:Ljava/lang/String;

    sput-object v0, Lcom/mnt/impl/e/b;->k:Ljava/lang/String;

    .line 22
    sget-object v0, Lcom/mnt/impl/e;->lo:Ljava/lang/String;

    sput-object v0, Lcom/mnt/impl/e/b;->l:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    :goto_0
    return-void

    .line 98
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 99
    sget-object v1, Lcom/mnt/impl/e/b;->h:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/mnt/a/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mnt/impl/e/b;->a:Ljava/lang/String;

    .line 100
    sget-object v1, Lcom/mnt/impl/e/b;->k:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/mnt/a/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mnt/impl/e/b;->d:Ljava/lang/String;

    .line 101
    sget-object v1, Lcom/mnt/impl/e/b;->j:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/mnt/a/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mnt/impl/e/b;->c:Ljava/lang/String;

    .line 102
    sget-object v1, Lcom/mnt/impl/e/b;->i:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/mnt/a/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mnt/impl/e/b;->b:Ljava/lang/String;

    .line 103
    sget-object v1, Lcom/mnt/impl/e/b;->l:Ljava/lang/String;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mnt/impl/e/b;->e:J
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 105
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JI)V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p1, p0, Lcom/mnt/impl/e/b;->a:Ljava/lang/String;

    .line 87
    iput-object p2, p0, Lcom/mnt/impl/e/b;->b:Ljava/lang/String;

    .line 88
    iput-object p3, p0, Lcom/mnt/impl/e/b;->d:Ljava/lang/String;

    .line 89
    iput-wide p4, p0, Lcom/mnt/impl/e/b;->e:J

    .line 90
    iput p6, p0, Lcom/mnt/impl/e/b;->g:I

    .line 91
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 4

    .prologue
    .line 65
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/mnt/impl/e/b;->e:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Ljava/lang/String;
    .locals 4

    .prologue
    .line 110
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 112
    :try_start_0
    sget-object v0, Lcom/mnt/impl/e/b;->h:Ljava/lang/String;

    iget-object v2, p0, Lcom/mnt/impl/e/b;->a:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 113
    sget-object v0, Lcom/mnt/impl/e/b;->k:Ljava/lang/String;

    iget-object v2, p0, Lcom/mnt/impl/e/b;->d:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 114
    sget-object v0, Lcom/mnt/impl/e/b;->j:Ljava/lang/String;

    iget-object v2, p0, Lcom/mnt/impl/e/b;->c:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 115
    sget-object v0, Lcom/mnt/impl/e/b;->i:Ljava/lang/String;

    iget-object v2, p0, Lcom/mnt/impl/e/b;->b:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 116
    sget-object v0, Lcom/mnt/impl/e/b;->l:Ljava/lang/String;

    iget-wide v2, p0, Lcom/mnt/impl/e/b;->e:J

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 118
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
