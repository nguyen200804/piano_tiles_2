.class Lcom/cmcm/dmc/sdk/e/f$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmcm/dmc/sdk/e/f;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cmcm/dmc/sdk/e/f;


# direct methods
.method constructor <init>(Lcom/cmcm/dmc/sdk/e/f;)V
    .locals 0

    iput-object p1, p0, Lcom/cmcm/dmc/sdk/e/f$1;->a:Lcom/cmcm/dmc/sdk/e/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/cmcm/dmc/sdk/e/f$1;->a:Lcom/cmcm/dmc/sdk/e/f;

    invoke-static {v0}, Lcom/cmcm/dmc/sdk/e/f;->a(Lcom/cmcm/dmc/sdk/e/f;)Lcom/cmcm/dmc/sdk/a/l;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmcm/dmc/sdk/e/f$1;->a:Lcom/cmcm/dmc/sdk/e/f;

    invoke-static {v0}, Lcom/cmcm/dmc/sdk/e/f;->b(Lcom/cmcm/dmc/sdk/e/f;)V

    iget-object v0, p0, Lcom/cmcm/dmc/sdk/e/f$1;->a:Lcom/cmcm/dmc/sdk/e/f;

    invoke-static {v0}, Lcom/cmcm/dmc/sdk/e/f;->a(Lcom/cmcm/dmc/sdk/e/f;)Lcom/cmcm/dmc/sdk/a/l;

    move-result-object v0

    iget-object v1, p0, Lcom/cmcm/dmc/sdk/e/f$1;->a:Lcom/cmcm/dmc/sdk/e/f;

    invoke-static {v1}, Lcom/cmcm/dmc/sdk/e/f;->c(Lcom/cmcm/dmc/sdk/e/f;)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lcom/cmcm/dmc/sdk/a/l;->a(J)V

    :cond_0
    return-void
.end method
