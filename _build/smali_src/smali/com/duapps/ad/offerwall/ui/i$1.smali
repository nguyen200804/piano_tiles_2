.class Lcom/duapps/ad/offerwall/ui/i$1;
.super Landroid/os/Handler;
.source "TopicBannerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duapps/ad/offerwall/ui/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/duapps/ad/offerwall/ui/i;


# direct methods
.method constructor <init>(Lcom/duapps/ad/offerwall/ui/i;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/duapps/ad/offerwall/ui/i$1;->a:Lcom/duapps/ad/offerwall/ui/i;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x1388

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 62
    iget v0, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, v0}, Lcom/duapps/ad/offerwall/ui/i$1;->removeMessages(I)V

    .line 63
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_1

    .line 64
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/i$1;->a:Lcom/duapps/ad/offerwall/ui/i;

    invoke-static {v0}, Lcom/duapps/ad/offerwall/ui/i;->a(Lcom/duapps/ad/offerwall/ui/i;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    iget-object v1, p0, Lcom/duapps/ad/offerwall/ui/i$1;->a:Lcom/duapps/ad/offerwall/ui/i;

    invoke-static {v1}, Lcom/duapps/ad/offerwall/ui/i;->a(Lcom/duapps/ad/offerwall/ui/i;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1, v3}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 65
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/i$1;->a:Lcom/duapps/ad/offerwall/ui/i;

    invoke-static {v0}, Lcom/duapps/ad/offerwall/ui/i;->b(Lcom/duapps/ad/offerwall/ui/i;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/i$1;->a:Lcom/duapps/ad/offerwall/ui/i;

    invoke-static {v0}, Lcom/duapps/ad/offerwall/ui/i;->c(Lcom/duapps/ad/offerwall/ui/i;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 66
    invoke-virtual {p0, v2, v4, v5}, Lcom/duapps/ad/offerwall/ui/i$1;->sendEmptyMessageDelayed(IJ)Z

    .line 73
    :cond_0
    :goto_0
    return-void

    .line 68
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v3, :cond_0

    .line 69
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/i$1;->a:Lcom/duapps/ad/offerwall/ui/i;

    invoke-static {v0}, Lcom/duapps/ad/offerwall/ui/i;->b(Lcom/duapps/ad/offerwall/ui/i;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/i$1;->a:Lcom/duapps/ad/offerwall/ui/i;

    invoke-static {v0}, Lcom/duapps/ad/offerwall/ui/i;->c(Lcom/duapps/ad/offerwall/ui/i;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 70
    invoke-virtual {p0, v2, v4, v5}, Lcom/duapps/ad/offerwall/ui/i$1;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method
