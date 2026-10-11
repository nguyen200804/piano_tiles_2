.class Lcom/duapps/ad/offerwall/ui/a$2;
.super Ljava/lang/Object;
.source "AppsFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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
    .line 88
    iput-object p1, p0, Lcom/duapps/ad/offerwall/ui/a$2;->a:Lcom/duapps/ad/offerwall/ui/a;

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
    .line 92
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/a$2;->a:Lcom/duapps/ad/offerwall/ui/a;

    invoke-static {v0}, Lcom/duapps/ad/offerwall/ui/a;->a(Lcom/duapps/ad/offerwall/ui/a;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    if-ge p3, v0, :cond_1

    .line 106
    :cond_0
    :goto_0
    return-void

    .line 95
    :cond_1
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/a$2;->a:Lcom/duapps/ad/offerwall/ui/a;

    invoke-static {v0}, Lcom/duapps/ad/offerwall/ui/a;->a(Lcom/duapps/ad/offerwall/ui/a;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    sub-int v0, p3, v0

    .line 96
    iget-object v1, p0, Lcom/duapps/ad/offerwall/ui/a$2;->a:Lcom/duapps/ad/offerwall/ui/a;

    invoke-static {v1}, Lcom/duapps/ad/offerwall/ui/a;->b(Lcom/duapps/ad/offerwall/ui/a;)Lcom/duapps/ad/offerwall/ui/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duapps/ad/offerwall/ui/e;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 99
    iget-object v1, p0, Lcom/duapps/ad/offerwall/ui/a$2;->a:Lcom/duapps/ad/offerwall/ui/a;

    invoke-static {v1}, Lcom/duapps/ad/offerwall/ui/a;->b(Lcom/duapps/ad/offerwall/ui/a;)Lcom/duapps/ad/offerwall/ui/e;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/duapps/ad/offerwall/ui/e;->b(I)Lcom/duapps/ad/entity/a/a;

    move-result-object v0

    .line 100
    instance-of v1, v0, Lcom/duapps/ad/entity/c;

    if-eqz v1, :cond_0

    .line 101
    iget-object v1, p0, Lcom/duapps/ad/offerwall/ui/a$2;->a:Lcom/duapps/ad/offerwall/ui/a;

    invoke-static {v1}, Lcom/duapps/ad/offerwall/ui/a;->c(Lcom/duapps/ad/offerwall/ui/a;)Lcom/duapps/ad/stats/d;

    move-result-object v1

    if-nez v1, :cond_2

    .line 102
    iget-object v1, p0, Lcom/duapps/ad/offerwall/ui/a$2;->a:Lcom/duapps/ad/offerwall/ui/a;

    new-instance v2, Lcom/duapps/ad/stats/d;

    iget-object v3, p0, Lcom/duapps/ad/offerwall/ui/a$2;->a:Lcom/duapps/ad/offerwall/ui/a;

    iget-object v3, v3, Lcom/duapps/ad/offerwall/ui/a;->d:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/duapps/ad/stats/d;-><init>(Landroid/content/Context;)V

    invoke-static {v1, v2}, Lcom/duapps/ad/offerwall/ui/a;->a(Lcom/duapps/ad/offerwall/ui/a;Lcom/duapps/ad/stats/d;)Lcom/duapps/ad/stats/d;

    .line 104
    :cond_2
    iget-object v1, p0, Lcom/duapps/ad/offerwall/ui/a$2;->a:Lcom/duapps/ad/offerwall/ui/a;

    invoke-static {v1}, Lcom/duapps/ad/offerwall/ui/a;->c(Lcom/duapps/ad/offerwall/ui/a;)Lcom/duapps/ad/stats/d;

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
