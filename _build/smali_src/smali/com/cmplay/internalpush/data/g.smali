.class public Lcom/cmplay/internalpush/data/g;
.super Lcom/cmplay/internalpush/data/d;
.source "InfoForShowOpenScreen.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:D

.field private t:Z

.field private u:Ljava/lang/String;

.field private v:I

.field private w:I


# direct methods
.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;DLjava/util/ArrayList;ILjava/lang/String;ZLjava/lang/String;IIILjava/lang/String;ZJ)V
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
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "D",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cmplay/base/util/b;",
            ">;I",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "III",
            "Ljava/lang/String;",
            "ZJ)V"
        }
    .end annotation

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/cmplay/internalpush/data/d;-><init>()V

    .line 40
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/cmplay/internalpush/data/g;->t:Z

    .line 52
    iput-wide p1, p0, Lcom/cmplay/internalpush/data/g;->f:J

    .line 53
    iput-object p3, p0, Lcom/cmplay/internalpush/data/g;->h:Ljava/lang/String;

    .line 54
    iput-object p4, p0, Lcom/cmplay/internalpush/data/g;->g:Ljava/lang/String;

    .line 55
    iput-object p5, p0, Lcom/cmplay/internalpush/data/g;->a:Ljava/lang/String;

    .line 56
    iput-object p6, p0, Lcom/cmplay/internalpush/data/g;->b:Ljava/lang/String;

    .line 57
    iput-object p7, p0, Lcom/cmplay/internalpush/data/g;->c:Ljava/lang/String;

    .line 58
    iput-object p8, p0, Lcom/cmplay/internalpush/data/g;->d:Ljava/lang/String;

    .line 59
    iput-object p9, p0, Lcom/cmplay/internalpush/data/g;->e:Ljava/lang/String;

    .line 60
    iput-object p10, p0, Lcom/cmplay/internalpush/data/g;->r:Ljava/lang/String;

    .line 61
    iput p11, p0, Lcom/cmplay/internalpush/data/g;->j:I

    .line 62
    iput-object p12, p0, Lcom/cmplay/internalpush/data/g;->i:Ljava/lang/String;

    .line 63
    move-wide/from16 v0, p13

    iput-wide v0, p0, Lcom/cmplay/internalpush/data/g;->s:D

    .line 64
    iget-object v2, p0, Lcom/cmplay/internalpush/data/g;->p:Ljava/util/ArrayList;

    move-object/from16 v0, p15

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 65
    move/from16 v0, p16

    iput v0, p0, Lcom/cmplay/internalpush/data/g;->n:I

    .line 66
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/cmplay/internalpush/data/g;->q:Ljava/lang/String;

    .line 67
    move/from16 v0, p18

    iput-boolean v0, p0, Lcom/cmplay/internalpush/data/g;->t:Z

    .line 68
    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/cmplay/internalpush/data/g;->u:Ljava/lang/String;

    .line 69
    move/from16 v0, p20

    iput v0, p0, Lcom/cmplay/internalpush/data/g;->v:I

    .line 70
    move/from16 v0, p21

    iput v0, p0, Lcom/cmplay/internalpush/data/g;->w:I

    .line 71
    move/from16 v0, p22

    iput v0, p0, Lcom/cmplay/internalpush/data/g;->m:I

    .line 72
    move-object/from16 v0, p23

    iput-object v0, p0, Lcom/cmplay/internalpush/data/g;->l:Ljava/lang/String;

    .line 73
    move/from16 v0, p24

    iput-boolean v0, p0, Lcom/cmplay/internalpush/data/g;->k:Z

    .line 74
    move-wide/from16 v0, p25

    iput-wide v0, p0, Lcom/cmplay/internalpush/data/g;->o:J

    .line 75
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 77
    invoke-direct {p0}, Lcom/cmplay/internalpush/data/d;-><init>()V

    .line 40
    iput-boolean v0, p0, Lcom/cmplay/internalpush/data/g;->t:Z

    .line 78
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 80
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 81
    const-string v2, "pro_id"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/cmplay/internalpush/data/g;->f:J

    .line 82
    const-string v2, "pkg_name"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/cmplay/internalpush/data/g;->h:Ljava/lang/String;

    .line 83
    const-string v2, "pro_name"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/cmplay/internalpush/data/g;->g:Ljava/lang/String;

    .line 84
    const-string v2, "icon_image_path"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/cmplay/internalpush/data/g;->a:Ljava/lang/String;

    .line 85
    const-string v2, "title"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/cmplay/internalpush/data/g;->b:Ljava/lang/String;

    .line 86
    const-string v2, "subtitle"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/cmplay/internalpush/data/g;->c:Ljava/lang/String;

    .line 87
    const-string v2, "bg_image_path"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/cmplay/internalpush/data/g;->d:Ljava/lang/String;

    .line 88
    const-string v2, "btn_image_path"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/cmplay/internalpush/data/g;->e:Ljava/lang/String;

    .line 89
    const-string v2, "btn_image_path2"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/cmplay/internalpush/data/g;->r:Ljava/lang/String;

    .line 90
    const-string v2, "jump_type"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/cmplay/internalpush/data/g;->j:I

    .line 91
    const-string v2, "jump_url"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/cmplay/internalpush/data/g;->i:Ljava/lang/String;

    .line 92
    const-string v2, "btn_layout_percentage"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/cmplay/internalpush/data/g;->s:D

    .line 93
    const-string v2, "default_jump_url"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/cmplay/internalpush/data/g;->q:Ljava/lang/String;

    .line 94
    const-string v2, "show_type"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/cmplay/internalpush/data/g;->m:I

    .line 95
    const-string v2, "playable_url"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/cmplay/internalpush/data/g;->l:Ljava/lang/String;

    .line 96
    const-string v2, "button_moving"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/cmplay/internalpush/data/g;->k:Z

    .line 97
    const-string v2, "appstore"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 98
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 99
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 100
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 101
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 102
    iget-object v4, p0, Lcom/cmplay/internalpush/data/g;->p:Ljava/util/ArrayList;

    new-instance v5, Lcom/cmplay/base/util/b;

    const-string v6, "app_pkg_in_appstore"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "market_pkg"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v6, v2}, Lcom/cmplay/base/util/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 105
    :cond_0
    const-string v0, "display_type"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cmplay/internalpush/data/g;->n:I

    .line 106
    const-string v0, "ad_tag_show"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/cmplay/internalpush/data/g;->t:Z

    .line 107
    const-string v0, "video_path"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmplay/internalpush/data/g;->u:Ljava/lang/String;

    .line 108
    const-string v0, "video_width"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cmplay/internalpush/data/g;->v:I

    .line 109
    const-string v0, "video_height"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cmplay/internalpush/data/g;->w:I

    .line 110
    const-string v0, "priority"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/cmplay/internalpush/data/g;->o:J
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    :cond_1
    :goto_1
    return-void

    .line 111
    :catch_0
    move-exception v0

    .line 112
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 7

    .prologue
    .line 118
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 120
    :try_start_0
    const-string v0, "pro_id"

    iget-wide v2, p0, Lcom/cmplay/internalpush/data/g;->f:J

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 121
    const-string v0, "pkg_name"

    iget-object v2, p0, Lcom/cmplay/internalpush/data/g;->h:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 122
    const-string v0, "pro_name"

    iget-object v2, p0, Lcom/cmplay/internalpush/data/g;->g:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 123
    const-string v0, "icon_image_path"

    iget-object v2, p0, Lcom/cmplay/internalpush/data/g;->a:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 124
    const-string v0, "title"

    iget-object v2, p0, Lcom/cmplay/internalpush/data/g;->b:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 125
    const-string v0, "subtitle"

    iget-object v2, p0, Lcom/cmplay/internalpush/data/g;->c:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 126
    const-string v0, "bg_image_path"

    iget-object v2, p0, Lcom/cmplay/internalpush/data/g;->d:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 127
    const-string v0, "btn_image_path"

    iget-object v2, p0, Lcom/cmplay/internalpush/data/g;->e:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 128
    const-string v0, "btn_image_path2"

    iget-object v2, p0, Lcom/cmplay/internalpush/data/g;->r:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 129
    const-string v0, "jump_type"

    iget v2, p0, Lcom/cmplay/internalpush/data/g;->j:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 130
    const-string v0, "jump_url"

    iget-object v2, p0, Lcom/cmplay/internalpush/data/g;->i:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 131
    const-string v0, "btn_layout_percentage"

    iget-wide v2, p0, Lcom/cmplay/internalpush/data/g;->s:D

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 132
    const-string v0, "default_jump_url"

    iget-object v2, p0, Lcom/cmplay/internalpush/data/g;->q:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 133
    const-string v0, "button_moving"

    iget-boolean v2, p0, Lcom/cmplay/internalpush/data/g;->k:Z

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 134
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 135
    iget-object v0, p0, Lcom/cmplay/internalpush/data/g;->p:Ljava/util/ArrayList;

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

    .line 136
    if-eqz v0, :cond_0

    .line 137
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 138
    const-string v5, "app_pkg_in_appstore"

    iget-object v6, v0, Lcom/cmplay/base/util/b;->b:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 139
    const-string v5, "market_pkg"

    iget-object v0, v0, Lcom/cmplay/base/util/b;->a:Ljava/lang/String;

    invoke-virtual {v4, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 140
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 152
    :catch_0
    move-exception v0

    .line 153
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 156
    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 143
    :cond_1
    :try_start_1
    const-string v0, "appstore"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 144
    const-string v0, "display_type"

    iget v2, p0, Lcom/cmplay/internalpush/data/g;->n:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 145
    const-string v0, "ad_tag_show"

    iget-boolean v2, p0, Lcom/cmplay/internalpush/data/g;->t:Z

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 146
    const-string v0, "video_path"

    iget-object v2, p0, Lcom/cmplay/internalpush/data/g;->u:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 147
    const-string v0, "video_width"

    iget v2, p0, Lcom/cmplay/internalpush/data/g;->v:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 148
    const-string v0, "video_height"

    iget v2, p0, Lcom/cmplay/internalpush/data/g;->w:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 149
    const-string v0, "show_type"

    iget v2, p0, Lcom/cmplay/internalpush/data/g;->m:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 150
    const-string v0, "playable_url"

    iget-object v2, p0, Lcom/cmplay/internalpush/data/g;->l:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 151
    const-string v0, "priority"

    iget-wide v2, p0, Lcom/cmplay/internalpush/data/g;->o:J

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public o()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/cmplay/internalpush/data/g;->a:Ljava/lang/String;

    return-object v0
.end method

.method public p()Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/cmplay/internalpush/data/g;->b:Ljava/lang/String;

    return-object v0
.end method

.method public q()Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/cmplay/internalpush/data/g;->d:Ljava/lang/String;

    return-object v0
.end method

.method public r()Ljava/lang/String;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/cmplay/internalpush/data/g;->e:Ljava/lang/String;

    return-object v0
.end method

.method public s()Ljava/lang/String;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/cmplay/internalpush/data/g;->r:Ljava/lang/String;

    return-object v0
.end method

.method public t()D
    .locals 2

    .prologue
    .line 208
    iget-wide v0, p0, Lcom/cmplay/internalpush/data/g;->s:D

    return-wide v0
.end method

.method public u()Z
    .locals 1

    .prologue
    .line 212
    iget-boolean v0, p0, Lcom/cmplay/internalpush/data/g;->t:Z

    return v0
.end method

.method public v()Ljava/lang/String;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/cmplay/internalpush/data/g;->u:Ljava/lang/String;

    return-object v0
.end method
