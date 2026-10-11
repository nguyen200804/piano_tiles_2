.class final Lcom/cmcm/orion/picks/impl/player/a$d;
.super Lcom/cmcm/orion/picks/impl/player/a$i;
.source "Mp4Player.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmcm/orion/picks/impl/player/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lcom/cmcm/orion/picks/impl/player/a;


# direct methods
.method private constructor <init>(Lcom/cmcm/orion/picks/impl/player/a;)V
    .locals 1

    .prologue
    .line 743
    iput-object p1, p0, Lcom/cmcm/orion/picks/impl/player/a$d;->a:Lcom/cmcm/orion/picks/impl/player/a;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/cmcm/orion/picks/impl/player/a$i;-><init>(Lcom/cmcm/orion/picks/impl/player/a;B)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/cmcm/orion/picks/impl/player/a;B)V
    .locals 0

    .prologue
    .line 743
    invoke-direct {p0, p1}, Lcom/cmcm/orion/picks/impl/player/a$d;-><init>(Lcom/cmcm/orion/picks/impl/player/a;)V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 2

    .prologue
    .line 752
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/player/a$d;->a:Lcom/cmcm/orion/picks/impl/player/a;

    invoke-static {v0}, Lcom/cmcm/orion/picks/impl/player/a;->e(Lcom/cmcm/orion/picks/impl/player/a;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/player/a$d;->a:Lcom/cmcm/orion/picks/impl/player/a;

    invoke-static {v0}, Lcom/cmcm/orion/picks/impl/player/a;->d(Lcom/cmcm/orion/picks/impl/player/a;)Lcom/cmcm/orion/picks/impl/player/a$j;

    move-result-object v0

    invoke-static {v0}, Lcom/cmcm/orion/picks/impl/player/a$j;->e(Lcom/cmcm/orion/picks/impl/player/a$j;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 753
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/player/a$d;->a:Lcom/cmcm/orion/picks/impl/player/a;

    invoke-static {v0}, Lcom/cmcm/orion/picks/impl/player/a;->e(Lcom/cmcm/orion/picks/impl/player/a;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 754
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/cmcm/orion/picks/impl/player/a$d;->a(I)V

    .line 755
    const/4 v0, 0x1

    .line 758
    :goto_0
    return v0

    .line 757
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/cmcm/orion/picks/impl/player/a$d;->a(I)V

    .line 758
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 764
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/player/a$d;->a:Lcom/cmcm/orion/picks/impl/player/a;

    invoke-static {v0}, Lcom/cmcm/orion/picks/impl/player/a;->d(Lcom/cmcm/orion/picks/impl/player/a;)Lcom/cmcm/orion/picks/impl/player/a$j;

    move-result-object v0

    invoke-static {v0}, Lcom/cmcm/orion/picks/impl/player/a$j;->a(Lcom/cmcm/orion/picks/impl/player/a$j;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 793
    :goto_0
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 767
    :pswitch_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/cmcm/orion/picks/impl/player/a$d;->b(I)V

    goto :goto_0

    .line 773
    :pswitch_2
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/cmcm/orion/picks/impl/player/a$d;->b(I)V

    goto :goto_0

    .line 779
    :pswitch_3
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/cmcm/orion/picks/impl/player/a$d;->b(I)V

    goto :goto_0

    .line 788
    :pswitch_4
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/cmcm/orion/picks/impl/player/a$d;->b(I)V

    goto :goto_0

    .line 764
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method
