.class public final Lcom/cmcm/orion/picks/a/a/i;
.super Ljava/lang/Object;
.source "MarketResponse.java"


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/cmcm/orion/picks/a/a/a;",
            ">;"
        }
    .end annotation
.end field

.field private b:I

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cmcm/orion/picks/a/a/i;->a:Ljava/util/List;

    .line 27
    const-string v0, "0"

    iput-object v0, p0, Lcom/cmcm/orion/picks/a/a/i;->d:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public constructor <init>(Lcom/cmcm/orion/picks/a/a/i;)V
    .locals 2

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cmcm/orion/picks/a/a/i;->a:Ljava/util/List;

    .line 27
    const-string v0, "0"

    iput-object v0, p0, Lcom/cmcm/orion/picks/a/a/i;->d:Ljava/lang/String;

    .line 34
    iget-object v0, p0, Lcom/cmcm/orion/picks/a/a/i;->a:Ljava/util/List;

    .line 1052
    iget-object v1, p1, Lcom/cmcm/orion/picks/a/a/i;->a:Ljava/util/List;

    .line 34
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2047
    iget v0, p1, Lcom/cmcm/orion/picks/a/a/i;->b:I

    .line 35
    iput v0, p0, Lcom/cmcm/orion/picks/a/a/i;->b:I

    .line 2121
    iget v0, p1, Lcom/cmcm/orion/picks/a/a/i;->c:I

    .line 36
    iput v0, p0, Lcom/cmcm/orion/picks/a/a/i;->c:I

    .line 2125
    iget-object v0, p1, Lcom/cmcm/orion/picks/a/a/i;->d:Ljava/lang/String;

    .line 37
    iput-object v0, p0, Lcom/cmcm/orion/picks/a/a/i;->d:Ljava/lang/String;

    .line 3072
    iget-object v0, p1, Lcom/cmcm/orion/picks/a/a/i;->e:Ljava/lang/String;

    .line 38
    iput-object v0, p0, Lcom/cmcm/orion/picks/a/a/i;->e:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cmcm/orion/picks/a/a/m;)Lcom/cmcm/orion/picks/a/a/i;
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 76
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 77
    const/16 v0, 0x6a

    invoke-static {p3, v0}, Lcom/cmcm/orion/picks/a/a/m;->a(Lcom/cmcm/orion/picks/a/a/m;I)V

    move-object v0, v1

    .line 111
    :cond_0
    :goto_0
    return-object v0

    .line 83
    :cond_1
    :try_start_0
    new-instance v0, Lcom/cmcm/orion/picks/a/a/i;

    invoke-direct {v0}, Lcom/cmcm/orion/picks/a/a/i;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    :try_start_1
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 85
    const-string v4, "offset"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v0, Lcom/cmcm/orion/picks/a/a/i;->b:I

    .line 86
    const-string v4, "code"

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v0, Lcom/cmcm/orion/picks/a/a/i;->c:I

    .line 87
    const-string v4, "tabid"

    const-string v5, "0"

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/cmcm/orion/picks/a/a/i;->d:Ljava/lang/String;

    .line 88
    const-string v4, "title"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/cmcm/orion/picks/a/a/i;->e:Ljava/lang/String;

    .line 89
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "code MarketResponse:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, v0, Lcom/cmcm/orion/picks/a/a/i;->c:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",request tabid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", response tabid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/cmcm/orion/picks/a/a/i;->d:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    iget-object v4, v0, Lcom/cmcm/orion/picks/a/a/i;->d:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 94
    const/16 v2, 0x91

    invoke-static {p3, v2}, Lcom/cmcm/orion/picks/a/a/m;->a(Lcom/cmcm/orion/picks/a/a/m;I)V

    move-object v0, v1

    .line 95
    goto :goto_0

    .line 98
    :cond_2
    const-string v1, "ads"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 99
    if-eqz v3, :cond_0

    move v1, v2

    .line 100
    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 101
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 102
    if-eqz v2, :cond_3

    .line 105
    iget-object v4, v0, Lcom/cmcm/orion/picks/a/a/i;->d:Ljava/lang/String;

    invoke-static {p0, v2, v4}, Lcom/cmcm/orion/picks/a/a/b;->a(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)Lcom/cmcm/orion/picks/a/a/a;

    move-result-object v2

    .line 4060
    iget-object v4, v0, Lcom/cmcm/orion/picks/a/a/i;->a:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 100
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 109
    :catch_0
    move-exception v0

    move-object v0, v1

    :goto_2
    const/16 v1, 0x76

    invoke-static {p3, v1}, Lcom/cmcm/orion/picks/a/a/m;->a(Lcom/cmcm/orion/picks/a/a/m;I)V

    goto/16 :goto_0

    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method public static a(Ljava/util/List;ZI)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/cmcm/orion/picks/a/a/a;",
            ">;ZI)V"
        }
    .end annotation

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x1

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "before filter net has ads number:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 165
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 166
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 167
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmcm/orion/picks/a/a/a;

    .line 168
    if-nez v0, :cond_1

    .line 169
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 171
    :cond_1
    invoke-virtual {v0}, Lcom/cmcm/orion/picks/a/a/a;->J()I

    move-result v2

    if-ne v4, v2, :cond_3

    .line 172
    const/4 v2, 0x2

    invoke-static {p2, v2}, Lcom/cmcm/orion/picks/a/a/i;->a(II)Z

    move-result v2

    if-nez v2, :cond_2

    .line 173
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "orion AppLoader not support cpt,remove net ad, title:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/cmcm/orion/picks/a/a/a;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",support:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 177
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 180
    :cond_2
    invoke-virtual {v0}, Lcom/cmcm/orion/picks/a/a/a;->D()Ljava/lang/String;

    move-result-object v2

    .line 181
    invoke-static {v2, p1}, Lcom/cmcm/orion/utils/b;->a(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_8

    .line 182
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "orion AppLoader remove net cpt invalid ad,st et is invalid, title:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/cmcm/orion/picks/a/a/a;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 189
    :cond_3
    const/4 v2, 0x5

    invoke-virtual {v0}, Lcom/cmcm/orion/picks/a/a/a;->J()I

    move-result v3

    if-ne v2, v3, :cond_5

    .line 190
    invoke-static {p2, v4}, Lcom/cmcm/orion/picks/a/a/i;->a(II)Z

    move-result v2

    if-nez v2, :cond_4

    .line 191
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "orion AppLoader not support cpm,remove net ad, title:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/cmcm/orion/picks/a/a/a;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",support:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 195
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 198
    :cond_4
    invoke-virtual {v0}, Lcom/cmcm/orion/picks/a/a/a;->D()Ljava/lang/String;

    move-result-object v2

    .line 199
    invoke-static {v2, p1}, Lcom/cmcm/orion/utils/b;->a(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_8

    .line 200
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "orion AppLoader remove net cpm invalid ad,st et is invalid, title:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/cmcm/orion/picks/a/a/a;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_0

    .line 207
    :cond_5
    const/4 v2, 0x3

    invoke-virtual {v0}, Lcom/cmcm/orion/picks/a/a/a;->J()I

    move-result v3

    if-ne v2, v3, :cond_6

    .line 208
    const/4 v2, 0x4

    invoke-static {p2, v2}, Lcom/cmcm/orion/picks/a/a/i;->a(II)Z

    move-result v2

    if-nez v2, :cond_8

    .line 209
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "orion AppLoader not support toutiao,remove net ad, title:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/cmcm/orion/picks/a/a/a;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",support:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 213
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_0

    .line 217
    :cond_6
    invoke-static {p2, v5}, Lcom/cmcm/orion/picks/a/a/i;->a(II)Z

    move-result v2

    if-nez v2, :cond_7

    .line 218
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "orion AppLoader not support other,remove net ad, title:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/cmcm/orion/picks/a/a/a;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",support:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 222
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_0

    .line 226
    :cond_7
    invoke-virtual {v0}, Lcom/cmcm/orion/picks/a/a/a;->D()Ljava/lang/String;

    move-result-object v2

    .line 227
    invoke-static {v2}, Lcom/cmcm/orion/utils/b;->e(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8

    invoke-static {v2, p1}, Lcom/cmcm/orion/utils/b;->a(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_8

    .line 230
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "orion AppLoader remove net other invalid ad,st et is not null and invalid , invalid, title:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/cmcm/orion/picks/a/a/a;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_0

    .line 239
    :cond_8
    invoke-virtual {v0}, Lcom/cmcm/orion/picks/a/a/a;->s()I

    move-result v2

    if-ne v2, v5, :cond_9

    invoke-static {}, Lcom/cmcm/orion/adsdk/e;->a()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0}, Lcom/cmcm/orion/picks/a/a/a;->l()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/cmcm/orion/utils/b;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 241
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_0

    .line 243
    :cond_9
    invoke-virtual {v0}, Lcom/cmcm/orion/picks/a/a/a;->F()Z

    move-result v0

    if-nez v0, :cond_0

    .line 244
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_0

    .line 249
    :cond_a
    return-void
.end method

.method private static a(II)Z
    .locals 1

    .prologue
    .line 159
    and-int v0, p0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/cmcm/orion/picks/a/a/i;->b:I

    return v0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/cmcm/orion/picks/a/a/i;->d:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/cmcm/orion/picks/a/a/a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 115
    if-eqz p1, :cond_0

    .line 116
    iget-object v0, p0, Lcom/cmcm/orion/picks/a/a/i;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 118
    :cond_0
    return-void
.end method

.method public final b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/cmcm/orion/picks/a/a/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 52
    iget-object v0, p0, Lcom/cmcm/orion/picks/a/a/i;->a:Ljava/util/List;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/cmcm/orion/picks/a/a/i;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/cmcm/orion/picks/a/a/i;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Z
    .locals 2

    .prologue
    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MarketResponse:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/cmcm/orion/picks/a/a/i;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 130
    iget v0, p0, Lcom/cmcm/orion/picks/a/a/i;->c:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
