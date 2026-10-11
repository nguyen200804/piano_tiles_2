.class public Lcom/duapps/ad/offerwall/ui/j;
.super Lcom/duapps/ad/offerwall/ui/d;
.source "TopicFourItemsView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private f:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/duapps/ad/offerwall/ui/d;-><init>(Landroid/content/Context;)V

    .line 30
    const/4 v0, 0x1

    iput v0, p0, Lcom/duapps/ad/offerwall/ui/j;->f:I

    .line 37
    return-void
.end method

.method private a(Landroid/widget/ImageView;)V
    .locals 4

    .prologue
    .line 135
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/j;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 136
    if-nez v0, :cond_0

    .line 147
    :goto_0
    return-void

    .line 138
    :cond_0
    iget-object v1, p0, Lcom/duapps/ad/offerwall/ui/j;->a:Landroid/content/Context;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Lcom/duapps/ad/c/b/c;->a(Landroid/content/Context;F)I

    move-result v1

    .line 139
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {p0}, Lcom/duapps/ad/offerwall/ui/j;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/duapps/ad/R$dimen;->duapps_ad_offer_wall2_topic_4_padding:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    .line 140
    invoke-virtual {p0}, Lcom/duapps/ad/offerwall/ui/j;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/duapps/ad/R$dimen;->duapps_ad_offer_wall2_topic_4_item_icon_margin:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    mul-int/lit8 v2, v2, 0x8

    sub-int/2addr v0, v2

    mul-int/lit8 v1, v1, 0x8

    sub-int/2addr v0, v1

    .line 142
    invoke-virtual {p0}, Lcom/duapps/ad/offerwall/ui/j;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/duapps/ad/R$dimen;->duapps_ad_offer_wall2_topic_4_item_margin:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    sub-int/2addr v0, v1

    div-int/lit8 v1, v0, 0x4

    .line 143
    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 144
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 145
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 146
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method


# virtual methods
.method public a()Lcom/duapps/ad/offerwall/ui/d;
    .locals 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/j;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The data empty, you should call <setData> before <createView>."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/j;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/duapps/ad/R$layout;->duapps_ad_offer_wall_topic_4:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 45
    invoke-virtual {p0}, Lcom/duapps/ad/offerwall/ui/j;->b()V

    .line 46
    return-object p0
.end method

