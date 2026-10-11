.class Lcom/cmplay/cloud/b$a;
.super Landroid/content/BroadcastReceiver;
.source "CloudConfigUpdater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmplay/cloud/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/cmplay/cloud/b;


# direct methods
.method constructor <init>(Lcom/cmplay/cloud/b;)V
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lcom/cmplay/cloud/b$a;->a:Lcom/cmplay/cloud/b;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 147
    if-eqz p2, :cond_0

    const-string v0, "tiles2_cloudconfig_delay_task_action"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 152
    :cond_0
    :goto_0
    return-void

    .line 150
    :cond_1
    iget-object v0, p0, Lcom/cmplay/cloud/b$a;->a:Lcom/cmplay/cloud/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/cmplay/cloud/b;->a(Lcom/cmplay/cloud/b;Z)V

    .line 151
    iget-object v0, p0, Lcom/cmplay/cloud/b$a;->a:Lcom/cmplay/cloud/b;

    invoke-static {v0}, Lcom/cmplay/cloud/b;->b(Lcom/cmplay/cloud/b;)V

    goto :goto_0
.end method
