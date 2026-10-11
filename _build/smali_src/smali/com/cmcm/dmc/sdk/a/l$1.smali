.class Lcom/cmcm/dmc/sdk/a/l$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmcm/dmc/sdk/a/l;->a(Ljava/lang/Runnable;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cmcm/dmc/sdk/a/l;


# direct methods
.method constructor <init>(Lcom/cmcm/dmc/sdk/a/l;)V
    .locals 0

    iput-object p1, p0, Lcom/cmcm/dmc/sdk/a/l$1;->a:Lcom/cmcm/dmc/sdk/a/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/cmcm/dmc/sdk/a/l$1;->a:Lcom/cmcm/dmc/sdk/a/l;

    invoke-static {v0}, Lcom/cmcm/dmc/sdk/a/l;->a(Lcom/cmcm/dmc/sdk/a/l;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmcm/dmc/sdk/a/l$1;->a:Lcom/cmcm/dmc/sdk/a/l;

    invoke-static {v0}, Lcom/cmcm/dmc/sdk/a/l;->a(Lcom/cmcm/dmc/sdk/a/l;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iget-object v0, p0, Lcom/cmcm/dmc/sdk/a/l$1;->a:Lcom/cmcm/dmc/sdk/a/l;

    invoke-static {v0}, Lcom/cmcm/dmc/sdk/a/l;->b(Lcom/cmcm/dmc/sdk/a/l;)I

    iget-object v0, p0, Lcom/cmcm/dmc/sdk/a/l$1;->a:Lcom/cmcm/dmc/sdk/a/l;

    invoke-static {v0}, Lcom/cmcm/dmc/sdk/a/l;->c(Lcom/cmcm/dmc/sdk/a/l;)I

    move-result v0

    iget-object v1, p0, Lcom/cmcm/dmc/sdk/a/l$1;->a:Lcom/cmcm/dmc/sdk/a/l;

    invoke-static {v1}, Lcom/cmcm/dmc/sdk/a/l;->d(Lcom/cmcm/dmc/sdk/a/l;)I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/cmcm/dmc/sdk/a/l$1;->a:Lcom/cmcm/dmc/sdk/a/l;

    invoke-static {v0}, Lcom/cmcm/dmc/sdk/a/l;->g(Lcom/cmcm/dmc/sdk/a/l;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/cmcm/dmc/sdk/a/l$1;->a:Lcom/cmcm/dmc/sdk/a/l;

    invoke-static {v1}, Lcom/cmcm/dmc/sdk/a/l;->e(Lcom/cmcm/dmc/sdk/a/l;)Ljava/lang/Runnable;

    move-result-object v1

    iget-object v2, p0, Lcom/cmcm/dmc/sdk/a/l$1;->a:Lcom/cmcm/dmc/sdk/a/l;

    invoke-static {v2}, Lcom/cmcm/dmc/sdk/a/l;->f(Lcom/cmcm/dmc/sdk/a/l;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/cmcm/dmc/sdk/a/l$1;->a:Lcom/cmcm/dmc/sdk/a/l;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/cmcm/dmc/sdk/a/l;->a(Lcom/cmcm/dmc/sdk/a/l;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    goto :goto_0
.end method
