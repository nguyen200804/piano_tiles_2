.class final Lcom/mnt/impl/f/o$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mnt/impl/f/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# instance fields
.field a:Landroid/content/Context;

.field b:Landroid/webkit/WebView;

.field private c:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/mnt/impl/f/o$a;",
            ">;"
        }
    .end annotation
.end field

.field private d:Z


# direct methods
.method public constructor <init>(Ljava/util/concurrent/BlockingQueue;Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/mnt/impl/f/o$a;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mnt/impl/f/o$c;->d:Z

    .line 68
    iput-object p1, p0, Lcom/mnt/impl/f/o$c;->c:Ljava/util/concurrent/BlockingQueue;

    .line 69
    iput-object p2, p0, Lcom/mnt/impl/f/o$c;->a:Landroid/content/Context;

    .line 70
    return-void
.end method

.method static synthetic a(Lcom/mnt/impl/f/o$c;)Z
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mnt/impl/f/o$c;->d:Z

    return v0
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 143
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 146
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/mnt/impl/f/o$c;->d:Z

    if-nez v0, :cond_1

    .line 148
    const-wide/16 v0, 0xc8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 154
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/mnt/impl/f/o$c;->c:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mnt/impl/f/o$a;

    .line 155
    if-eqz v0, :cond_0

    .line 1073
    if-eqz v0, :cond_0

    .line 1086
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mnt/impl/f/o$c;->d:Z

    .line 1087
    invoke-static {}, Lcom/mnt/impl/f/o;->a()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/mnt/impl/f/q;

    invoke-direct {v2, p0, v0}, Lcom/mnt/impl/f/q;-><init>(Lcom/mnt/impl/f/o$c;Lcom/mnt/impl/f/o$a;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 159
    :catch_1
    move-exception v0

    goto :goto_0
.end method
