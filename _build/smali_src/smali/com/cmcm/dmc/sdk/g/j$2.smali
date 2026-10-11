.class Lcom/cmcm/dmc/sdk/g/j$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmcm/dmc/sdk/g/j;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cmcm/dmc/sdk/g/j;


# direct methods
.method constructor <init>(Lcom/cmcm/dmc/sdk/g/j;)V
    .locals 0

    iput-object p1, p0, Lcom/cmcm/dmc/sdk/g/j$2;->a:Lcom/cmcm/dmc/sdk/g/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/cmcm/dmc/sdk/g/j$2;->a:Lcom/cmcm/dmc/sdk/g/j;

    invoke-static {v0}, Lcom/cmcm/dmc/sdk/g/j;->b(Lcom/cmcm/dmc/sdk/g/j;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/cmcm/dmc/sdk/g/j$2;->a:Lcom/cmcm/dmc/sdk/g/j;

    invoke-static {v0, v1}, Lcom/cmcm/dmc/sdk/g/j;->a(Lcom/cmcm/dmc/sdk/g/j;Z)V

    return-void
.end method
