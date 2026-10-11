.class public Lcom/duapps/ad/inmobi/a;
.super Lcom/duapps/ad/entity/a/b;
.source "InMobiCacheManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/duapps/ad/entity/a/b",
        "<",
        "Lcom/duapps/ad/entity/a/a;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lcom/duapps/ad/base/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/duapps/ad/base/s",
            "<",
            "Lcom/duapps/ad/inmobi/IMDataModel;",
            ">;"
        }
    .end annotation
.end field

.field private b:I

.field private final o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/duapps/ad/inmobi/IMData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;IJILjava/lang/String;)V
    .locals 7

    .prologue
    .line 37
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    move-object v6, p6

    invoke-direct/range {v1 .. v6}, Lcom/duapps/ad/entity/a/b;-><init>(Landroid/content/Context;IJLjava/lang/String;)V

    .line 30
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/duapps/ad/inmobi/a;->o:Ljava/util/List;

    .line 119
    new-instance v0, Lcom/duapps/ad/inmobi/a$1;

    invoke-direct {v0, p0}, Lcom/duapps/ad/inmobi/a$1;-><init>(Lcom/duapps/ad/inmobi/a;)V

    iput-object v0, p0, Lcom/duapps/ad/inmobi/a;->a:Lcom/duapps/ad/base/s;

    .line 38
    iput p5, p0, Lcom/duapps/ad/inmobi/a;->b:I

    .line 39
    return-void
.end method

.method static synthetic a(Lcom/duapps/ad/inmobi/a;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/duapps/ad/inmobi/a;->h:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lcom/duapps/ad/inmobi/a;Ljava/util/List;)Ljava/util/List;
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/duapps/ad/inmobi/a;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/duapps/ad/inmobi/IMData;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/duapps/ad/inmobi/IMData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 160
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 161
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duapps/ad/inmobi/IMData;

    .line 162
    iget-object v3, p0, Lcom/duapps/ad/inmobi/a;->h:Landroid/content/Context;

    iget-object v4, v0, Lcom/duapps/ad/inmobi/IMData;->l:Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Lcom/duapps/ad/inmobi/a;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 163
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 166
    :cond_1
    return-object v1
.end method

.method private a(Ljava/lang/String;I)V
    .locals 4

    .prologue
    .line 114
    iget-object v0, p0, Lcom/duapps/ad/inmobi/a;->h:Landroid/content/Context;

    invoke-static {v0}, Lcom/duapps/ad/base/n;->a(Landroid/content/Context;)Lcom/duapps/ad/base/n;

    move-result-object v0

    .line 115
    iget v1, p0, Lcom/duapps/ad/inmobi/a;->i:I

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/duapps/ad/inmobi/a;->a:Lcom/duapps/ad/base/s;

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/duapps/ad/base/n;->a(ILjava/lang/String;Ljava/lang/String;Lcom/duapps/ad/base/s;)V

    .line 117
    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 170
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 173
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p1, p2}, Lcom/duapps/ad/c/b/c;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/duapps/ad/inmobi/a;)I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lcom/duapps/ad/inmobi/a;->i:I

    return v0
.end method

.method static synthetic c(Lcom/duapps/ad/inmobi/a;)Ljava/util/List;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/duapps/ad/inmobi/a;->o:Ljava/util/List;

    return-object v0
.end method

.method static synthetic d(Lcom/duapps/ad/inmobi/a;)Lcom/duapps/ad/b;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/duapps/ad/inmobi/a;->n:Lcom/duapps/ad/b;

    return-object v0
.end method

