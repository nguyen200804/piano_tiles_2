.class Lcom/duapps/ad/offerwall/ui/b$2;
.super Ljava/lang/Object;
.source "GamesFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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
    .line 89
    iput-object p1, p0, Lcom/duapps/ad/offerwall/ui/b$2;->a:Lcom/duapps/ad/offerwall/ui/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 93
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/b$2;->a:Lcom/duapps/ad/offerwall/ui/b;

    invoke-static {v0}, Lcom/duapps/ad/offerwall/ui/b;->a(Lcom/duapps/ad/offerwall/ui/b;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    if-ge p3, v0, :cond_1

    .line 108
    :cond_0
    :goto_0
    return-void

    .line 96
    :cond_1
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/b$2;->a:Lcom/duapps/ad/offerwall/ui/b;

    invoke-static {v0}, Lcom/duapps/ad/offerwall/ui/b;->a(Lcom/duapps/ad/offerwall/ui/b;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    sub-int v0, p3, v0

    .line 98
    iget-object v1, p0, Lcom/duapps/ad/offerwall/ui/b$2;->a:Lcom/duapps/ad/offerwall/ui/b;

    invoke-static {v1}, Lcom/duapps/ad/offerwall/ui/b;->b(Lcom/duapps/ad/offerwall/ui/b;)Lcom/duapps/ad/offerwall/ui/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duapps/ad/offerwall/ui/e;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 101
    iget-object v1, p0, Lcom/duapps/ad/offerwall/ui/b$2;->a:Lcom/duapps/ad/offerwall/ui/b;

    invoke-static {v1}, Lcom/duapps/ad/offerwall/ui/b;->b(Lcom/duapps/ad/offerwall/ui/b;)Lcom/duapps/ad/offerwall/ui/e;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/duapps/ad/offerwall/ui/e;->b(I)Lcom/duapps/ad/entity/a/a;

    move-result-object v0

    .line 102
    instance-of v1, v0, Lcom/duapps/ad/entity/c;

    if-eqz v1, :cond_0

    .line 103
    iget-object v1, p0, Lcom/duapps/ad/offerwall/ui/b$2;->a:Lcom/duapps/ad/offerwall/ui/b;

    invoke-static {v1}, Lcom/duapps/ad/offerwall/ui/b;->c(Lcom/duapps/ad/offerwall/ui/b;)Lcom/duapps/ad/stats/d;

    move-result-object v1

    if-nez v1, :cond_2

    .line 104
    iget-object v1, p0, Lcom/duapps/ad/offerwall/ui/b$2;->a:Lcom/duapps/ad/offerwall/ui/b;

    new-instance v2, Lcom/duapps/ad/stats/d;

    iget-object v3, p0, Lcom/duapps/ad/offerwall/ui/b$2;->a:Lcom/duapps/ad/offerwall/ui/b;

    iget-object v3, v3, Lcom/duapps/ad/offerwall/ui/b;->d:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/duapps/ad/stats/d;-><init>(Landroid/content/Context;)V

    invoke-static {v1, v2}, Lcom/duapps/ad/offerwall/ui/b;->a(Lcom/duapps/ad/offerwall/ui/b;Lcom/duapps/ad/stats/d;)Lcom/duapps/ad/stats/d;

    .line 106
    :cond_2
    iget-object v1, p0, Lcom/duapps/ad/offerwall/ui/b$2;->a:Lcom/duapps/ad/offerwall/ui/b;

    invoke-static {v1}, Lcom/duapps/ad/offerwall/ui/b;->c(Lcom/duapps/ad/offerwall/ui/b;)Lcom/duapps/ad/stats/d;

    move-result-object v1

    new-instance v2, Lcom/duapps/ad/stats/f;

    check-cast v0, Lcom/duapps/ad/entity/c;

    invoke-virtual {v0}, Lcom/duapps/ad/entity/c;->a()Lcom/duapps/ad/entity/AdData;

    move-result-object v0

    const-string v3, "offerwall"

    invoke-direct {v2, v0, v3}, Lcom/duapps/ad/stats/f;-><init>(Lcom/duapps/ad/entity/AdData;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/duapps/ad/stats/d;->a(Lcom/duapps/ad/stats/f;)V

    goto :goto_0
.end method
