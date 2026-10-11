.class public Lcom/cmplay/internalpush/data/h;
.super Lcom/cmplay/internalpush/data/d;
.source "InfoForShowResultPg.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;J)V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/cmplay/internalpush/data/d;-><init>()V

    .line 32
    iput-wide p1, p0, Lcom/cmplay/internalpush/data/h;->f:J

    .line 33
    iput-object p3, p0, Lcom/cmplay/internalpush/data/h;->h:Ljava/lang/String;

    .line 34
    iput-object p4, p0, Lcom/cmplay/internalpush/data/h;->g:Ljava/lang/String;

    .line 35
    iput-object p5, p0, Lcom/cmplay/internalpush/data/h;->a:Ljava/lang/String;

    .line 36
    iput-object p6, p0, Lcom/cmplay/internalpush/data/h;->b:Ljava/lang/String;

    .line 37
    iput-object p7, p0, Lcom/cmplay/internalpush/data/h;->c:Ljava/lang/String;

    .line 38
    iput p8, p0, Lcom/cmplay/internalpush/data/h;->d:I

    .line 39
    iput p9, p0, Lcom/cmplay/internalpush/data/h;->e:I

    .line 40
    iput p10, p0, Lcom/cmplay/internalpush/data/h;->j:I

    .line 41
    iput-object p11, p0, Lcom/cmplay/internalpush/data/h;->i:Ljava/lang/String;

    .line 42
    iput-object p12, p0, Lcom/cmplay/internalpush/data/h;->q:Ljava/lang/String;

    .line 43
    iput-wide p13, p0, Lcom/cmplay/internalpush/data/h;->o:J

    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/cmplay/internalpush/data/d;-><init>()V

    .line 47
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 49
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 50
    const-string v1, "pro_id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 51
    const-string v1, "pro_id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/cmplay/internalpush/data/h;->f:J

    .line 53
    :cond_0
    const-string v1, "pkg_name"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 54
    const-string v1, "pkg_name"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cmplay/internalpush/data/h;->h:Ljava/lang/String;

    .line 56
    :cond_1
    const-string v1, "pro_name"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 57
    const-string v1, "pro_name"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cmplay/internalpush/data/h;->g:Ljava/lang/String;

    .line 59
    :cond_2
    const-string v1, "icon_image_path"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 60
    const-string v1, "icon_image_path"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cmplay/internalpush/data/h;->a:Ljava/lang/String;

    .line 62
    :cond_3
    const-string v1, "title"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 63
    const-string v1, "title"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cmplay/internalpush/data/h;->b:Ljava/lang/String;

    .line 65
    :cond_4
    const-string v1, "subtitle"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 66
    const-string v1, "subtitle"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cmplay/internalpush/data/h;->c:Ljava/lang/String;

    .line 68
    :cond_5
    const-string v1, "pro_type"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 69
    const-string v1, "pro_type"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/cmplay/internalpush/data/h;->d:I

    .line 71
    :cond_6
    const-string v1, "reward_counts"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 72
    const-string v1, "reward_counts"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/cmplay/internalpush/data/h;->e:I

    .line 74
    :cond_7
    const-string v1, "jump_type"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 75
    const-string v1, "jump_type"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/cmplay/internalpush/data/h;->j:I

    .line 77
    :cond_8
    const-string v1, "jump_url"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 78
    const-string v1, "jump_url"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cmplay/internalpush/data/h;->i:Ljava/lang/String;

    .line 80
    :cond_9
    const-string v1, "default_jump_url"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 81
    const-string v1, "default_jump_url"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cmplay/internalpush/data/h;->q:Ljava/lang/String;

    .line 83
    :cond_a
    const-string v1, "priority"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/cmplay/internalpush/data/h;->o:J
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :cond_b
    :goto_0
    return-void

    .line 84
    :catch_0
    move-exception v0

    .line 85
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 4

    .prologue
    .line 91
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 93
    :try_start_0
    const-string v0, "pro_id"

    iget-wide v2, p0, Lcom/cmplay/internalpush/data/h;->f:J

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 94
    const-string v0, "pkg_name"

    iget-object v2, p0, Lcom/cmplay/internalpush/data/h;->h:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 95
    const-string v0, "pro_name"

    iget-object v2, p0, Lcom/cmplay/internalpush/data/h;->g:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 96
    const-string v0, "icon_image_path"

    iget-object v2, p0, Lcom/cmplay/internalpush/data/h;->a:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 97
    const-string v0, "title"

    iget-object v2, p0, Lcom/cmplay/internalpush/data/h;->b:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 98
    const-string v0, "subtitle"

    iget-object v2, p0, Lcom/cmplay/internalpush/data/h;->c:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 99
    const-string v0, "pro_type"

    iget v2, p0, Lcom/cmplay/internalpush/data/h;->d:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 100
    const-string v0, "reward_counts"

    iget v2, p0, Lcom/cmplay/internalpush/data/h;->e:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 101
    const-string v0, "jump_type"

    iget v2, p0, Lcom/cmplay/internalpush/data/h;->j:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 102
    const-string v0, "jump_url"

    iget-object v2, p0, Lcom/cmplay/internalpush/data/h;->i:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 103
    const-string v0, "default_jump_url"

    iget-object v2, p0, Lcom/cmplay/internalpush/data/h;->q:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 104
    const-string v0, "priority"

    iget-wide v2, p0, Lcom/cmplay/internalpush/data/h;->o:J

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 105
    :catch_0
    move-exception v0

    .line 106
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
