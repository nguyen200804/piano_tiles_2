.class final Lcom/cmcm/orion/picks/impl/player/a$f;
.super Lcom/cmcm/orion/picks/impl/player/a$i;
.source "Mp4Player.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmcm/orion/picks/impl/player/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "f"
.end annotation


# instance fields
.field final synthetic a:Lcom/cmcm/orion/picks/impl/player/a;


# direct methods
.method private constructor <init>(Lcom/cmcm/orion/picks/impl/player/a;)V
    .locals 1

    .prologue
    .line 617
    iput-object p1, p0, Lcom/cmcm/orion/picks/impl/player/a$f;->a:Lcom/cmcm/orion/picks/impl/player/a;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/cmcm/orion/picks/impl/player/a$i;-><init>(Lcom/cmcm/orion/picks/impl/player/a;B)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/cmcm/orion/picks/impl/player/a;B)V
    .locals 0

    .prologue
    .line 617
    invoke-direct {p0, p1}, Lcom/cmcm/orion/picks/impl/player/a$f;-><init>(Lcom/cmcm/orion/picks/impl/player/a;)V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 626
    iget-object v2, p0, Lcom/cmcm/orion/picks/impl/player/a$f;->a:Lcom/cmcm/orion/picks/impl/player/a;

    invoke-static {v2}, Lcom/cmcm/orion/picks/impl/player/a;->e(Lcom/cmcm/orion/picks/impl/player/a;)Landroid/media/MediaPlayer;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/cmcm/orion/picks/impl/player/a$f;->a:Lcom/cmcm/orion/picks/impl/player/a;

    invoke-static {v2}, Lcom/cmcm/orion/picks/impl/player/a;->d(Lcom/cmcm/orion/picks/impl/player/a;)Lcom/cmcm/orion/picks/impl/player/a$j;

    move-result-object v2

    invoke-static {v2}, Lcom/cmcm/orion/picks/impl/player/a$j;->e(Lcom/cmcm/orion/picks/impl/player/a$j;)I

    move-result v2

    if-eq v2, v0, :cond_0

    iget-object v2, p0, Lcom/cmcm/orion/picks/impl/player/a$f;->a:Lcom/cmcm/orion/picks/impl/player/a;

    invoke-static {v2}, Lcom/cmcm/orion/picks/impl/player/a;->d(Lcom/cmcm/orion/picks/impl/player/a;)Lcom/cmcm/orion/picks/impl/player/a$j;

    move-result-object v2

    invoke-static {v2}, Lcom/cmcm/orion/picks/impl/player/a$j;->e(Lcom/cmcm/orion/picks/impl/player/a$j;)I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_3

    .line 628
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/cmcm/orion/picks/impl/player/a$f;->a:Lcom/cmcm/orion/picks/impl/player/a;

    invoke-static {v2}, Lcom/cmcm/orion/picks/impl/player/a;->e(Lcom/cmcm/orion/picks/impl/player/a;)Landroid/media/MediaPlayer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->prepare()V

    .line 630
    iget-object v2, p0, Lcom/cmcm/orion/picks/impl/player/a$f;->a:Lcom/cmcm/orion/picks/impl/player/a;

    invoke-static {v2}, Lcom/cmcm/orion/picks/impl/player/a;->c(Lcom/cmcm/orion/picks/impl/player/a;)I

    move-result v2

    if-gtz v2, :cond_2

    .line 631
    iget-object v2, p0, Lcom/cmcm/orion/picks/impl/player/a$f;->a:Lcom/cmcm/orion/picks/impl/player/a;

    iget-object v3, p0, Lcom/cmcm/orion/picks/impl/player/a$f;->a:Lcom/cmcm/orion/picks/impl/player/a;

    invoke-static {v3}, Lcom/cmcm/orion/picks/impl/player/a;->e(Lcom/cmcm/orion/picks/impl/player/a;)Landroid/media/MediaPlayer;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v3

    invoke-static {v2, v3}, Lcom/cmcm/orion/picks/impl/player/a;->a(Lcom/cmcm/orion/picks/impl/player/a;I)I

    .line 633
    iget-object v2, p0, Lcom/cmcm/orion/picks/impl/player/a$f;->a:Lcom/cmcm/orion/picks/impl/player/a;

    invoke-static {v2}, Lcom/cmcm/orion/picks/impl/player/a;->c(Lcom/cmcm/orion/picks/impl/player/a;)I

    move-result v2

    const v3, 0x5265c00

    if-lt v2, v3, :cond_1

    .line 634
    iget-object v2, p0, Lcom/cmcm/orion/picks/impl/player/a$f;->a:Lcom/cmcm/orion/picks/impl/player/a;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/cmcm/orion/picks/impl/player/a;->a(Lcom/cmcm/orion/picks/impl/player/a;I)I

    .line 636
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "media player getDuration "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/cmcm/orion/picks/impl/player/a$f;->a:Lcom/cmcm/orion/picks/impl/player/a;

    invoke-static {v3}, Lcom/cmcm/orion/picks/impl/player/a;->c(Lcom/cmcm/orion/picks/impl/player/a;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 639
    :cond_2
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/cmcm/orion/picks/impl/player/a$f;->a(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 647
    :goto_0
    return v0

    .line 642
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 643
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/cmcm/orion/picks/impl/player/a$f;->a(I)V

    move v0, v1

    .line 644
    goto :goto_0

    :cond_3
    move v0, v1

    .line 647
    goto :goto_0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 653
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/player/a$f;->a:Lcom/cmcm/orion/picks/impl/player/a;

    invoke-static {v0}, Lcom/cmcm/orion/picks/impl/player/a;->d(Lcom/cmcm/orion/picks/impl/player/a;)Lcom/cmcm/orion/picks/impl/player/a$j;

    move-result-object v0

    invoke-static {v0}, Lcom/cmcm/orion/picks/impl/player/a$j;->a(Lcom/cmcm/orion/picks/impl/player/a$j;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 682
    :goto_0
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 656
    :pswitch_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/cmcm/orion/picks/impl/player/a$f;->b(I)V

    goto :goto_0

    .line 667
    :pswitch_2
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/cmcm/orion/picks/impl/player/a$f;->b(I)V

    goto :goto_0

    .line 672
    :pswitch_3
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/cmcm/orion/picks/impl/player/a$f;->b(I)V

    goto :goto_0

    .line 677
    :pswitch_4
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/cmcm/orion/picks/impl/player/a$f;->b(I)V

    goto :goto_0

    .line 653
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
