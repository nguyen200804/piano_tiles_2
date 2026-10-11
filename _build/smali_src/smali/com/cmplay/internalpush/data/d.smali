.class public Lcom/cmplay/internalpush/data/d;
.super Ljava/lang/Object;
.source "InfoForShow.java"


# instance fields
.field protected f:J

.field protected g:Ljava/lang/String;

.field protected h:Ljava/lang/String;

.field protected i:Ljava/lang/String;

.field protected j:I

.field protected k:Z

.field protected l:Ljava/lang/String;

.field protected m:I

.field protected n:I

.field protected o:J

.field protected p:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cmplay/base/util/b;",
            ">;"
        }
    .end annotation
.end field

.field protected q:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cmplay/internalpush/data/d;->p:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 161
    if-nez p1, :cond_1

    .line 201
    :cond_0
    :goto_0
    return-void

    .line 166
    :cond_1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 167
    const-string v1, "pro_id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 168
    const-string v1, "pro_id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/cmplay/internalpush/data/d;->f:J

    .line 170
    :cond_2
    const-string v1, "pkg_name"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 171
    const-string v1, "pkg_name"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cmplay/internalpush/data/d;->h:Ljava/lang/String;

    .line 173
    :cond_3
    const-string v1, "pro_name"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 174
    const-string v1, "pro_name"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cmplay/internalpush/data/d;->g:Ljava/lang/String;

    .line 176
    :cond_4
    const-string v1, "jump_type"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 177
    const-string v1, "jump_type"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/cmplay/internalpush/data/d;->j:I

    .line 179
    :cond_5
    const-string v1, "jump_url"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 180
    const-string v1, "jump_url"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cmplay/internalpush/data/d;->i:Ljava/lang/String;

    .line 182
    :cond_6
    const-string v1, "display_type"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 183
    const-string v1, "display_type"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/cmplay/internalpush/data/d;->n:I

    .line 185
    :cond_7
    const-string v1, "priority"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 186
    const-string v1, "priority"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    int-to-long v2, v1

    iput-wide v2, p0, Lcom/cmplay/internalpush/data/d;->o:J

    .line 188
    :cond_8
    const-string v1, "appstore"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 189
    const-string v1, "appstore"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 190
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 191
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 192
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 193
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 194
    iget-object v3, p0, Lcom/cmplay/internalpush/data/d;->p:Ljava/util/ArrayList;

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

    .line 192
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 198
    :catch_0
    move-exception v0

    .line 199
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/cmplay/internalpush/data/d;->k:Z

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/cmplay/internalpush/data/d;->q:Ljava/lang/String;

    return-object v0
.end method

.method public d()J
    .locals 2

    .prologue
    .line 69
    iget-wide v0, p0, Lcom/cmplay/internalpush/data/d;->f:J

    return-wide v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/cmplay/internalpush/data/d;->g:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/cmplay/internalpush/data/d;->h:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/cmplay/internalpush/data/d;->i:Ljava/lang/String;

    return-object v0
.end method

.method public h()I
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lcom/cmplay/internalpush/data/d;->j:I

    return v0
.end method

.method public i()I
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Lcom/cmplay/internalpush/data/d;->n:I

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
    .line 117
    iget-object v0, p0, Lcom/cmplay/internalpush/data/d;->p:Ljava/util/ArrayList;

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/cmplay/internalpush/data/d;->l:Ljava/lang/String;

    return-object v0
.end method

.method public l()I
    .locals 1

    .prologue
    .line 133
    iget v0, p0, Lcom/cmplay/internalpush/data/d;->m:I

    return v0
.end method

.method public m()J
    .locals 2

    .prologue
    .line 141
    iget-wide v0, p0, Lcom/cmplay/internalpush/data/d;->o:J

    return-wide v0
.end method

.method public n()Z
    .locals 4

    .prologue
    .line 153
    const-wide/16 v0, 0x3e7

    iget-wide v2, p0, Lcom/cmplay/internalpush/data/d;->o:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
