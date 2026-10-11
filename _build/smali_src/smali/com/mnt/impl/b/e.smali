.class public abstract Lcom/mnt/impl/b/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mnt/impl/b/e$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field private static a:Lcom/mnt/impl/b/e$a;


# instance fields
.field private b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x0

    sput-object v0, Lcom/mnt/impl/b/e;->a:Lcom/mnt/impl/b/e$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mnt/impl/b/e;->c:Z

    return-void
.end method

.method static synthetic a(Lcom/mnt/impl/b/e;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 16
    .line 1024
    iget-object v0, p0, Lcom/mnt/impl/b/e;->b:Ljava/lang/Object;

    .line 16
    return-object v0
.end method

.method public static b()V
    .locals 3

    .prologue
    .line 64
    sget-object v0, Lcom/mnt/impl/b/e;->a:Lcom/mnt/impl/b/e$a;

    if-eqz v0, :cond_0

    .line 72
    :goto_0
    return-void

    .line 67
    :cond_0
    const-class v1, Lcom/mnt/impl/b/e;

    monitor-enter v1

    .line 68
    :try_start_0
    sget-object v0, Lcom/mnt/impl/b/e;->a:Lcom/mnt/impl/b/e$a;

    if-eqz v0, :cond_1

    .line 69
    monitor-exit v1

    goto :goto_0

    .line 72
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 71
    :cond_1
    :try_start_1
    new-instance v0, Lcom/mnt/impl/b/e$a;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/mnt/impl/b/e$a;-><init>(B)V

    sput-object v0, Lcom/mnt/impl/b/e;->a:Lcom/mnt/impl/b/e$a;

    .line 72
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method


# virtual methods
.method public abstract a()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public abstract a(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 76
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/mnt/impl/b/e;->c:Z

    .line 77
    iget-boolean v0, p0, Lcom/mnt/impl/b/e;->c:Z

    if-eqz v0, :cond_0

    .line 78
    invoke-static {}, Lcom/mnt/impl/b/e;->b()V

    .line 80
    :cond_0
    invoke-static {p0}, Lcom/mnt/impl/l/c;->a(Ljava/lang/Runnable;)V

    .line 81
    return-void

    .line 76
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public run()V
    .locals 2

    .prologue
    .line 32
    :try_start_0
    invoke-virtual {p0}, Lcom/mnt/impl/b/e;->a()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/mnt/impl/b/e;->b:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    :goto_0
    :try_start_1
    iget-boolean v0, p0, Lcom/mnt/impl/b/e;->c:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/mnt/impl/b/e;->a:Lcom/mnt/impl/b/e$a;

    if-eqz v0, :cond_0

    .line 38
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 39
    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 40
    sget-object v1, Lcom/mnt/impl/b/e;->a:Lcom/mnt/impl/b/e$a;

    invoke-virtual {v1, v0}, Lcom/mnt/impl/b/e$a;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 47
    :goto_1
    return-void

    .line 34
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 42
    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/mnt/impl/b/e;->b:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/mnt/impl/b/e;->a(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 45
    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method
