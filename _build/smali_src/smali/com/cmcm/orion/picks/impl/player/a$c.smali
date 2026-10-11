.class final Lcom/cmcm/orion/picks/impl/player/a$c;
.super Lcom/cmcm/orion/picks/impl/player/a$i;
.source "Mp4Player.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmcm/orion/picks/impl/player/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/cmcm/orion/picks/impl/player/a;


# direct methods
.method private constructor <init>(Lcom/cmcm/orion/picks/impl/player/a;)V
    .locals 1

    .prologue
    .line 507
    iput-object p1, p0, Lcom/cmcm/orion/picks/impl/player/a$c;->a:Lcom/cmcm/orion/picks/impl/player/a;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/cmcm/orion/picks/impl/player/a$i;-><init>(Lcom/cmcm/orion/picks/impl/player/a;B)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/cmcm/orion/picks/impl/player/a;B)V
    .locals 0

    .prologue
    .line 507
    invoke-direct {p0, p1}, Lcom/cmcm/orion/picks/impl/player/a$c;-><init>(Lcom/cmcm/orion/picks/impl/player/a;)V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 517
    iget-object v2, p0, Lcom/cmcm/orion/picks/impl/player/a$c;->a:Lcom/cmcm/orion/picks/impl/player/a;

    invoke-static {v2}, Lcom/cmcm/orion/picks/impl/player/a;->d(Lcom/cmcm/orion/picks/impl/player/a;)Lcom/cmcm/orion/picks/impl/player/a$j;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cmcm/orion/picks/impl/player/a$j;->a()Landroid/view/Surface;

    move-result-object v2

    .line 518
    iget-object v3, p0, Lcom/cmcm/orion/picks/impl/player/a$c;->a:Lcom/cmcm/orion/picks/impl/player/a;

    invoke-static {v3}, Lcom/cmcm/orion/picks/impl/player/a;->e(Lcom/cmcm/orion/picks/impl/player/a;)Landroid/media/MediaPlayer;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/cmcm/orion/picks/impl/player/a$c;->a:Lcom/cmcm/orion/picks/impl/player/a;

    invoke-static {v3}, Lcom/cmcm/orion/picks/impl/player/a;->d(Lcom/cmcm/orion/picks/impl/player/a;)Lcom/cmcm/orion/picks/impl/player/a$j;

    move-result-object v3

    invoke-static {v3}, Lcom/cmcm/orion/picks/impl/player/a$j;->e(Lcom/cmcm/orion/picks/impl/player/a$j;)I

    move-result v3

    if-nez v3, :cond_2

    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/cmcm/orion/picks/impl/player/a$c;->a:Lcom/cmcm/orion/picks/impl/player/a;

    invoke-static {v3}, Lcom/cmcm/orion/picks/impl/player/a;->f(Lcom/cmcm/orion/picks/impl/player/a;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/cmcm/orion/picks/impl/a$1;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 523
    :try_start_0
    iget-object v3, p0, Lcom/cmcm/orion/picks/impl/player/a$c;->a:Lcom/cmcm/orion/picks/impl/player/a;

    invoke-static {v3}, Lcom/cmcm/orion/picks/impl/player/a;->g(Lcom/cmcm/orion/picks/impl/player/a;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/cmcm/orion/picks/impl/player/a$c;->a:Lcom/cmcm/orion/picks/impl/player/a;

    invoke-static {v3}, Lcom/cmcm/orion/picks/impl/player/a;->h(Lcom/cmcm/orion/picks/impl/player/a;)F

    move-result v3

    cmpl-float v3, v3, v4

    if-gtz v3, :cond_0

    iget-object v3, p0, Lcom/cmcm/orion/picks/impl/player/a$c;->a:Lcom/cmcm/orion/picks/impl/player/a;

    invoke-static {v3}, Lcom/cmcm/orion/picks/impl/player/a;->i(Lcom/cmcm/orion/picks/impl/player/a;)F

    move-result v3

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    .line 524
    :cond_0
    iget-object v3, p0, Lcom/cmcm/orion/picks/impl/player/a$c;->a:Lcom/cmcm/orion/picks/impl/player/a;

    invoke-static {v3}, Lcom/cmcm/orion/picks/impl/player/a;->e(Lcom/cmcm/orion/picks/impl/player/a;)Landroid/media/MediaPlayer;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 525
    iget-object v3, p0, Lcom/cmcm/orion/picks/impl/player/a$c;->a:Lcom/cmcm/orion/picks/impl/player/a;

    invoke-static {v3}, Lcom/cmcm/orion/picks/impl/player/a;->e(Lcom/cmcm/orion/picks/impl/player/a;)Landroid/media/MediaPlayer;

    move-result-object v3

    iget-object v4, p0, Lcom/cmcm/orion/picks/impl/player/a$c;->a:Lcom/cmcm/orion/picks/impl/player/a;

    invoke-static {v4}, Lcom/cmcm/orion/picks/impl/player/a;->h(Lcom/cmcm/orion/picks/impl/player/a;)F

    move-result v4

    iget-object v5, p0, Lcom/cmcm/orion/picks/impl/player/a$c;->a:Lcom/cmcm/orion/picks/impl/player/a;

    invoke-static {v5}, Lcom/cmcm/orion/picks/impl/player/a;->i(Lcom/cmcm/orion/picks/impl/player/a;)F

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 530
    :goto_0
    iget-object v3, p0, Lcom/cmcm/orion/picks/impl/player/a$c;->a:Lcom/cmcm/orion/picks/impl/player/a;

    invoke-static {v3}, Lcom/cmcm/orion/picks/impl/player/a;->e(Lcom/cmcm/orion/picks/impl/player/a;)Landroid/media/MediaPlayer;

    move-result-object v3

    iget-object v4, p0, Lcom/cmcm/orion/picks/impl/player/a$c;->a:Lcom/cmcm/orion/picks/impl/player/a;

    invoke-static {v4}, Lcom/cmcm/orion/picks/impl/player/a;->j(Lcom/cmcm/orion/picks/impl/player/a;)Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 531
    iget-object v3, p0, Lcom/cmcm/orion/picks/impl/player/a$c;->a:Lcom/cmcm/orion/picks/impl/player/a;

    invoke-static {v3}, Lcom/cmcm/orion/picks/impl/player/a;->e(Lcom/cmcm/orion/picks/impl/player/a;)Landroid/media/MediaPlayer;

    move-result-object v3

    new-instance v4, Lcom/cmcm/orion/picks/impl/player/a$c$1;

    invoke-direct {v4, p0}, Lcom/cmcm/orion/picks/impl/player/a$c$1;-><init>(Lcom/cmcm/orion/picks/impl/player/a$c;)V

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 554
    iget-object v3, p0, Lcom/cmcm/orion/picks/impl/player/a$c;->a:Lcom/cmcm/orion/picks/impl/player/a;

    invoke-static {v3}, Lcom/cmcm/orion/picks/impl/player/a;->e(Lcom/cmcm/orion/picks/impl/player/a;)Landroid/media/MediaPlayer;

    move-result-object v3

    new-instance v4, Lcom/cmcm/orion/picks/impl/player/a$c$2;

    invoke-direct {v4, p0}, Lcom/cmcm/orion/picks/impl/player/a$c$2;-><init>(Lcom/cmcm/orion/picks/impl/player/a$c;)V

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 567
    iget-object v3, p0, Lcom/cmcm/orion/picks/impl/player/a$c;->a:Lcom/cmcm/orion/picks/impl/player/a;

    invoke-static {v3}, Lcom/cmcm/orion/picks/impl/player/a;->e(Lcom/cmcm/orion/picks/impl/player/a;)Landroid/media/MediaPlayer;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 569
    new-instance v2, Ljava/io/FileInputStream;

    iget-object v3, p0, Lcom/cmcm/orion/picks/impl/player/a$c;->a:Lcom/cmcm/orion/picks/impl/player/a;

    invoke-static {v3}, Lcom/cmcm/orion/picks/impl/player/a;->f(Lcom/cmcm/orion/picks/impl/player/a;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 570
    iget-object v3, p0, Lcom/cmcm/orion/picks/impl/player/a$c;->a:Lcom/cmcm/orion/picks/impl/player/a;

    invoke-static {v3}, Lcom/cmcm/orion/picks/impl/player/a;->e(Lcom/cmcm/orion/picks/impl/player/a;)Landroid/media/MediaPlayer;

    move-result-object v3

    invoke-virtual {v2}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 571
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 574
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/cmcm/orion/picks/impl/player/a$c;->a(I)V

    .line 582
    :goto_1
    return v0

    .line 527
    :cond_1
    iget-object v3, p0, Lcom/cmcm/orion/picks/impl/player/a$c;->a:Lcom/cmcm/orion/picks/impl/player/a;

    invoke-static {v3}, Lcom/cmcm/orion/picks/impl/player/a;->e(Lcom/cmcm/orion/picks/impl/player/a;)Landroid/media/MediaPlayer;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/media/MediaPlayer;->setVolume(FF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 577
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 578
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/cmcm/orion/picks/impl/player/a$c;->a(I)V

    move v0, v1

    .line 579
    goto :goto_1

    :cond_2
    move v0, v1

    .line 582
    goto :goto_1
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 588
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/player/a$c;->a:Lcom/cmcm/orion/picks/impl/player/a;

    invoke-static {v0}, Lcom/cmcm/orion/picks/impl/player/a;->d(Lcom/cmcm/orion/picks/impl/player/a;)Lcom/cmcm/orion/picks/impl/player/a$j;

    move-result-object v0

    invoke-static {v0}, Lcom/cmcm/orion/picks/impl/player/a$j;->a(Lcom/cmcm/orion/picks/impl/player/a$j;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 613
    :goto_0
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 590
    :pswitch_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/cmcm/orion/picks/impl/player/a$c;->b(I)V

    goto :goto_0

    .line 603
    :pswitch_2
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/cmcm/orion/picks/impl/player/a$c;->b(I)V

    goto :goto_0

    .line 608
    :pswitch_3
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/cmcm/orion/picks/impl/player/a$c;->b(I)V

    goto :goto_0

    .line 588
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
