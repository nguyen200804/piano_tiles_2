.class Lcom/cmcm/dmc/sdk/e/l$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmcm/dmc/sdk/e/l;->a(Landroid/location/Location;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cmcm/dmc/sdk/e/l;


# direct methods
.method constructor <init>(Lcom/cmcm/dmc/sdk/e/l;)V
    .locals 0

    iput-object p1, p0, Lcom/cmcm/dmc/sdk/e/l$2;->a:Lcom/cmcm/dmc/sdk/e/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/cmcm/dmc/sdk/e/l$2;->a:Lcom/cmcm/dmc/sdk/e/l;

    invoke-static {v0}, Lcom/cmcm/dmc/sdk/e/l;->a(Lcom/cmcm/dmc/sdk/e/l;)Lcom/cmcm/dmc/sdk/a/h;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmcm/dmc/sdk/e/l$2;->a:Lcom/cmcm/dmc/sdk/e/l;

    invoke-static {v0}, Lcom/cmcm/dmc/sdk/e/l;->a(Lcom/cmcm/dmc/sdk/e/l;)Lcom/cmcm/dmc/sdk/a/h;

    move-result-object v0

    iget-object v1, p0, Lcom/cmcm/dmc/sdk/e/l$2;->a:Lcom/cmcm/dmc/sdk/e/l;

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/cmcm/dmc/sdk/a/h;->a(Lcom/cmcm/dmc/sdk/a/e;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
