.class Lcom/duapps/ad/offerwall/ui/a$3;
.super Ljava/lang/Object;
.source "AppsFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duapps/ad/offerwall/ui/a;->a(Landroid/view/View;Landroid/view/LayoutInflater;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/duapps/ad/offerwall/ui/a;


# direct methods
.method constructor <init>(Lcom/duapps/ad/offerwall/ui/a;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcom/duapps/ad/offerwall/ui/a$3;->a:Lcom/duapps/ad/offerwall/ui/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 4

    .prologue
    .line 124
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/a$3;->a:Lcom/duapps/ad/offerwall/ui/a;

    add-int v1, p2, p3

    iget-object v2, p0, Lcom/duapps/ad/offerwall/ui/a$3;->a:Lcom/duapps/ad/offerwall/ui/a;

    .line 125
    invoke-static {v2}, Lcom/duapps/ad/offerwall/ui/a;->a(Lcom/duapps/ad/offerwall/ui/a;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v2

    iget-object v3, p0, Lcom/duapps/ad/offerwall/ui/a$3;->a:Lcom/duapps/ad/offerwall/ui/a;

    .line 126
    invoke-static {v3}, Lcom/duapps/ad/offerwall/ui/a;->a(Lcom/duapps/ad/offerwall/ui/a;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v3

    add-int/2addr v2, v3

    sub-int/2addr v1, v2

    .line 124
    invoke-static {v0, v1}, Lcom/duapps/ad/offerwall/ui/a;->a(Lcom/duapps/ad/offerwall/ui/a;I)I

    .line 127
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/a$3;->a:Lcom/duapps/ad/offerwall/ui/a;

    invoke-static {v0}, Lcom/duapps/ad/offerwall/ui/a;->d(Lcom/duapps/ad/offerwall/ui/a;)I

    move-result v0

    iget-object v1, p0, Lcom/duapps/ad/offerwall/ui/a$3;->a:Lcom/duapps/ad/offerwall/ui/a;

    invoke-static {v1}, Lcom/duapps/ad/offerwall/ui/a;->e(Lcom/duapps/ad/offerwall/ui/a;)I

    move-result v1

    if-ne v0, v1, :cond_0

    if-nez p2, :cond_0

    .line 114
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/a$3;->a:Lcom/duapps/ad/offerwall/ui/a;

    invoke-static {v0}, Lcom/duapps/ad/offerwall/ui/a;->f(Lcom/duapps/ad/offerwall/ui/a;)Lcom/duapps/ad/offerwall/ui/PullUpForMore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duapps/ad/offerwall/ui/PullUpForMore;->a()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 119
    :cond_0
    :goto_0
    return-void

    .line 117
    :cond_1
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/a$3;->a:Lcom/duapps/ad/offerwall/ui/a;

    invoke-static {v0}, Lcom/duapps/ad/offerwall/ui/a;->g(Lcom/duapps/ad/offerwall/ui/a;)Lcom/duapps/ad/offerwall/a;

    move-result-object v0

    iget-object v1, p0, Lcom/duapps/ad/offerwall/ui/a$3;->a:Lcom/duapps/ad/offerwall/ui/a;

    invoke-static {v1}, Lcom/duapps/ad/offerwall/ui/a;->g(Lcom/duapps/ad/offerwall/ui/a;)Lcom/duapps/ad/offerwall/a;

    move-result-object v1

    iget v1, v1, Lcom/duapps/ad/offerwall/a;->a:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/duapps/ad/offerwall/a;->a(I)V

    goto :goto_0
.end method
