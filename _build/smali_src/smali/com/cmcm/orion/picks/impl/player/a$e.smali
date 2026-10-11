.class final Lcom/cmcm/orion/picks/impl/player/a$e;
.super Lcom/cmcm/orion/picks/impl/player/a$i;
.source "Mp4Player.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmcm/orion/picks/impl/player/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "e"
.end annotation


# instance fields
.field final synthetic a:Lcom/cmcm/orion/picks/impl/player/a;


# direct methods
.method private constructor <init>(Lcom/cmcm/orion/picks/impl/player/a;)V
    .locals 1

    .prologue
    .line 797
    iput-object p1, p0, Lcom/cmcm/orion/picks/impl/player/a$e;->a:Lcom/cmcm/orion/picks/impl/player/a;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/cmcm/orion/picks/impl/player/a$i;-><init>(Lcom/cmcm/orion/picks/impl/player/a;B)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/cmcm/orion/picks/impl/player/a;B)V
    .locals 0

    .prologue
    .line 797
    invoke-direct {p0, p1}, Lcom/cmcm/orion/picks/impl/player/a$e;-><init>(Lcom/cmcm/orion/picks/impl/player/a;)V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 2

    .prologue
    .line 806
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/player/a$e;->a:Lcom/cmcm/orion/picks/impl/player/a;

    invoke-static {v0}, Lcom/cmcm/orion/picks/impl/player/a;->e(Lcom/cmcm/orion/picks/impl/player/a;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/player/a$e;->a:Lcom/cmcm/orion/picks/impl/player/a;

    invoke-static {v0}, Lcom/cmcm/orion/picks/impl/player/a;->d(Lcom/cmcm/orion/picks/impl/player/a;)Lcom/cmcm/orion/picks/impl/player/a$j;

    move-result-object v0

    invoke-static {v0}, Lcom/cmcm/orion/picks/impl/player/a$j;->e(Lcom/cmcm/orion/picks/impl/player/a$j;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 807
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/cmcm/orion/picks/impl/player/a$e;->a(I)V

    .line 808
    const/4 v0, 0x1

    .line 811
    :goto_0
    return v0

    .line 810
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/cmcm/orion/picks/impl/player/a$e;->a(I)V

    .line 811
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 817
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/player/a$e;->a:Lcom/cmcm/orion/picks/impl/player/a;

    invoke-static {v0}, Lcom/cmcm/orion/picks/impl/player/a;->d(Lcom/cmcm/orion/picks/impl/player/a;)Lcom/cmcm/orion/picks/impl/player/a$j;

    move-result-object v0

    invoke-static {v0}, Lcom/cmcm/orion/picks/impl/player/a$j;->a(Lcom/cmcm/orion/picks/impl/player/a$j;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 846
    :goto_0
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 820
    :pswitch_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/cmcm/orion/picks/impl/player/a$e;->b(I)V

    goto :goto_0

    .line 826
    :pswitch_2
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/cmcm/orion/picks/impl/player/a$e;->b(I)V

    goto :goto_0

    .line 832
    :pswitch_3
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/cmcm/orion/picks/impl/player/a$e;->b(I)V

    goto :goto_0

    .line 841
    :pswitch_4
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/cmcm/orion/picks/impl/player/a$e;->b(I)V

    goto :goto_0

    .line 817
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method
