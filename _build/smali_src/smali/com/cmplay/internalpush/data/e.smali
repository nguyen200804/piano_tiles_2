.class public Lcom/cmplay/internalpush/data/e;
.super Lcom/cmplay/internalpush/data/d;
.source "InfoForShowFamily.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:I

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/cmplay/internalpush/data/d;-><init>()V

    .line 40
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;ZLjava/util/ArrayList;Ljava/lang/String;J)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "III",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cmplay/base/util/b;",
            ">;",
            "Ljava/lang/String;",
            "J)V"
        }
    .end annotation

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/cmplay/internalpush/data/d;-><init>()V

    .line 45
    iput-wide p1, p0, Lcom/cmplay/internalpush/data/e;->f:J

    .line 46
    iput-object p3, p0, Lcom/cmplay/internalpush/data/e;->h:Ljava/lang/String;

    .line 47
    iput-object p4, p0, Lcom/cmplay/internalpush/data/e;->g:Ljava/lang/String;

    .line 48
    iput-object p5, p0, Lcom/cmplay/internalpush/data/e;->a:Ljava/lang/String;

    .line 49
    iput-object p6, p0, Lcom/cmplay/internalpush/data/e;->b:Ljava/lang/String;

    .line 50
    iput-object p7, p0, Lcom/cmplay/internalpush/data/e;->c:Ljava/lang/String;

    .line 51
    iput p10, p0, Lcom/cmplay/internalpush/data/e;->d:I

    .line 52
    iput p11, p0, Lcom/cmplay/internalpush/data/e;->e:I

    .line 53
    iput p12, p0, Lcom/cmplay/internalpush/data/e;->j:I

    .line 54
    move-object/from16 v0, p13

    iput-object v0, p0, Lcom/cmplay/internalpush/data/e;->i:Ljava/lang/String;

    .line 55
    if-eqz p14, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/cmplay/internalpush/data/e;->r:Ljava/lang/String;

    .line 56
    iget-object v2, p0, Lcom/cmplay/internalpush/data/e;->p:Ljava/util/ArrayList;

    move-object/from16 v0, p15

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 57
    iput-object p8, p0, Lcom/cmplay/internalpush/data/e;->s:Ljava/lang/String;

    .line 58
    iput-object p9, p0, Lcom/cmplay/internalpush/data/e;->t:Ljava/lang/String;

    .line 59
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/cmplay/internalpush/data/e;->q:Ljava/lang/String;

    .line 60
    move-wide/from16 v0, p17

    iput-wide v0, p0, Lcom/cmplay/internalpush/data/e;->o:J

    .line 61
    return-void

    .line 55
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/cmplay/internalpush/data/d;-><init>()V

    .line 64
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 66
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0, v0}, Lcom/cmplay/internalpush/data/e;->a(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :cond_0
    :goto_0
    return-void

    .line 68
    :catch_0
    move-exception v0

    .line 69
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public a()Lorg/json/JSONObject;
    .locals 7

    .prologue
    .line 141
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 143
    :try_start_0
    const-string v0, "pro_id"

    iget-wide v2, p0, Lcom/cmplay/internalpush/data/e;->f:J

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 144
    const-string v0, "pkg_name"

    iget-object v2, p0, Lcom/cmplay/internalpush/data/e;->h:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 145
    const-string v0, "pro_name"

    iget-object v2, p0, Lcom/cmplay/internalpush/data/e;->g:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 146
    const-string v0, "icon_image_path"

    iget-object v2, p0, Lcom/cmplay/internalpush/data/e;->a:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 147
    const-string v0, "title"

    iget-object v2, p0, Lcom/cmplay/internalpush/data/e;->b:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 148
    const-string v0, "subtitle"

    iget-object v2, p0, Lcom/cmplay/internalpush/data/e;->c:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 149
    const-string v0, "button_txt"

    iget-object v2, p0, Lcom/cmplay/internalpush/data/e;->s:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 150
    const-string v0, "button_txt2"

    iget-object v2, p0, Lcom/cmplay/internalpush/data/e;->t:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 151
    const-string v0, "pro_type"

    iget v2, p0, Lcom/cmplay/internalpush/data/e;->d:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 152
    const-string v0, "reward_counts"

    iget v2, p0, Lcom/cmplay/internalpush/data/e;->e:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 153
    const-string v0, "jump_type"

    iget v2, p0, Lcom/cmplay/internalpush/data/e;->j:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 154
    const-string v0, "jump_url"

    iget-object v2, p0, Lcom/cmplay/internalpush/data/e;->i:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 155
    const-string v0, "show_card_red_dot"

    iget-object v2, p0, Lcom/cmplay/internalpush/data/e;->r:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 156
    const-string v0, "default_jump_url"

    iget-object v2, p0, Lcom/cmplay/internalpush/data/e;->q:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 157
    const-string v0, "priority"

    iget-wide v2, p0, Lcom/cmplay/internalpush/data/e;->o:J

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 158
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 159
    iget-object v0, p0, Lcom/cmplay/internalpush/data/e;->p:Ljava/util/ArrayList;

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

    .line 160
    if-eqz v0, :cond_0

    .line 161
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 162
    const-string v5, "app_pkg_in_appstore"

    iget-object v6, v0, Lcom/cmplay/base/util/b;->b:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 163
    const-string v5, "market_pkg"

    iget-object v0, v0, Lcom/cmplay/base/util/b;->a:Ljava/lang/String;

    invoke-virtual {v4, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 164
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 168
    :catch_0
    move-exception v0

    .line 169
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 171
    :goto_1
    return-object v1

    .line 167
    :cond_1
    :try_start_1
    const-string v0, "appstore"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 7

    .prologue
    .line 75
    if-nez p1, :cond_1

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 80
    :cond_1
    :try_start_0
    const-string v0, "pro_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 81
    const-string v0, "pro_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cmplay/internalpush/data/e;->f:J

    .line 83
    :cond_2
    const-string v0, "pkg_name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 84
    const-string v0, "pkg_name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmplay/internalpush/data/e;->h:Ljava/lang/String;

    .line 86
    :cond_3
    const-string v0, "pro_name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 87
    const-string v0, "pro_name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmplay/internalpush/data/e;->g:Ljava/lang/String;

    .line 89
    :cond_4
    const-string v0, "icon_image_path"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 90
    const-string v0, "icon_image_path"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmplay/internalpush/data/e;->a:Ljava/lang/String;

    .line 92
    :cond_5
    const-string v0, "title"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 93
    const-string v0, "title"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmplay/internalpush/data/e;->b:Ljava/lang/String;

    .line 95
    :cond_6
    const-string v0, "subtitle"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 96
    const-string v0, "subtitle"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmplay/internalpush/data/e;->c:Ljava/lang/String;

    .line 98
    :cond_7
    const-string v0, "button_txt"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 99
    const-string v0, "button_txt"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmplay/internalpush/data/e;->s:Ljava/lang/String;

    .line 101
    :cond_8
    const-string v0, "button_txt2"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 102
    const-string v0, "button_txt2"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmplay/internalpush/data/e;->t:Ljava/lang/String;

    .line 104
    :cond_9
    const-string v0, "pro_type"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 105
    const-string v0, "pro_type"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cmplay/internalpush/data/e;->d:I

    .line 107
    :cond_a
    const-string v0, "reward_counts"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 108
    const-string v0, "reward_counts"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cmplay/internalpush/data/e;->e:I

    .line 110
    :cond_b
    const-string v0, "jump_type"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 111
    const-string v0, "jump_type"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cmplay/internalpush/data/e;->j:I

    .line 113
    :cond_c
    const-string v0, "jump_url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 114
    const-string v0, "jump_url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmplay/internalpush/data/e;->i:Ljava/lang/String;

    .line 116
    :cond_d
    const-string v0, "show_card_red_dot"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 117
    const-string v0, "show_card_red_dot"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmplay/internalpush/data/e;->r:Ljava/lang/String;

    .line 119
    :cond_e
    const-string v0, "default_jump_url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 120
    const-string v0, "default_jump_url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmplay/internalpush/data/e;->q:Ljava/lang/String;

    .line 122
    :cond_f
    const-string v0, "priority"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/cmplay/internalpush/data/e;->o:J

    .line 123
    const-string v0, "appstore"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 124
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 125
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 126
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 127
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 128
    iget-object v3, p0, Lcom/cmplay/internalpush/data/e;->p:Ljava/util/ArrayList;

    new-instance v4, Lcom/cmplay/base/util/b;

    const-string v5, "app_pkg_in_appstore"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "market_pkg"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v5, v2}, Lcom/cmplay/base/util/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 131
    :catch_0
    move-exception v0

    .line 132
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_0
.end method
