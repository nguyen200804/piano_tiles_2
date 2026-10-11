.class public Lb/a/cq;
.super Ljava/lang/Object;
.source "EventTracker.java"


# instance fields
.field private final a:I

.field private final b:I

.field private c:Lb/a/co;

.field private d:Landroid/content/Context;

.field private e:Lb/a/cn;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/16 v0, 0x80

    iput v0, p0, Lb/a/cq;->a:I

    .line 23
    const/16 v0, 0x100

    iput v0, p0, Lb/a/cq;->b:I

    .line 31
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Context is null, can\'t track event"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 33
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lb/a/cq;->d:Landroid/content/Context;

    .line 34
    new-instance v0, Lb/a/co;

    iget-object v1, p0, Lb/a/cq;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Lb/a/co;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lb/a/cq;->c:Lb/a/co;

    .line 35
    iget-object v1, p0, Lb/a/cq;->c:Lb/a/co;

    sget-boolean v0, Lcom/b/a/a;->j:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lb/a/co;->a(Z)V

    .line 36
    iget-object v0, p0, Lb/a/cq;->d:Landroid/content/Context;

    invoke-static {v0}, Lb/a/cn;->a(Landroid/content/Context;)Lb/a/cn;

    move-result-object v0

    iput-object v0, p0, Lb/a/cq;->e:Lb/a/cn;

    .line 37
    return-void

    .line 35
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 129
    if-eqz p1, :cond_0

    .line 130
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    .line 132
    if-lez v0, :cond_0

    const/16 v1, 0x80

    if-gt v0, v1, :cond_0

    .line 133
    const/4 v0, 0x1

    .line 139
    :goto_0
    return v0

    .line 137
    :cond_0
    const-string v0, "MobclickAgent"

    const-string v1, "Event id is empty or too long in tracking Event"

    invoke-static {v0, v1}, Lb/a/ap;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Ljava/util/Map;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 153
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 154
    :cond_0
    const-string v0, "MobclickAgent"

    const-string v1, "map is null or empty in onEvent"

    invoke-static {v0, v1}, Lb/a/ap;->b(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    .line 172
    :goto_0
    return v0

    .line 158
    :cond_1
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 159
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lb/a/cq;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    move v0, v2

    .line 160
    goto :goto_0

    .line 163
    :cond_3
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_4

    move v0, v2

    .line 164
    goto :goto_0

    .line 167
    :cond_4
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lb/a/cq;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v2

    .line 168
    goto :goto_0

    .line 172
    :cond_5
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 143
    if-nez p1, :cond_1

    .line 149
    :cond_0
    :goto_0
    return v0

    .line 145
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    const/16 v2, 0x100

    if-le v1, v2, :cond_0

    .line 148
    const-string v0, "MobclickAgent"

    const-string v1, "Event label or value is empty or too long in tracking Event"

    invoke-static {v0, v1}, Lb/a/ap;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;JI)V
    .locals 7

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lb/a/cq;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p2}, Lb/a/cq;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 68
    :cond_0
    :goto_0
    return-void

    .line 64
    :cond_1
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 65
    if-nez p2, :cond_2

    const-string p2, ""

    :cond_2
    invoke-interface {v3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    iget-object v0, p0, Lb/a/cq;->e:Lb/a/cn;

    new-instance v1, Lb/a/f;

    move-object v2, p1

    move-wide v4, p3

    move v6, p5

    invoke-direct/range {v1 .. v6}, Lb/a/f;-><init>(Ljava/lang/String;Ljava/util/Map;JI)V

    invoke-virtual {v0, v1}, Lb/a/cn;->a(Lb/a/cs;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 72
    :try_start_0
    invoke-direct {p0, p1}, Lb/a/cq;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 80
    :goto_0
    return-void

    .line 76
    :cond_0
    iget-object v0, p0, Lb/a/cq;->e:Lb/a/cn;

    new-instance v1, Lb/a/h;

    invoke-direct {v1, p1, p2}, Lb/a/h;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Lb/a/cn;->a(Lb/a/cs;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 77
    :catch_0
    move-exception v0

    .line 78
    const-string v1, "MobclickAgent"

    const-string v2, "Exception occurred in Mobclick.onEvent(). "

    invoke-static {v1, v2, v0}, Lb/a/ap;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/util/Map;J)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 43
    :try_start_0
    invoke-direct {p0, p1}, Lb/a/cq;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 56
    :cond_0
    :goto_0
    return-void

    .line 47
    :cond_1
    invoke-direct {p0, p2}, Lb/a/cq;->a(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lb/a/cq;->e:Lb/a/cn;

    new-instance v1, Lb/a/f;

    const/4 v6, -0x1

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-direct/range {v1 .. v6}, Lb/a/f;-><init>(Ljava/lang/String;Ljava/util/Map;JI)V

    invoke-virtual {v0, v1}, Lb/a/cn;->a(Lb/a/cs;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 52
    :catch_0
    move-exception v0

    .line 53
    const-string v1, "MobclickAgent"

    const-string v2, "Exception occurred in Mobclick.onEvent(). "

    invoke-static {v1, v2, v0}, Lb/a/ap;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method