.method public a(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/duapps/ad/entity/a/a;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/duapps/ad/entity/a/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 51
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 52
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You should not pass empty data to this method."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/duapps/ad/offerwall/ui/j;->d:Z

    .line 57
    const/4 v0, 0x4

    .line 58
    iget-object v1, p0, Lcom/duapps/ad/offerwall/ui/j;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 59
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v2, v0

    .line 60
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    if-lez v2, :cond_2

    .line 61
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duapps/ad/entity/a/a;

    move-object v1, v0

    .line 62
    check-cast v1, Lcom/duapps/ad/entity/c;

    .line 63
    invoke-virtual {v1}, Lcom/duapps/ad/entity/c;->a()Lcom/duapps/ad/entity/AdData;

    move-result-object v4

    iget v5, p0, Lcom/duapps/ad/offerwall/ui/j;->f:I

    iput v5, v4, Lcom/duapps/ad/entity/AdData;->g:I

    .line 64
    iget-object v4, p0, Lcom/duapps/ad/offerwall/ui/j;->a:Landroid/content/Context;

    new-instance v5, Lcom/duapps/ad/stats/f;

    invoke-virtual {v1}, Lcom/duapps/ad/entity/c;->a()Lcom/duapps/ad/entity/AdData;

    move-result-object v1

    invoke-direct {v5, v1}, Lcom/duapps/ad/stats/f;-><init>(Lcom/duapps/ad/entity/AdData;)V

    iget v1, p0, Lcom/duapps/ad/offerwall/ui/j;->f:I

    invoke-static {v4, v5, v1}, Lcom/duapps/ad/stats/h;->a(Landroid/content/Context;Lcom/duapps/ad/stats/f;I)V

    .line 65
    iget-object v1, p0, Lcom/duapps/ad/offerwall/ui/j;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 67
    add-int/lit8 v0, v2, -0x1

    .line 68
    iget v1, p0, Lcom/duapps/ad/offerwall/ui/j;->f:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/duapps/ad/offerwall/ui/j;->f:I

    move v2, v0

    .line 69
    goto :goto_0

    .line 71
    :cond_2
    return-object p1
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 32
    invoke-super {p0, p1}, Lcom/duapps/ad/offerwall/ui/d;->a(I)V

    .line 33
    iput p1, p0, Lcom/duapps/ad/offerwall/ui/j;->f:I

    .line 34
    return-void
.end method

.method public b(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/duapps/ad/entity/a/a;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/duapps/ad/entity/a/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 151
    invoke-virtual {p0}, Lcom/duapps/ad/offerwall/ui/j;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 152
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/duapps/ad/offerwall/ui/j;->d:Z

    .line 153
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/j;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    rsub-int/lit8 v0, v0, 0x4

    .line 154
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 155
    iget v1, p0, Lcom/duapps/ad/offerwall/ui/j;->e:I

    iget-object v2, p0, Lcom/duapps/ad/offerwall/ui/j;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/duapps/ad/offerwall/ui/j;->f:I

    move v2, v0

    .line 156
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    if-lez v2, :cond_0

    .line 157
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duapps/ad/entity/a/a;

    move-object v1, v0

    .line 158
    check-cast v1, Lcom/duapps/ad/entity/c;

    .line 159
    invoke-virtual {v1}, Lcom/duapps/ad/entity/c;->a()Lcom/duapps/ad/entity/AdData;

    move-result-object v4

    iget v5, p0, Lcom/duapps/ad/offerwall/ui/j;->f:I

    iput v5, v4, Lcom/duapps/ad/entity/AdData;->g:I

    .line 160
    iget-object v4, p0, Lcom/duapps/ad/offerwall/ui/j;->a:Landroid/content/Context;

    new-instance v5, Lcom/duapps/ad/stats/f;

    invoke-virtual {v1}, Lcom/duapps/ad/entity/c;->a()Lcom/duapps/ad/entity/AdData;

    move-result-object v1

    invoke-direct {v5, v1}, Lcom/duapps/ad/stats/f;-><init>(Lcom/duapps/ad/entity/AdData;)V

    iget v1, p0, Lcom/duapps/ad/offerwall/ui/j;->f:I

    invoke-static {v4, v5, v1}, Lcom/duapps/ad/stats/h;->a(Landroid/content/Context;Lcom/duapps/ad/stats/f;I)V

    .line 161
    iget-object v1, p0, Lcom/duapps/ad/offerwall/ui/j;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 163
    add-int/lit8 v0, v2, -0x1

    .line 164
    iget v1, p0, Lcom/duapps/ad/offerwall/ui/j;->f:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/duapps/ad/offerwall/ui/j;->f:I

    move v2, v0

    .line 165
    goto :goto_0

    .line 167
    :cond_0
    return-object p1
.end method

.method public b()V
    .locals 20

    .prologue
    .line 76
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/duapps/ad/offerwall/ui/j;->d:Z

    if-nez v2, :cond_1

    .line 132
    :cond_0
    :goto_0
    return-void

    .line 78
    :cond_1
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/duapps/ad/offerwall/ui/j;->d:Z

    .line 80
    sget v2, Lcom/duapps/ad/R$id;->item1:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/duapps/ad/offerwall/ui/j;->findViewById(I)Landroid/view/View;

    move-result-object v14

    .line 81
    sget v2, Lcom/duapps/ad/R$id;->item1_iv:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/duapps/ad/offerwall/ui/j;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 82
    sget v3, Lcom/duapps/ad/R$id;->item1_tv:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/duapps/ad/offerwall/ui/j;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 83
    sget v4, Lcom/duapps/ad/R$id;->item1_btn:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/duapps/ad/offerwall/ui/j;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 85
    sget v5, Lcom/duapps/ad/R$id;->item2:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/duapps/ad/offerwall/ui/j;->findViewById(I)Landroid/view/View;

    move-result-object v15

    .line 86
    sget v5, Lcom/duapps/ad/R$id;->item2_iv:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/duapps/ad/offerwall/ui/j;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 87
    sget v6, Lcom/duapps/ad/R$id;->item2_tv:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/duapps/ad/offerwall/ui/j;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 88
    sget v7, Lcom/duapps/ad/R$id;->item2_btn:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/duapps/ad/offerwall/ui/j;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 90
    sget v8, Lcom/duapps/ad/R$id;->item3:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/duapps/ad/offerwall/ui/j;->findViewById(I)Landroid/view/View;

    move-result-object v16

    .line 91
    sget v8, Lcom/duapps/ad/R$id;->item3_iv:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/duapps/ad/offerwall/ui/j;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 92
    sget v9, Lcom/duapps/ad/R$id;->item3_tv:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/duapps/ad/offerwall/ui/j;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 93
    sget v10, Lcom/duapps/ad/R$id;->item3_btn:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/duapps/ad/offerwall/ui/j;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 95
    sget v11, Lcom/duapps/ad/R$id;->item4:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/duapps/ad/offerwall/ui/j;->findViewById(I)Landroid/view/View;

    move-result-object v17

    .line 96
    sget v11, Lcom/duapps/ad/R$id;->item4_iv:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/duapps/ad/offerwall/ui/j;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    .line 97
    sget v12, Lcom/duapps/ad/R$id;->item4_tv:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/duapps/ad/offerwall/ui/j;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 98
    sget v13, Lcom/duapps/ad/R$id;->item4_btn:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/duapps/ad/offerwall/ui/j;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 100
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/duapps/ad/offerwall/ui/j;->b:Ljava/util/List;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_2

    .line 101
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/view/View;->setVisibility(I)V

    .line 102
    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/duapps/ad/offerwall/ui/j;->a(Landroid/widget/ImageView;)V

    .line 104
    invoke-static {}, Lcom/duapps/ad/base/a/b;->a()Lcom/duapps/ad/base/a/b;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/duapps/ad/offerwall/ui/j;->b:Ljava/util/List;

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/duapps/ad/entity/a/a;

    invoke-interface {v14}, Lcom/duapps/ad/entity/a/a;->e()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, v18

    invoke-virtual {v0, v14, v2}, Lcom/duapps/ad/base/a/b;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 105
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/duapps/ad/offerwall/ui/j;->b:Ljava/util/List;

    const/4 v14, 0x0

    invoke-interface {v2, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/duapps/ad/entity/a/a;

    invoke-interface {v2}, Lcom/duapps/ad/entity/a/a;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/duapps/ad/offerwall/ui/j;->b:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/duapps/ad/entity/a/a;

    invoke-interface {v2}, Lcom/duapps/ad/entity/a/a;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/duapps/ad/offerwall/ui/j;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_3

    .line 109
    const/4 v2, 0x0

    invoke-virtual {v15, v2}, Landroid/view/View;->setVisibility(I)V

    .line 110
    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/duapps/ad/offerwall/ui/j;->a(Landroid/widget/ImageView;)V

    .line 112
    invoke-static {}, Lcom/duapps/ad/base/a/b;->a()Lcom/duapps/ad/base/a/b;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/duapps/ad/offerwall/ui/j;->b:Ljava/util/List;

    const/4 v4, 0x1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/duapps/ad/entity/a/a;

    invoke-interface {v2}, Lcom/duapps/ad/entity/a/a;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2, v5}, Lcom/duapps/ad/base/a/b;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 113
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/duapps/ad/offerwall/ui/j;->b:Ljava/util/List;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/duapps/ad/entity/a/a;

    invoke-interface {v2}, Lcom/duapps/ad/entity/a/a;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/duapps/ad/offerwall/ui/j;->b:Ljava/util/List;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/duapps/ad/entity/a/a;

    invoke-interface {v2}, Lcom/duapps/ad/entity/a/a;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/duapps/ad/offerwall/ui/j;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x3

    if-lt v2, v3, :cond_4

    .line 117
    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 118
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/duapps/ad/offerwall/ui/j;->a(Landroid/widget/ImageView;)V

    .line 120
    invoke-static {}, Lcom/duapps/ad/base/a/b;->a()Lcom/duapps/ad/base/a/b;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/duapps/ad/offerwall/ui/j;->b:Ljava/util/List;

    const/4 v4, 0x2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/duapps/ad/entity/a/a;

    invoke-interface {v2}, Lcom/duapps/ad/entity/a/a;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2, v8}, Lcom/duapps/ad/base/a/b;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 121
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/duapps/ad/offerwall/ui/j;->b:Ljava/util/List;

    const/4 v3, 0x2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/duapps/ad/entity/a/a;

    invoke-interface {v2}, Lcom/duapps/ad/entity/a/a;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/duapps/ad/offerwall/ui/j;->b:Ljava/util/List;

    const/4 v3, 0x2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/duapps/ad/entity/a/a;

    invoke-interface {v2}, Lcom/duapps/ad/entity/a/a;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/duapps/ad/offerwall/ui/j;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x4

    if-lt v2, v3, :cond_0

    .line 125
    const/4 v2, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 126
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/duapps/ad/offerwall/ui/j;->a(Landroid/widget/ImageView;)V

    .line 128
    invoke-static {}, Lcom/duapps/ad/base/a/b;->a()Lcom/duapps/ad/base/a/b;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/duapps/ad/offerwall/ui/j;->b:Ljava/util/List;

    const/4 v4, 0x3

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/duapps/ad/entity/a/a;

    invoke-interface {v2}, Lcom/duapps/ad/entity/a/a;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2, v11}, Lcom/duapps/ad/base/a/b;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 129
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/duapps/ad/offerwall/ui/j;->b:Ljava/util/List;

    const/4 v3, 0x3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/duapps/ad/entity/a/a;

    invoke-interface {v2}, Lcom/duapps/ad/entity/a/a;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/duapps/ad/offerwall/ui/j;->b:Ljava/util/List;

    const/4 v3, 0x3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/duapps/ad/entity/a/a;

    invoke-interface {v2}, Lcom/duapps/ad/entity/a/a;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method public c()Z
    .locals 2

    .prologue
    .line 172
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/duapps/ad/offerwall/ui/j;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 177
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/duapps/ad/R$id;->item1:I

    if-ne v0, v1, :cond_1

    .line 178
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/j;->b:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duapps/ad/entity/a/a;

    invoke-virtual {p0, v0}, Lcom/duapps/ad/offerwall/ui/j;->a(Lcom/duapps/ad/entity/a/a;)V

    .line 186
    :cond_0
    :goto_0
    return-void

    .line 179
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/duapps/ad/R$id;->item2:I

    if-ne v0, v1, :cond_2

    .line 180
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/j;->b:Ljava/util/List;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duapps/ad/entity/a/a;

    invoke-virtual {p0, v0}, Lcom/duapps/ad/offerwall/ui/j;->a(Lcom/duapps/ad/entity/a/a;)V

    goto :goto_0

    .line 181
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/duapps/ad/R$id;->item3:I

    if-ne v0, v1, :cond_3

    .line 182
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/j;->b:Ljava/util/List;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duapps/ad/entity/a/a;

    invoke-virtual {p0, v0}, Lcom/duapps/ad/offerwall/ui/j;->a(Lcom/duapps/ad/entity/a/a;)V

    goto :goto_0

    .line 183
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/duapps/ad/R$id;->item4:I

    if-ne v0, v1, :cond_0

    .line 184
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/j;->b:Ljava/util/List;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duapps/ad/entity/a/a;

    invoke-virtual {p0, v0}, Lcom/duapps/ad/offerwall/ui/j;->a(Lcom/duapps/ad/entity/a/a;)V

    goto :goto_0
.end method
