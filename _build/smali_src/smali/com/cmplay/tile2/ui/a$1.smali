.class Lcom/cmplay/tile2/ui/a$1;
.super Landroid/content/BroadcastReceiver;
.source "GameProblemLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmplay/tile2/ui/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cmplay/tile2/ui/a;


# direct methods
.method constructor <init>(Lcom/cmplay/tile2/ui/a;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/cmplay/tile2/ui/a$1;->a:Lcom/cmplay/tile2/ui/a;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 88
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 89
    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmplay/tile2/ui/a$1;->a:Lcom/cmplay/tile2/ui/a;

    invoke-static {v0}, Lcom/cmplay/tile2/ui/a;->a(Lcom/cmplay/tile2/ui/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    const-string v0, "reason"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 91
    const-string v1, "homekey"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    const-string v0, "1"

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/cmplay/tile2/ui/a$1;->a:Lcom/cmplay/tile2/ui/a;

    invoke-static {v2}, Lcom/cmplay/tile2/ui/a;->b(Lcom/cmplay/tile2/ui/a;)I

    move-result v2

    iget-object v3, p0, Lcom/cmplay/tile2/ui/a$1;->a:Lcom/cmplay/tile2/ui/a;

    invoke-static {v3}, Lcom/cmplay/tile2/ui/a;->c(Lcom/cmplay/tile2/ui/a;)Lcom/cmplay/b/a;

    move-result-object v3

    iget-object v3, v3, Lcom/cmplay/b/a;->h:Ljava/lang/String;

    iget-object v4, p0, Lcom/cmplay/tile2/ui/a$1;->a:Lcom/cmplay/tile2/ui/a;

    invoke-static {v4}, Lcom/cmplay/tile2/ui/a;->c(Lcom/cmplay/tile2/ui/a;)Lcom/cmplay/b/a;

    move-result-object v4

    iget v4, v4, Lcom/cmplay/b/a;->c:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/cmplay/g/e;->a(Ljava/lang/String;IILjava/lang/String;I)V

    .line 93
    iget-object v0, p0, Lcom/cmplay/tile2/ui/a$1;->a:Lcom/cmplay/tile2/ui/a;

    invoke-static {v0}, Lcom/cmplay/tile2/ui/a;->d(Lcom/cmplay/tile2/ui/a;)V

    .line 96
    :cond_0
    return-void
.end method
