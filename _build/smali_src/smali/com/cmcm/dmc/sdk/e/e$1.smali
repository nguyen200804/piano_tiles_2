.class Lcom/cmcm/dmc/sdk/e/e$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmcm/dmc/sdk/e/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cmcm/dmc/sdk/e/e;


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/cmcm/dmc/sdk/e/e$1;->a:Lcom/cmcm/dmc/sdk/e/e;

    invoke-virtual {v0}, Lcom/cmcm/dmc/sdk/e/e;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmcm/dmc/sdk/e/e$1;->a:Lcom/cmcm/dmc/sdk/e/e;

    invoke-static {v0}, Lcom/cmcm/dmc/sdk/e/e;->a(Lcom/cmcm/dmc/sdk/e/e;)V

    :cond_0
    return-void
.end method
