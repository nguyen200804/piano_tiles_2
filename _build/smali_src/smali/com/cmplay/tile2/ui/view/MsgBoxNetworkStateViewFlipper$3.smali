.class Lcom/cmplay/tile2/ui/view/MsgBoxNetworkStateViewFlipper$3;
.super Ljava/lang/Object;
.source "MsgBoxNetworkStateViewFlipper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmplay/tile2/ui/view/MsgBoxNetworkStateViewFlipper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
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
    .line 52
    iput-object p1, p0, Lcom/cmplay/tile2/ui/view/MsgBoxNetworkStateViewFlipper$3;->a:Lcom/cmplay/tile2/ui/view/MsgBoxNetworkStateViewFlipper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/cmplay/tile2/ui/view/MsgBoxNetworkStateViewFlipper$3;->a:Lcom/cmplay/tile2/ui/view/MsgBoxNetworkStateViewFlipper;

    invoke-static {v0}, Lcom/cmplay/tile2/ui/view/MsgBoxNetworkStateViewFlipper;->a(Lcom/cmplay/tile2/ui/view/MsgBoxNetworkStateViewFlipper;)Z

    .line 57
    return-void
.end method
