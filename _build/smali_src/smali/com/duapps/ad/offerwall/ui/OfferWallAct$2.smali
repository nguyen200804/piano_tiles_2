.class Lcom/duapps/ad/offerwall/ui/OfferWallAct$2;
.super Ljava/lang/Object;
.source "OfferWallAct.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duapps/ad/offerwall/ui/OfferWallAct;
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
    .line 108
    iput-object p1, p0, Lcom/duapps/ad/offerwall/ui/OfferWallAct$2;->a:Lcom/duapps/ad/offerwall/ui/OfferWallAct;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    .prologue
    .line 144
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    .prologue
    .line 139
    return-void
.end method

.method public onPageSelected(I)V
    .locals 3

    .prologue
    .line 112
    invoke-static {}, Lcom/duapps/ad/base/h;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    const-string v0, "OfferWallAct"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/duapps/ad/offerwall/ui/OfferWallAct$2;->a:Lcom/duapps/ad/offerwall/ui/OfferWallAct;

    invoke-static {v2}, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->b(Lcom/duapps/ad/offerwall/ui/OfferWallAct;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duapps/ad/base/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/OfferWallAct$2;->a:Lcom/duapps/ad/offerwall/ui/OfferWallAct;

    invoke-static {v0}, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->b(Lcom/duapps/ad/offerwall/ui/OfferWallAct;)I

    move-result v0

    if-ne v0, p1, :cond_2

    .line 134
    :cond_1
    :goto_0
    return-void

    .line 120
    :cond_2
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/OfferWallAct$2;->a:Lcom/duapps/ad/offerwall/ui/OfferWallAct;

    invoke-static {v0}, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->c(Lcom/duapps/ad/offerwall/ui/OfferWallAct;)Lcom/duapps/ad/offerwall/ui/g;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 121
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/OfferWallAct$2;->a:Lcom/duapps/ad/offerwall/ui/OfferWallAct;

    invoke-static {v0}, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->c(Lcom/duapps/ad/offerwall/ui/OfferWallAct;)Lcom/duapps/ad/offerwall/ui/g;

    move-result-object v0

    iget-object v1, p0, Lcom/duapps/ad/offerwall/ui/OfferWallAct$2;->a:Lcom/duapps/ad/offerwall/ui/OfferWallAct;

    .line 122
    invoke-static {v1}, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->b(Lcom/duapps/ad/offerwall/ui/OfferWallAct;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/duapps/ad/offerwall/ui/g;->a(I)Lcom/duapps/ad/offerwall/ui/h;

    move-result-object v0

    .line 124
    if-eqz v0, :cond_3

    .line 125
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/duapps/ad/offerwall/ui/h;->b(Z)V

    .line 128
    :cond_3
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/OfferWallAct$2;->a:Lcom/duapps/ad/offerwall/ui/OfferWallAct;

    invoke-static {v0}, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->c(Lcom/duapps/ad/offerwall/ui/OfferWallAct;)Lcom/duapps/ad/offerwall/ui/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/duapps/ad/offerwall/ui/g;->a(I)Lcom/duapps/ad/offerwall/ui/h;

    move-result-object v0

    .line 129
    if-eqz v0, :cond_4

    .line 130
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/duapps/ad/offerwall/ui/h;->b(Z)V

    .line 132
    :cond_4
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/OfferWallAct$2;->a:Lcom/duapps/ad/offerwall/ui/OfferWallAct;

    invoke-static {v0, p1}, Lcom/duapps/ad/offerwall/ui/OfferWallAct;->a(Lcom/duapps/ad/offerwall/ui/OfferWallAct;I)I

    goto :goto_0
.end method
