.class Lcom/facebook/notifications/internal/asset/a/c;
.super Ljava/lang/Object;
.source "ContentDownloader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/notifications/internal/asset/a/c$b;,
        Lcom/facebook/notifications/internal/asset/a/c$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Ljava/util/concurrent/BlockingQueue;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/facebook/notifications/internal/asset/a/c$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/facebook/notifications/internal/asset/a/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/notifications/internal/asset/a/c;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/facebook/notifications/internal/asset/a/c;->b:Ljava/util/concurrent/BlockingQueue;

    .line 46
    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/facebook/notifications/internal/asset/a/c;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/net/URL;Lcom/facebook/notifications/internal/asset/a/c$a;)V
    .locals 2
    .param p1    # Ljava/net/URL;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/facebook/notifications/internal/asset/a/c$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 62
    iget-object v0, p0, Lcom/facebook/notifications/internal/asset/a/c;->b:Ljava/util/concurrent/BlockingQueue;

    new-instance v1, Lcom/facebook/notifications/internal/asset/a/c$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/facebook/notifications/internal/asset/a/c$1;-><init>(Lcom/facebook/notifications/internal/asset/a/c;Lcom/facebook/notifications/internal/asset/a/c$a;Ljava/net/URL;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 120
    return-void
.end method

.method public run()V
    .locals 1

    .prologue
    .line 52
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/facebook/notifications/internal/asset/a/c;->b:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/notifications/internal/asset/a/c$b;

    .line 53
    invoke-interface {v0}, Lcom/facebook/notifications/internal/asset/a/c$b;->run()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 54
    :catch_0
    move-exception v0

    .line 56
    return-void
.end method
