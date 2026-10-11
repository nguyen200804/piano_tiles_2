.class Lcom/cmplay/tile2/ui/view/MsgBoxNetworkStateViewFlipper$4;
.super Ljava/lang/Object;
.source "MsgBoxNetworkStateViewFlipper.java"

# interfaces
.implements Lcom/cmplay/tile2/ui/view/NetStatReceiver$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmplay/tile2/ui/view/MsgBoxNetworkStateViewFlipper;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cmplay/tile2/ui/view/MsgBoxNetworkStateViewFlipper;


# direct methods
.method constructor <init>(Lcom/cmplay/tile2/ui/view/MsgBoxNetworkStateViewFlipper;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/cmplay/tile2/ui/view/MsgBoxNetworkStateViewFlipper$4;->a:Lcom/cmplay/tile2/ui/view/MsgBoxNetworkStateViewFlipper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/cmplay/tile2/ui/view/MsgBoxNetworkStateViewFlipper$4;->a:Lcom/cmplay/tile2/ui/view/MsgBoxNetworkStateViewFlipper;

    invoke-static {v0}, Lcom/cmplay/tile2/ui/view/MsgBoxNetworkStateViewFlipper;->c(Lcom/cmplay/tile2/ui/view/MsgBoxNetworkStateViewFlipper;)V

    .line 102
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/cmplay/tile2/ui/view/MsgBoxNetworkStateViewFlipper$4;->a:Lcom/cmplay/tile2/ui/view/MsgBoxNetworkStateViewFlipper;

    invoke-static {v0}, Lcom/cmplay/tile2/ui/view/MsgBoxNetworkStateViewFlipper;->d(Lcom/cmplay/tile2/ui/view/MsgBoxNetworkStateViewFlipper;)V

    .line 107
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/cmplay/tile2/ui/view/MsgBoxNetworkStateViewFlipper$4;->a:Lcom/cmplay/tile2/ui/view/MsgBoxNetworkStateViewFlipper;

    invoke-static {v0}, Lcom/cmplay/tile2/ui/view/MsgBoxNetworkStateViewFlipper;->e(Lcom/cmplay/tile2/ui/view/MsgBoxNetworkStateViewFlipper;)V

    .line 112
    iget-object v0, p0, Lcom/cmplay/tile2/ui/view/MsgBoxNetworkStateViewFlipper$4;->a:Lcom/cmplay/tile2/ui/view/MsgBoxNetworkStateViewFlipper;

    invoke-static {v0}, Lcom/cmplay/tile2/ui/view/MsgBoxNetworkStateViewFlipper;->f(Lcom/cmplay/tile2/ui/view/MsgBoxNetworkStateViewFlipper;)Lcom/cmplay/tile2/ui/view/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/cmplay/tile2/ui/view/MsgBoxNetworkStateViewFlipper$4;->a:Lcom/cmplay/tile2/ui/view/MsgBoxNetworkStateViewFlipper;

    invoke-static {v0}, Lcom/cmplay/tile2/ui/view/MsgBoxNetworkStateViewFlipper;->f(Lcom/cmplay/tile2/ui/view/MsgBoxNetworkStateViewFlipper;)Lcom/cmplay/tile2/ui/view/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/cmplay/tile2/ui/view/b;->a()V

    .line 115
    :cond_0
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/cmplay/tile2/ui/view/MsgBoxNetworkStateViewFlipper$4;->a:Lcom/cmplay/tile2/ui/view/MsgBoxNetworkStateViewFlipper;

    invoke-static {v0}, Lcom/cmplay/tile2/ui/view/MsgBoxNetworkStateViewFlipper;->e(Lcom/cmplay/tile2/ui/view/MsgBoxNetworkStateViewFlipper;)V

    .line 120
    iget-object v0, p0, Lcom/cmplay/tile2/ui/view/MsgBoxNetworkStateViewFlipper$4;->a:Lcom/cmplay/tile2/ui/view/MsgBoxNetworkStateViewFlipper;

    invoke-virtual {v0}, Lcom/cmplay/tile2/ui/view/MsgBoxNetworkStateViewFlipper;->e()V

    .line 121
    return-void
.end method
