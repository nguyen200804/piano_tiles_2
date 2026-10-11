.class Lcom/cmplay/tile2/ui/ReportService$3;
.super Landroid/content/BroadcastReceiver;
.source "ReportService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmplay/tile2/ui/ReportService;->b()V
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
    .line 179
    iput-object p1, p0, Lcom/cmplay/tile2/ui/ReportService$3;->a:Lcom/cmplay/tile2/ui/ReportService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    .line 182
    if-eqz p2, :cond_2

    .line 183
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 184
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 185
    const-string v0, "level"

    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 186
    const-string v1, "scale"

    const/16 v2, 0x64

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 187
    const-string v2, "voltage"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 188
    mul-int/lit8 v0, v0, 0x64

    div-int/2addr v0, v1

    .line 189
    invoke-static {}, Lcom/cmplay/util/c/b;->a()Lcom/cmplay/util/c/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cmplay/util/c/b;->e()I

    move-result v1

    .line 190
    if-eq v1, v2, :cond_0

    .line 191
    invoke-static {}, Lcom/cmplay/util/c/b;->a()Lcom/cmplay/util/c/b;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/cmplay/util/c/b;->c(I)V

    .line 193
    :cond_0
    invoke-static {}, Lcom/cmplay/util/c/b;->a()Lcom/cmplay/util/c/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cmplay/util/c/b;->c()I

    move-result v1

    .line 194
    if-eq v0, v1, :cond_1

    .line 195
    invoke-static {}, Lcom/cmplay/util/c/b;->a()Lcom/cmplay/util/c/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/cmplay/util/c/b;->a(I)V

    .line 197
    :cond_1
    const-string v0, "whitetile2_eat_srv"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " mBatteryChangedReceiver voltage "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :cond_2
    return-void
.end method
