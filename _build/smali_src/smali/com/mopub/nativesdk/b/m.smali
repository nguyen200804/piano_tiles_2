.class final Lcom/mopub/nativesdk/b/m;
.super Ljava/lang/Object;
.source "WEngine.java"


# instance fields
.field private final a:Ljava/util/concurrent/Semaphore;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 307
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 311
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/mopub/nativesdk/b/m;->a:Ljava/util/concurrent/Semaphore;

    .line 309
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lcom/mopub/nativesdk/b/m;->a:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquireUninterruptibly()V

    .line 315
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lcom/mopub/nativesdk/b/m;->a:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 319
    return-void
.end method
