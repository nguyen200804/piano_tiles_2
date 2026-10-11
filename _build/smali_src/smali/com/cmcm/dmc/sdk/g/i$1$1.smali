.class Lcom/cmcm/dmc/sdk/g/i$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmcm/dmc/sdk/g/i$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/cmcm/dmc/sdk/g/i$1;


# direct methods
.method constructor <init>(Lcom/cmcm/dmc/sdk/g/i$1;Z)V
    .locals 0

    iput-object p1, p0, Lcom/cmcm/dmc/sdk/g/i$1$1;->b:Lcom/cmcm/dmc/sdk/g/i$1;

    iput-boolean p2, p0, Lcom/cmcm/dmc/sdk/g/i$1$1;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/cmcm/dmc/sdk/g/i$1$1;->b:Lcom/cmcm/dmc/sdk/g/i$1;

    iget-object v0, v0, Lcom/cmcm/dmc/sdk/g/i$1;->c:Lcom/cmcm/dmc/sdk/g/j$c;

    iget-boolean v1, p0, Lcom/cmcm/dmc/sdk/g/i$1$1;->a:Z

    invoke-interface {v0, v1}, Lcom/cmcm/dmc/sdk/g/j$c;->a(Z)V

    return-void
.end method
