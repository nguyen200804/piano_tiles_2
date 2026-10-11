.class Lcom/cmcm/dmc/sdk/e/n$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmcm/dmc/sdk/e/n;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cmcm/dmc/sdk/e/n;


# direct methods
.method constructor <init>(Lcom/cmcm/dmc/sdk/e/n;)V
    .locals 0

    iput-object p1, p0, Lcom/cmcm/dmc/sdk/e/n$1;->a:Lcom/cmcm/dmc/sdk/e/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/cmcm/dmc/sdk/e/n$1;->a:Lcom/cmcm/dmc/sdk/e/n;

    invoke-static {v0}, Lcom/cmcm/dmc/sdk/e/n;->a(Lcom/cmcm/dmc/sdk/e/n;)V

    iget-object v0, p0, Lcom/cmcm/dmc/sdk/e/n$1;->a:Lcom/cmcm/dmc/sdk/e/n;

    invoke-static {v0}, Lcom/cmcm/dmc/sdk/e/n;->c(Lcom/cmcm/dmc/sdk/e/n;)Lcom/cmcm/dmc/sdk/a/l;

    move-result-object v0

    iget-object v1, p0, Lcom/cmcm/dmc/sdk/e/n$1;->a:Lcom/cmcm/dmc/sdk/e/n;

    invoke-static {v1}, Lcom/cmcm/dmc/sdk/e/n;->b(Lcom/cmcm/dmc/sdk/e/n;)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lcom/cmcm/dmc/sdk/a/l;->a(J)V

    return-void
.end method
