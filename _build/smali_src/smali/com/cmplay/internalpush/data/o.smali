.class public abstract Lcom/cmplay/internalpush/data/o;
.super Ljava/lang/Object;
.source "ParseCloudDataBase.java"

# interfaces
.implements Lcom/cmplay/internalpush/a/a/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cmplay/internalpush/data/o$a;
    }
.end annotation


# instance fields
.field protected c:Z

.field protected d:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/cmplay/internalpush/data/c;",
            ">;"
        }
    .end annotation
.end field

.field protected e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cmplay/internalpush/data/j;",
            ">;"
        }
    .end annotation
.end field

.field protected f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/cmplay/internalpush/data/c;",
            ">;"
        }
    .end annotation
.end field

.field protected g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/cmplay/internalpush/data/c;",
            ">;"
        }
    .end annotation
.end field

.field protected h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/cmplay/internalpush/data/m;",
            ">;"
        }
    .end annotation
.end field

.field protected i:Lcom/cmplay/internalpush/data/c;

.field protected j:Landroid/content/Context;

.field protected k:Z

.field protected l:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-boolean v1, p0, Lcom/cmplay/internalpush/data/o;->c:Z

    .line 37
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/cmplay/internalpush/data/o;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cmplay/internalpush/data/o;->e:Ljava/util/ArrayList;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cmplay/internalpush/data/o;->f:Ljava/util/List;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cmplay/internalpush/data/o;->g:Ljava/util/List;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cmplay/internalpush/data/o;->h:Ljava/util/List;

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cmplay/internalpush/data/o;->i:Lcom/cmplay/internalpush/data/c;

    .line 45
    iput-boolean v1, p0, Lcom/cmplay/internalpush/data/o;->k:Z

    .line 46
    const-string v0, ""

    iput-object v0, p0, Lcom/cmplay/internalpush/data/o;->l:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract a()Ljava/lang/String;
.end method

