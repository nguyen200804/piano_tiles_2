.class public Lcom/cmplay/a/c;
.super Ljava/lang/Object;
.source "LoginMgr.java"


# static fields
.field private static a:Lcom/cmplay/a/c;


# instance fields
.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/cmplay/a/d;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/cmplay/a/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    sput-object v0, Lcom/cmplay/a/c;->a:Lcom/cmplay/a/c;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cmplay/a/c;->b:Ljava/util/List;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cmplay/a/c;->c:Ljava/util/List;

    .line 45
    return-void
.end method

.method public static a()Lcom/cmplay/a/c;
    .locals 2

    .prologue
    .line 48
    sget-object v0, Lcom/cmplay/a/c;->a:Lcom/cmplay/a/c;

    if-nez v0, :cond_1

    .line 49
    const-class v1, Lcom/cmplay/a/c;

    monitor-enter v1

    .line 50
    :try_start_0
    sget-object v0, Lcom/cmplay/a/c;->a:Lcom/cmplay/a/c;

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Lcom/cmplay/a/c;

    invoke-direct {v0}, Lcom/cmplay/a/c;-><init>()V

    sput-object v0, Lcom/cmplay/a/c;->a:Lcom/cmplay/a/c;

    .line 53
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    :cond_1
    sget-object v0, Lcom/cmplay/a/c;->a:Lcom/cmplay/a/c;

    return-object v0

    .line 53
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private g(I)Lcom/cmplay/sharebase/b;
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    .line 60
    sparse-switch p1, :sswitch_data_0

    .line 77
    :goto_0
    :sswitch_0
    return-object v0

    .line 62
    :sswitch_1
    invoke-static {}, Lcom/cmplay/a/a;->a()Lcom/cmplay/a/a;

    move-result-object v0

    goto :goto_0

    .line 65
    :sswitch_2
    invoke-static {}, Lcom/cmplay/a/b;->a()Lcom/cmplay/a/b;

    move-result-object v0

    goto :goto_0

    .line 60
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x4 -> :sswitch_2
        0x3e9 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/util/List;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/cmplay/a/d;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 321
    const/4 v2, -0x1

    .line 322
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v2

    .line 333
    :goto_0
    return v0

    .line 326
    :cond_1
    const/4 v1, 0x0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    :goto_1
    if-ge v1, v3, :cond_3

    .line 327
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmplay/a/d;

    .line 328
    iget-object v0, v0, Lcom/cmplay/a/d;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 330
    goto :goto_0

    .line 326
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 162
    invoke-static {}, Lcom/cmplay/a/a;->a()Lcom/cmplay/a/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cmplay/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/cmplay/a/c;->g(I)Lcom/cmplay/sharebase/b;

    move-result-object v0

    .line 95
    if-eqz v0, :cond_0

    .line 96
    invoke-interface {v0}, Lcom/cmplay/sharebase/b;->b()V

    .line 98
    :cond_0
    return-void
.end method

.method public a(Landroid/app/Activity;I)V
    .locals 1

    .prologue
    .line 84
    invoke-direct {p0, p2}, Lcom/cmplay/a/c;->g(I)Lcom/cmplay/sharebase/b;

    move-result-object v0

    .line 85
    if-eqz v0, :cond_0

    .line 86
    invoke-interface {v0, p1}, Lcom/cmplay/sharebase/b;->a(Landroid/app/Activity;)V

    .line 88
    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 170
    invoke-static {}, Lcom/cmplay/a/a;->a()Lcom/cmplay/a/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cmplay/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/cmplay/a/d;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/cmplay/a/d;",
            ">;"
        }
    .end annotation

    .prologue
    .line 343
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 344
    invoke-static {}, Lcom/cmplay/a/c;->a()Lcom/cmplay/a/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/cmplay/a/c;->a(Ljava/lang/String;Ljava/util/List;)I

    move-result v2

    .line 345
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    .line 347
    if-gez v2, :cond_1

    .line 367
    :cond_0
    return-object v1

    .line 348
    :cond_1
    if-nez v2, :cond_3

    .line 349
    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x3

    if-ge v0, v2, :cond_0

    .line 350
    if-le v3, v0, :cond_2

    .line 351
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 349
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 354
    :cond_3
    add-int/lit8 v0, v3, -0x1

    if-ne v2, v0, :cond_5

    .line 355
    add-int/lit8 v0, v3, -0x3

    :goto_1
    if-ge v0, v3, :cond_0

    .line 356
    if-ltz v0, :cond_4

    if-le v3, v0, :cond_4

    .line 357
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 355
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 361
    :cond_5
    add-int/lit8 v0, v2, -0x1

    :goto_2
    add-int/lit8 v4, v2, 0x2

    if-ge v0, v4, :cond_0

    .line 362
    if-ltz v0, :cond_6

    if-le v3, v0, :cond_6

    .line 363
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 361
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 178
    invoke-static {}, Lcom/cmplay/a/a;->a()Lcom/cmplay/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cmplay/a/a;->f()Z

    move-result v0

    return v0
