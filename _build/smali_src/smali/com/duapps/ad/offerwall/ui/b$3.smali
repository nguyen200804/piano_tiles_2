.class Lcom/duapps/ad/offerwall/ui/b$3;
.super Ljava/lang/Object;
.source "GamesFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duapps/ad/offerwall/ui/b;->a(Landroid/view/View;Landroid/view/LayoutInflater;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/duapps/ad/offerwall/ui/b;


# direct methods
.method constructor <init>(Lcom/duapps/ad/offerwall/ui/b;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lcom/duapps/ad/offerwall/ui/b$3;->a:Lcom/duapps/ad/offerwall/ui/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 4

    .prologue
    .line 126
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/b$3;->a:Lcom/duapps/ad/offerwall/ui/b;

    add-int v1, p2, p3

    iget-object v2, p0, Lcom/duapps/ad/offerwall/ui/b$3;->a:Lcom/duapps/ad/offerwall/ui/b;

    .line 127
    invoke-static {v2}, Lcom/duapps/ad/offerwall/ui/b;->a(Lcom/duapps/ad/offerwall/ui/b;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v2

    iget-object v3, p0, Lcom/duapps/ad/offerwall/ui/b$3;->a:Lcom/duapps/ad/offerwall/ui/b;

    .line 128
    invoke-static {v3}, Lcom/duapps/ad/offerwall/ui/b;->a(Lcom/duapps/ad/offerwall/ui/b;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v3

    add-int/2addr v2, v3

    sub-int/2addr v1, v2

    .line 126
    invoke-static {v0, v1}, Lcom/duapps/ad/offerwall/ui/b;->a(Lcom/duapps/ad/offerwall/ui/b;I)I

    .line 129
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/b$3;->a:Lcom/duapps/ad/offerwall/ui/b;

    invoke-static {v0}, Lcom/duapps/ad/offerwall/ui/b;->d(Lcom/duapps/ad/offerwall/ui/b;)I

    move-result v0

    iget-object v1, p0, Lcom/duapps/ad/offerwall/ui/b$3;->a:Lcom/duapps/ad/offerwall/ui/b;

    invoke-static {v1}, Lcom/duapps/ad/offerwall/ui/b;->e(Lcom/duapps/ad/offerwall/ui/b;)I

    move-result v1

    if-ne v0, v1, :cond_0

    if-nez p2, :cond_0

    .line 116
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/b$3;->a:Lcom/duapps/ad/offerwall/ui/b;

    invoke-static {v0}, Lcom/duapps/ad/offerwall/ui/b;->f(Lcom/duapps/ad/offerwall/ui/b;)Lcom/duapps/ad/offerwall/ui/PullUpForMore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duapps/ad/offerwall/ui/PullUpForMore;->a()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 119
    :cond_1
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/b$3;->a:Lcom/duapps/ad/offerwall/ui/b;

    invoke-static {v0}, Lcom/duapps/ad/offerwall/ui/b;->g(Lcom/duapps/ad/offerwall/ui/b;)Lcom/duapps/ad/offerwall/a;

    move-result-object v0

    iget-object v1, p0, Lcom/duapps/ad/offerwall/ui/b$3;->a:Lcom/duapps/ad/offerwall/ui/b;

    invoke-static {v1}, Lcom/duapps/ad/offerwall/ui/b;->g(Lcom/duapps/ad/offerwall/ui/b;)Lcom/duapps/ad/offerwall/a;

    move-result-object v1

    iget v1, v1, Lcom/duapps/ad/offerwall/a;->a:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/duapps/ad/offerwall/a;->a(I)V

    goto :goto_0
.end method
