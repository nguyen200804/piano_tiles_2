.class Lcom/cmplay/tile2/ui/ReportService$4;
.super Landroid/content/BroadcastReceiver;
.source "ReportService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmplay/tile2/ui/ReportService;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cmplay/tile2/ui/ReportService;


# direct methods
.method constructor <init>(Lcom/cmplay/tile2/ui/ReportService;)V
    .locals 0

    .prologue
    .line 209
    iput-object p1, p0, Lcom/cmplay/tile2/ui/ReportService$4;->a:Lcom/cmplay/tile2/ui/ReportService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 213
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 214
    const-string v1, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    invoke-static {}, Lcom/cmplay/util/c/b;->a()Lcom/cmplay/util/c/b;

    move-result-object v0

    .line 216
    invoke-virtual {v0}, Lcom/cmplay/util/c/b;->d()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/cmplay/util/c/b;->b(I)V

    .line 217
    const-string v0, "whitetile2_eat_srv"

    const-string v1, " mScreenObserver ACTION_POWER_CONNECTED!!! "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    :cond_0
    return-void
.end method