.end method

.method public b(I)Z
    .locals 1

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lcom/cmplay/a/c;->g(I)Lcom/cmplay/sharebase/b;

    move-result-object v0

    .line 106
    if-eqz v0, :cond_0

    .line 107
    invoke-interface {v0}, Lcom/cmplay/sharebase/b;->c()Z

    move-result v0

    .line 109
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Lcom/cmplay/a/e;
    .locals 5

    .prologue
    .line 186
    invoke-static {}, Lcom/cmplay/util/NativeUtil;->getPlayerInfo()Ljava/lang/String;

    move-result-object v0

    .line 187
    const/4 v1, 0x0

    .line 189
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 190
    const-string v0, "data"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 191
    const-string v0, "data"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 192
    new-instance v0, Lcom/cmplay/a/e;

    const-string v3, "id"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "name"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v3, v2}, Lcom/cmplay/a/e;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    :goto_0
    return-object v0

    .line 194
    :catch_0
    move-exception v0

    .line 195
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public c(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    invoke-direct {p0, p1}, Lcom/cmplay/a/c;->g(I)Lcom/cmplay/sharebase/b;

    move-result-object v0

    .line 118
    if-eqz v0, :cond_0

    .line 119
    invoke-interface {v0}, Lcom/cmplay/sharebase/b;->e()Ljava/lang/String;

    move-result-object v0

    .line 121
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/cmplay/a/d;",
            ">;"
        }
    .end annotation

    .prologue
    .line 213
    iget-object v0, p0, Lcom/cmplay/a/c;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 214
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/cmplay/a/c;->b:Ljava/util/List;

    .line 256
    :goto_0
    return-object v0

    .line 219
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 220
    const-string v1, "rank_list"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 221
    const-string v1, "rank_list"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 222
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_6

    .line 223
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 224
    new-instance v3, Lcom/cmplay/a/d;

    invoke-direct {v3}, Lcom/cmplay/a/d;-><init>()V

    .line 225
    const-string v4, "fbid"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 226
    const-string v4, "fbid"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/cmplay/a/d;->a:Ljava/lang/String;

    .line 228
    :cond_1
    const-string v4, "nickname"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 229
    const-string v4, "nickname"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/cmplay/a/d;->b:Ljava/lang/String;

    .line 231
    :cond_2
    const-string v4, "crown"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 232
    const-string v4, "crown"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lcom/cmplay/a/d;->c:I

    .line 234
    :cond_3
    const-string v4, "star"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 235
    const-string v4, "star"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lcom/cmplay/a/d;->d:I

    .line 237
    :cond_4
    const-string v4, "level"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 238
    const-string v4, "level"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v3, Lcom/cmplay/a/d;->e:I

    .line 240
    :cond_5
    iget-object v2, v3, Lcom/cmplay/a/d;->a:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/cmplay/a/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/cmplay/a/d;->f:Ljava/lang/String;

    .line 242
    iget-object v2, p0, Lcom/cmplay/a/c;->b:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 222
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 245
    :catch_0
    move-exception v0

    .line 246
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 256
    :cond_6
    iget-object v0, p0, Lcom/cmplay/a/c;->b:Ljava/util/List;

    goto/16 :goto_0
