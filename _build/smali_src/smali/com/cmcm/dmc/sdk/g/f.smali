.class public Lcom/cmcm/dmc/sdk/g/f;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cmcm/dmc/sdk/g/f$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Lcom/cmcm/dmc/sdk/g/f;


# instance fields
.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/cmcm/dmc/sdk/g/h;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/content/Context;

.field private e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private f:Z

.field private g:Ljava/io/File;

.field private h:Lcom/cmcm/dmc/sdk/g/i;

.field private i:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/cmcm/dmc/sdk/g/f;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cmcm/dmc/sdk/g/f;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cmcm/dmc/sdk/g/f;->f:Z

    return-void
.end method

.method public static a()Lcom/cmcm/dmc/sdk/g/f;
    .locals 2

    sget-object v0, Lcom/cmcm/dmc/sdk/g/f;->b:Lcom/cmcm/dmc/sdk/g/f;

    if-nez v0, :cond_1

    const-class v1, Lcom/cmcm/dmc/sdk/g/f;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/cmcm/dmc/sdk/g/f;->b:Lcom/cmcm/dmc/sdk/g/f;

    if-nez v0, :cond_0

    new-instance v0, Lcom/cmcm/dmc/sdk/g/f;

    invoke-direct {v0}, Lcom/cmcm/dmc/sdk/g/f;-><init>()V

    sput-object v0, Lcom/cmcm/dmc/sdk/g/f;->b:Lcom/cmcm/dmc/sdk/g/f;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/cmcm/dmc/sdk/g/f;->b:Lcom/cmcm/dmc/sdk/g/f;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private a(I)Ljava/io/File;
    .locals 4

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/cmcm/dmc/sdk/g/f;->g:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/cmcm/dmc/sdk/g/f;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".tmp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic a(Lcom/cmcm/dmc/sdk/g/f;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    iget-object v0, p0, Lcom/cmcm/dmc/sdk/g/f;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic a(Lcom/cmcm/dmc/sdk/g/f;Lcom/cmcm/dmc/sdk/g/h;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cmcm/dmc/sdk/g/f;->c(Lcom/cmcm/dmc/sdk/g/h;)V

    return-void
.end method

.method static synthetic b(Lcom/cmcm/dmc/sdk/g/f;)Lcom/cmcm/dmc/sdk/g/i;
    .locals 1

    iget-object v0, p0, Lcom/cmcm/dmc/sdk/g/f;->h:Lcom/cmcm/dmc/sdk/g/i;

    return-object v0
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/cmcm/dmc/sdk/g/f;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/cmcm/dmc/sdk/g/f;Lcom/cmcm/dmc/sdk/g/h;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cmcm/dmc/sdk/g/f;->b(Lcom/cmcm/dmc/sdk/g/h;)V

    return-void
.end method

.method private b(Lcom/cmcm/dmc/sdk/g/h;)V
    .locals 3

    sget-object v0, Lcom/cmcm/dmc/sdk/g/f;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "begin report \n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/cmcm/dmc/sdk/g/h;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmcm/dmc/sdk/a/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x32

    invoke-direct {p0, v0}, Lcom/cmcm/dmc/sdk/g/f;->a(I)Ljava/io/File;

    move-result-object v0

    iget-object v1, p0, Lcom/cmcm/dmc/sdk/g/f;->h:Lcom/cmcm/dmc/sdk/g/i;

    invoke-virtual {v1, p1, v0}, Lcom/cmcm/dmc/sdk/g/i;->a(Lcom/cmcm/dmc/sdk/g/h;Ljava/io/File;)V

    new-instance v1, Lcom/cmcm/dmc/sdk/g/f$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/cmcm/dmc/sdk/g/f$a;-><init>(Lcom/cmcm/dmc/sdk/g/f;Lcom/cmcm/dmc/sdk/g/f$1;)V

    invoke-virtual {v1, v0, p1}, Lcom/cmcm/dmc/sdk/g/f$a;->a(Ljava/io/File;Lcom/cmcm/dmc/sdk/g/h;)V

    return-void
.end method

