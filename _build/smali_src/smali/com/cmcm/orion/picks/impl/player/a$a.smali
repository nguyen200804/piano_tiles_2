.class final Lcom/cmcm/orion/picks/impl/player/a$a;
.super Lcom/cmcm/orion/picks/impl/player/a$i;
.source "Mp4Player.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmcm/orion/picks/impl/player/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/cmcm/orion/picks/impl/player/a;


# direct methods
.method private constructor <init>(Lcom/cmcm/orion/picks/impl/player/a;)V
    .locals 1

    .prologue
    .line 939
    iput-object p1, p0, Lcom/cmcm/orion/picks/impl/player/a$a;->a:Lcom/cmcm/orion/picks/impl/player/a;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/cmcm/orion/picks/impl/player/a$i;-><init>(Lcom/cmcm/orion/picks/impl/player/a;B)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/cmcm/orion/picks/impl/player/a;B)V
    .locals 0

    .prologue
    .line 939
    invoke-direct {p0, p1}, Lcom/cmcm/orion/picks/impl/player/a$a;-><init>(Lcom/cmcm/orion/picks/impl/player/a;)V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 948
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/player/a$a;->a:Lcom/cmcm/orion/picks/impl/player/a;

    invoke-static {v0}, Lcom/cmcm/orion/picks/impl/player/a;->d(Lcom/cmcm/orion/picks/impl/player/a;)Lcom/cmcm/orion/picks/impl/player/a$j;

    move-result-object v0

    invoke-static {v0}, Lcom/cmcm/orion/picks/impl/player/a$j;->e(Lcom/cmcm/orion/picks/impl/player/a$j;)I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 949
    invoke-virtual {p0, v1}, Lcom/cmcm/orion/picks/impl/player/a$a;->a(I)V

    .line 952
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 957
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/player/a$a;->a:Lcom/cmcm/orion/picks/impl/player/a;

    invoke-static {v0}, Lcom/cmcm/orion/picks/impl/player/a;->d(Lcom/cmcm/orion/picks/impl/player/a;)Lcom/cmcm/orion/picks/impl/player/a$j;

    move-result-object v0

    invoke-static {v0}, Lcom/cmcm/orion/picks/impl/player/a$j;->a(Lcom/cmcm/orion/picks/impl/player/a$j;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 971
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 966
    :pswitch_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/cmcm/orion/picks/impl/player/a$a;->b(I)V

    goto :goto_0

    .line 957
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
