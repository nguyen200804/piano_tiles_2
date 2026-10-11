.class final Lcom/mopub/dg/d/a/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:Lcom/mopub/dg/d/a/c;


# direct methods
.method constructor <init>(Lcom/mopub/dg/d/a/c;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/mopub/dg/d/a/d;->b:Lcom/mopub/dg/d/a/c;

    iput-object p2, p0, Lcom/mopub/dg/d/a/d;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/mopub/dg/d/a/d;->b:Lcom/mopub/dg/d/a/c;

    invoke-static {v0}, Lcom/mopub/dg/d/a/c;->a(Lcom/mopub/dg/d/a/c;)I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/mopub/dg/d/a/d;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