.method public a(Ljava/lang/String;Z)Ljava/util/ArrayList;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cmplay/internalpush/data/c;",
            ">;"
        }
    .end annotation

    .prologue
    .line 68
    const/4 v1, 0x0

    .line 69
    instance-of v0, p0, Lcom/cmplay/internalpush/data/n;

    if-eqz v0, :cond_2

    .line 70
    const/4 v1, 0x1

    .line 85
    :cond_0
    :goto_0
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 88
    const/4 v0, 0x2

    .line 89
    instance-of v2, p0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;

    if-eqz v2, :cond_1

    .line 90
    const/4 v0, 0x1

    .line 93
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 96
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 97
    const-string v3, "data"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 98
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_e

    .line 99
    new-instance v7, Lcom/cmplay/internalpush/data/c;

    invoke-direct {v7}, Lcom/cmplay/internalpush/data/c;-><init>()V

    .line 100
    invoke-virtual {v6, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    .line 101
    const-string v3, "start_time"

    invoke-virtual {v8, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v7, v4, v5}, Lcom/cmplay/internalpush/data/c;->a(J)V

    .line 102
    const-string v3, "end_time"

    invoke-virtual {v8, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v7, v4, v5}, Lcom/cmplay/internalpush/data/c;->b(J)V

    .line 103
    const-string v3, "show_times"

    invoke-virtual {v8, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v7, v3}, Lcom/cmplay/internalpush/data/c;->a(I)V

    .line 104
    const-string v3, "interval_time"

    invoke-virtual {v8, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v7, v4, v5}, Lcom/cmplay/internalpush/data/c;->c(J)V

    .line 105
    const-string v3, "pro_name"

    invoke-virtual {v8, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Lcom/cmplay/internalpush/data/c;->b(Ljava/lang/String;)V

    .line 107
    const-string v3, "pro_id"

    invoke-virtual {v8, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 108
    invoke-virtual {v7, v4, v5}, Lcom/cmplay/internalpush/data/c;->d(J)V

    .line 109
    const-string v3, "pro_priority"

    invoke-virtual {v8, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v7, v4, v5}, Lcom/cmplay/internalpush/data/c;->e(J)V

    .line 110
    const-string v3, "rotation_times"

    invoke-virtual {v8, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v7, v3}, Lcom/cmplay/internalpush/data/c;->b(I)V

    .line 111
    const-string v3, "click_dis"

    invoke-virtual {v8, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v7, v3}, Lcom/cmplay/internalpush/data/c;->b(Z)V

    .line 112
    const-string v3, "bg_img"

    invoke-virtual {v8, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Lcom/cmplay/internalpush/data/c;->c(Ljava/lang/String;)V

    .line 113
    const-string v3, "button_img"

    invoke-virtual {v8, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Lcom/cmplay/internalpush/data/c;->e(Ljava/lang/String;)V

    .line 114
    const-string v3, "button_img2"

    invoke-virtual {v8, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Lcom/cmplay/internalpush/data/c;->f(Ljava/lang/String;)V

    .line 115
    const-string v3, "show_type"

    invoke-virtual {v8, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v7, v3}, Lcom/cmplay/internalpush/data/c;->p(I)V

    .line 116
    const-string v3, "playable_url"

    invoke-virtual {v8, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Lcom/cmplay/internalpush/data/c;->t(Ljava/lang/String;)V

    .line 117
    const-string v3, "button_moving"

    invoke-virtual {v8, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v7, v3}, Lcom/cmplay/internalpush/data/c;->a(Z)V

    .line 119
    const-string v3, "pkg_name"

    invoke-virtual {v8, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Lcom/cmplay/internalpush/data/c;->i(Ljava/lang/String;)V

    .line 120
    const-string v3, "jump_url"

    invoke-virtual {v8, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Lcom/cmplay/internalpush/data/c;->j(Ljava/lang/String;)V

    .line 121
    const-string v3, "jump_type"

    invoke-virtual {v8, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v7, v3}, Lcom/cmplay/internalpush/data/c;->c(I)V

    .line 122
    const-string v3, "new_player"

    invoke-virtual {v8, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v7, v3}, Lcom/cmplay/internalpush/data/c;->h(I)V

    .line 123
    const-string v3, "default_jump_url"

    invoke-virtual {v8, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Lcom/cmplay/internalpush/data/c;->a(Ljava/lang/String;)V

    .line 126
    const-string v3, "pro_type"

    invoke-virtual {v8, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v7, v3}, Lcom/cmplay/internalpush/data/c;->f(I)V

    .line 127
    const-string v3, "icon_url"

    invoke-virtual {v8, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Lcom/cmplay/internalpush/data/c;->k(Ljava/lang/String;)V

    .line 128
    const-string v3, "title"

    invoke-virtual {v8, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Lcom/cmplay/internalpush/data/c;->m(Ljava/lang/String;)V

    .line 129
    const-string v3, "subtitle"

    invoke-virtual {v8, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Lcom/cmplay/internalpush/data/c;->n(Ljava/lang/String;)V

    .line 130
    const-string v3, "reward_counts"

    invoke-virtual {v8, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v7, v3}, Lcom/cmplay/internalpush/data/c;->g(I)V

    .line 133
    const-string v3, "video_url"

    invoke-virtual {v8, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Lcom/cmplay/internalpush/data/c;->o(Ljava/lang/String;)V

    .line 134
    const-string v3, "video_width"

    invoke-virtual {v8, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v7, v3}, Lcom/cmplay/internalpush/data/c;->i(I)V

    .line 135
    const-string v3, "video_height"

    invoke-virtual {v8, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v7, v3}, Lcom/cmplay/internalpush/data/c;->j(I)V

    .line 136
    const-string v3, "comment_star"

    invoke-virtual {v8, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v7, v4, v5}, Lcom/cmplay/internalpush/data/c;->g(J)V

    .line 137
    const-string v3, "downloads"

    invoke-virtual {v8, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Lcom/cmplay/internalpush/data/c;->q(Ljava/lang/String;)V

    .line 140
    const-string v3, "shield_time"

    invoke-virtual {v8, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v7, v3}, Lcom/cmplay/internalpush/data/c;->k(I)V

    .line 141
    const-string v3, "button_txt"

    invoke-virtual {v8, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Lcom/cmplay/internalpush/data/c;->r(Ljava/lang/String;)V

    .line 142
    const-string v3, "button_txt2"

    invoke-virtual {v8, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Lcom/cmplay/internalpush/data/c;->s(Ljava/lang/String;)V

    .line 145
    const-string v3, "percentage"

    invoke-virtual {v8, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    const-wide/16 v4, 0x0

    :goto_2
    invoke-virtual {v7, v4, v5}, Lcom/cmplay/internalpush/data/c;->a(D)V

    .line 149
    const-string v3, "display_type"

    invoke-virtual {v8, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v7, v3}, Lcom/cmplay/internalpush/data/c;->l(I)V

    .line 150
    const-string v3, "priority_reddot"

    invoke-virtual {v8, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v7, v3}, Lcom/cmplay/internalpush/data/c;->m(I)V

    .line 152
    const-string v3, "show_by_startup"

    invoke-virtual {v8, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v7, v3}, Lcom/cmplay/internalpush/data/c;->n(I)V

    .line 154
    const-string v3, "ad_tag_show"

    invoke-virtual {v8, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v7, v3}, Lcom/cmplay/internalpush/data/c;->d(Z)V

    .line 156
    const-string v3, "day_limit"

    invoke-virtual {v8, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 158
    const-string v3, "day_limit"

    invoke-virtual {v8, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v7, v3}, Lcom/cmplay/internalpush/data/c;->q(I)V

    .line 165
    :goto_3
    const-string v3, "language"

    invoke-virtual {v8, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 166
    if-eqz v4, :cond_c

    .line 167
    const/4 v3, 0x0

    :goto_4
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v3, v5, :cond_c

    .line 168
    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 169
    new-instance v9, Lcom/cmplay/internalpush/data/l;

    invoke-direct {v9}, Lcom/cmplay/internalpush/data/l;-><init>()V

    .line 170
    const-string v10, "cl"

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/cmplay/internalpush/data/l;->a:Ljava/lang/String;

    .line 171
    const-string v10, "title"

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/cmplay/internalpush/data/l;->b:Ljava/lang/String;

    .line 172
    const-string v10, "subtitle"

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v9, Lcom/cmplay/internalpush/data/l;->c:Ljava/lang/String;

    .line 173
    invoke-virtual {v7}, Lcom/cmplay/internalpush/data/c;->X()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 71
    :cond_2
    instance-of v0, p0, Lcom/cmplay/internalpush/data/p;

    if-eqz v0, :cond_3

    .line 72
    const/4 v1, 0x2

    goto/16 :goto_0

    .line 73
    :cond_3
    instance-of v0, p0, Lcom/cmplay/internalpush/data/q;

    if-eqz v0, :cond_4

    .line 74
    const/4 v1, 0x3

    goto/16 :goto_0

    .line 75
    :cond_4
    instance-of v0, p0, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;

    if-eqz v0, :cond_5

    .line 76
    const/4 v1, 0x4

    goto/16 :goto_0

    .line 77
    :cond_5
    instance-of v0, p0, Lcom/cmplay/internalpush/data/a;

    if-eqz v0, :cond_6

    .line 78
    const/4 v1, 0x5

    goto/16 :goto_0

    .line 79
    :cond_6
    instance-of v0, p0, Lcom/cmplay/internalpush/data/k;

    if-eqz v0, :cond_7

    .line 80
    const/4 v1, 0x6

    goto/16 :goto_0

    .line 81
    :cond_7
    instance-of v0, p0, Lcom/cmplay/internalpush/data/b;

    if-eqz v0, :cond_0

    .line 82
    const/4 v1, 0x7

    goto/16 :goto_0

    .line 145
    :cond_8
    :try_start_1
    const-string v3, "percentage"

    invoke-virtual {v8, v3}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    goto/16 :goto_2

    .line 161
    :cond_9
    invoke-virtual {v7, v0}, Lcom/cmplay/internalpush/data/c;->q(I)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 194
    :catch_0
    move-exception v0

    move-object v11, v0

    .line 196
    if-eqz p2, :cond_a

    .line 197
    invoke-static {}, Lcom/cmplay/internalpush/o;->a()Lcom/cmplay/internalpush/o;

    move-result-object v0

    const/16 v2, 0xf

    const-string v3, ""

    const-wide/16 v4, 0x0

    invoke-static {}, Lcom/cmplay/internalpush/ipc/IpcCloudHelper;->getInstance()Lcom/cmplay/internalpush/ipc/IpcCloudHelper;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Lcom/cmplay/internalpush/ipc/IpcCloudHelper;->innpush_getUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    invoke-virtual/range {v0 .. v10}, Lcom/cmplay/internalpush/o;->a(IILjava/lang/String;JLjava/lang/String;IIJ)V

    .line 199
    :cond_a
    invoke-virtual {v11}, Lorg/json/JSONException;->printStackTrace()V

    .line 211
    :cond_b
    :goto_5
    return-object v12

    .line 178
    :cond_c
    :try_start_2
    const-string v3, "appstore"

    invoke-virtual {v8, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 179
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_d

    .line 180
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 181
    const/4 v3, 0x0

    :goto_6
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v3, v5, :cond_d

    .line 182
    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 183
    new-instance v8, Lcom/cmplay/base/util/b;

    const-string v9, "pkg"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "market"

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v8, v9, v5}, Lcom/cmplay/base/util/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Lcom/cmplay/internalpush/data/c;->a(Lcom/cmplay/base/util/b;)V

    .line 181
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 187
    :cond_d
    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 191
    :cond_e
    if-eqz p2, :cond_b

    .line 192
    invoke-static {}, Lcom/cmplay/internalpush/o;->a()Lcom/cmplay/internalpush/o;

    move-result-object v0

    const/16 v2, 0x14

    const-string v3, ""

    const-wide/16 v4, 0x0

    const-string v6, ""

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    invoke-virtual/range {v0 .. v10}, Lcom/cmplay/internalpush/o;->a(IILjava/lang/String;JLjava/lang/String;IIJ)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_5

    .line 203
    :cond_f
    if-eqz p2, :cond_b

    .line 204
    invoke-static {}, Lcom/cmplay/internalpush/ipc/IpcCloudHelper;->getInstance()Lcom/cmplay/internalpush/ipc/IpcCloudHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cmplay/internalpush/ipc/IpcCloudHelper;->innpush_isPullDataFromServer()Z

    move-result v11

    .line 205
    if-eqz v11, :cond_10

    invoke-static {}, Lcom/cmplay/internalpush/ipc/IpcCloudHelper;->getInstance()Lcom/cmplay/internalpush/ipc/IpcCloudHelper;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Lcom/cmplay/internalpush/ipc/IpcCloudHelper;->innpush_getUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 206
    :goto_7
    invoke-static {}, Lcom/cmplay/internalpush/o;->a()Lcom/cmplay/internalpush/o;

    move-result-object v0

    const/16 v2, 0x17

    const-string v3, ""

    const-wide/16 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    invoke-virtual/range {v0 .. v10}, Lcom/cmplay/internalpush/o;->a(IILjava/lang/String;JLjava/lang/String;IIJ)V

    .line 207
    const-string v0, "internal_push"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u6ca1\u6709json\u6570\u636e   isHavePullDataFromServer:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "   maigcUrl:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 205
    :cond_10
    const-string v6, ""

    goto :goto_7
.end method

.method public a(I)V
    .locals 12

    .prologue
    .line 569
    iget-object v0, p0, Lcom/cmplay/internalpush/data/o;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_0
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/cmplay/internalpush/data/m;

    .line 570
    if-eqz v1, :cond_0

    .line 571
    invoke-static {}, Lcom/cmplay/internalpush/o;->a()Lcom/cmplay/internalpush/o;

    move-result-object v0

    const/16 v2, 0xe

    iget-object v3, v1, Lcom/cmplay/internalpush/data/m;->b:Ljava/lang/String;

    iget-wide v4, v1, Lcom/cmplay/internalpush/data/m;->a:J

    iget-object v6, v1, Lcom/cmplay/internalpush/data/m;->c:Ljava/lang/String;

    invoke-static {v6}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget v7, v1, Lcom/cmplay/internalpush/data/m;->e:I

    const/4 v8, 0x0

    iget-wide v9, v1, Lcom/cmplay/internalpush/data/m;->d:J

    move v1, p1

    invoke-virtual/range {v0 .. v10}, Lcom/cmplay/internalpush/o;->a(IILjava/lang/String;JLjava/lang/String;IIJ)V

    goto :goto_0

    .line 574
    :cond_1
    return-void
.end method

.method public a(J)V
    .locals 5

    .prologue
    .line 508
    iget-object v0, p0, Lcom/cmplay/internalpush/data/o;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmplay/internalpush/data/c;

    .line 509
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cmplay/internalpush/data/c;->h()J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    .line 510
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/cmplay/internalpush/data/c;->f(Z)V

    goto :goto_0

    .line 513
    :cond_1
    return-void
.end method

.method public a(JI)V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 305
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "last_show_hit_top_time"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/cmplay/internalpush/data/o;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcom/cmplay/internalpush/a/d;->a(Ljava/lang/String;J)J

    move-result-wide v2

    .line 306
    invoke-static {v2, v3}, Lcom/cmplay/internalpush/a/b;->a(J)Z

    move-result v1

    .line 309
    iget-object v0, p0, Lcom/cmplay/internalpush/data/o;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmplay/internalpush/data/c;

    .line 310
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cmplay/internalpush/data/c;->h()J

    move-result-wide v6

    cmp-long v5, v6, p1

    if-nez v5, :cond_0

    .line 311
    packed-switch p3, :pswitch_data_0

    goto :goto_0

    .line 314
    :pswitch_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Lcom/cmplay/internalpush/data/c;->f(J)V

    .line 316
    invoke-virtual {v0}, Lcom/cmplay/internalpush/data/c;->u()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v0, v5}, Lcom/cmplay/internalpush/data/c;->d(I)V

    .line 318
    invoke-virtual {v0}, Lcom/cmplay/internalpush/data/c;->x()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v0, v5}, Lcom/cmplay/internalpush/data/c;->e(I)V

    .line 320
    invoke-virtual {v0}, Lcom/cmplay/internalpush/data/c;->ac()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 321
    if-nez v1, :cond_1

    .line 323
    invoke-virtual {v0, v8}, Lcom/cmplay/internalpush/data/c;->r(I)V

    .line 324
    const-string v5, "internal_push"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateShowedStatus  \u4e0d\u662f\u76f8\u540c\u81ea\u7136\u5929\uff0c\u91cd\u7f6e\u7206\u6b3e\u5f53\u5929\u5c55\u793a\u6b21     lastShowHitTopTime:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    :cond_1
    invoke-virtual {v0}, Lcom/cmplay/internalpush/data/c;->ab()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v0, v5}, Lcom/cmplay/internalpush/data/c;->r(I)V

    .line 330
    :cond_2
    instance-of v5, p0, Lcom/cmplay/internalpush/data/n;

    if-eqz v5, :cond_0

    .line 331
    invoke-virtual {v0}, Lcom/cmplay/internalpush/data/c;->ac()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 332
    const-string v0, "hit_top_launch_time"

    invoke-static {v0, v8}, Lcom/cmplay/internalpush/a/d;->b(Ljava/lang/String;I)V

    .line 333
    const-string v0, "internal_push"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ParseCloudDataBase.updateShowedStatus  HIT_TOP_LAUNCH_TIME reset  curLaunchTime:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "hit_top_launch_time"

    invoke-static {v6, v8}, Lcom/cmplay/internalpush/a/d;->a(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 335
    :cond_3
    const-string v0, "launch_time"

    invoke-static {v0, v8}, Lcom/cmplay/internalpush/a/d;->b(Ljava/lang/String;I)V

    .line 336
    const-string v0, "internal_push"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ParseCloudDataBase.updateShowedStatus  LAUNCH_TIME reset  curLaunchTime:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "launch_time"

    invoke-static {v6, v8}, Lcom/cmplay/internalpush/a/d;->a(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 343
    :pswitch_1
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/cmplay/internalpush/data/c;->c(Z)V

    goto/16 :goto_0

    .line 352
    :cond_4
    iget-object v0, p0, Lcom/cmplay/internalpush/data/o;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, v0}, Lcom/cmplay/internalpush/data/o;->a(Ljava/util/concurrent/CopyOnWriteArrayList;)V

    .line 353
    return-void

    .line 311
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public a(Lcom/cmplay/internalpush/data/c;I)V
    .locals 9

    .prologue
    .line 532
    if-nez p1, :cond_1

    .line 562
    :cond_0
    :goto_0
    return-void

    .line 535
    :cond_1
    const-string v5, ""

    .line 537
    sparse-switch p2, :sswitch_data_0

    .line 556
    const/4 v8, 0x0

    .line 559
    :goto_1
    if-lez v8, :cond_0

    .line 560
    iget-object v0, p0, Lcom/cmplay/internalpush/data/o;->h:Ljava/util/List;

    new-instance v1, Lcom/cmplay/internalpush/data/m;

    invoke-virtual {p1}, Lcom/cmplay/internalpush/data/c;->h()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/cmplay/internalpush/data/c;->r()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/cmplay/internalpush/data/c;->i()J

    move-result-wide v6

    invoke-direct/range {v1 .. v8}, Lcom/cmplay/internalpush/data/m;-><init>(JLjava/lang/String;Ljava/lang/String;JI)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 539
    :sswitch_0
    invoke-virtual {p1}, Lcom/cmplay/internalpush/data/c;->l()Ljava/lang/String;

    move-result-object v5

    .line 540
    const/4 v8, 0x1

    .line 541
    goto :goto_1

    .line 543
    :sswitch_1
    invoke-virtual {p1}, Lcom/cmplay/internalpush/data/c;->n()Ljava/lang/String;

    move-result-object v5

    .line 544
    const/4 v8, 0x2

    .line 545
    goto :goto_1

    .line 547
    :sswitch_2
    invoke-virtual {p1}, Lcom/cmplay/internalpush/data/c;->y()Ljava/lang/String;

    move-result-object v5

    .line 548
    const/4 v8, 0x3

    .line 549
    goto :goto_1

    .line 552
    :sswitch_3
    invoke-virtual {p1}, Lcom/cmplay/internalpush/data/c;->F()Ljava/lang/String;

    move-result-object v5

    .line 553
    const/4 v8, 0x4

    .line 554
    goto :goto_1

    .line 537
    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_0
        0x9 -> :sswitch_1
        0xb -> :sswitch_2
        0xc -> :sswitch_3
        0x3e9 -> :sswitch_3
    .end sparse-switch
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 215
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/cmplay/internalpush/data/o;->a(Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v0

    .line 216
    new-instance v1, Lcom/cmplay/internalpush/data/o$a;

    invoke-direct {v1, p0}, Lcom/cmplay/internalpush/data/o$a;-><init>(Lcom/cmplay/internalpush/data/o;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 217
    iget-object v1, p0, Lcom/cmplay/internalpush/data/o;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 218
    iget-object v1, p0, Lcom/cmplay/internalpush/data/o;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    .line 228
    invoke-virtual {p0}, Lcom/cmplay/internalpush/data/o;->h()V

    .line 236
    return-void
.end method

.method public a(Ljava/util/concurrent/CopyOnWriteArrayList;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/cmplay/internalpush/data/c;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 404
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 424
    :cond_0
    :goto_0
    return-void

    .line 407
    :cond_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 408
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 409
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move v5, v3

    .line 410
    :goto_1
    if-ge v5, v7, :cond_5

    .line 411
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmplay/internalpush/data/c;

    .line 412
    if-eqz v0, :cond_2

    .line 414
    if-nez v5, :cond_3

    :try_start_0
    const-string v1, "%d|%d|%d|%d|%d|%d|%d"

    move-object v4, v1

    :goto_2
    const/4 v1, 0x7

    new-array v9, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 415
    invoke-virtual {v0}, Lcom/cmplay/internalpush/data/c;->h()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v9, v1

    const/4 v10, 0x1

    invoke-virtual {v0}, Lcom/cmplay/internalpush/data/c;->w()Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v2

    :goto_3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v9, v10

    const/4 v1, 0x2

    invoke-virtual {v0}, Lcom/cmplay/internalpush/data/c;->u()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v1

    const/4 v1, 0x3

    invoke-virtual {v0}, Lcom/cmplay/internalpush/data/c;->v()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v9, v1

    const/4 v1, 0x4

    invoke-virtual {v0}, Lcom/cmplay/internalpush/data/c;->x()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v1

    const/4 v1, 0x5

    .line 416
    invoke-virtual {v0}, Lcom/cmplay/internalpush/data/c;->T()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v1

    const/4 v1, 0x6

    invoke-virtual {v0}, Lcom/cmplay/internalpush/data/c;->ab()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v9, v1

    .line 414
    invoke-static {v4, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    :cond_2
    :goto_4
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_1

    .line 414
    :cond_3
    const-string v1, ";%d|%d|%d|%d|%d|%d|%d"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v1

    goto :goto_2

    :cond_4
    move v1, v3

    .line 415
    goto :goto_3

    .line 417
    :catch_0
    move-exception v0

    .line 418
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 422
    :cond_5
    const-string v0, "internal_push"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "savePromotionStatus:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "promotion_app_status"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/cmplay/internalpush/data/o;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmplay/internalpush/a/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public a(JLjava/lang/String;)Z
    .locals 7

    .prologue
    .line 493
    const/4 v0, 0x0

    .line 494
    iget-object v1, p0, Lcom/cmplay/internalpush/data/o;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmplay/internalpush/data/c;

    .line 495
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/cmplay/internalpush/data/c;->h()J

    move-result-wide v4

    cmp-long v3, v4, p1

    if-nez v3, :cond_1

    .line 496
    invoke-virtual {v0, p3}, Lcom/cmplay/internalpush/data/c;->p(Ljava/lang/String;)V

    .line 497
    const/4 v1, 0x1

    move v0, v1

    :goto_1
    move v1, v0

    .line 499
    goto :goto_0

    .line 500
    :cond_0
    return v1

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 243
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 244
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/cmplay/internalpush/data/o;->a(Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v0

    .line 245
    iget-object v1, p0, Lcom/cmplay/internalpush/data/o;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 246
    new-instance v1, Lcom/cmplay/internalpush/data/o$a;

    invoke-direct {v1, p0}, Lcom/cmplay/internalpush/data/o$a;-><init>(Lcom/cmplay/internalpush/data/o;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 247
    iget-object v1, p0, Lcom/cmplay/internalpush/data/o;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 248
    iget-object v1, p0, Lcom/cmplay/internalpush/data/o;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    .line 251
    invoke-virtual {p0}, Lcom/cmplay/internalpush/data/o;->h()V

    .line 259
    :cond_0
    return-void
.end method

.method public c()Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/cmplay/internalpush/data/c;",
            ">;"
        }
    .end annotation

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/cmplay/internalpush/data/o;->i()V

    .line 60
    iget-object v0, p0, Lcom/cmplay/internalpush/data/o;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method public h()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 281
    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/cmplay/internalpush/data/o;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 282
    iget-object v0, p0, Lcom/cmplay/internalpush/data/o;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmplay/internalpush/data/c;

    .line 283
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cmplay/internalpush/data/c;->ac()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 284
    iget-object v3, p0, Lcom/cmplay/internalpush/data/o;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(I)Ljava/lang/Object;

    .line 285
    iget-object v3, p0, Lcom/cmplay/internalpush/data/o;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(ILjava/lang/Object;)V

    .line 286
    iget-object v3, p0, Lcom/cmplay/internalpush/data/o;->g:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 281
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 289
    :cond_1
    return-void
.end method

.method public i()V
    .locals 12

    .prologue
    .line 360
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "last_show_hit_top_time"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/cmplay/internalpush/data/o;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcom/cmplay/internalpush/a/d;->a(Ljava/lang/String;J)J

    move-result-wide v2

    .line 361
    invoke-static {v2, v3}, Lcom/cmplay/internalpush/a/b;->a(J)Z

    move-result v4

    .line 364
    iget-object v0, p0, Lcom/cmplay/internalpush/data/o;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 365
    invoke-virtual {p0}, Lcom/cmplay/internalpush/data/o;->j()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/cmplay/internalpush/data/o;->e:Ljava/util/ArrayList;

    .line 368
    iget-object v0, p0, Lcom/cmplay/internalpush/data/o;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmplay/internalpush/data/c;

    .line 369
    iget-object v1, p0, Lcom/cmplay/internalpush/data/o;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cmplay/internalpush/data/j;

    .line 370
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/cmplay/internalpush/data/c;->h()J

    move-result-wide v8

    invoke-virtual {v1}, Lcom/cmplay/internalpush/data/j;->a()J

    move-result-wide v10

    cmp-long v7, v8, v10

    if-nez v7, :cond_1

    .line 371
    invoke-virtual {v1}, Lcom/cmplay/internalpush/data/j;->d()Z

    move-result v7

    invoke-virtual {v0, v7}, Lcom/cmplay/internalpush/data/c;->c(Z)V

    .line 372
    invoke-virtual {v1}, Lcom/cmplay/internalpush/data/j;->b()I

    move-result v7

    invoke-virtual {v0, v7}, Lcom/cmplay/internalpush/data/c;->d(I)V

    .line 373
    invoke-virtual {v1}, Lcom/cmplay/internalpush/data/j;->c()J

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Lcom/cmplay/internalpush/data/c;->f(J)V

    .line 374
    invoke-virtual {v1}, Lcom/cmplay/internalpush/data/j;->e()I

    move-result v7

    invoke-virtual {v0, v7}, Lcom/cmplay/internalpush/data/c;->e(I)V

    .line 375
    invoke-virtual {v1}, Lcom/cmplay/internalpush/data/j;->f()I

    move-result v7

    invoke-virtual {v0, v7}, Lcom/cmplay/internalpush/data/c;->o(I)V

    .line 376
    if-nez v4, :cond_2

    .line 378
    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Lcom/cmplay/internalpush/data/j;->d(I)V

    .line 379
    const-string v7, "internal_push"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "synShowedStatusToInfoList  \u4e0d\u662f\u76f8\u540c\u81ea\u7136\u5929\uff0c\u91cd\u7f6e\u7206\u6b3e\u5f53\u5929\u5c55\u793a\u6b21     lastShowHitTopTime:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    :cond_2
    invoke-virtual {v1}, Lcom/cmplay/internalpush/data/j;->g()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/cmplay/internalpush/data/c;->r(I)V

    goto :goto_0

    .line 385
    :cond_3
    return-void
.end method

.method public j()Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cmplay/internalpush/data/j;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 431
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 432
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "promotion_app_status"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/cmplay/internalpush/data/o;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-static {v0, v2}, Lcom/cmplay/internalpush/a/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 433
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 434
    const-string v2, "internal_push"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "parsePromotionStatus strStatus="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    move v0, v1

    .line 436
    :goto_0
    array-length v2, v6

    if-ge v0, v2, :cond_9

    .line 437
    aget-object v2, v6, v0

    const-string v3, "\\|"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 438
    new-instance v8, Lcom/cmplay/internalpush/data/j;

    invoke-direct {v8}, Lcom/cmplay/internalpush/data/j;-><init>()V

    move v2, v1

    .line 439
    :goto_1
    array-length v3, v7

    if-ge v2, v3, :cond_8

    .line 441
    if-nez v2, :cond_0

    .line 442
    :try_start_0
    aget-object v3, v7, v2

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Lcom/cmplay/internalpush/data/j;->a(J)V

    .line 444
    :cond_0
    if-ne v4, v2, :cond_1

    .line 445
    aget-object v3, v7, v2

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 446
    if-ne v4, v3, :cond_7

    move v3, v4

    :goto_2
    invoke-virtual {v8, v3}, Lcom/cmplay/internalpush/data/j;->a(Z)V

    .line 448
    :cond_1
    const/4 v3, 0x2

    if-ne v3, v2, :cond_2

    .line 449
    aget-object v3, v7, v2

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v8, v3}, Lcom/cmplay/internalpush/data/j;->a(I)V

    .line 451
    :cond_2
    const/4 v3, 0x3

    if-ne v3, v2, :cond_3

    .line 452
    aget-object v3, v7, v2

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Lcom/cmplay/internalpush/data/j;->b(J)V

    .line 454
    :cond_3
    const/4 v3, 0x4

    if-ne v3, v2, :cond_4

    .line 455
    aget-object v3, v7, v2

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v8, v3}, Lcom/cmplay/internalpush/data/j;->b(I)V

    .line 457
    :cond_4
    const/4 v3, 0x5

    if-ne v3, v2, :cond_5

    .line 458
    aget-object v3, v7, v2

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v8, v3}, Lcom/cmplay/internalpush/data/j;->c(I)V

    .line 460
    :cond_5
    const/4 v3, 0x6

    if-ne v3, v2, :cond_6

    .line 461
    aget-object v3, v7, v2

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v8, v3}, Lcom/cmplay/internalpush/data/j;->d(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 439
    :cond_6
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_7
    move v3, v1

    .line 446
    goto :goto_2

    .line 463
    :catch_0
    move-exception v3

    .line 464
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 467
    :cond_8
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 436
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 475
    :cond_9
    return-object v5
.end method

.method public k()V
    .locals 2

    .prologue
    .line 482
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cmplay/internalpush/data/o;->i:Lcom/cmplay/internalpush/data/c;

    .line 483
    const-string v0, "internal_push"

    const-string v1, "resetCurShowInfo()"

    invoke-static {v0, v1}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    return-void
.end method

.method public l()V
    .locals 3

    .prologue
    .line 519
    iget-object v0, p0, Lcom/cmplay/internalpush/data/o;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmplay/internalpush/data/c;

    .line 520
    if-eqz v0, :cond_0

    .line 521
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/cmplay/internalpush/data/c;->f(Z)V

    goto :goto_0

    .line 524
    :cond_1
    return-void
.end method