.method static synthetic e(Lcom/duapps/ad/inmobi/a;)Lcom/duapps/ad/b;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/duapps/ad/inmobi/a;->n:Lcom/duapps/ad/b;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/duapps/ad/entity/a/a;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 68
    .line 70
    iget-object v3, p0, Lcom/duapps/ad/inmobi/a;->o:Ljava/util/List;

    monitor-enter v3

    move-object v0, v1

    .line 71
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/duapps/ad/inmobi/a;->o:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 72
    iget-object v0, p0, Lcom/duapps/ad/inmobi/a;->o:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duapps/ad/inmobi/IMData;

    .line 73
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/duapps/ad/inmobi/IMData;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_1
    move-object v2, v0

    .line 79
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    iget-object v3, p0, Lcom/duapps/ad/inmobi/a;->h:Landroid/content/Context;

    if-nez v2, :cond_2

    const-string v0, "FAIL"

    :goto_0
    iget v4, p0, Lcom/duapps/ad/inmobi/a;->i:I

    invoke-static {v3, v0, v4}, Lcom/duapps/ad/stats/c;->d(Landroid/content/Context;Ljava/lang/String;I)V

    .line 82
    if-nez v2, :cond_3

    move-object v0, v1

    :goto_1
    return-object v0

    .line 79
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 81
    :cond_2
    const-string v0, "OK"

    goto :goto_0

    .line 82
    :cond_3
    new-instance v0, Lcom/duapps/ad/inmobi/e;

    iget-object v1, p0, Lcom/duapps/ad/inmobi/a;->h:Landroid/content/Context;

    iget-object v3, p0, Lcom/duapps/ad/inmobi/a;->n:Lcom/duapps/ad/b;

    iget-object v4, p0, Lcom/duapps/ad/inmobi/a;->k:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/duapps/ad/inmobi/e;-><init>(Landroid/content/Context;Lcom/duapps/ad/inmobi/IMData;Lcom/duapps/ad/b;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public a(Z)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 43
    invoke-super {p0, p1}, Lcom/duapps/ad/entity/a/b;->a(Z)V

    .line 44
    iget-object v0, p0, Lcom/duapps/ad/inmobi/a;->h:Landroid/content/Context;

    invoke-static {v0}, Lcom/duapps/ad/c/b/c;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 59
    :cond_0
    :goto_0
    return-void

    .line 47
    :cond_1
    iget v0, p0, Lcom/duapps/ad/inmobi/a;->b:I

    if-nez v0, :cond_2

    .line 48
    const-string v0, "InMobiCacheManager"

    const-string v1, "cacheSize is zero"

    invoke-static {v0, v1}, Lcom/duapps/ad/base/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 51
    :cond_2
    iget-object v0, p0, Lcom/duapps/ad/inmobi/a;->h:Landroid/content/Context;

    invoke-static {v0}, Lcom/duapps/ad/base/p;->a(Landroid/content/Context;)Lcom/duapps/ad/base/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duapps/ad/base/p;->b()Ljava/lang/String;

    move-result-object v0

    .line 52
    const-string v1, "InMobiCacheManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ImCache inId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/duapps/ad/base/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    iget v1, p0, Lcom/duapps/ad/inmobi/a;->b:I

    invoke-virtual {p0}, Lcom/duapps/ad/inmobi/a;->c()I

    move-result v2

    sub-int/2addr v1, v2

    .line 54
    if-lez v1, :cond_0

    iget-boolean v2, p0, Lcom/duapps/ad/inmobi/a;->d:Z

    if-nez v2, :cond_0

    .line 55
    iput-boolean v4, p0, Lcom/duapps/ad/inmobi/a;->d:Z

    .line 56
    iput-boolean v4, p0, Lcom/duapps/ad/inmobi/a;->e:Z

    .line 57
    invoke-direct {p0, v0, v1}, Lcom/duapps/ad/inmobi/a;->a(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/duapps/ad/inmobi/a;->b:I

    return v0
.end method

.method public c()I
    .locals 5

    .prologue
    .line 87
    const/4 v1, 0x0

    .line 88
    iget-object v2, p0, Lcom/duapps/ad/inmobi/a;->o:Ljava/util/List;

    monitor-enter v2

    .line 89
    :try_start_0
    iget-object v0, p0, Lcom/duapps/ad/inmobi/a;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 90
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 91
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duapps/ad/inmobi/IMData;

    .line 92
    if-nez v0, :cond_0

    .line 93
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 102
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 96
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lcom/duapps/ad/inmobi/IMData;->a()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/duapps/ad/inmobi/a;->h:Landroid/content/Context;

    iget-object v0, v0, Lcom/duapps/ad/inmobi/IMData;->l:Ljava/lang/String;

    invoke-direct {p0, v4, v0}, Lcom/duapps/ad/inmobi/a;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 97
    add-int/lit8 v0, v1, 0x1

    :goto_1
    move v1, v0

    .line 101
    goto :goto_0

    .line 99
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    move v0, v1

    goto :goto_1

    .line 102
    :cond_2
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 104
    return v1
.end method

.method public synthetic d()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/duapps/ad/inmobi/a;->a()Lcom/duapps/ad/entity/a/a;

    move-result-object v0

    return-object v0
.end method
