.class public final Lcom/cmcm/orion/picks/a/a/e;
.super Ljava/lang/Object;
.source "BusinessDataItem.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:I

.field private d:Ljava/lang/String;

.field private e:I

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:I

.field private i:I

.field private j:I

.field private k:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;II)V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cmcm/orion/picks/a/a/e;->k:Z

    .line 25
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 26
    const-string v0, "&"

    const-string v1, "_"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmcm/orion/picks/a/a/e;->a:Ljava/lang/String;

    .line 30
    :goto_0
    iput v2, p0, Lcom/cmcm/orion/picks/a/a/e;->b:I

    .line 31
    iput p2, p0, Lcom/cmcm/orion/picks/a/a/e;->c:I

    .line 32
    iput-object p3, p0, Lcom/cmcm/orion/picks/a/a/e;->d:Ljava/lang/String;

    .line 33
    iput p4, p0, Lcom/cmcm/orion/picks/a/a/e;->h:I

    .line 34
    iput p5, p0, Lcom/cmcm/orion/picks/a/a/e;->i:I

    .line 35
    iput v2, p0, Lcom/cmcm/orion/picks/a/a/e;->j:I

    .line 36
    return-void

    .line 28
    :cond_0
    iput-object p1, p0, Lcom/cmcm/orion/picks/a/a/e;->a:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 3

    .prologue
    .line 49
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 51
    :try_start_0
    const-string v0, "pkg"

    iget-object v2, p0, Lcom/cmcm/orion/picks/a/a/e;->a:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 52
    const-string v0, "sug"

    iget v2, p0, Lcom/cmcm/orion/picks/a/a/e;->b:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 53
    const-string v0, "res"

    iget v2, p0, Lcom/cmcm/orion/picks/a/a/e;->c:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 54
    const-string v2, "des"

    iget-object v0, p0, Lcom/cmcm/orion/picks/a/a/e;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, ""

    :goto_0
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 55
    iget-object v0, p0, Lcom/cmcm/orion/picks/a/a/e;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/cmcm/orion/picks/a/a/e;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 56
    const-string v0, "fbpos"

    iget-object v2, p0, Lcom/cmcm/orion/picks/a/a/e;->f:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 57
    const-string v0, "fbmeta"

    iget-object v2, p0, Lcom/cmcm/orion/picks/a/a/e;->g:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 59
    :cond_0
    iget-boolean v0, p0, Lcom/cmcm/orion/picks/a/a/e;->k:Z

    if-eqz v0, :cond_1

    .line 60
    const-string v0, "fbmess"

    const-string v2, "1"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 62
    :cond_1
    iget v0, p0, Lcom/cmcm/orion/picks/a/a/e;->e:I

    if-lez v0, :cond_2

    .line 63
    const-string v0, "seq"

    iget v2, p0, Lcom/cmcm/orion/picks/a/a/e;->e:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 65
    :cond_2
    iget v0, p0, Lcom/cmcm/orion/picks/a/a/e;->h:I

    if-lez v0, :cond_3

    .line 66
    const-string v0, "duration"

    iget v2, p0, Lcom/cmcm/orion/picks/a/a/e;->h:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 67
    const-string v0, "playtime"

    iget v2, p0, Lcom/cmcm/orion/picks/a/a/e;->i:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 68
    const-string v0, "event"

    iget v2, p0, Lcom/cmcm/orion/picks/a/a/e;->j:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 70
    :cond_3
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 73
    :goto_1
    return-object v0

    .line 54
    :cond_4
    iget-object v0, p0, Lcom/cmcm/orion/picks/a/a/e;->d:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 73
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/cmcm/orion/picks/a/a/e;->f:Ljava/lang/String;

    .line 40
    iput-object p2, p0, Lcom/cmcm/orion/picks/a/a/e;->g:Ljava/lang/String;

    .line 41
    return-void
.end method
