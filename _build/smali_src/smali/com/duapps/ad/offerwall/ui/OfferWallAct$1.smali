.class Lcom/duapps/ad/offerwall/ui/OfferWallAct$1;
.super Ljava/lang/Object;
.source "OfferWallAct.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duapps/ad/offerwall/ui/OfferWallAct;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/duapps/ad/offerwall/ui/OfferWallAct;


# direct methods
.method constructor <init>(Lcom/duapps/ad/offerwall/ui/OfferWallAct;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/duapps/ad/offerwall/ui/OfferWallAct$1;->a:Lcom/duapps/ad/offerwall/ui/OfferWallAct;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/OfferWallAct$1;->a:Lcom/duapps/ad/offerwall/ui/OfferWallAct;

    invoke-static {v0}, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->a(Lcom/duapps/ad/offerwall/ui/OfferWallAct;)V

    .line 90
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/OfferWallAct$1;->a:Lcom/duapps/ad/offerwall/ui/OfferWallAct;

    invoke-virtual {v0}, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->finish()V

    .line 91
    return-void
.end method
