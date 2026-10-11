.class public Lcom/immersion/hapticmediasdk/a/c$c;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/immersion/hapticmediasdk/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x3
    name = "c"
.end annotation


# static fields
.field public static b:I = 0x10

.field public static c:I = 0x0

.field public static d:I = 0x1


# instance fields
.field public final synthetic a:Lcom/immersion/hapticmediasdk/a/c;


# direct methods
.method private constructor <init>(Lcom/immersion/hapticmediasdk/a/c;)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, -0x1

    :goto_0
    :try_start_0
    new-array v3, v2, [I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    iput-object p1, p0, Lcom/immersion/hapticmediasdk/a/c$c;->a:Lcom/immersion/hapticmediasdk/a/c;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    return-void

    :catch_1
    move-exception v0

    throw v0

    :catch_2
    move-exception v0

    throw v0

    :catch_3
    move-exception v2

    :goto_1
    :try_start_3
    div-int/2addr v0, v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1
.end method

.method public synthetic constructor <init>(Lcom/immersion/hapticmediasdk/a/c;Lcom/immersion/hapticmediasdk/a/c$d;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/immersion/hapticmediasdk/a/c$c;-><init>(Lcom/immersion/hapticmediasdk/a/c;)V

    return-void
.end method

.method public static a()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public static b()I
    .locals 1

    const/16 v0, 0x55

    return v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v1, p0, Lcom/immersion/hapticmediasdk/a/c$c;->a:Lcom/immersion/hapticmediasdk/a/c;

    invoke-static {v1}, Lcom/immersion/hapticmediasdk/a/c;->b(Lcom/immersion/hapticmediasdk/a/c;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/immersion/hapticmediasdk/a/c$c;->a:Lcom/immersion/hapticmediasdk/a/c;

    invoke-static {v2}, Lcom/immersion/hapticmediasdk/a/c;->a(Lcom/immersion/hapticmediasdk/a/c;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/immersion/hapticmediasdk/a/c$c;->a:Lcom/immersion/hapticmediasdk/a/c;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1, v2}, Lcom/immersion/hapticmediasdk/a/c;->a(Lcom/immersion/hapticmediasdk/a/c;I)I

    iget-object v1, p0, Lcom/immersion/hapticmediasdk/a/c$c;->a:Lcom/immersion/hapticmediasdk/a/c;

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-static {v1, v2}, Lcom/immersion/hapticmediasdk/a/c;->b(Lcom/immersion/hapticmediasdk/a/c;I)I

    iget-object v1, p0, Lcom/immersion/hapticmediasdk/a/c$c;->a:Lcom/immersion/hapticmediasdk/a/c;

    invoke-static {v1, v0}, Lcom/immersion/hapticmediasdk/a/c;->c(Lcom/immersion/hapticmediasdk/a/c;I)I

    iget-object v0, p0, Lcom/immersion/hapticmediasdk/a/c$c;->a:Lcom/immersion/hapticmediasdk/a/c;

    invoke-static {v0}, Lcom/immersion/hapticmediasdk/a/c;->c(Lcom/immersion/hapticmediasdk/a/c;)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    iget-object v1, p0, Lcom/immersion/hapticmediasdk/a/c$c;->a:Lcom/immersion/hapticmediasdk/a/c;

    const-string v2, "playback_timecode"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "playback_uptime"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v1, v2, v4, v5}, Lcom/immersion/hapticmediasdk/a/c;->a(Lcom/immersion/hapticmediasdk/a/c;IJ)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/immersion/hapticmediasdk/a/c$c;->a:Lcom/immersion/hapticmediasdk/a/c;

    invoke-static {v0}, Lcom/immersion/hapticmediasdk/a/c;->d(Lcom/immersion/hapticmediasdk/a/c;)Lcom/immersion/hapticmediasdk/a/d;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/immersion/hapticmediasdk/a/c$c;->a:Lcom/immersion/hapticmediasdk/a/c;

    iget-object v1, p0, Lcom/immersion/hapticmediasdk/a/c$c;->a:Lcom/immersion/hapticmediasdk/a/c;

    invoke-static {v1}, Lcom/immersion/hapticmediasdk/a/c;->e(Lcom/immersion/hapticmediasdk/a/c;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/immersion/hapticmediasdk/a/c$c;->a:Lcom/immersion/hapticmediasdk/a/c;

    invoke-static {v2}, Lcom/immersion/hapticmediasdk/a/c;->f(Lcom/immersion/hapticmediasdk/a/c;)Lcom/immersion/hapticmediasdk/b/a;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/immersion/hapticmediasdk/a/a;->a(Ljava/lang/String;Lcom/immersion/hapticmediasdk/b/a;)Lcom/immersion/hapticmediasdk/a/d;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/immersion/hapticmediasdk/a/c;->a(Lcom/immersion/hapticmediasdk/a/c;Lcom/immersion/hapticmediasdk/a/d;)Lcom/immersion/hapticmediasdk/a/d;

    :cond_1
    iget-object v0, p0, Lcom/immersion/hapticmediasdk/a/c$c;->a:Lcom/immersion/hapticmediasdk/a/c;

    invoke-static {v0}, Lcom/immersion/hapticmediasdk/a/c;->d(Lcom/immersion/hapticmediasdk/a/c;)Lcom/immersion/hapticmediasdk/a/d;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/immersion/hapticmediasdk/a/c$c;->a:Lcom/immersion/hapticmediasdk/a/c;

    invoke-static {v0}, Lcom/immersion/hapticmediasdk/a/c;->g(Lcom/immersion/hapticmediasdk/a/c;)I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/immersion/hapticmediasdk/a/c$c;->a:Lcom/immersion/hapticmediasdk/a/c;

    iget-object v1, p0, Lcom/immersion/hapticmediasdk/a/c$c;->a:Lcom/immersion/hapticmediasdk/a/c;

    invoke-static {v1}, Lcom/immersion/hapticmediasdk/a/c;->d(Lcom/immersion/hapticmediasdk/a/c;)Lcom/immersion/hapticmediasdk/a/d;

    move-result-object v1

    invoke-interface {v1}, Lcom/immersion/hapticmediasdk/a/d;->a()I

    move-result v1

    invoke-static {v0, v1}, Lcom/immersion/hapticmediasdk/a/c;->d(Lcom/immersion/hapticmediasdk/a/c;I)I

    :cond_2
    iget-object v0, p0, Lcom/immersion/hapticmediasdk/a/c$c;->a:Lcom/immersion/hapticmediasdk/a/c;

    invoke-static {v0}, Lcom/immersion/hapticmediasdk/a/c;->d(Lcom/immersion/hapticmediasdk/a/c;)Lcom/immersion/hapticmediasdk/a/d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/immersion/hapticmediasdk/a/c$c;->a:Lcom/immersion/hapticmediasdk/a/c;

    invoke-static {v0}, Lcom/immersion/hapticmediasdk/a/c;->d(Lcom/immersion/hapticmediasdk/a/c;)Lcom/immersion/hapticmediasdk/a/d;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1}, Lcom/immersion/hapticmediasdk/a/d;->a(I)V

    goto/16 :goto_0

    :pswitch_4
    iget-object v3, p0, Lcom/immersion/hapticmediasdk/a/c$c;->a:Lcom/immersion/hapticmediasdk/a/c;

    invoke-static {v3}, Lcom/immersion/hapticmediasdk/a/c;->h(Lcom/immersion/hapticmediasdk/a/c;)V

    :goto_1
    :try_start_0
    div-int/2addr v0, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    :pswitch_5
    iget-object v0, p0, Lcom/immersion/hapticmediasdk/a/c$c;->a:Lcom/immersion/hapticmediasdk/a/c;

    invoke-static {v0}, Lcom/immersion/hapticmediasdk/a/c;->i(Lcom/immersion/hapticmediasdk/a/c;)V

    goto/16 :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/immersion/hapticmediasdk/a/c$c;->a:Lcom/immersion/hapticmediasdk/a/c;

    invoke-static {v0, p1}, Lcom/immersion/hapticmediasdk/a/c;->a(Lcom/immersion/hapticmediasdk/a/c;Landroid/os/Message;)V

    goto/16 :goto_0

    :pswitch_7
    iget-object v0, p0, Lcom/immersion/hapticmediasdk/a/c$c;->a:Lcom/immersion/hapticmediasdk/a/c;

    invoke-static {v0}, Lcom/immersion/hapticmediasdk/a/c;->j(Lcom/immersion/hapticmediasdk/a/c;)V

    goto/16 :goto_0

    :goto_2
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto/16 :goto_0

    :catch_1
    move-exception v0

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
