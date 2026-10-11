.class public abstract Lcom/cmplay/base/util/c;
.super Ljava/lang/Object;
.source "AsyncTaskEx.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cmplay/base/util/c$a;,
        Lcom/cmplay/base/util/c$d;,
        Lcom/cmplay/base/util/c$b;,
        Lcom/cmplay/base/util/c$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Params:",
        "Ljava/lang/Object;",
        "Progress:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final a:Ljava/util/concurrent/Executor;

.field public static final b:Ljava/util/concurrent/Executor;

.field public static final c:Ljava/util/concurrent/Executor;

.field public static final d:Ljava/util/concurrent/Executor;

.field private static final e:Ljava/util/concurrent/ThreadFactory;

.field private static final f:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static final g:Lcom/cmplay/base/util/c$b;

.field private static volatile h:Ljava/util/concurrent/Executor;


# instance fields
.field private final i:Lcom/cmplay/base/util/c$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/cmplay/base/util/c$d",
            "<TParams;TResult;>;"
        }
    .end annotation
.end field

.field private final j:Ljava/util/concurrent/FutureTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/FutureTask",
            "<TResult;>;"
        }
    .end annotation
.end field

.field private volatile k:Lcom/cmplay/base/util/c$c;

.field private final l:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const-wide/16 v4, 0x1

    const/16 v3, 0x80

    const/4 v2, 0x3

    .line 166
    new-instance v0, Lcom/cmplay/base/util/c$1;

    invoke-direct {v0}, Lcom/cmplay/base/util/c$1;-><init>()V

    sput-object v0, Lcom/cmplay/base/util/c;->e:Ljava/util/concurrent/ThreadFactory;

    .line 174
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sput-object v0, Lcom/cmplay/base/util/c;->f:Ljava/util/concurrent/BlockingQueue;

    .line 180
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v7, Lcom/cmplay/base/util/c;->f:Ljava/util/concurrent/BlockingQueue;

    sget-object v8, Lcom/cmplay/base/util/c;->e:Ljava/util/concurrent/ThreadFactory;

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v1, Lcom/cmplay/base/util/c;->a:Ljava/util/concurrent/Executor;

    .line 184
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v7, Lcom/cmplay/base/util/c;->f:Ljava/util/concurrent/BlockingQueue;

    sget-object v8, Lcom/cmplay/base/util/c;->e:Ljava/util/concurrent/ThreadFactory;

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v1, Lcom/cmplay/base/util/c;->b:Ljava/util/concurrent/Executor;

    .line 191
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v7, Lcom/cmplay/base/util/c;->f:Ljava/util/concurrent/BlockingQueue;

    sget-object v8, Lcom/cmplay/base/util/c;->e:Ljava/util/concurrent/ThreadFactory;

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v1, Lcom/cmplay/base/util/c;->c:Ljava/util/concurrent/Executor;

    .line 195
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v7, Lcom/cmplay/base/util/c;->f:Ljava/util/concurrent/BlockingQueue;

    sget-object v8, Lcom/cmplay/base/util/c;->e:Ljava/util/concurrent/ThreadFactory;

    new-instance v9, Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;

    invoke-direct {v9}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;-><init>()V

    invoke-direct/range {v1 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    sput-object v1, Lcom/cmplay/base/util/c;->d:Ljava/util/concurrent/Executor;

    .line 202
    new-instance v0, Lcom/cmplay/base/util/c$b;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/cmplay/base/util/c$b;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/cmplay/base/util/c;->g:Lcom/cmplay/base/util/c$b;

    .line 214
    sget-object v0, Lcom/cmplay/base/util/c;->a:Ljava/util/concurrent/Executor;

    sput-object v0, Lcom/cmplay/base/util/c;->h:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 218
    sget-object v0, Lcom/cmplay/base/util/c$c;->a:Lcom/cmplay/base/util/c$c;

    iput-object v0, p0, Lcom/cmplay/base/util/c;->k:Lcom/cmplay/base/util/c$c;

    .line 220
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/cmplay/base/util/c;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 256
    new-instance v0, Lcom/cmplay/base/util/c$2;

    invoke-direct {v0, p0}, Lcom/cmplay/base/util/c$2;-><init>(Lcom/cmplay/base/util/c;)V

    iput-object v0, p0, Lcom/cmplay/base/util/c;->i:Lcom/cmplay/base/util/c$d;

    .line 265
    new-instance v0, Lcom/cmplay/base/util/c$3;

    iget-object v1, p0, Lcom/cmplay/base/util/c;->i:Lcom/cmplay/base/util/c$d;

    invoke-direct {v0, p0, v1}, Lcom/cmplay/base/util/c$3;-><init>(Lcom/cmplay/base/util/c;Ljava/util/concurrent/Callable;)V

    iput-object v0, p0, Lcom/cmplay/base/util/c;->j:Ljava/util/concurrent/FutureTask;

    .line 285
    return-void
.end method

.method static synthetic a(Lcom/cmplay/base/util/c;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 159
    invoke-direct {p0, p1}, Lcom/cmplay/base/util/c;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/cmplay/base/util/c;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/cmplay/base/util/c;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic b(Lcom/cmplay/base/util/c;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 159
    invoke-direct {p0, p1}, Lcom/cmplay/base/util/c;->c(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic c(Lcom/cmplay/base/util/c;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 159
    invoke-direct {p0, p1}, Lcom/cmplay/base/util/c;->e(Ljava/lang/Object;)V

    return-void
.end method

.method private c(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 288
    iget-object v0, p0, Lcom/cmplay/base/util/c;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    .line 289
    if-nez v0, :cond_0

    .line 290
    invoke-direct {p0, p1}, Lcom/cmplay/base/util/c;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    :cond_0
    return-void
.end method

.method private d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)TResult;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 295
    sget-object v0, Lcom/cmplay/base/util/c;->g:Lcom/cmplay/base/util/c$b;

    new-instance v1, Lcom/cmplay/base/util/c$a;

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v1, p0, v2}, Lcom/cmplay/base/util/c$a;-><init>(Lcom/cmplay/base/util/c;[Ljava/lang/Object;)V

    invoke-virtual {v0, v4, v1}, Lcom/cmplay/base/util/c$b;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 297
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 298
    return-object p1
.end method

.method private e(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 596
    invoke-virtual {p0}, Lcom/cmplay/base/util/c;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 597
    invoke-virtual {p0, p1}, Lcom/cmplay/base/util/c;->b(Ljava/lang/Object;)V

    .line 601
    :goto_0
    sget-object v0, Lcom/cmplay/base/util/c$c;->c:Lcom/cmplay/base/util/c$c;

    iput-object v0, p0, Lcom/cmplay/base/util/c;->k:Lcom/cmplay/base/util/c$c;

    .line 602
    return-void

    .line 599
    :cond_0
    invoke-virtual {p0, p1}, Lcom/cmplay/base/util/c;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public final varargs a(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lcom/cmplay/base/util/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "[TParams;)",
            "Lcom/cmplay/base/util/c",
            "<TParams;TProgress;TResult;>;"
        }
    .end annotation

    .prologue
    .line 544
    iget-object v0, p0, Lcom/cmplay/base/util/c;->k:Lcom/cmplay/base/util/c$c;

    sget-object v1, Lcom/cmplay/base/util/c$c;->a:Lcom/cmplay/base/util/c$c;

    if-eq v0, v1, :cond_0

    .line 545
    sget-object v0, Lcom/cmplay/base/util/c$4;->a:[I

    iget-object v1, p0, Lcom/cmplay/base/util/c;->k:Lcom/cmplay/base/util/c$c;

    invoke-virtual {v1}, Lcom/cmplay/base/util/c$c;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 556
    :cond_0
    sget-object v0, Lcom/cmplay/base/util/c$c;->b:Lcom/cmplay/base/util/c$c;

    iput-object v0, p0, Lcom/cmplay/base/util/c;->k:Lcom/cmplay/base/util/c$c;

    .line 558
    invoke-virtual {p0}, Lcom/cmplay/base/util/c;->a()V

    .line 560
    iget-object v0, p0, Lcom/cmplay/base/util/c;->i:Lcom/cmplay/base/util/c$d;

    iput-object p2, v0, Lcom/cmplay/base/util/c$d;->b:[Ljava/lang/Object;

    .line 561
    iget-object v0, p0, Lcom/cmplay/base/util/c;->j:Ljava/util/concurrent/FutureTask;

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 563
    return-object p0

    .line 547
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot execute task: the task is already running."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 550
    :pswitch_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot execute task: the task has already been executed (a task can be executed only once)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 545
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected varargs abstract a([Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)TResult;"
        }
    .end annotation
.end method

.method protected a()V
    .locals 0

    .prologue
    .line 335
    return-void
.end method

.method protected a(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 351
    return-void
.end method

.method protected b()V
    .locals 0

    .prologue
    .line 398
    return-void
.end method

.method protected b(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 382
    invoke-virtual {p0}, Lcom/cmplay/base/util/c;->b()V

    .line 383
    return-void
.end method

.method protected varargs b([Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TProgress;)V"
        }
    .end annotation

    .prologue
    .line 364
    return-void
.end method

.method public final varargs c([Ljava/lang/Object;)Lcom/cmplay/base/util/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)",
            "Lcom/cmplay/base/util/c",
            "<TParams;TProgress;TResult;>;"
        }
    .end annotation

    .prologue
    .line 508
    sget-object v0, Lcom/cmplay/base/util/c;->h:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lcom/cmplay/base/util/c;->a(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lcom/cmplay/base/util/c;

    move-result-object v0

    return-object v0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 411
    iget-object v0, p0, Lcom/cmplay/base/util/c;->j:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->isCancelled()Z

    move-result v0

    return v0
.end method
