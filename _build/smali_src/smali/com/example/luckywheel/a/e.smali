.class public abstract Lcom/example/luckywheel/a/e;
.super Lcom/example/luckywheel/a/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/example/luckywheel/a/e$a;
    }
.end annotation


# instance fields
.field private c:Lcom/example/luckywheel/a/e$a;

.field private d:Landroid/os/Handler;

.field private volatile e:Z

.field private f:I

.field private g:Ljava/lang/Runnable;

.field private h:Lcom/example/luckywheel/a/j;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/example/luckywheel/a/e$a;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/example/luckywheel/a/a;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/example/luckywheel/a/m;

    invoke-direct {v0, p0}, Lcom/example/luckywheel/a/m;-><init>(Lcom/example/luckywheel/a/e;)V

    iput-object v0, p0, Lcom/example/luckywheel/a/e;->g:Ljava/lang/Runnable;

    new-instance v0, Lcom/example/luckywheel/a/n;

    invoke-direct {v0, p0}, Lcom/example/luckywheel/a/n;-><init>(Lcom/example/luckywheel/a/e;)V

    iput-object v0, p0, Lcom/example/luckywheel/a/e;->h:Lcom/example/luckywheel/a/j;

    iput-object p2, p0, Lcom/example/luckywheel/a/e;->c:Lcom/example/luckywheel/a/e$a;

    return-void
.end method

.method static synthetic a(Lcom/example/luckywheel/a/e;I)I
    .locals 0

    iput p1, p0, Lcom/example/luckywheel/a/e;->f:I

    return p1
.end method

.method static synthetic a(Lcom/example/luckywheel/a/e;)Lcom/example/luckywheel/a/j;
    .locals 1

    iget-object v0, p0, Lcom/example/luckywheel/a/e;->h:Lcom/example/luckywheel/a/j;

    return-object v0
.end method

.method static synthetic a(Lcom/example/luckywheel/a/e;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/example/luckywheel/a/e;->e:Z

    return p1
.end method

.method static synthetic b(Lcom/example/luckywheel/a/e;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/example/luckywheel/a/e;->d:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic c(Lcom/example/luckywheel/a/e;)Lcom/example/luckywheel/a/e$a;
    .locals 1

    iget-object v0, p0, Lcom/example/luckywheel/a/e;->c:Lcom/example/luckywheel/a/e$a;

    return-object v0
.end method

.method static synthetic d(Lcom/example/luckywheel/a/e;)I
    .locals 1

    iget v0, p0, Lcom/example/luckywheel/a/e;->f:I

    return v0
.end method

.method static synthetic e(Lcom/example/luckywheel/a/e;)I
    .locals 2

    iget v0, p0, Lcom/example/luckywheel/a/e;->f:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/example/luckywheel/a/e;->f:I

    return v0
.end method


# virtual methods
.method public declared-synchronized f()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/example/luckywheel/a/e;->e:Z

    if-eqz v0, :cond_0

    const-string v0, "EasyBaseRequest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is requesting, just return!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string v0, "EasyBaseRequest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " begin request: mInRequest = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/example/luckywheel/a/e;->e:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/example/luckywheel/a/e;->e:Z

    iget-object v0, p0, Lcom/example/luckywheel/a/e;->g:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/example/luckywheel/d/a;->a(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
