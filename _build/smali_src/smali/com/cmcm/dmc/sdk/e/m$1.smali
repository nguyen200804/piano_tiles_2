.class Lcom/cmcm/dmc/sdk/e/m$1;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmcm/dmc/sdk/e/m;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cmcm/dmc/sdk/e/m;


# direct methods
.method constructor <init>(Lcom/cmcm/dmc/sdk/e/m;)V
    .locals 0

    iput-object p1, p0, Lcom/cmcm/dmc/sdk/e/m$1;->a:Lcom/cmcm/dmc/sdk/e/m;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/cmcm/dmc/sdk/a/c;->d()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/cmcm/dmc/sdk/e/m$1$1;

    invoke-direct {v1, p0, p2}, Lcom/cmcm/dmc/sdk/e/m$1$1;-><init>(Lcom/cmcm/dmc/sdk/e/m$1;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
