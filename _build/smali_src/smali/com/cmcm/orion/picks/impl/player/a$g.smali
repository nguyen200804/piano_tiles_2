.class final Lcom/cmcm/orion/picks/impl/player/a$g;
.super Lcom/cmcm/orion/picks/impl/player/a$i;
.source "Mp4Player.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmcm/orion/picks/impl/player/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "g"
.end annotation


# instance fields
.field final synthetic a:Lcom/cmcm/orion/picks/impl/player/a;


# direct methods
.method private constructor <init>(Lcom/cmcm/orion/picks/impl/player/a;)V
    .locals 1

    .prologue
    .line 899
    iput-object p1, p0, Lcom/cmcm/orion/picks/impl/player/a$g;->a:Lcom/cmcm/orion/picks/impl/player/a;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/cmcm/orion/picks/impl/player/a$i;-><init>(Lcom/cmcm/orion/picks/impl/player/a;B)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/cmcm/orion/picks/impl/player/a;B)V
    .locals 0

    .prologue
    .line 899
    invoke-direct {p0, p1}, Lcom/cmcm/orion/picks/impl/player/a$g;-><init>(Lcom/cmcm/orion/picks/impl/player/a;)V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 2

    .prologue
    const/4 v1, 0x7

    .line 908
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/player/a$g;->a:Lcom/cmcm/orion/picks/impl/player/a;

    invoke-static {v0}, Lcom/cmcm/orion/picks/impl/player/a;->d(Lcom/cmcm/orion/picks/impl/player/a;)Lcom/cmcm/orion/picks/impl/player/a$j;

    move-result-object v0

    invoke-static {v0}, Lcom/cmcm/orion/picks/impl/player/a$j;->e(Lcom/cmcm/orion/picks/impl/player/a$j;)I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 909
    invoke-virtual {p0}, Lcom/cmcm/orion/picks/impl/player/a$g;->c()V

    .line 910
    invoke-virtual {p0, v1}, Lcom/cmcm/orion/picks/impl/player/a$g;->a(I)V

    .line 913
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 918
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/player/a$g;->a:Lcom/cmcm/orion/picks/impl/player/a;

    invoke-static {v0}, Lcom/cmcm/orion/picks/impl/player/a;->d(Lcom/cmcm/orion/picks/impl/player/a;)Lcom/cmcm/orion/picks/impl/player/a$j;

    move-result-object v0

    invoke-static {v0}, Lcom/cmcm/orion/picks/impl/player/a$j;->a(Lcom/cmcm/orion/picks/impl/player/a$j;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 935
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 926
    :pswitch_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/cmcm/orion/picks/impl/player/a$g;->b(I)V

    goto :goto_0

    .line 918
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
