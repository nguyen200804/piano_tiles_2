.class final Lcom/mopub/nativesdk/d/t;
.super Ljava/lang/Object;
.source "ThreadManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/mopub/nativesdk/d/g;


# direct methods
.method constructor <init>(Lcom/mopub/nativesdk/d/g;)V
    .locals 0

    .prologue
    .line 219
    iput-object p1, p0, Lcom/mopub/nativesdk/d/t;->a:Lcom/mopub/nativesdk/d/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 222
    invoke-static {}, Lcom/mopub/nativesdk/d/s;->b()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/mopub/nativesdk/d/u;

    invoke-direct {v1, p0}, Lcom/mopub/nativesdk/d/u;-><init>(Lcom/mopub/nativesdk/d/t;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 234
    return-void
.end method
