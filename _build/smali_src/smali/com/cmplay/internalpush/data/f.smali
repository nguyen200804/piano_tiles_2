.class public Lcom/cmplay/internalpush/data/f;
.super Lcom/cmplay/internalpush/data/d;
.source "InfoForShowInsertScreen.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:D


# direct methods
.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;DLjava/util/ArrayList;ILjava/lang/String;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "D",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cmplay/base/util/b;",
            ">;I",
            "Ljava/lang/String;",
            "J)V"
        }
    .end annotation

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/cmplay/internalpush/data/d;-><init>()V

    .line 30
    iput-wide p1, p0, Lcom/cmplay/internalpush/data/f;->f:J

    .line 31
    iput-object p3, p0, Lcom/cmplay/internalpush/data/f;->h:Ljava/lang/String;

    .line 32
    iput-object p4, p0, Lcom/cmplay/internalpush/data/f;->g:Ljava/lang/String;

    .line 33
    iput-object p5, p0, Lcom/cmplay/internalpush/data/f;->a:Ljava/lang/String;

    .line 34
    iput-object p6, p0, Lcom/cmplay/internalpush/data/f;->b:Ljava/lang/String;

    .line 35
    iput p7, p0, Lcom/cmplay/internalpush/data/f;->j:I

    .line 36
    iput-object p8, p0, Lcom/cmplay/internalpush/data/f;->i:Ljava/lang/String;

    .line 37
    iput-wide p9, p0, Lcom/cmplay/internalpush/data/f;->c:D

    .line 38
    iget-object v0, p0, Lcom/cmplay/internalpush/data/f;->p:Ljava/util/ArrayList;

    invoke-virtual {v0, p11}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 39
    iput p12, p0, Lcom/cmplay/internalpush/data/f;->n:I

    .line 40
    iput-object p13, p0, Lcom/cmplay/internalpush/data/f;->q:Ljava/lang/String;

    .line 41
    iput-wide p14, p0, Lcom/cmplay/internalpush/data/f;->o:J

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/cmplay/internalpush/data/d;-><init>()V

    .line 45
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 47
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 48
    const-string v0, "pro_id"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/cmplay/internalpush/data/f;->f:J

    .line 49
    const-string v0, "pkg_name"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmplay/internalpush/data/f;->h:Ljava/lang/String;

    .line 50
    const-string v0, "pro_name"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmplay/internalpush/data/f;->g:Ljava/lang/String;

    .line 51
    const-string v0, "bg_image_path"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmplay/internalpush/data/f;->a:Ljava/lang/String;

    .line 52
    const-string v0, "btn_image_path"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmplay/internalpush/data/f;->b:Ljava/lang/String;

    .line 53
    const-string v0, "jump_type"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cmplay/internalpush/data/f;->j:I

    .line 54
    const-string v0, "jump_url"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmplay/internalpush/data/f;->i:Ljava/lang/String;

    .line 55
    const-string v0, "btn_layout_percentage"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/cmplay/internalpush/data/f;->c:D

    .line 56
    const-string v0, "default_jump_url"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmplay/internalpush/data/f;->q:Ljava/lang/String;

    .line 57
    const-string v0, "appstore"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 58
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 59
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 60
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 61
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 62
    iget-object v4, p0, Lcom/cmplay/internalpush/data/f;->p:Ljava/util/ArrayList;

    new-instance v5, Lcom/cmplay/base/util/b;

    const-string v6, "app_pkg_in_appstore"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "market_pkg"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v6, v3}, Lcom/cmplay/base/util/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 65
    :cond_0
    const-string v0, "display_type"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cmplay/internalpush/data/f;->n:I

    .line 66
    const-string v0, "priority"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/cmplay/internalpush/data/f;->o:J
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :cond_1
    :goto_1
    return-void

    .line 67
    :catch_0
    move-exception v0

    .line 68
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 7

    .prologue
    .line 74
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 76
    :try_start_0
    const-string v0, "pro_id"

    iget-wide v2, p0, Lcom/cmplay/internalpush/data/f;->f:J

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 77
    const-string v0, "pkg_name"

    iget-object v2, p0, Lcom/cmplay/internalpush/data/f;->h:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 78
    const-string v0, "pro_name"

    iget-object v2, p0, Lcom/cmplay/internalpush/data/f;->g:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 79
    const-string v0, "bg_image_path"

    iget-object v2, p0, Lcom/cmplay/internalpush/data/f;->a:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 80
    const-string v0, "btn_image_path"

    iget-object v2, p0, Lcom/cmplay/internalpush/data/f;->b:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 81
    const-string v0, "jump_type"

    iget v2, p0, Lcom/cmplay/internalpush/data/f;->j:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 82
    const-string v0, "jump_url"

    iget-object v2, p0, Lcom/cmplay/internalpush/data/f;->i:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 83
    const-string v0, "btn_layout_percentage"

    iget-wide v2, p0, Lcom/cmplay/internalpush/data/f;->c:D

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 84
    const-string v0, "default_jump_url"

    iget-object v2, p0, Lcom/cmplay/internalpush/data/f;->q:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 85
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 86
    iget-object v0, p0, Lcom/cmplay/internalpush/data/f;->p:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmplay/base/util/b;

    .line 87
    if-eqz v0, :cond_0

    .line 88
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 89
    const-string v5, "app_pkg_in_appstore"

    iget-object v6, v0, Lcom/cmplay/base/util/b;->b:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 90
    const-string v5, "market_pkg"

    iget-object v0, v0, Lcom/cmplay/base/util/b;->a:Ljava/lang/String;

    invoke-virtual {v4, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 91
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 97
    :catch_0
    move-exception v0

    .line 98
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 101
    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 94
    :cond_1
    :try_start_1
    const-string v0, "appstore"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 95
    const-string v0, "display_type"

    iget v2, p0, Lcom/cmplay/internalpush/data/f;->n:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 96
    const-string v0, "priority"

    iget-wide v2, p0, Lcom/cmplay/internalpush/data/f;->o:J

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public o()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/cmplay/internalpush/data/f;->a:Ljava/lang/String;

    return-object v0
.end method

.method public p()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/cmplay/internalpush/data/f;->b:Ljava/lang/String;

    return-object v0
.end method

.method public q()D
    .locals 2

    .prologue
    .line 121
    iget-wide v0, p0, Lcom/cmplay/internalpush/data/f;->c:D

    return-wide v0
.end method
