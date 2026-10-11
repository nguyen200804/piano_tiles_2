.class final Lcom/mopub/nativesdk/core/t;
.super Ljava/lang/Thread;
.source "AKService.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 323
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 329
    :goto_0
    invoke-virtual {p0}, Lcom/mopub/nativesdk/core/t;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 332
    const-wide/16 v0, 0x2710

    :try_start_0
    invoke-static {v0, v1}, Lcom/mopub/nativesdk/core/t;->sleep(J)V

    .line 335
    sget-object v0, Lcom/mopub/nativesdk/core/a;->b:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 339
    :catch_0
    move-exception v0

    goto :goto_0

    .line 341
    :cond_0
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 343
    return-void
.end method
