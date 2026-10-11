.class Lcom/cmplay/c/a/a$a;
.super Landroid/content/BroadcastReceiver;
.source "CCrashUpdater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmplay/c/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/cmplay/c/a/a;


# direct methods
.method constructor <init>(Lcom/cmplay/c/a/a;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/cmplay/c/a/a$a;->a:Lcom/cmplay/c/a/a;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 120
    if-eqz p2, :cond_0

    const-string v0, "tiles2_ccrash_delay_task_action"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 125
    :cond_0
    :goto_0
    return-void

    .line 123
    :cond_1
    iget-object v0, p0, Lcom/cmplay/c/a/a$a;->a:Lcom/cmplay/c/a/a;

    invoke-static {v0}, Lcom/cmplay/c/a/a;->a(Lcom/cmplay/c/a/a;)V

    .line 124
    iget-object v0, p0, Lcom/cmplay/c/a/a$a;->a:Lcom/cmplay/c/a/a;

    invoke-static {v0}, Lcom/cmplay/c/a/a;->b(Lcom/cmplay/c/a/a;)V

    goto :goto_0
.end method
