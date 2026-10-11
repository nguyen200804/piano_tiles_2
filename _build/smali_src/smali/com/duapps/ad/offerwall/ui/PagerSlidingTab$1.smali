.class Lcom/duapps/ad/offerwall/ui/PagerSlidingTab$1;
.super Ljava/lang/Object;
.source "PagerSlidingTab.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duapps/ad/offerwall/ui/PagerSlidingTab;->a(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/duapps/ad/offerwall/ui/PagerSlidingTab;


# direct methods
.method constructor <init>(Lcom/duapps/ad/offerwall/ui/PagerSlidingTab;I)V
    .locals 0

    .prologue
    .line 158
    iput-object p1, p0, Lcom/duapps/ad/offerwall/ui/PagerSlidingTab$1;->b:Lcom/duapps/ad/offerwall/ui/PagerSlidingTab;

    iput p2, p0, Lcom/duapps/ad/offerwall/ui/PagerSlidingTab$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/PagerSlidingTab$1;->b:Lcom/duapps/ad/offerwall/ui/PagerSlidingTab;

    invoke-static {v0}, Lcom/duapps/ad/offerwall/ui/PagerSlidingTab;->a(Lcom/duapps/ad/offerwall/ui/PagerSlidingTab;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    iget v1, p0, Lcom/duapps/ad/offerwall/ui/PagerSlidingTab$1;->a:I

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 162
    return-void
.end method