.method static synthetic c(Lcom/cmcm/dmc/sdk/g/f;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/cmcm/dmc/sdk/g/f;->c:Ljava/util/List;

    return-object v0
.end method

.method private c()V
    .locals 3

    new-instance v0, Landroid/os/HandlerThread;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/cmcm/dmc/sdk/g/f;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_thread"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/cmcm/dmc/sdk/g/f;->i:Landroid/os/Handler;

    return-void
.end method

.method private c(Lcom/cmcm/dmc/sdk/g/h;)V
    .locals 1

    invoke-static {}, Lcom/cmcm/dmc/sdk/g/j;->a()Lcom/cmcm/dmc/sdk/g/j;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cmcm/dmc/sdk/g/j;->a(Lcom/cmcm/dmc/sdk/g/h;)V

    return-void
.end method

.method private d()V
    .locals 3

    iget-object v1, p0, Lcom/cmcm/dmc/sdk/g/f;->c:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/cmcm/dmc/sdk/g/f;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/cmcm/dmc/sdk/g/f;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmcm/dmc/sdk/g/h;

    invoke-direct {p0, v0}, Lcom/cmcm/dmc/sdk/g/f;->c(Lcom/cmcm/dmc/sdk/g/h;)V

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/io/File;)V
    .locals 3

    iget-boolean v0, p0, Lcom/cmcm/dmc/sdk/g/f;->f:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/cmcm/dmc/sdk/g/f;->d:Landroid/content/Context;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/cmcm/dmc/sdk/g/f;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cmcm/dmc/sdk/g/f;->c:Ljava/util/List;

    iput-object p2, p0, Lcom/cmcm/dmc/sdk/g/f;->g:Ljava/io/File;

    invoke-direct {p0}, Lcom/cmcm/dmc/sdk/g/f;->c()V

    new-instance v0, Lcom/cmcm/dmc/sdk/g/i;

    iget-object v1, p0, Lcom/cmcm/dmc/sdk/g/f;->d:Landroid/content/Context;

    iget-object v2, p0, Lcom/cmcm/dmc/sdk/g/f;->i:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcom/cmcm/dmc/sdk/g/i;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/cmcm/dmc/sdk/g/f;->h:Lcom/cmcm/dmc/sdk/g/i;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cmcm/dmc/sdk/g/f;->f:Z

    goto :goto_0
.end method

.method public a(Lcom/cmcm/dmc/sdk/g/h;)V
    .locals 2

    iget-boolean v0, p0, Lcom/cmcm/dmc/sdk/g/f;->f:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/cmcm/dmc/sdk/g/f;->a:Ljava/lang/String;

    const-string v1, "realtimeReporter is not init"

    invoke-static {v0, v1}, Lcom/cmcm/dmc/sdk/a/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    if-nez p1, :cond_1

    sget-object v0, Lcom/cmcm/dmc/sdk/g/f;->a:Ljava/lang/String;

    const-string v1, "report data is null"

    invoke-static {v0, v1}, Lcom/cmcm/dmc/sdk/a/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/cmcm/dmc/sdk/g/f;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmcm/dmc/sdk/a/q;->h(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/cmcm/dmc/sdk/g/f;->a:Ljava/lang/String;

    const-string v1, "net work is unavailable"

    invoke-static {v0, v1}, Lcom/cmcm/dmc/sdk/a/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/cmcm/dmc/sdk/g/f;->c(Lcom/cmcm/dmc/sdk/g/h;)V

    invoke-direct {p0}, Lcom/cmcm/dmc/sdk/g/f;->d()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/cmcm/dmc/sdk/g/f;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/cmcm/dmc/sdk/g/f;->c:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/cmcm/dmc/sdk/g/f;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    invoke-direct {p0, p1}, Lcom/cmcm/dmc/sdk/g/f;->b(Lcom/cmcm/dmc/sdk/g/h;)V

    goto :goto_0
.end method

.method public a(Ljava/util/List;)V
    .locals 2

    iget-boolean v0, p0, Lcom/cmcm/dmc/sdk/g/f;->f:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/cmcm/dmc/sdk/g/f;->a:Ljava/lang/String;

    const-string v1, "realtimeReporter is not init"

    invoke-static {v0, v1}, Lcom/cmcm/dmc/sdk/a/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/cmcm/dmc/sdk/g/f;->h:Lcom/cmcm/dmc/sdk/g/i;

    invoke-virtual {v0, p1}, Lcom/cmcm/dmc/sdk/g/i;->a(Ljava/util/List;)V

    goto :goto_0
.end method
