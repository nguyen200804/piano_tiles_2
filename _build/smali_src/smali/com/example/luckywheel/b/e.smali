.class public Lcom/example/luckywheel/b/e;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/example/luckywheel/b/e$a;
    }
.end annotation


# static fields
.field private static a:Lcom/example/luckywheel/b/e;


# instance fields
.field private b:I

.field private c:I

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/example/luckywheel/b/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1388

    iput v0, p0, Lcom/example/luckywheel/b/e;->b:I

    return-void
.end method

.method static synthetic a(Lcom/example/luckywheel/b/e;)I
    .locals 1

    iget v0, p0, Lcom/example/luckywheel/b/e;->c:I

    return v0
.end method

.method static synthetic a(Lcom/example/luckywheel/b/e;I)I
    .locals 0

    iput p1, p0, Lcom/example/luckywheel/b/e;->c:I

    return p1
.end method

.method public static a()Lcom/example/luckywheel/b/e;
    .locals 2

    sget-object v0, Lcom/example/luckywheel/b/e;->a:Lcom/example/luckywheel/b/e;

    if-nez v0, :cond_1

    const-class v1, Lcom/example/luckywheel/b/e;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/example/luckywheel/b/e;->a:Lcom/example/luckywheel/b/e;

    if-nez v0, :cond_0

    new-instance v0, Lcom/example/luckywheel/b/e;

    invoke-direct {v0}, Lcom/example/luckywheel/b/e;-><init>()V

    sput-object v0, Lcom/example/luckywheel/b/e;->a:Lcom/example/luckywheel/b/e;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/example/luckywheel/b/e;->a:Lcom/example/luckywheel/b/e;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcom/example/luckywheel/b/e;ZII)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/example/luckywheel/b/e;->a(ZII)V

    return-void
.end method

.method private a(ZII)V
    .locals 2

    iget-object v0, p0, Lcom/example/luckywheel/b/e;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/example/luckywheel/b/c;

    invoke-interface {v0, p1, p2, p3}, Lcom/example/luckywheel/b/c;->a(ZII)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/example/luckywheel/b/e;I)I
    .locals 0

    iput p1, p0, Lcom/example/luckywheel/b/e;->b:I

    return p1
.end method


# virtual methods
.method a(I)V
    .locals 2

    iget v0, p0, Lcom/example/luckywheel/b/e;->c:I

    if-eq v0, p1, :cond_0

    const/4 v0, 0x0

    iget v1, p0, Lcom/example/luckywheel/b/e;->c:I

    invoke-direct {p0, v0, v1, p1}, Lcom/example/luckywheel/b/e;->a(ZII)V

    iput p1, p0, Lcom/example/luckywheel/b/e;->c:I

    :cond_0
    return-void
.end method

.method public a(Landroid/content/Context;ILcom/example/luckywheel/b/e$a;)V
    .locals 2

    if-nez p2, :cond_0

    const/4 p2, 0x3

    :cond_0
    new-instance v0, Lcom/example/luckywheel/b/d;

    new-instance v1, Lcom/example/luckywheel/b/o;

    invoke-direct {v1, p0, p3}, Lcom/example/luckywheel/b/o;-><init>(Lcom/example/luckywheel/b/e;Lcom/example/luckywheel/b/e$a;)V

    invoke-direct {v0, p1, p2, v1}, Lcom/example/luckywheel/b/d;-><init>(Landroid/content/Context;ILcom/example/luckywheel/a/e$a;)V

    invoke-virtual {v0}, Lcom/example/luckywheel/b/d;->f()V

    return-void
.end method

.method public a(Lcom/example/luckywheel/b/c;)V
    .locals 1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/example/luckywheel/b/e;->d:Ljava/util/List;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/example/luckywheel/b/e;->d:Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lcom/example/luckywheel/b/e;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    iget v0, p0, Lcom/example/luckywheel/b/e;->b:I

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/example/luckywheel/b/e;->c:I

    return v0
.end method
