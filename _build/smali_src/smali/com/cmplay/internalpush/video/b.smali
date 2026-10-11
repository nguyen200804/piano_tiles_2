.class public Lcom/cmplay/internalpush/video/b;
.super Lcom/cmplay/internalpush/data/d;
.source "InnerPushModel.java"


# instance fields
.field private A:Ljava/lang/String;

.field private B:I

.field private C:Ljava/lang/String;

.field private D:I

.field protected a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cmplay/base/util/b;",
            ">;"
        }
    .end annotation
.end field

.field private b:J

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/String;

.field private v:I

.field private w:I

.field private x:I

.field private y:Ljava/lang/String;

.field private z:J


# direct methods
.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;JLjava/lang/String;ILjava/util/ArrayList;Ljava/lang/String;IJ)V
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
            "J",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cmplay/base/util/b;",
            ">;",
            "Ljava/lang/String;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/cmplay/internalpush/data/d;-><init>()V

    .line 39
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/cmplay/internalpush/video/b;->a:Ljava/util/ArrayList;

    .line 44
    iput-wide p1, p0, Lcom/cmplay/internalpush/video/b;->b:J

    .line 45
    iput-object p3, p0, Lcom/cmplay/internalpush/video/b;->c:Ljava/lang/String;

    .line 46
    iput-object p4, p0, Lcom/cmplay/internalpush/video/b;->d:Ljava/lang/String;

    .line 47
    iput-object p5, p0, Lcom/cmplay/internalpush/video/b;->e:Ljava/lang/String;

    .line 48
    iput-object p6, p0, Lcom/cmplay/internalpush/video/b;->r:Ljava/lang/String;

    .line 49
    iput-object p7, p0, Lcom/cmplay/internalpush/video/b;->s:Ljava/lang/String;

    .line 50
    iput-object p8, p0, Lcom/cmplay/internalpush/video/b;->t:Ljava/lang/String;

    .line 51
    iput-object p9, p0, Lcom/cmplay/internalpush/video/b;->u:Ljava/lang/String;

    .line 52
    iput p10, p0, Lcom/cmplay/internalpush/video/b;->v:I

    .line 53
    iput p11, p0, Lcom/cmplay/internalpush/video/b;->w:I

    .line 54
    iput p12, p0, Lcom/cmplay/internalpush/video/b;->x:I

    .line 55
    move-object/from16 v0, p13

    iput-object v0, p0, Lcom/cmplay/internalpush/video/b;->y:Ljava/lang/String;

    .line 56
    move-wide/from16 v0, p14

    iput-wide v0, p0, Lcom/cmplay/internalpush/video/b;->z:J

    .line 57
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/cmplay/internalpush/video/b;->A:Ljava/lang/String;

    .line 58
    move/from16 v0, p17

    iput v0, p0, Lcom/cmplay/internalpush/video/b;->B:I

    .line 59
    iget-object v2, p0, Lcom/cmplay/internalpush/video/b;->a:Ljava/util/ArrayList;

    move-object/from16 v0, p18

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 60
    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/cmplay/internalpush/video/b;->C:Ljava/lang/String;

    .line 61
    move-wide/from16 v0, p21

    iput-wide v0, p0, Lcom/cmplay/internalpush/video/b;->o:J

    .line 62
    move/from16 v0, p20

    iput v0, p0, Lcom/cmplay/internalpush/video/b;->D:I

    .line 63
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/cmplay/internalpush/data/d;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cmplay/internalpush/video/b;->a:Ljava/util/ArrayList;

    .line 66
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 68
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 69
    const-string v0, "pro_id"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/cmplay/internalpush/video/b;->b:J

    .line 70
    const-string v0, "pkg_name"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmplay/internalpush/video/b;->c:Ljava/lang/String;

    .line 71
    const-string v0, "title"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmplay/internalpush/video/b;->d:Ljava/lang/String;

    .line 72
    const-string v0, "subtitle"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmplay/internalpush/video/b;->e:Ljava/lang/String;

    .line 73
    const-string v0, "icon_url"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmplay/internalpush/video/b;->r:Ljava/lang/String;

    .line 74
    const-string v0, "video_url"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmplay/internalpush/video/b;->s:Ljava/lang/String;

    .line 75
    const-string v0, "video_path"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmplay/internalpush/video/b;->t:Ljava/lang/String;

    .line 76
    const-string v0, "bg_image_url"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmplay/internalpush/video/b;->u:Ljava/lang/String;

    .line 77
    const-string v0, "video_width"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cmplay/internalpush/video/b;->v:I

    .line 78
    const-string v0, "video_height"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cmplay/internalpush/video/b;->w:I

    .line 79
    const-string v0, "jump_type"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cmplay/internalpush/video/b;->x:I

    .line 80
    const-string v0, "jump_url"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmplay/internalpush/video/b;->y:Ljava/lang/String;

    .line 81
    const-string v0, "comment_star"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/cmplay/internalpush/video/b;->z:J

    .line 82
    const-string v0, "downloads"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmplay/internalpush/video/b;->A:Ljava/lang/String;

    .line 83
    const-string v0, "display_type"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cmplay/internalpush/video/b;->B:I

    .line 84
    const-string v0, "appstore"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 85
    const-string v2, "default_jump_url"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/cmplay/internalpush/video/b;->C:Ljava/lang/String;

    .line 86
    const-string v2, "priority"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, p0, Lcom/cmplay/internalpush/video/b;->o:J

    .line 87
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 88
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 89
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 90
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 91
    iget-object v4, p0, Lcom/cmplay/internalpush/video/b;->a:Ljava/util/ArrayList;

    new-instance v5, Lcom/cmplay/base/util/b;

    const-string v6, "app_pkg_in_appstore"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "market_pkg"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v6, v3}, Lcom/cmplay/base/util/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 94
    :cond_0
    const-string v0, "scene"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cmplay/internalpush/video/b;->D:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    :cond_1
    :goto_1
    return-void

    .line 95
    :catch_0
    move-exception v0

    .line 96
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 7

    .prologue
    .line 102
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 104
    :try_start_0
    const-string v0, "pro_id"

    iget-wide v2, p0, Lcom/cmplay/internalpush/video/b;->b:J

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 105
    const-string v0, "pkg_name"

    iget-object v2, p0, Lcom/cmplay/internalpush/video/b;->c:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 106
    const-string v0, "title"

    iget-object v2, p0, Lcom/cmplay/internalpush/video/b;->d:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 107
    const-string v0, "subtitle"

    iget-object v2, p0, Lcom/cmplay/internalpush/video/b;->e:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 108
    const-string v0, "icon_url"

    iget-object v2, p0, Lcom/cmplay/internalpush/video/b;->r:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 109
    const-string v0, "video_url"

    iget-object v2, p0, Lcom/cmplay/internalpush/video/b;->s:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 110
    const-string v0, "video_path"

    iget-object v2, p0, Lcom/cmplay/internalpush/video/b;->t:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 111
    const-string v0, "bg_image_url"

    iget-object v2, p0, Lcom/cmplay/internalpush/video/b;->u:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 112
    const-string v0, "video_width"

    iget v2, p0, Lcom/cmplay/internalpush/video/b;->v:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 113
    const-string v0, "video_height"

    iget v2, p0, Lcom/cmplay/internalpush/video/b;->w:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 114
    const-string v0, "jump_type"

    iget v2, p0, Lcom/cmplay/internalpush/video/b;->x:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 115
    const-string v0, "jump_url"

    iget-object v2, p0, Lcom/cmplay/internalpush/video/b;->y:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 116
    const-string v0, "comment_star"

    iget-wide v2, p0, Lcom/cmplay/internalpush/video/b;->z:J

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 117
    const-string v0, "downloads"

    iget-object v2, p0, Lcom/cmplay/internalpush/video/b;->A:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 118
    const-string v0, "display_type"

    iget v2, p0, Lcom/cmplay/internalpush/video/b;->B:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 119
    const-string v0, "default_jump_url"

    iget-object v2, p0, Lcom/cmplay/internalpush/video/b;->C:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 120
    const-string v0, "priority"

    iget-wide v2, p0, Lcom/cmplay/internalpush/video/b;->o:J

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 121
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 122
    iget-object v0, p0, Lcom/cmplay/internalpush/video/b;->a:Ljava/util/ArrayList;

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

    .line 123
    if-eqz v0, :cond_0

    .line 124
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 125
    const-string v5, "app_pkg_in_appstore"

    iget-object v6, v0, Lcom/cmplay/base/util/b;->b:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 126
    const-string v5, "market_pkg"

    iget-object v0, v0, Lcom/cmplay/base/util/b;->a:Ljava/lang/String;

    invoke-virtual {v4, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 127
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 132
    :catch_0
    move-exception v0

    .line 133
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 136
    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 130
    :cond_1
    :try_start_1
    const-string v0, "appstore"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 131
    const-string v0, "scene"

    iget v2, p0, Lcom/cmplay/internalpush/video/b;->D:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/cmplay/internalpush/video/b;->C:Ljava/lang/String;

    return-object v0
.end method

.method public d()J
    .locals 2

    .prologue
    .line 140
    iget-wide v0, p0, Lcom/cmplay/internalpush/video/b;->b:J

    return-wide v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/cmplay/internalpush/video/b;->c:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/cmplay/internalpush/video/b;->y:Ljava/lang/String;

    return-object v0
.end method

.method public h()I
    .locals 1

    .prologue
    .line 188
    iget v0, p0, Lcom/cmplay/internalpush/video/b;->x:I

    return v0
.end method

.method public i()I
    .locals 1

    .prologue
    .line 204
    iget v0, p0, Lcom/cmplay/internalpush/video/b;->B:I

    return v0
.end method

.method public j()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cmplay/base/util/b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 208
    iget-object v0, p0, Lcom/cmplay/internalpush/video/b;->a:Ljava/util/ArrayList;

    return-object v0
.end method

.method public o()Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/cmplay/internalpush/video/b;->d:Ljava/lang/String;

    return-object v0
.end method

.method public p()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/cmplay/internalpush/video/b;->e:Ljava/lang/String;

    return-object v0
.end method

.method public q()Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/cmplay/internalpush/video/b;->r:Ljava/lang/String;

    return-object v0
.end method

.method public r()Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/cmplay/internalpush/video/b;->t:Ljava/lang/String;

    return-object v0
.end method

.method public s()Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/cmplay/internalpush/video/b;->u:Ljava/lang/String;

    return-object v0
.end method

.method public t()I
    .locals 1

    .prologue
    .line 180
    iget v0, p0, Lcom/cmplay/internalpush/video/b;->v:I

    return v0
.end method

.method public u()I
    .locals 1

    .prologue
    .line 184
    iget v0, p0, Lcom/cmplay/internalpush/video/b;->w:I

    return v0
.end method

.method public v()J
    .locals 2

    .prologue
    .line 196
    iget-wide v0, p0, Lcom/cmplay/internalpush/video/b;->z:J

    return-wide v0
.end method

.method public w()Ljava/lang/String;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/cmplay/internalpush/video/b;->A:Ljava/lang/String;

    return-object v0
.end method

.method public x()I
    .locals 1

    .prologue
    .line 216
    iget v0, p0, Lcom/cmplay/internalpush/video/b;->D:I

    return v0
.end method
