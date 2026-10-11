.class public Lcom/duapps/ad/b/a;
.super Lcom/duapps/ad/entity/a/b;
.source "DLHighCacheManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/duapps/ad/entity/a/b",
        "<",
        "Lcom/duapps/ad/entity/a/a;",
        ">;"
    }
.end annotation


# static fields
.field private static final b:Ljava/lang/String;


# instance fields
.field a:Lcom/duapps/ad/base/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/duapps/ad/base/s",
            "<",
            "Lcom/duapps/ad/entity/AdModel;",
            ">;"
        }
    .end annotation
.end field

.field private final o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/duapps/ad/entity/AdData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/duapps/ad/b/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/duapps/ad/b/a;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IJLjava/lang/String;)V
    .locals 1

    .prologue
    .line 36
    invoke-direct/range {p0 .. p5}, Lcom/duapps/ad/entity/a/b;-><init>(Landroid/content/Context;IJLjava/lang/String;)V

    .line 33
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/duapps/ad/b/a;->o:Ljava/util/List;

    .line 114
    new-instance v0, Lcom/duapps/ad/b/a$1;

    invoke-direct {v0, p0}, Lcom/duapps/ad/b/a$1;-><init>(Lcom/duapps/ad/b/a;)V

    iput-object v0, p0, Lcom/duapps/ad/b/a;->a:Lcom/duapps/ad/base/s;

    .line 37
    return-void
.end method

.method static synthetic a(Lcom/duapps/ad/b/a;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/duapps/ad/b/a;->h:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lcom/duapps/ad/b/a;Ljava/util/List;)Ljava/util/List;
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/duapps/ad/b/a;->a(Ljava/util/List;)Ljava/util/List;

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
            "Lcom/duapps/ad/entity/AdData;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/duapps/ad/entity/AdData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 156
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 157
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duapps/ad/entity/AdData;

    .line 158
    iget-object v3, p0, Lcom/duapps/ad/b/a;->h:Landroid/content/Context;

    iget-object v4, v0, Lcom/duapps/ad/entity/AdData;->d:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/duapps/ad/c/b/c;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 159
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 162
    :cond_1
    return-object v1
.end method

