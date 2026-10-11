.class final Lcom/mopub/nativesdk/d/w;
.super Ljava/lang/Object;
.source "ThreadManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/mopub/nativesdk/d/v;


# direct methods
.method constructor <init>(Lcom/mopub/nativesdk/d/v;)V
    .locals 0

    .prologue
    .line 280
    iput-object p1, p0, Lcom/mopub/nativesdk/d/w;->a:Lcom/mopub/nativesdk/d/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 283
    iget-object v0, p0, Lcom/mopub/nativesdk/d/w;->a:Lcom/mopub/nativesdk/d/v;

    iget-object v0, v0, Lcom/mopub/nativesdk/d/v;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 284
    iget-object v0, p0, Lcom/mopub/nativesdk/d/w;->a:Lcom/mopub/nativesdk/d/v;

    iget-object v0, v0, Lcom/mopub/nativesdk/d/v;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mopub/nativesdk/d/w;->a:Lcom/mopub/nativesdk/d/v;

    iget-object v1, v1, Lcom/mopub/nativesdk/d/v;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 285
    return-void
.end method
