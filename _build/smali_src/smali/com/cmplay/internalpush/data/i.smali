.class public Lcom/cmplay/internalpush/data/i;
.super Lcom/cmplay/internalpush/data/d;
.source "InfoForShowSetting.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:I

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;ZLjava/lang/String;J)V
    .locals 3

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/cmplay/internalpush/data/d;-><init>()V

    .line 35
    iput-wide p1, p0, Lcom/cmplay/internalpush/data/i;->f:J

    .line 36
    iput-object p3, p0, Lcom/cmplay/internalpush/data/i;->h:Ljava/lang/String;

    .line 37
    iput-object p4, p0, Lcom/cmplay/internalpush/data/i;->g:Ljava/lang/String;

    .line 38
    iput-object p5, p0, Lcom/cmplay/internalpush/data/i;->a:Ljava/lang/String;

    .line 39
    iput-object p6, p0, Lcom/cmplay/internalpush/data/i;->b:Ljava/lang/String;

    .line 40
    iput-object p7, p0, Lcom/cmplay/internalpush/data/i;->c:Ljava/lang/String;

    .line 41
    iput-object p8, p0, Lcom/cmplay/internalpush/data/i;->s:Ljava/lang/String;

    .line 42
    iput p9, p0, Lcom/cmplay/internalpush/data/i;->d:I

    .line 43
    iput p10, p0, Lcom/cmplay/internalpush/data/i;->e:I

    .line 44
    iput p11, p0, Lcom/cmplay/internalpush/data/i;->j:I

    .line 45
    iput-object p12, p0, Lcom/cmplay/internalpush/data/i;->i:Ljava/lang/String;

    .line 46
    if-eqz p13, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/cmplay/internalpush/data/i;->r:Ljava/lang/String;

    .line 47
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/cmplay/internalpush/data/i;->q:Ljava/lang/String;

    .line 48
    move-wide/from16 v0, p15

    iput-wide v0, p0, Lcom/cmplay/internalpush/data/i;->o:J

    .line 49
    return-void

    .line 46
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/cmplay/internalpush/data/d;-><init>()V

    .line 52
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 54
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 55
    const-string v1, "pro_id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 56
    const-string v1, "pro_id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/cmplay/internalpush/data/i;->f:J

    .line 58
    :cond_0
    const-string v1, "pkg_name"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 59
    const-string v1, "pkg_name"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cmplay/internalpush/data/i;->h:Ljava/lang/String;

    .line 61
    :cond_1
    const-string v1, "pro_name"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 62
    const-string v1, "pro_name"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cmplay/internalpush/data/i;->g:Ljava/lang/String;

    .line 64
    :cond_2
    const-string v1, "icon_image_path"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 65
    const-string v1, "icon_image_path"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cmplay/internalpush/data/i;->a:Ljava/lang/String;

    .line 67
    :cond_3
    const-string v1, "title"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 68
    const-string v1, "title"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cmplay/internalpush/data/i;->b:Ljava/lang/String;

    .line 70
    :cond_4
    const-string v1, "subtitle"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 71
    const-string v1, "subtitle"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cmplay/internalpush/data/i;->c:Ljava/lang/String;

    .line 73
    :cond_5
    const-string v1, "button_txt"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 74
    const-string v1, "button_txt"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cmplay/internalpush/data/i;->s:Ljava/lang/String;

    .line 76
    :cond_6
    const-string v1, "pro_type"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 77
    const-string v1, "pro_type"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/cmplay/internalpush/data/i;->d:I

    .line 79
    :cond_7
    const-string v1, "reward_counts"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 80
    const-string v1, "reward_counts"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/cmplay/internalpush/data/i;->e:I

    .line 82
    :cond_8
    const-string v1, "jump_type"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 83
    const-string v1, "jump_type"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/cmplay/internalpush/data/i;->j:I

    .line 85
    :cond_9
    const-string v1, "jump_url"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 86
    const-string v1, "jump_url"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cmplay/internalpush/data/i;->i:Ljava/lang/String;

    .line 88
    :cond_a
    const-string v1, "show_red_dot_setting_card"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 89
    const-string v1, "show_red_dot_setting_card"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cmplay/internalpush/data/i;->r:Ljava/lang/String;

    .line 91
    :cond_b
    const-string v1, "default_jump_url"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 92
    const-string v1, "default_jump_url"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cmplay/internalpush/data/i;->q:Ljava/lang/String;

    .line 94
    :cond_c
    const-string v1, "priority"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/cmplay/internalpush/data/i;->o:J
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    :cond_d
    :goto_0
    return-void

    .line 95
    :catch_0
    move-exception v0

    .line 96
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 4

    .prologue
    .line 102
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 104
    :try_start_0
    const-string v0, "pro_id"

    iget-wide v2, p0, Lcom/cmplay/internalpush/data/i;->f:J

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 105
    const-string v0, "pkg_name"

    iget-object v2, p0, Lcom/cmplay/internalpush/data/i;->h:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 106
    const-string v0, "pro_name"

    iget-object v2, p0, Lcom/cmplay/internalpush/data/i;->g:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 107
    const-string v0, "icon_image_path"

    iget-object v2, p0, Lcom/cmplay/internalpush/data/i;->a:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 108
    const-string v0, "title"

    iget-object v2, p0, Lcom/cmplay/internalpush/data/i;->b:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 109
    const-string v0, "subtitle"

    iget-object v2, p0, Lcom/cmplay/internalpush/data/i;->c:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 110
    const-string v0, "button_txt"

    iget-object v2, p0, Lcom/cmplay/internalpush/data/i;->s:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 111
    const-string v0, "pro_type"

    iget v2, p0, Lcom/cmplay/internalpush/data/i;->d:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 112
    const-string v0, "reward_counts"

    iget v2, p0, Lcom/cmplay/internalpush/data/i;->e:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 113
    const-string v0, "jump_type"

    iget v2, p0, Lcom/cmplay/internalpush/data/i;->j:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 114
    const-string v0, "jump_url"

    iget-object v2, p0, Lcom/cmplay/internalpush/data/i;->i:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 115
    const-string v0, "show_red_dot_setting_card"

    iget-object v2, p0, Lcom/cmplay/internalpush/data/i;->r:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 116
    const-string v0, "default_jump_url"

    iget-object v2, p0, Lcom/cmplay/internalpush/data/i;->q:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 117
    const-string v0, "priority"

    iget-wide v2, p0, Lcom/cmplay/internalpush/data/i;->o:J

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 118
    :catch_0
    move-exception v0

    .line 119
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
