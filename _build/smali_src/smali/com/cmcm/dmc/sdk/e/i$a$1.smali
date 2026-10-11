.class Lcom/cmcm/dmc/sdk/e/i$a$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmcm/dmc/sdk/e/i$a;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Lcom/cmcm/dmc/sdk/e/i$a;


# direct methods
.method constructor <init>(Lcom/cmcm/dmc/sdk/e/i$a;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/cmcm/dmc/sdk/e/i$a$1;->b:Lcom/cmcm/dmc/sdk/e/i$a;

    iput-object p2, p0, Lcom/cmcm/dmc/sdk/e/i$a$1;->a:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const/4 v7, -0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long v4, v0, v2

    iget-object v0, p0, Lcom/cmcm/dmc/sdk/e/i$a$1;->a:Landroid/content/Intent;

    const-string v1, "state"

    invoke-virtual {v0, v1, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    iget-object v0, p0, Lcom/cmcm/dmc/sdk/e/i$a$1;->a:Landroid/content/Intent;

    const-string v1, "microphone"

    invoke-virtual {v0, v1, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v0, "test_Headset"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "microphone == "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/cmcm/dmc/sdk/a/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-ne v6, v0, :cond_1

    iget-object v0, p0, Lcom/cmcm/dmc/sdk/e/i$a$1;->b:Lcom/cmcm/dmc/sdk/e/i$a;

    iget-object v0, v0, Lcom/cmcm/dmc/sdk/e/i$a;->a:Lcom/cmcm/dmc/sdk/e/i;

    invoke-static {v0, v4, v5}, Lcom/cmcm/dmc/sdk/e/i;->a(Lcom/cmcm/dmc/sdk/e/i;J)J

    :cond_0
    :goto_0
    invoke-static {}, Lcom/cmcm/dmc/sdk/e/d;->a()Lcom/cmcm/dmc/sdk/e/d;

    move-result-object v0

    const-string v1, "headset_plug"

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/cmcm/dmc/sdk/e/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    if-nez v6, :cond_0

    iget-object v0, p0, Lcom/cmcm/dmc/sdk/e/i$a$1;->b:Lcom/cmcm/dmc/sdk/e/i$a;

    iget-object v0, v0, Lcom/cmcm/dmc/sdk/e/i$a;->a:Lcom/cmcm/dmc/sdk/e/i;

    iget-object v2, p0, Lcom/cmcm/dmc/sdk/e/i$a$1;->b:Lcom/cmcm/dmc/sdk/e/i$a;

    iget-object v2, v2, Lcom/cmcm/dmc/sdk/e/i$a;->a:Lcom/cmcm/dmc/sdk/e/i;

    invoke-static {v2}, Lcom/cmcm/dmc/sdk/e/i;->a(Lcom/cmcm/dmc/sdk/e/i;)J

    move-result-wide v2

    invoke-static/range {v0 .. v5}, Lcom/cmcm/dmc/sdk/e/i;->a(Lcom/cmcm/dmc/sdk/e/i;IJJ)V

    iget-object v0, p0, Lcom/cmcm/dmc/sdk/e/i$a$1;->b:Lcom/cmcm/dmc/sdk/e/i$a;

    iget-object v0, v0, Lcom/cmcm/dmc/sdk/e/i$a;->a:Lcom/cmcm/dmc/sdk/e/i;

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcom/cmcm/dmc/sdk/e/i;->a(Lcom/cmcm/dmc/sdk/e/i;J)J

    goto :goto_0
.end method
