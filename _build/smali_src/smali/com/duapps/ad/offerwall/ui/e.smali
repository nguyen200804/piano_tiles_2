.class public Lcom/duapps/ad/offerwall/ui/e;
.super Landroid/widget/BaseAdapter;
.source "OfferWallAdapter2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/duapps/ad/offerwall/ui/e$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/duapps/ad/entity/a/a;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/util/SparseBooleanArray;

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/duapps/ad/entity/a/a;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 27
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/duapps/ad/offerwall/ui/e;->c:Landroid/util/SparseBooleanArray;

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/duapps/ad/offerwall/ui/e;->e:I

    .line 32
    iput-object p2, p0, Lcom/duapps/ad/offerwall/ui/e;->b:Ljava/util/List;

    .line 33
    iput-object p1, p0, Lcom/duapps/ad/offerwall/ui/e;->a:Landroid/content/Context;

    .line 34
    iput p3, p0, Lcom/duapps/ad/offerwall/ui/e;->d:I

    .line 35
    return-void
.end method

.method private a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .prologue
    .line 80
    if-nez p2, :cond_1

    .line 81
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/e;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/duapps/ad/R$layout;->duapps_ad_offer_wall_topic_list_item:I

    const/4 v2, 0x0

    .line 82
    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 83
    new-instance v1, Lcom/duapps/ad/offerwall/ui/e$a;

    invoke-direct {v1}, Lcom/duapps/ad/offerwall/ui/e$a;-><init>()V

    .line 84
    sget v0, Lcom/duapps/ad/R$id;->icon:I

    .line 85
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/duapps/ad/offerwall/ui/e$a;->a:Landroid/widget/ImageView;

    .line 86
    sget v0, Lcom/duapps/ad/R$id;->title:I

    .line 87
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/duapps/ad/offerwall/ui/e$a;->b:Landroid/widget/TextView;

    .line 88
    sget v0, Lcom/duapps/ad/R$id;->desc:I

    .line 89
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/duapps/ad/offerwall/ui/e$a;->c:Landroid/widget/TextView;

    .line 90
    sget v0, Lcom/duapps/ad/R$id;->btn:I

    .line 91
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/duapps/ad/offerwall/ui/e$a;->d:Landroid/widget/TextView;

    .line 92
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v2, v1

    .line 96
    :goto_0
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/e;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duapps/ad/entity/a/a;

    .line 97
    instance-of v1, v0, Lcom/duapps/ad/entity/c;

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 98
    check-cast v1, Lcom/duapps/ad/entity/c;

    invoke-virtual {v1}, Lcom/duapps/ad/entity/c;->a()Lcom/duapps/ad/entity/AdData;

    move-result-object v1

    iget v3, p0, Lcom/duapps/ad/offerwall/ui/e;->e:I

    add-int/2addr v3, p1

    iput v3, v1, Lcom/duapps/ad/entity/AdData;->g:I

    .line 100
    :cond_0
    iget-object v1, v2, Lcom/duapps/ad/offerwall/ui/e$a;->a:Landroid/widget/ImageView;

    sget v3, Lcom/duapps/ad/R$drawable;->ad_icon_bg:I

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 101
    invoke-static {}, Lcom/duapps/ad/base/a/b;->a()Lcom/duapps/ad/base/a/b;

    move-result-object v1

    invoke-interface {v0}, Lcom/duapps/ad/entity/a/a;->e()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v2, Lcom/duapps/ad/offerwall/ui/e$a;->a:Landroid/widget/ImageView;

    invoke-virtual {v1, v3, v4}, Lcom/duapps/ad/base/a/b;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 102
    iget-object v1, v2, Lcom/duapps/ad/offerwall/ui/e$a;->b:Landroid/widget/TextView;

    invoke-interface {v0}, Lcom/duapps/ad/entity/a/a;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    iget-object v1, v2, Lcom/duapps/ad/offerwall/ui/e$a;->c:Landroid/widget/TextView;

    invoke-interface {v0}, Lcom/duapps/ad/entity/a/a;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    iget-object v1, v2, Lcom/duapps/ad/offerwall/ui/e$a;->d:Landroid/widget/TextView;

    invoke-interface {v0}, Lcom/duapps/ad/entity/a/a;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    return-object p2

    .line 94
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duapps/ad/offerwall/ui/e$a;

    move-object v2, v0

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/e;->c:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 117
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/e;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 118
    return-void
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 38
    iput p1, p0, Lcom/duapps/ad/offerwall/ui/e;->e:I

    .line 39
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/duapps/ad/entity/a/a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 47
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/e;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 48
    invoke-virtual {p0}, Lcom/duapps/ad/offerwall/ui/e;->notifyDataSetChanged()V

    .line 49
    return-void
.end method

.method public b(I)Lcom/duapps/ad/entity/a/a;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/e;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duapps/ad/entity/a/a;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/e;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0, p1}, Lcom/duapps/ad/offerwall/ui/e;->b(I)Lcom/duapps/ad/entity/a/a;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 58
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .prologue
    .line 63
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/e;->c:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    .line 64
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/e;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duapps/ad/entity/a/a;

    .line 65
    if-ne v1, p1, :cond_1

    .line 66
    instance-of v1, v0, Lcom/duapps/ad/entity/c;

    if-eqz v1, :cond_0

    .line 67
    iget-object v2, p0, Lcom/duapps/ad/offerwall/ui/e;->a:Landroid/content/Context;

    new-instance v3, Lcom/duapps/ad/stats/f;

    move-object v1, v0

    check-cast v1, Lcom/duapps/ad/entity/c;

    invoke-virtual {v1}, Lcom/duapps/ad/entity/c;->a()Lcom/duapps/ad/entity/AdData;

    move-result-object v1

    invoke-direct {v3, v1}, Lcom/duapps/ad/stats/f;-><init>(Lcom/duapps/ad/entity/AdData;)V

    iget v1, p0, Lcom/duapps/ad/offerwall/ui/e;->e:I

    add-int/2addr v1, p1

    invoke-static {v2, v3, v1}, Lcom/duapps/ad/stats/h;->a(Landroid/content/Context;Lcom/duapps/ad/stats/f;I)V

    .line 69
    const-string v1, "OfferWallAdapter2"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Has reported at position: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/duapps/ad/offerwall/ui/e;->e:I

    add-int/2addr v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,title: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    check-cast v0, Lcom/duapps/ad/entity/c;

    .line 70
    invoke-virtual {v0}, Lcom/duapps/ad/entity/c;->a()Lcom/duapps/ad/entity/AdData;

    move-result-object v0

    iget-object v0, v0, Lcom/duapps/ad/entity/AdData;->c:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 69
    invoke-static {v1, v0}, Lcom/duapps/ad/base/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/e;->c:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->append(IZ)V

    .line 74
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/duapps/ad/offerwall/ui/e;->a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
