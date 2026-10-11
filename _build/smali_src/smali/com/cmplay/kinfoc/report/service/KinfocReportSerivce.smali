.class public Lcom/cmplay/kinfoc/report/service/KinfocReportSerivce;
.super Landroid/app/Service;
.source "KinfocReportSerivce.java"


# instance fields
.field private a:Lcom/cmplay/kinfoc/report/service/NetWorkChangeReceiver$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 27
    new-instance v0, Lcom/cmplay/kinfoc/report/service/KinfocReportSerivce$1;

    invoke-direct {v0, p0}, Lcom/cmplay/kinfoc/report/service/KinfocReportSerivce$1;-><init>(Lcom/cmplay/kinfoc/report/service/KinfocReportSerivce;)V

    iput-object v0, p0, Lcom/cmplay/kinfoc/report/service/KinfocReportSerivce;->a:Lcom/cmplay/kinfoc/report/service/NetWorkChangeReceiver$a;

    return-void
.end method

.method private a(Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 58
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 59
    if-nez v0, :cond_0

    .line 84
    :goto_0
    return-void

    .line 60
    :cond_0
    const-string v1, "extra_type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 62
    packed-switch v0, :pswitch_data_0

    .line 83
    :goto_1
    const-string v1, "ymymym"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ReportSerivce handleIntent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 66
    :pswitch_0
    :try_start_0
    invoke-static {}, Lcom/cmplay/kinfoc/report/d;->a()Lcom/cmplay/kinfoc/report/d;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/cmplay/kinfoc/report/d;->a(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 67
    :catch_0
    move-exception v1

    goto :goto_1

    .line 74
    :pswitch_1
    :try_start_1
    invoke-static {}, Lcom/cmplay/kinfoc/report/d;->a()Lcom/cmplay/kinfoc/report/d;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/cmplay/kinfoc/report/d;->a(Z)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 75
    :catch_1
    move-exception v1

    goto :goto_1

    .line 62
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 45
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 38
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 39
    iget-object v0, p0, Lcom/cmplay/kinfoc/report/service/KinfocReportSerivce;->a:Lcom/cmplay/kinfoc/report/service/NetWorkChangeReceiver$a;

    invoke-static {v0}, Lcom/cmplay/kinfoc/report/service/NetWorkChangeReceiver;->a(Lcom/cmplay/kinfoc/report/service/NetWorkChangeReceiver$a;)V

    .line 40
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/cmplay/kinfoc/report/service/KinfocReportSerivce;->a:Lcom/cmplay/kinfoc/report/service/NetWorkChangeReceiver$a;

    invoke-static {v0}, Lcom/cmplay/kinfoc/report/service/NetWorkChangeReceiver;->b(Lcom/cmplay/kinfoc/report/service/NetWorkChangeReceiver$a;)V

    .line 89
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 90
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 50
    if-eqz p1, :cond_0

    .line 51
    invoke-direct {p0, p1}, Lcom/cmplay/kinfoc/report/service/KinfocReportSerivce;->a(Landroid/content/Intent;)V

    .line 54
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
