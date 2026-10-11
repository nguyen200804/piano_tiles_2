.class Lcom/cmcm/dmc/sdk/e/e$a;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmcm/dmc/sdk/e/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/cmcm/dmc/sdk/e/e;


# direct methods
.method private constructor <init>(Lcom/cmcm/dmc/sdk/e/e;)V
    .locals 0

    iput-object p1, p0, Lcom/cmcm/dmc/sdk/e/e$a;->a:Lcom/cmcm/dmc/sdk/e/e;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/cmcm/dmc/sdk/e/e;Lcom/cmcm/dmc/sdk/e/e$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cmcm/dmc/sdk/e/e$a;-><init>(Lcom/cmcm/dmc/sdk/e/e;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    :try_start_0
    invoke-static {}, Lcom/cmcm/dmc/sdk/a/c;->d()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/cmcm/dmc/sdk/e/e$a$1;

    invoke-direct {v1, p0, p2}, Lcom/cmcm/dmc/sdk/e/e$a$1;-><init>(Lcom/cmcm/dmc/sdk/e/e$a;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "ReceiverAppRunInfoList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/cmcm/dmc/sdk/a/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
