.class public Lcom/mopub/nativesdk/core/j;
.super Ljava/lang/Object;
.source "BTManager.java"


# static fields
.field private static c:Lcom/mopub/nativesdk/core/j;


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mopub/nativesdk/Campaign;",
            ">;"
        }
    .end annotation
.end field

.field b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mopub/nativesdk/Campaign;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/content/Context;

.field private e:Lcom/mopub/nativesdk/core/y;

.field private f:I

.field private g:I

.field private h:I

.field private i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3008
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput v0, p0, Lcom/mopub/nativesdk/core/j;->f:I

    .line 41
    iput v0, p0, Lcom/mopub/nativesdk/core/j;->g:I

    .line 42
    iput v0, p0, Lcom/mopub/nativesdk/core/j;->h:I

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mopub/nativesdk/core/j;->i:Ljava/util/Map;

    .line 49
    iput-object p1, p0, Lcom/mopub/nativesdk/core/j;->d:Landroid/content/Context;

    .line 50
    invoke-static {p1}, Lcom/mopub/nativesdk/core/H;->a(Landroid/content/Context;)Lcom/mopub/nativesdk/core/H;

    move-result-object v0

    .line 51
    invoke-virtual {v0}, Lcom/mopub/nativesdk/core/H;->a()Lcom/mopub/nativesdk/core/y;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/nativesdk/core/j;->e:Lcom/mopub/nativesdk/core/y;

    .line 52
    return-void
.end method

.method static synthetic a(Lcom/mopub/nativesdk/core/j;)I
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lcom/mopub/nativesdk/core/j;->f:I

    return v0
.end method

.method static synthetic a(Lcom/mopub/nativesdk/core/j;I)I
    .locals 0

    .prologue
    .line 28
    iput p1, p0, Lcom/mopub/nativesdk/core/j;->f:I

    return p1
.end method

.method public static a(Landroid/content/Context;)Lcom/mopub/nativesdk/core/j;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/mopub/nativesdk/core/j;->c:Lcom/mopub/nativesdk/core/j;

    if-nez v0, :cond_0

    .line 56
    new-instance v0, Lcom/mopub/nativesdk/core/j;

    invoke-direct {v0, p0}, Lcom/mopub/nativesdk/core/j;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/mopub/nativesdk/core/j;->c:Lcom/mopub/nativesdk/core/j;

    .line 58
    :cond_0
    sget-object v0, Lcom/mopub/nativesdk/core/j;->c:Lcom/mopub/nativesdk/core/j;

    iput-object p0, v0, Lcom/mopub/nativesdk/core/j;->d:Landroid/content/Context;

    .line 59
    sget-object v0, Lcom/mopub/nativesdk/core/j;->c:Lcom/mopub/nativesdk/core/j;

    return-object v0
.end method

