.class Lcom/cmplay/exitpopup/GameExitPopupActivity$3;
.super Landroid/content/BroadcastReceiver;
.source "GameExitPopupActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmplay/exitpopup/GameExitPopupActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cmplay/exitpopup/GameExitPopupActivity;


# direct methods
.method constructor <init>(Lcom/cmplay/exitpopup/GameExitPopupActivity;)V
    .locals 0

    .prologue
    .line 208
    iput-object p1, p0, Lcom/cmplay/exitpopup/GameExitPopupActivity$3;->a:Lcom/cmplay/exitpopup/GameExitPopupActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 212
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 213
    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmplay/exitpopup/GameExitPopupActivity$3;->a:Lcom/cmplay/exitpopup/GameExitPopupActivity;

    invoke-static {v0}, Lcom/cmplay/exitpopup/GameExitPopupActivity;->a(Lcom/cmplay/exitpopup/GameExitPopupActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    const-string v0, "reason"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 215
    const-string v1, "homekey"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/cmplay/exitpopup/GameExitPopupActivity$3;->a:Lcom/cmplay/exitpopup/GameExitPopupActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/cmplay/exitpopup/GameExitPopupActivity;->a(Lcom/cmplay/exitpopup/GameExitPopupActivity;Z)Z

    .line 217
    const-string v0, "\u6309home\u952e\u9500\u6bc1-----"

    invoke-static {v0}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;)V

    .line 218
    iget-object v0, p0, Lcom/cmplay/exitpopup/GameExitPopupActivity$3;->a:Lcom/cmplay/exitpopup/GameExitPopupActivity;

    const-string v1, "4"

    invoke-static {v0, v1}, Lcom/cmplay/exitpopup/GameExitPopupActivity;->a(Lcom/cmplay/exitpopup/GameExitPopupActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 219
    iget-object v0, p0, Lcom/cmplay/exitpopup/GameExitPopupActivity$3;->a:Lcom/cmplay/exitpopup/GameExitPopupActivity;

    invoke-virtual {v0}, Lcom/cmplay/exitpopup/GameExitPopupActivity;->finish()V

    .line 222
    :cond_0
    return-void
.end method
