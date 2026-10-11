.class final Lcom/mopub/nativesdk/d/u;
.super Ljava/lang/Object;
.source "ThreadManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/mopub/nativesdk/d/t;


# direct methods
.method constructor <init>(Lcom/mopub/nativesdk/d/t;)V
    .locals 0

    .prologue
    .line 222
    iput-object p1, p0, Lcom/mopub/nativesdk/d/u;->a:Lcom/mopub/nativesdk/d/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 225
    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    return-void

    .line 228
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "\u8fd9\u91cc\u4f7f\u7528\u4e86ThreadManager.post\u51fd\u6570\u8fd0\u884c\u4e86\u4e00\u4e2a\u8d85\u8fc730s\u7684\u4efb\u52a1\uff0c\u8bf7\u67e5\u770b\u8fd9\u4e2a\u4efb\u52a1\u662f\u5426\u662f\u975e\u5e38\u8017\u65f6\u7684\u4efb\u52a1\uff0c\u6216\u8005\u5b58\u5728\u6b7b\u5faa\u73af\uff0c\u6216\u8005\u5b58\u5728\u6b7b\u9501\uff0c\u6216\u8005\u5b58\u5728\u4e00\u76f4\u5361\u4f4f\u7ebf\u7a0b\u7684\u60c5\u51b5\uff0c\u5982\u679c\u5b58\u5728\u4e0a\u8ff0\u60c5\u51b5\u8bf7\u89e3\u51b3\u6216\u8005\u4f7f\u7528ThreadManager.execute\u51fd\u6570\u653e\u5165\u7ebf\u7a0b\u6c60\u6267\u884c\u8be5\u4efb\u52a1\u3002"

    new-instance v2, Ljava/lang/Throwable;

    iget-object v3, p0, Lcom/mopub/nativesdk/d/u;->a:Lcom/mopub/nativesdk/d/t;

    iget-object v3, v3, Lcom/mopub/nativesdk/d/t;->a:Lcom/mopub/nativesdk/d/g;

    iget-object v3, v3, Lcom/mopub/nativesdk/d/g;->a:Ljava/lang/Runnable;

    .line 230
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 231
    throw v0
.end method