.method static synthetic b(Lcom/duapps/ad/b/a;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/duapps/ad/b/a;->h:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic c(Lcom/duapps/ad/b/a;)I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lcom/duapps/ad/b/a;->i:I

    return v0
.end method

.method static synthetic d(Lcom/duapps/ad/b/a;)Ljava/util/List;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/duapps/ad/b/a;->o:Ljava/util/List;

    return-object v0
.end method

.method static synthetic e(Lcom/duapps/ad/b/a;)Lcom/duapps/ad/b;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/duapps/ad/b/a;->n:Lcom/duapps/ad/b;

    return-object v0
.end method

.method static synthetic e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/duapps/ad/b/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/duapps/ad/b/a;)Lcom/duapps/ad/b;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/duapps/ad/b/a;->n:Lcom/duapps/ad/b;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/duapps/ad/entity/c;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 40
    .line 41
    iget-object v3, p0, Lcom/duapps/ad/b/a;->o:Ljava/util/List;

    monitor-enter v3

    move-object v0, v1

    .line 42
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/duapps/ad/b/a;->o:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 43
    iget-object v0, p0, Lcom/duapps/ad/b/a;->o:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duapps/ad/entity/AdData;

    .line 44
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/duapps/ad/entity/AdData;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_1
    move-object v2, v0

    .line 49
    sget-object v4, Lcom/duapps/ad/b/a;->b:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DLH poll title-> "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v2, :cond_2

    iget-object v0, v2, Lcom/duapps/ad/entity/AdData;->c:Ljava/lang/String;

    :goto_0
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/duapps/ad/base/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    iget-object v3, p0, Lcom/duapps/ad/b/a;->h:Landroid/content/Context;

    if-nez v2, :cond_3

    const-string v0, "FAIL"

    :goto_1
    iget v4, p0, Lcom/duapps/ad/b/a;->i:I

    invoke-static {v3, v0, v4}, Lcom/duapps/ad/stats/c;->f(Landroid/content/Context;Ljava/lang/String;I)V

    .line 52
    if-nez v2, :cond_4

    move-object v0, v1

    :goto_2
    return-object v0

    .line 49
    :cond_2
    :try_start_1
    const-string v0, "null"

    goto :goto_0

    .line 50
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 51
    :cond_3
    const-string v0, "OK"

    goto :goto_1

    .line 52
    :cond_4
    new-instance v0, Lcom/duapps/ad/entity/c;

    iget-object v1, p0, Lcom/duapps/ad/b/a;->h:Landroid/content/Context;

    iget-object v3, p0, Lcom/duapps/ad/b/a;->n:Lcom/duapps/ad/b;

    iget-object v4, p0, Lcom/duapps/ad/b/a;->k:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/duapps/ad/entity/c;-><init>(Landroid/content/Context;Lcom/duapps/ad/entity/AdData;Lcom/duapps/ad/b;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public a(Z)V
    .locals 4

    .prologue
    .line 65
    invoke-super {p0, p1}, Lcom/duapps/ad/entity/a/b;->a(Z)V

    .line 66
    iget-object v0, p0, Lcom/duapps/ad/b/a;->h:Landroid/content/Context;

    invoke-static {v0}, Lcom/duapps/ad/c/b/c;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 67
    sget-object v0, Lcom/duapps/ad/b/a;->b:Ljava/lang/String;

    const-string v1, "no net"

    invoke-static {v0, v1}, Lcom/duapps/ad/base/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    :goto_0
    return-void

    .line 71
    :cond_0
    invoke-virtual {p0}, Lcom/duapps/ad/b/a;->c()I

    move-result v0

    if-lez v0, :cond_1

    .line 72
    sget-object v0, Lcom/duapps/ad/b/a;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DLH validAdCount is"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/duapps/ad/b/a;->c()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duapps/ad/base/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 76
    :cond_1
    iget-boolean v0, p0, Lcom/duapps/ad/b/a;->d:Z

    if-eqz v0, :cond_2

    .line 77
    sget-object v0, Lcom/duapps/ad/b/a;->b:Ljava/lang/String;

    const-string v1, "DLH is refreshing!"

    invoke-static {v0, v1}, Lcom/duapps/ad/base/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 81
    :cond_2
    iget-object v0, p0, Lcom/duapps/ad/b/a;->h:Landroid/content/Context;

    invoke-static {v0}, Lcom/duapps/ad/base/n;->a(Landroid/content/Context;)Lcom/duapps/ad/base/n;

    move-result-object v0

    .line 82
    iget v1, p0, Lcom/duapps/ad/b/a;->i:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/duapps/ad/b/a;->a:Lcom/duapps/ad/base/s;

    invoke-virtual {v0, v1, v2, v3}, Lcom/duapps/ad/base/n;->b(IILcom/duapps/ad/base/s;)V

    goto :goto_0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x1

    return v0
.end method

.method public c()I
    .locals 6

    .prologue
    .line 92
    const/4 v1, 0x0

    .line 93
    iget-object v2, p0, Lcom/duapps/ad/b/a;->o:Ljava/util/List;

    monitor-enter v2

    .line 94
    :try_start_0
    iget-object v0, p0, Lcom/duapps/ad/b/a;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 95
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 96
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duapps/ad/entity/AdData;

    .line 97
    if-nez v0, :cond_0

    .line 98
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 109
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 101
    :cond_0
    :try_start_1
    iget-object v4, v0, Lcom/duapps/ad/entity/AdData;->d:Ljava/lang/String;

    .line 102
    iget-object v5, p0, Lcom/duapps/ad/b/a;->h:Landroid/content/Context;

    invoke-static {v5, v4}, Lcom/duapps/ad/c/b/c;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v0}, Lcom/duapps/ad/entity/AdData;->a()Z

    move-result v0

    if-nez v0, :cond_2

    .line 103
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    move v0, v1

    :goto_1
    move v1, v0

    .line 107
    goto :goto_0

    .line 105
    :cond_2
    add-int/lit8 v0, v1, 0x1

    goto :goto_1

    .line 109
    :cond_3
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 111
    return v1
.end method

.method public synthetic d()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/duapps/ad/b/a;->a()Lcom/duapps/ad/entity/c;

    move-result-object v0

    return-object v0
.end method