.method private declared-synchronized a()Z
    .locals 7

    .prologue
    const/4 v2, 0x5

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 167
    monitor-enter p0

    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "BTManager 2  load "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/mopub/nativesdk/core/j;->g:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 169
    iget-object v3, p0, Lcom/mopub/nativesdk/core/j;->d:Landroid/content/Context;

    .line 2045
    if-eqz v3, :cond_1

    .line 2046
    const-string v4, "unknown"

    invoke-static {v3}, Lcom/mopub/nativesdk/d/l;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_1

    move v3, v1

    .line 169
    :goto_0
    if-nez v3, :cond_2

    .line 286
    :cond_0
    :goto_1
    monitor-exit p0

    return v0

    :cond_1
    move v3, v0

    .line 2046
    goto :goto_0

    .line 174
    :cond_2
    :try_start_1
    iget v3, p0, Lcom/mopub/nativesdk/core/j;->g:I

    if-gt v3, v2, :cond_0

    .line 177
    iget v0, p0, Lcom/mopub/nativesdk/core/j;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mopub/nativesdk/core/j;->g:I

    .line 180
    iget-object v0, p0, Lcom/mopub/nativesdk/core/j;->e:Lcom/mopub/nativesdk/core/y;

    if-eqz v0, :cond_3

    .line 181
    invoke-static {}, Lcom/mopub/nativesdk/core/y;->a()Lcom/mopub/nativesdk/core/D;

    move-result-object v0

    iget v0, v0, Lcom/mopub/nativesdk/core/D;->d:I

    .line 187
    :goto_2
    new-instance v2, Lcom/mopub/nativesdk/c/d;

    iget-object v3, p0, Lcom/mopub/nativesdk/core/j;->d:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/mopub/nativesdk/c/d;-><init>(Landroid/content/Context;)V

    .line 188
    iget-object v3, p0, Lcom/mopub/nativesdk/core/j;->d:Landroid/content/Context;

    const-string v4, "ak.native.sdk"

    const-string v5, "APPID"

    const-string v6, "5745-186"

    invoke-static {v3, v4, v5, v6}, Lcom/mopub/nativesdk/d/q;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mopub/nativesdk/c/d;->a(Ljava/lang/String;)V

    .line 189
    iget-object v3, p0, Lcom/mopub/nativesdk/core/j;->d:Landroid/content/Context;

    const-string v4, "ak.native.sdk"

    const-string v5, "SUBID"

    const-string v6, "1"

    invoke-static {v3, v4, v5, v6}, Lcom/mopub/nativesdk/d/q;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mopub/nativesdk/c/d;->b(Ljava/lang/String;)V

    .line 190
    invoke-virtual {v2, v0}, Lcom/mopub/nativesdk/c/d;->a(I)V

    .line 191
    iget v0, p0, Lcom/mopub/nativesdk/core/j;->f:I

    invoke-virtual {v2, v0}, Lcom/mopub/nativesdk/c/d;->b(I)V

    .line 192
    const-string v0, "default"

    invoke-virtual {v2, v0}, Lcom/mopub/nativesdk/c/d;->c(Ljava/lang/String;)V

    .line 195
    const/4 v0, 0x0

    new-instance v3, Lcom/mopub/nativesdk/core/u;

    invoke-direct {v3, p0}, Lcom/mopub/nativesdk/core/u;-><init>(Lcom/mopub/nativesdk/core/j;)V

    invoke-virtual {v2, v0, v3}, Lcom/mopub/nativesdk/c/d;->a(ILcom/mopub/nativesdk/c/l;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    .line 286
    goto :goto_1

    .line 167
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    move v0, v2

    goto :goto_2
.end method

.method static synthetic b(Lcom/mopub/nativesdk/core/j;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/mopub/nativesdk/core/j;->d:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/mopub/nativesdk/core/y;)Z
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 69
    if-nez p1, :cond_0

    .line 70
    iget-object v0, p0, Lcom/mopub/nativesdk/core/j;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/mopub/nativesdk/core/H;->a(Landroid/content/Context;)Lcom/mopub/nativesdk/core/H;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/nativesdk/core/H;->a()Lcom/mopub/nativesdk/core/y;

    move-result-object p1

    .line 72
    :cond_0
    iput-object p1, p0, Lcom/mopub/nativesdk/core/j;->e:Lcom/mopub/nativesdk/core/y;

    .line 75
    iget-object v0, p0, Lcom/mopub/nativesdk/core/j;->d:Landroid/content/Context;

    const-string v1, "ak.native.sdk"

    const-string v3, "BT_LAST_TIME"

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v0, v1, v3, v4}, Lcom/mopub/nativesdk/d/q;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 76
    const-wide/32 v0, 0xf731400

    .line 77
    iget-object v3, p0, Lcom/mopub/nativesdk/core/j;->e:Lcom/mopub/nativesdk/core/y;

    if-eqz v3, :cond_1

    .line 78
    invoke-static {}, Lcom/mopub/nativesdk/core/y;->a()Lcom/mopub/nativesdk/core/D;

    move-result-object v0

    iget-wide v0, v0, Lcom/mopub/nativesdk/core/D;->b:J

    .line 81
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "BTManager 3  curr-lastBT: "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v4

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "     time: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 84
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v4, v6, v4

    cmp-long v0, v4, v0

    if-lez v0, :cond_4

    .line 87
    iget-object v0, p0, Lcom/mopub/nativesdk/core/j;->d:Landroid/content/Context;

    const-string v1, "ak.native.sdk"

    const-string v3, "BT_COUNT"

    invoke-static {v0, v1, v3, v2}, Lcom/mopub/nativesdk/d/q;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 90
    iget-object v0, p0, Lcom/mopub/nativesdk/core/j;->d:Landroid/content/Context;

    const-string v1, "ak.native.sdk"

    const-string v3, "BT_LAST_TIME"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v0, v1, v3, v4, v5}, Lcom/mopub/nativesdk/d/q;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    .line 92
    iget-object v0, p0, Lcom/mopub/nativesdk/core/j;->a:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 93
    iget-object v0, p0, Lcom/mopub/nativesdk/core/j;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 95
    :cond_2
    iput v2, p0, Lcom/mopub/nativesdk/core/j;->h:I

    .line 96
    iput v2, p0, Lcom/mopub/nativesdk/core/j;->g:I

    .line 152
    :cond_3
    :goto_0
    return v2

    .line 106
    :cond_4
    iget-object v0, p0, Lcom/mopub/nativesdk/core/j;->d:Landroid/content/Context;

    const-string v1, "ak.native.sdk"

    const-string v3, "BT_COUNT"

    .line 1047
    if-nez v0, :cond_8

    move v0, v2

    .line 107
    :goto_1
    const/16 v1, 0xa

    .line 110
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "----------->    mStrategy: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/mopub/nativesdk/core/j;->e:Lcom/mopub/nativesdk/core/y;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 113
    iget-object v3, p0, Lcom/mopub/nativesdk/core/j;->e:Lcom/mopub/nativesdk/core/y;

    if-eqz v3, :cond_5

    .line 114
    invoke-static {}, Lcom/mopub/nativesdk/core/y;->a()Lcom/mopub/nativesdk/core/D;

    move-result-object v1

    iget v1, v1, Lcom/mopub/nativesdk/core/D;->e:I

    .line 115
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "----------->    mStrategy.getBTStrategy().btNum: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/mopub/nativesdk/core/y;->a()Lcom/mopub/nativesdk/core/D;

    move-result-object v4

    iget v4, v4, Lcom/mopub/nativesdk/core/D;->e:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 118
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "----------->    cache: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/mopub/nativesdk/core/j;->a:Ljava/util/List;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "   btCount: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/mopub/nativesdk/core/j;->h:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 121
    iget-object v3, p0, Lcom/mopub/nativesdk/core/j;->a:Ljava/util/List;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/mopub/nativesdk/core/j;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_9

    .line 122
    :cond_6
    iget-object v3, p0, Lcom/mopub/nativesdk/core/j;->a:Ljava/util/List;

    if-nez v3, :cond_7

    .line 123
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/mopub/nativesdk/core/j;->a:Ljava/util/List;

    .line 126
    :cond_7
    iget v3, p0, Lcom/mopub/nativesdk/core/j;->h:I

    if-nez v3, :cond_9

    .line 127
    invoke-direct {p0}, Lcom/mopub/nativesdk/core/j;->a()Z

    move-result v2

    goto :goto_0

    .line 1048
    :cond_8
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1049
    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_1

    .line 133
    :cond_9
    iget-object v3, p0, Lcom/mopub/nativesdk/core/j;->i:Ljava/util/Map;

    if-nez v3, :cond_a

    .line 134
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/mopub/nativesdk/core/j;->i:Ljava/util/Map;

    .line 137
    :cond_a
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "BTManager 5  count: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "   max: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 140
    if-ge v0, v1, :cond_3

    .line 141
    iget-object v1, p0, Lcom/mopub/nativesdk/core/j;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 142
    iget-object v1, p0, Lcom/mopub/nativesdk/core/j;->d:Landroid/content/Context;

    const-string v3, "ak.native.sdk"

    const-string v4, "BT_COUNT"

    add-int/lit8 v5, v0, 0x1

    invoke-static {v1, v3, v4, v5}, Lcom/mopub/nativesdk/d/q;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 143
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "BTManager 6  count: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 144
    iget-object v0, p0, Lcom/mopub/nativesdk/core/j;->a:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/nativesdk/Campaign;

    .line 1295
    iget-object v1, p0, Lcom/mopub/nativesdk/core/j;->i:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/mopub/nativesdk/Campaign;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1296
    iget-object v1, p0, Lcom/mopub/nativesdk/core/j;->i:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/mopub/nativesdk/Campaign;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1297
    if-lez v1, :cond_b

    .line 145
    :goto_2
    iget-object v0, p0, Lcom/mopub/nativesdk/core/j;->a:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 146
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1300
    :cond_b
    iget-object v3, p0, Lcom/mopub/nativesdk/core/j;->i:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/mopub/nativesdk/Campaign;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1306
    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/mopub/nativesdk/Campaign;->getClickUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "&bt=1"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1308
    iget v3, p0, Lcom/mopub/nativesdk/core/j;->h:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/mopub/nativesdk/core/j;->h:I

    .line 1311
    new-instance v3, Lcom/mopub/nativesdk/b/b;

    invoke-direct {v3}, Lcom/mopub/nativesdk/b/b;-><init>()V

    .line 1312
    iget-object v4, p0, Lcom/mopub/nativesdk/core/j;->d:Landroid/content/Context;

    new-instance v5, Lcom/mopub/nativesdk/core/v;

    invoke-direct {v5, p0, v0}, Lcom/mopub/nativesdk/core/v;-><init>(Lcom/mopub/nativesdk/core/j;Lcom/mopub/nativesdk/Campaign;)V

    invoke-virtual {v3, v4, v1, v5}, Lcom/mopub/nativesdk/b/b;->a(Landroid/content/Context;Ljava/lang/String;Lcom/mopub/nativesdk/b/f;)V

    goto :goto_2

    .line 1302
    :cond_c
    iget-object v1, p0, Lcom/mopub/nativesdk/core/j;->i:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/mopub/nativesdk/Campaign;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3
.end method
