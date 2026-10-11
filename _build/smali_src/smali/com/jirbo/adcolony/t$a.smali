.class Lcom/jirbo/adcolony/t$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jirbo/adcolony/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:Lcom/jirbo/adcolony/g;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 325
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/jirbo/adcolony/g;)V
    .locals 1

    .prologue
    .line 330
    if-nez p1, :cond_0

    sget-object v0, Lcom/jirbo/adcolony/t;->H:Lcom/jirbo/adcolony/g;

    iput-object v0, p0, Lcom/jirbo/adcolony/t$a;->a:Lcom/jirbo/adcolony/g;

    .line 332
    :goto_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/t$a;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/t$a;->sendMessage(Landroid/os/Message;)Z

    .line 333
    return-void

    .line 331
    :cond_0
    iput-object p1, p0, Lcom/jirbo/adcolony/t$a;->a:Lcom/jirbo/adcolony/g;

    goto :goto_0
.end method

.method public b(Lcom/jirbo/adcolony/g;)V
    .locals 1

    .prologue
    .line 337
    if-nez p1, :cond_0

    sget-object v0, Lcom/jirbo/adcolony/t;->H:Lcom/jirbo/adcolony/g;

    iput-object v0, p0, Lcom/jirbo/adcolony/t$a;->a:Lcom/jirbo/adcolony/g;

    .line 339
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/t$a;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/t$a;->sendMessage(Landroid/os/Message;)Z

    .line 340
    return-void

    .line 338
    :cond_0
    iput-object p1, p0, Lcom/jirbo/adcolony/t$a;->a:Lcom/jirbo/adcolony/g;

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "m"    # Landroid/os/Message;

    .prologue
    .line 345
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 387
    :cond_0
    :goto_0
    return-void

    .line 348
    :pswitch_0
    const-string v0, "skip"

    iget-object v1, p0, Lcom/jirbo/adcolony/t$a;->a:Lcom/jirbo/adcolony/g;

    invoke-static {v0, v1}, Lcom/jirbo/adcolony/t;->a(Ljava/lang/String;Lcom/jirbo/adcolony/g;)V

    .line 349
    sget-object v0, Lcom/jirbo/adcolony/t;->H:Lcom/jirbo/adcolony/g;

    if-eqz v0, :cond_0

    .line 351
    sget-object v0, Lcom/jirbo/adcolony/t;->H:Lcom/jirbo/adcolony/g;

    const/4 v1, 0x1

    iput v1, v0, Lcom/jirbo/adcolony/g;->a:I

    .line 352
    sget-object v0, Lcom/jirbo/adcolony/t;->H:Lcom/jirbo/adcolony/g;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/g;->d()V

    goto :goto_0

    .line 358
    :pswitch_1
    new-instance v0, Lcom/jirbo/adcolony/a$g;

    invoke-direct {v0}, Lcom/jirbo/adcolony/a$g;-><init>()V

    .line 359
    sget-object v1, Lcom/jirbo/adcolony/t;->J:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCVideo;->E:Lcom/jirbo/adcolony/x;

    iget-boolean v1, v1, Lcom/jirbo/adcolony/x;->P:Z

    if-eqz v1, :cond_1

    const-string v1, "html5_endcard_loading_started"

    sget-object v2, Lcom/jirbo/adcolony/t;->J:Lcom/jirbo/adcolony/ADCVideo;

    iget-boolean v2, v2, Lcom/jirbo/adcolony/ADCVideo;->j:Z

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/a$g;->b(Ljava/lang/String;Z)V

    .line 360
    :cond_1
    sget-object v1, Lcom/jirbo/adcolony/t;->J:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCVideo;->E:Lcom/jirbo/adcolony/x;

    iget-boolean v1, v1, Lcom/jirbo/adcolony/x;->P:Z

    if-eqz v1, :cond_2

    const-string v1, "html5_endcard_loading_finished"

    sget-object v2, Lcom/jirbo/adcolony/t;->J:Lcom/jirbo/adcolony/ADCVideo;

    iget-boolean v2, v2, Lcom/jirbo/adcolony/ADCVideo;->k:Z

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/a$g;->b(Ljava/lang/String;Z)V

    .line 361
    :cond_2
    sget-object v1, Lcom/jirbo/adcolony/t;->J:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCVideo;->E:Lcom/jirbo/adcolony/x;

    iget-boolean v1, v1, Lcom/jirbo/adcolony/x;->P:Z

    if-eqz v1, :cond_3

    const-string v1, "html5_endcard_loading_time"

    sget-object v2, Lcom/jirbo/adcolony/t;->J:Lcom/jirbo/adcolony/ADCVideo;

    iget-wide v2, v2, Lcom/jirbo/adcolony/ADCVideo;->o:D

    invoke-virtual {v0, v1, v2, v3}, Lcom/jirbo/adcolony/a$g;->b(Ljava/lang/String;D)V

    .line 362
    :cond_3
    sget-object v1, Lcom/jirbo/adcolony/t;->J:Lcom/jirbo/adcolony/ADCVideo;

    iget-object v1, v1, Lcom/jirbo/adcolony/ADCVideo;->E:Lcom/jirbo/adcolony/x;

    iget-boolean v1, v1, Lcom/jirbo/adcolony/x;->P:Z

    if-eqz v1, :cond_4

    const-string v1, "html5_endcard_loading_timeout"

    sget-object v2, Lcom/jirbo/adcolony/t;->J:Lcom/jirbo/adcolony/ADCVideo;

    iget-boolean v2, v2, Lcom/jirbo/adcolony/ADCVideo;->l:Z

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/a$g;->b(Ljava/lang/String;Z)V

    .line 363
    :cond_4
    sget-object v1, Lcom/jirbo/adcolony/t;->J:Lcom/jirbo/adcolony/ADCVideo;

    iget-wide v2, v1, Lcom/jirbo/adcolony/ADCVideo;->p:D

    const-wide v4, 0x40ed4c0000000000L    # 60000.0

    cmpg-double v1, v2, v4

    if-gez v1, :cond_5

    const-string v1, "endcard_time_spent"

    sget-object v2, Lcom/jirbo/adcolony/t;->J:Lcom/jirbo/adcolony/ADCVideo;

    iget-wide v2, v2, Lcom/jirbo/adcolony/ADCVideo;->p:D

    invoke-virtual {v0, v1, v2, v3}, Lcom/jirbo/adcolony/a$g;->b(Ljava/lang/String;D)V

    .line 364
    :cond_5
    const-string v1, "endcard_dissolved"

    sget-object v2, Lcom/jirbo/adcolony/t;->J:Lcom/jirbo/adcolony/ADCVideo;

    iget-boolean v2, v2, Lcom/jirbo/adcolony/ADCVideo;->m:Z

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/a$g;->b(Ljava/lang/String;Z)V

    .line 365
    const-string v1, "replay"

    sget-object v2, Lcom/jirbo/adcolony/t;->J:Lcom/jirbo/adcolony/ADCVideo;

    sget-boolean v2, Lcom/jirbo/adcolony/ADCVideo;->e:Z

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/a$g;->b(Ljava/lang/String;Z)V

    .line 366
    const-string v1, "reward"

    sget-object v2, Lcom/jirbo/adcolony/t;->J:Lcom/jirbo/adcolony/ADCVideo;

    iget-boolean v2, v2, Lcom/jirbo/adcolony/ADCVideo;->n:Z

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/a$g;->b(Ljava/lang/String;Z)V

    .line 377
    sget-object v1, Lcom/jirbo/adcolony/t;->c:Lcom/jirbo/adcolony/af;

    iget-object v1, v1, Lcom/jirbo/adcolony/af;->d:Lcom/jirbo/adcolony/as;

    const-string v2, "continue"

    iget-object v3, p0, Lcom/jirbo/adcolony/t$a;->a:Lcom/jirbo/adcolony/g;

    invoke-virtual {v1, v2, v0, v3}, Lcom/jirbo/adcolony/as;->a(Ljava/lang/String;Lcom/jirbo/adcolony/a$g;Lcom/jirbo/adcolony/g;)V

    .line 379
    sget-object v0, Lcom/jirbo/adcolony/t;->H:Lcom/jirbo/adcolony/g;

    if-eqz v0, :cond_0

    .line 381
    sget-object v0, Lcom/jirbo/adcolony/t;->H:Lcom/jirbo/adcolony/g;

    const/4 v1, 0x4

    iput v1, v0, Lcom/jirbo/adcolony/g;->a:I

    .line 382
    sget-object v0, Lcom/jirbo/adcolony/t;->H:Lcom/jirbo/adcolony/g;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/g;->d()V

    goto/16 :goto_0

    .line 345
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
