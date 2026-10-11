.class Lcom/jirbo/adcolony/x$b;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jirbo/adcolony/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/jirbo/adcolony/x;


# direct methods
.method constructor <init>(Lcom/jirbo/adcolony/x;)V
    .locals 0

    .prologue
    .line 1512
    iput-object p1, p0, Lcom/jirbo/adcolony/x$b;->a:Lcom/jirbo/adcolony/x;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1513
    invoke-virtual {p0}, Lcom/jirbo/adcolony/x$b;->a()V

    .line 1514
    return-void
.end method


# virtual methods
.method a()V
    .locals 4

    .prologue
    .line 1518
    invoke-virtual {p0}, Lcom/jirbo/adcolony/x$b;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const-wide/16 v2, 0x1f4

    invoke-virtual {p0, v0, v2, v3}, Lcom/jirbo/adcolony/x$b;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1519
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "m"    # Landroid/os/Message;

    .prologue
    .line 1523
    invoke-virtual {p0}, Lcom/jirbo/adcolony/x$b;->a()V

    .line 1525
    iget-object v0, p0, Lcom/jirbo/adcolony/x$b;->a:Lcom/jirbo/adcolony/x;

    iget-object v0, v0, Lcom/jirbo/adcolony/x;->d:Lcom/jirbo/adcolony/ADCVideo;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/ADCVideo;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1542
    :cond_0
    :goto_0
    return-void

    .line 1526
    :cond_1
    iget-object v0, p0, Lcom/jirbo/adcolony/x$b;->a:Lcom/jirbo/adcolony/x;

    iget-object v0, v0, Lcom/jirbo/adcolony/x;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCVideo;->D:Lcom/jirbo/adcolony/e;

    if-eqz v0, :cond_0

    .line 1528
    monitor-enter p0

    .line 1530
    :try_start_0
    iget-object v0, p0, Lcom/jirbo/adcolony/x$b;->a:Lcom/jirbo/adcolony/x;

    iget-object v0, v0, Lcom/jirbo/adcolony/x;->ad:Lcom/jirbo/adcolony/u$b;

    if-eqz v0, :cond_3

    .line 1532
    iget-object v0, p0, Lcom/jirbo/adcolony/x$b;->a:Lcom/jirbo/adcolony/x;

    iget-object v0, v0, Lcom/jirbo/adcolony/x;->ad:Lcom/jirbo/adcolony/u$b;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/u$b;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/jirbo/adcolony/x$b;->a:Lcom/jirbo/adcolony/x;

    iget-object v0, v0, Lcom/jirbo/adcolony/x;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCVideo;->D:Lcom/jirbo/adcolony/e;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/e;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1534
    iget-object v0, p0, Lcom/jirbo/adcolony/x$b;->a:Lcom/jirbo/adcolony/x;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/jirbo/adcolony/x;->ad:Lcom/jirbo/adcolony/u$b;

    .line 1535
    iget-object v0, p0, Lcom/jirbo/adcolony/x$b;->a:Lcom/jirbo/adcolony/x;

    const/4 v1, 0x0

    iput v1, v0, Lcom/jirbo/adcolony/x;->t:I

    .line 1536
    iget-object v0, p0, Lcom/jirbo/adcolony/x$b;->a:Lcom/jirbo/adcolony/x;

    iget-object v0, v0, Lcom/jirbo/adcolony/x;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCVideo;->D:Lcom/jirbo/adcolony/e;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/jirbo/adcolony/x$b;->a:Lcom/jirbo/adcolony/x;

    iget-object v0, v0, Lcom/jirbo/adcolony/x;->d:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v0, v0, Lcom/jirbo/adcolony/ADCVideo;->D:Lcom/jirbo/adcolony/e;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/e;->a()V

    .line 1537
    :cond_2
    iget-object v0, p0, Lcom/jirbo/adcolony/x$b;->a:Lcom/jirbo/adcolony/x;

    iget-object v0, v0, Lcom/jirbo/adcolony/x;->d:Lcom/jirbo/adcolony/ADCVideo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/jirbo/adcolony/ADCVideo;->m:Z

    .line 1538
    iget-object v0, p0, Lcom/jirbo/adcolony/x$b;->a:Lcom/jirbo/adcolony/x;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/x;->f()V

    .line 1541
    :cond_3
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