.end method

.method public d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/cmplay/a/d;",
            ">;"
        }
    .end annotation

    .prologue
    .line 371
    iget-object v0, p0, Lcom/cmplay/a/c;->b:Ljava/util/List;

    return-object v0
.end method

.method public d(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/cmplay/a/d;",
            ">;"
        }
    .end annotation

    .prologue
    .line 268
    iget-object v0, p0, Lcom/cmplay/a/c;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 269
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/cmplay/a/c;->c:Ljava/util/List;

    .line 311
    :goto_0
    return-object v0

    .line 274
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 275
    const-string v1, "rank_list"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 276
    const-string v1, "rank_list"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 277
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_6

    .line 278
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 279
    new-instance v3, Lcom/cmplay/a/d;

    invoke-direct {v3}, Lcom/cmplay/a/d;-><init>()V

    .line 280
    const-string v4, "fbid"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 281
    const-string v4, "fbid"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/cmplay/a/d;->a:Ljava/lang/String;

    .line 283
    :cond_1
    const-string v4, "nickname"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 284
    const-string v4, "nickname"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/cmplay/a/d;->b:Ljava/lang/String;

    .line 286
    :cond_2
    const-string v4, "star"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 287
    const-string v4, "star"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lcom/cmplay/a/d;->d:I

    .line 289
    :cond_3
    const-string v4, "score"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 290
    const-string v4, "score"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lcom/cmplay/a/d;->g:I

    .line 292
    :cond_4
    const-string v4, "level"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 293
    const-string v4, "level"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v3, Lcom/cmplay/a/d;->e:I

    .line 295
    :cond_5
    iget-object v2, v3, Lcom/cmplay/a/d;->a:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/cmplay/a/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/cmplay/a/d;->f:Ljava/lang/String;

    .line 297
    iget-object v2, p0, Lcom/cmplay/a/c;->c:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 277
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 300
    :catch_0
    move-exception v0

    .line 301
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 311
    :cond_6
    iget-object v0, p0, Lcom/cmplay/a/c;->c:Ljava/util/List;

    goto/16 :goto_0
.end method

.method public d(I)V
    .locals 2

    .prologue
    .line 128
    invoke-direct {p0, p1}, Lcom/cmplay/a/c;->g(I)Lcom/cmplay/sharebase/b;

    move-result-object v0

    .line 129
    if-eqz v0, :cond_1

    .line 130
    const/4 v1, 0x4

    if-ne v1, p1, :cond_0

    .line 131
    const/4 v1, 0x2

    sput v1, Lcom/cmplay/a/b;->a:I

    .line 133
    :cond_0
    invoke-interface {v0}, Lcom/cmplay/sharebase/b;->g()V

    .line 135
    :cond_1
    return-void
.end method

.method public e()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/cmplay/a/d;",
            ">;"
        }
    .end annotation

    .prologue
    .line 375
    iget-object v0, p0, Lcom/cmplay/a/c;->c:Ljava/util/List;

    return-object v0
.end method

.method public e(I)V
    .locals 1

    .prologue
    .line 141
    invoke-direct {p0, p1}, Lcom/cmplay/a/c;->g(I)Lcom/cmplay/sharebase/b;

    move-result-object v0

    .line 142
    if-eqz v0, :cond_0

    .line 143
    invoke-interface {v0}, Lcom/cmplay/sharebase/b;->h()V

    .line 145
    :cond_0
    return-void
.end method

.method public f(I)V
    .locals 1

    .prologue
    .line 151
    invoke-direct {p0, p1}, Lcom/cmplay/a/c;->g(I)Lcom/cmplay/sharebase/b;

    move-result-object v0

    .line 152
    if-eqz v0, :cond_0

    .line 153
    invoke-interface {v0}, Lcom/cmplay/sharebase/b;->i()V

    .line 155
    :cond_0
    return-void
.end method
