.class final Lcom/cmcm/dmc/sdk/a/c$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmcm/dmc/sdk/a/c;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Lcom/cmcm/dmc/sdk/g/j;->a()Lcom/cmcm/dmc/sdk/g/j;

    move-result-object v0

    const-string v1, "reporter"

    const-string v2, "interval_check_batch"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/cmcm/dmc/sdk/a/c;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lcom/cmcm/dmc/sdk/g/j;->a(J)V

    invoke-static {}, Lcom/cmcm/dmc/sdk/a/c;->j()Lcom/cmcm/dmc/sdk/a/g;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/cmcm/dmc/sdk/a/c;->j()Lcom/cmcm/dmc/sdk/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cmcm/dmc/sdk/a/g;->b()V

    :try_start_0
    invoke-static {}, Lcom/cmcm/dmc/sdk/a/c;->j()Lcom/cmcm/dmc/sdk/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cmcm/dmc/sdk/a/g;->a()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmcm/dmc/sdk/a/p;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/cmcm/dmc/sdk/a/p;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/cmcm/dmc/sdk/a/c;->j()Lcom/cmcm/dmc/sdk/a/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cmcm/dmc/sdk/a/g;->c()V

    throw v0

    :cond_1
    invoke-static {}, Lcom/cmcm/dmc/sdk/a/c;->j()Lcom/cmcm/dmc/sdk/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cmcm/dmc/sdk/a/g;->c()V

    :cond_2
    return-void
.end method
