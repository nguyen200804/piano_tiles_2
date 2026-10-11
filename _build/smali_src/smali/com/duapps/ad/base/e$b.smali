.class Lcom/duapps/ad/base/e$b;
.super Ljava/lang/Object;
.source "GoogleAdvertisingIdClient.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duapps/ad/base/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field a:Z

.field private final b:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/duapps/ad/base/e$b;->a:Z

    .line 66
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/duapps/ad/base/e$b;->b:Ljava/util/concurrent/BlockingQueue;

    .line 69
    return-void
.end method


# virtual methods
.method public a()Landroid/os/IBinder;
    .locals 2

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/duapps/ad/base/e$b;->a:Z

    if-eqz v0, :cond_0

    .line 83
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Binder already consumed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/duapps/ad/base/e$b;->a:Z

    .line 86
    iget-object v0, p0, Lcom/duapps/ad/base/e$b;->b:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    return-object v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .prologue
    .line 73
    :try_start_0
    iget-object v0, p0, Lcom/duapps/ad/base/e$b;->b:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p2}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    :goto_0
    return-void

    .line 74
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    .prologue
    .line 79
    return-void
.end method
