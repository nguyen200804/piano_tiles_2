.class public final Lcom/mopub/nativesdk/d/a/a;
.super Ljava/lang/Object;
.source "TaskManager.java"


# static fields
.field private static a:Lcom/mopub/nativesdk/d/a/a;


# instance fields
.field private b:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const/4 v0, 0x0

    sput-object v0, Lcom/mopub/nativesdk/d/a/a;->a:Lcom/mopub/nativesdk/d/a/a;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mopub/nativesdk/d/a/a;->b:Ljava/util/concurrent/ExecutorService;

    .line 19
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/nativesdk/d/a/a;->b:Ljava/util/concurrent/ExecutorService;

    .line 21
    return-void
.end method

.method public static a()Lcom/mopub/nativesdk/d/a/a;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/mopub/nativesdk/d/a/a;->a:Lcom/mopub/nativesdk/d/a/a;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Lcom/mopub/nativesdk/d/a/a;

    invoke-direct {v0}, Lcom/mopub/nativesdk/d/a/a;-><init>()V

    sput-object v0, Lcom/mopub/nativesdk/d/a/a;->a:Lcom/mopub/nativesdk/d/a/a;

    .line 27
    :cond_0
    sget-object v0, Lcom/mopub/nativesdk/d/a/a;->a:Lcom/mopub/nativesdk/d/a/a;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/mopub/nativesdk/d/a/a;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 36
    return-void
.end method
