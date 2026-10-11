.class Lcom/cmplay/tile2/ui/AppActivity$16;
.super Landroid/content/BroadcastReceiver;
.source "AppActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmplay/tile2/ui/AppActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cmplay/tile2/ui/AppActivity;


# direct methods
.method constructor <init>(Lcom/cmplay/tile2/ui/AppActivity;)V
    .locals 0

    .prologue
    .line 612
    iput-object p1, p0, Lcom/cmplay/tile2/ui/AppActivity$16;->a:Lcom/cmplay/tile2/ui/AppActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 616
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 617
    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 618
    const-string v0, "reason"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 619
    const-string v1, "homekey"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 620
    iget-object v0, p0, Lcom/cmplay/tile2/ui/AppActivity$16;->a:Lcom/cmplay/tile2/ui/AppActivity;

    iget-boolean v0, v0, Lcom/cmplay/tile2/ui/AppActivity;->a:Z

    if-eqz v0, :cond_0

    .line 621
    const-string v0, "home"

    invoke-static {v0}, Lcom/cmplay/tile2/ui/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 622
    if-eqz v0, :cond_0

    .line 623
    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    const-class v3, Lcom/cmplay/tile2/ui/ReportService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 624
    const-string v2, "command_start_gameproblem_adname"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 625
    const-string v0, "command_start_report"

    const-string v2, "command_start_gameproblem_home"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 626
    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 633
    :cond_0
    return-void
.end method
