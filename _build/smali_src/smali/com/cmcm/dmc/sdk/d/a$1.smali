.class Lcom/cmcm/dmc/sdk/d/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmcm/dmc/sdk/d/a;->a(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cmcm/dmc/sdk/d/a;


# direct methods
.method constructor <init>(Lcom/cmcm/dmc/sdk/d/a;)V
    .locals 0

    iput-object p1, p0, Lcom/cmcm/dmc/sdk/d/a$1;->a:Lcom/cmcm/dmc/sdk/d/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/cmcm/dmc/sdk/d/a$1;->a:Lcom/cmcm/dmc/sdk/d/a;

    invoke-static {v0}, Lcom/cmcm/dmc/sdk/d/a;->a(Lcom/cmcm/dmc/sdk/d/a;)Z

    move-result v0

    iget-object v1, p0, Lcom/cmcm/dmc/sdk/d/a$1;->a:Lcom/cmcm/dmc/sdk/d/a;

    invoke-virtual {v1, v0}, Lcom/cmcm/dmc/sdk/d/a;->a(Z)V

    return-void
.end method
