.class final Lcom/cmcm/orion/picks/impl/player/a$h;
.super Lcom/cmcm/orion/picks/impl/player/a$i;
.source "Mp4Player.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmcm/orion/picks/impl/player/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "h"
.end annotation


# instance fields
.field final synthetic a:Lcom/cmcm/orion/picks/impl/player/a;


# direct methods
.method private constructor <init>(Lcom/cmcm/orion/picks/impl/player/a;)V
    .locals 1

    .prologue
    .line 686
    iput-object p1, p0, Lcom/cmcm/orion/picks/impl/player/a$h;->a:Lcom/cmcm/orion/picks/impl/player/a;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/cmcm/orion/picks/impl/player/a$i;-><init>(Lcom/cmcm/orion/picks/impl/player/a;B)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/cmcm/orion/picks/impl/player/a;B)V
    .locals 0

    .prologue
    .line 686
    invoke-direct {p0, p1}, Lcom/cmcm/orion/picks/impl/player/a$h;-><init>(Lcom/cmcm/orion/picks/impl/player/a;)V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 4

    .prologue
    const/4 v3, 0x3

    const/4 v0, 0x1

    .line 695
    iget-object v1, p0, Lcom/cmcm/orion/picks/impl/player/a$h;->a:Lcom/cmcm/orion/picks/impl/player/a;

    invoke-static {v1}, Lcom/cmcm/orion/picks/impl/player/a;->e(Lcom/cmcm/orion/picks/impl/player/a;)Landroid/media/MediaPlayer;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/cmcm/orion/picks/impl/player/a$h;->a:Lcom/cmcm/orion/picks/impl/player/a;

    invoke-static {v1}, Lcom/cmcm/orion/picks/impl/player/a;->d(Lcom/cmcm/orion/picks/impl/player/a;)Lcom/cmcm/orion/picks/impl/player/a$j;

    move-result-object v1

    invoke-static {v1}, Lcom/cmcm/orion/picks/impl/player/a$j;->e(Lcom/cmcm/orion/picks/impl/player/a$j;)I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/cmcm/orion/picks/impl/player/a$h;->a:Lcom/cmcm/orion/picks/impl/player/a;

    invoke-static {v1}, Lcom/cmcm/orion/picks/impl/player/a;->d(Lcom/cmcm/orion/picks/impl/player/a;)Lcom/cmcm/orion/picks/impl/player/a$j;

    move-result-object v1

    invoke-static {v1}, Lcom/cmcm/orion/picks/impl/player/a$j;->e(Lcom/cmcm/orion/picks/impl/player/a$j;)I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/cmcm/orion/picks/impl/player/a$h;->a:Lcom/cmcm/orion/picks/impl/player/a;

    invoke-static {v1}, Lcom/cmcm/orion/picks/impl/player/a;->d(Lcom/cmcm/orion/picks/impl/player/a;)Lcom/cmcm/orion/picks/impl/player/a$j;

    move-result-object v1

    invoke-static {v1}, Lcom/cmcm/orion/picks/impl/player/a$j;->e(Lcom/cmcm/orion/picks/impl/player/a$j;)I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_2

    .line 696
    :cond_0
    iget-object v1, p0, Lcom/cmcm/orion/picks/impl/player/a$h;->a:Lcom/cmcm/orion/picks/impl/player/a;

    invoke-static {v1}, Lcom/cmcm/orion/picks/impl/player/a;->e(Lcom/cmcm/orion/picks/impl/player/a;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    .line 697
    invoke-virtual {p0, v3}, Lcom/cmcm/orion/picks/impl/player/a$h;->a(I)V

    .line 704
    :cond_1
    :goto_0
    return v0

    .line 700
    :cond_2
    iget-object v1, p0, Lcom/cmcm/orion/picks/impl/player/a$h;->a:Lcom/cmcm/orion/picks/impl/player/a;

    invoke-static {v1}, Lcom/cmcm/orion/picks/impl/player/a;->d(Lcom/cmcm/orion/picks/impl/player/a;)Lcom/cmcm/orion/picks/impl/player/a$j;

    move-result-object v1

    invoke-static {v1}, Lcom/cmcm/orion/picks/impl/player/a$j;->e(Lcom/cmcm/orion/picks/impl/player/a$j;)I

    move-result v1

    if-eq v1, v3, :cond_1

    .line 703
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/cmcm/orion/picks/impl/player/a$h;->a(I)V

    .line 704
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 710
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/player/a$h;->a:Lcom/cmcm/orion/picks/impl/player/a;

    invoke-static {v0}, Lcom/cmcm/orion/picks/impl/player/a;->d(Lcom/cmcm/orion/picks/impl/player/a;)Lcom/cmcm/orion/picks/impl/player/a$j;

    move-result-object v0

    invoke-static {v0}, Lcom/cmcm/orion/picks/impl/player/a$j;->a(Lcom/cmcm/orion/picks/impl/player/a$j;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 739
    :goto_0
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 713
    :pswitch_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/cmcm/orion/picks/impl/player/a$h;->b(I)V

    goto :goto_0

    .line 719
    :pswitch_2
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/cmcm/orion/picks/impl/player/a$h;->b(I)V

    goto :goto_0

    .line 729
    :pswitch_3
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/cmcm/orion/picks/impl/player/a$h;->b(I)V

    goto :goto_0

    .line 734
    :pswitch_4
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/cmcm/orion/picks/impl/player/a$h;->b(I)V

    goto :goto_0

    .line 710
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method
