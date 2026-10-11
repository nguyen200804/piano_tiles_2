.class public Lcom/example/luckywheel/b/g;
.super Ljava/lang/Object;


# static fields
.field private static d:Lcom/example/luckywheel/b/g;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/example/luckywheel/b/f;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/example/luckywheel/c/a;


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/example/luckywheel/b/g;->e:Ljava/util/List;

    iget-object v0, p0, Lcom/example/luckywheel/b/g;->e:Ljava/util/List;

    new-instance v1, Lcom/example/luckywheel/b/h;

    invoke-direct {v1}, Lcom/example/luckywheel/b/h;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/example/luckywheel/b/g;->e:Ljava/util/List;

    invoke-static {}, Lcom/example/luckywheel/b/a;->a()Lcom/example/luckywheel/b/a;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static a()Lcom/example/luckywheel/b/g;
    .locals 2

    sget-object v0, Lcom/example/luckywheel/b/g;->d:Lcom/example/luckywheel/b/g;

    if-nez v0, :cond_1

    const-class v1, Lcom/example/luckywheel/b/g;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/example/luckywheel/b/g;->d:Lcom/example/luckywheel/b/g;

    if-nez v0, :cond_0

    new-instance v0, Lcom/example/luckywheel/b/g;

    invoke-direct {v0}, Lcom/example/luckywheel/b/g;-><init>()V

    sput-object v0, Lcom/example/luckywheel/b/g;->d:Lcom/example/luckywheel/b/g;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/example/luckywheel/b/g;->d:Lcom/example/luckywheel/b/g;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "peerId must be non-null!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p2, p0, Lcom/example/luckywheel/b/g;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/example/luckywheel/b/g;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/example/luckywheel/b/f;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/example/luckywheel/b/g;->b:Ljava/lang/String;

    invoke-interface {v0, p1, v2}, Lcom/example/luckywheel/b/f;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/example/luckywheel/c/a;)V
    .locals 2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "appKey must be non-null!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p2, p0, Lcom/example/luckywheel/b/g;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/example/luckywheel/b/g;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/example/luckywheel/b/g;->f:Lcom/example/luckywheel/c/a;

    iget-object v0, p0, Lcom/example/luckywheel/b/g;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/example/luckywheel/b/f;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcom/example/luckywheel/b/f;->a(Landroid/content/Context;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/example/luckywheel/ad/a/b;->a()Lcom/example/luckywheel/ad/a/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/example/luckywheel/ad/a/b;->a(Landroid/content/Context;)V

    return-void
.end method

.method b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/example/luckywheel/b/g;->a:Ljava/lang/String;

    return-object v0
.end method

.method c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/example/luckywheel/b/g;->b:Ljava/lang/String;

    return-object v0
.end method

.method d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/example/luckywheel/b/g;->c:Ljava/lang/String;

    return-object v0
.end method

.method public e()Lcom/example/luckywheel/c/a;
    .locals 1

    iget-object v0, p0, Lcom/example/luckywheel/b/g;->f:Lcom/example/luckywheel/c/a;

    return-object v0
.end method
