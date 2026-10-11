.class public Lcom/duapps/ad/offerwall/ui/k;
.super Lcom/duapps/ad/offerwall/ui/d;
.source "TopicSixItemsView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private f:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/duapps/ad/offerwall/ui/d;-><init>(Landroid/content/Context;)V

    .line 30
    const/4 v0, 0x1

    iput v0, p0, Lcom/duapps/ad/offerwall/ui/k;->f:I

    .line 38
    return-void
.end method

.method private a(Landroid/widget/ImageView;)V
    .locals 4

    .prologue
    .line 162
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/k;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 163
    if-nez v0, :cond_0

    .line 174
    :goto_0
    return-void

    .line 165
    :cond_0
    iget-object v1, p0, Lcom/duapps/ad/offerwall/ui/k;->a:Landroid/content/Context;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Lcom/duapps/ad/c/b/c;->a(Landroid/content/Context;F)I

    move-result v1

    .line 166
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {p0}, Lcom/duapps/ad/offerwall/ui/k;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/duapps/ad/R$dimen;->duapps_ad_offer_wall2_topic_6_padding:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    .line 167
    invoke-virtual {p0}, Lcom/duapps/ad/offerwall/ui/k;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/duapps/ad/R$dimen;->duapps_ad_offer_wall2_topic_6_item_icon_margin:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    mul-int/lit8 v2, v2, 0x6

    sub-int/2addr v0, v2

    mul-int/lit8 v1, v1, 0x6

    sub-int/2addr v0, v1

    .line 169
    invoke-virtual {p0}, Lcom/duapps/ad/offerwall/ui/k;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/duapps/ad/R$dimen;->duapps_ad_offer_wall2_topic_6_item_margin:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    div-int/lit8 v1, v0, 0x3

    .line 170
    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 171
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 172
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 173
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method


# virtual methods
.method public a()Lcom/duapps/ad/offerwall/ui/d;
    .locals 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/k;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The data empty, you should call <setData> before <createView>."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/k;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/duapps/ad/R$layout;->duapps_ad_offer_wall_topic_6:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 46
    invoke-virtual {p0}, Lcom/duapps/ad/offerwall/ui/k;->b()V

    .line 47
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
    .line 52
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 53
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You should not pass empty data to this method."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/duapps/ad/offerwall/ui/k;->d:Z

    .line 58
    const/4 v0, 0x6

    .line 59
    iget-object v1, p0, Lcom/duapps/ad/offerwall/ui/k;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 60
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v2, v0

    .line 61
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    if-lez v2, :cond_2

    .line 62
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duapps/ad/entity/a/a;

    move-object v1, v0

    .line 63
    check-cast v1, Lcom/duapps/ad/entity/c;

    .line 64
    invoke-virtual {v1}, Lcom/duapps/ad/entity/c;->a()Lcom/duapps/ad/entity/AdData;

    move-result-object v4

    iget v5, p0, Lcom/duapps/ad/offerwall/ui/k;->f:I

    iput v5, v4, Lcom/duapps/ad/entity/AdData;->g:I

    .line 65
    iget-object v4, p0, Lcom/duapps/ad/offerwall/ui/k;->a:Landroid/content/Context;

    new-instance v5, Lcom/duapps/ad/stats/f;

    invoke-virtual {v1}, Lcom/duapps/ad/entity/c;->a()Lcom/duapps/ad/entity/AdData;

    move-result-object v1

    invoke-direct {v5, v1}, Lcom/duapps/ad/stats/f;-><init>(Lcom/duapps/ad/entity/AdData;)V

    iget v1, p0, Lcom/duapps/ad/offerwall/ui/k;->f:I

    invoke-static {v4, v5, v1}, Lcom/duapps/ad/stats/h;->a(Landroid/content/Context;Lcom/duapps/ad/stats/f;I)V

    .line 66
    iget-object v1, p0, Lcom/duapps/ad/offerwall/ui/k;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 68
    add-int/lit8 v0, v2, -0x1

    .line 69
    iget v1, p0, Lcom/duapps/ad/offerwall/ui/k;->f:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/duapps/ad/offerwall/ui/k;->f:I

    move v2, v0

    .line 70
    goto :goto_0

    .line 72
    :cond_2
    return-object p1
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 32
    invoke-super {p0, p1}, Lcom/duapps/ad/offerwall/ui/d;->a(I)V

    .line 33
    iput p1, p0, Lcom/duapps/ad/offerwall/ui/k;->f:I

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
    .line 178
    invoke-virtual {p0}, Lcom/duapps/ad/offerwall/ui/k;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 179
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/duapps/ad/offerwall/ui/k;->d:Z

    .line 180
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/k;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    rsub-int/lit8 v0, v0, 0x6

    .line 181
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 182
    iget v1, p0, Lcom/duapps/ad/offerwall/ui/k;->e:I

    iget-object v2, p0, Lcom/duapps/ad/offerwall/ui/k;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/duapps/ad/offerwall/ui/k;->f:I

    move v2, v0

    .line 183
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    if-lez v2, :cond_0

    .line 184
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duapps/ad/entity/a/a;

    move-object v1, v0

    .line 185
    check-cast v1, Lcom/duapps/ad/entity/c;

    .line 186
    invoke-virtual {v1}, Lcom/duapps/ad/entity/c;->a()Lcom/duapps/ad/entity/AdData;

    move-result-object v4

    iget v5, p0, Lcom/duapps/ad/offerwall/ui/k;->f:I

    iput v5, v4, Lcom/duapps/ad/entity/AdData;->g:I

    .line 187
    iget-object v4, p0, Lcom/duapps/ad/offerwall/ui/k;->a:Landroid/content/Context;

    new-instance v5, Lcom/duapps/ad/stats/f;

    invoke-virtual {v1}, Lcom/duapps/ad/entity/c;->a()Lcom/duapps/ad/entity/AdData;

    move-result-object v1

    invoke-direct {v5, v1}, Lcom/duapps/ad/stats/f;-><init>(Lcom/duapps/ad/entity/AdData;)V

    iget v1, p0, Lcom/duapps/ad/offerwall/ui/k;->f:I

    invoke-static {v4, v5, v1}, Lcom/duapps/ad/stats/h;->a(Landroid/content/Context;Lcom/duapps/ad/stats/f;I)V

    .line 188
    iget-object v1, p0, Lcom/duapps/ad/offerwall/ui/k;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 190
    add-int/lit8 v0, v2, -0x1

    .line 191
    iget v1, p0, Lcom/duapps/ad/offerwall/ui/k;->f:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/duapps/ad/offerwall/ui/k;->f:I

    move v2, v0

    .line 192
    goto :goto_0

    .line 194
    :cond_0
    return-object p1
.end method

.method public b()V
    .locals 28

    .prologue
    .line 77
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/duapps/ad/offerwall/ui/k;->d:Z

    if-nez v2, :cond_1

    .line 159
    :cond_0
    :goto_0
    return-void

    .line 79
    :cond_1
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/duapps/ad/offerwall/ui/k;->d:Z

    .line 81
    sget v2, Lcom/duapps/ad/R$id;->item1:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/duapps/ad/offerwall/ui/k;->findViewById(I)Landroid/view/View;

    move-result-object v20

    .line 82
    sget v2, Lcom/duapps/ad/R$id;->item1_iv:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/duapps/ad/offerwall/ui/k;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 83
    sget v3, Lcom/duapps/ad/R$id;->item1_tv:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/duapps/ad/offerwall/ui/k;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 84
    sget v4, Lcom/duapps/ad/R$id;->item1_btn:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/duapps/ad/offerwall/ui/k;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 86
    sget v5, Lcom/duapps/ad/R$id;->item2:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/duapps/ad/offerwall/ui/k;->findViewById(I)Landroid/view/View;

    move-result-object v21

    .line 87
    sget v5, Lcom/duapps/ad/R$id;->item2_iv:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/duapps/ad/offerwall/ui/k;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 88
    sget v6, Lcom/duapps/ad/R$id;->item2_tv:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/duapps/ad/offerwall/ui/k;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 89
    sget v7, Lcom/duapps/ad/R$id;->item2_btn:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/duapps/ad/offerwall/ui/k;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 91
    sget v8, Lcom/duapps/ad/R$id;->item3:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/duapps/ad/offerwall/ui/k;->findViewById(I)Landroid/view/View;

    move-result-object v22

    .line 92
    sget v8, Lcom/duapps/ad/R$id;->item3_iv:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/duapps/ad/offerwall/ui/k;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 93
    sget v9, Lcom/duapps/ad/R$id;->item3_tv:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/duapps/ad/offerwall/ui/k;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 94
    sget v10, Lcom/duapps/ad/R$id;->item3_btn:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/duapps/ad/offerwall/ui/k;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 96
    sget v11, Lcom/duapps/ad/R$id;->item4:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/duapps/ad/offerwall/ui/k;->findViewById(I)Landroid/view/View;

    move-result-object v23

    .line 97
    sget v11, Lcom/duapps/ad/R$id;->item4_iv:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/duapps/ad/offerwall/ui/k;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    .line 98
    sget v12, Lcom/duapps/ad/R$id;->item4_tv:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/duapps/ad/offerwall/ui/k;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 99
    sget v13, Lcom/duapps/ad/R$id;->item4_btn:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/duapps/ad/offerwall/ui/k;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 101
    sget v14, Lcom/duapps/ad/R$id;->item5:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/duapps/ad/offerwall/ui/k;->findViewById(I)Landroid/view/View;

    move-result-object v24

    .line 102
    sget v14, Lcom/duapps/ad/R$id;->item5_iv:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/duapps/ad/offerwall/ui/k;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ImageView;

    .line 103
    sget v15, Lcom/duapps/ad/R$id;->item5_tv:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/duapps/ad/offerwall/ui/k;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 104
    sget v16, Lcom/duapps/ad/R$id;->item5_btn:I

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/duapps/ad/offerwall/ui/k;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 106
    sget v17, Lcom/duapps/ad/R$id;->item6:I

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/duapps/ad/offerwall/ui/k;->findViewById(I)Landroid/view/View;

    move-result-object v25

    .line 107
    sget v17, Lcom/duapps/ad/R$id;->item6_iv:I

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/duapps/ad/offerwall/ui/k;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ImageView;

    .line 108
    sget v18, Lcom/duapps/ad/R$id;->item6_tv:I

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/duapps/ad/offerwall/ui/k;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    .line 109
    sget v19, Lcom/duapps/ad/R$id;->item6_btn:I

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/duapps/ad/offerwall/ui/k;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    .line 111
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/duapps/ad/offerwall/ui/k;->b:Ljava/util/List;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Ljava/util/List;->size()I

    move-result v26

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-lt v0, v1, :cond_2

    .line 112
    const/16 v26, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 113
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/duapps/ad/offerwall/ui/k;->a(Landroid/widget/ImageView;)V

    .line 115
    invoke-static {}, Lcom/duapps/ad/base/a/b;->a()Lcom/duapps/ad/base/a/b;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/duapps/ad/offerwall/ui/k;->b:Ljava/util/List;

    move-object/from16 v20, v0

    const/16 v27, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/duapps/ad/entity/a/a;

    invoke-interface/range {v20 .. v20}, Lcom/duapps/ad/entity/a/a;->e()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v26

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Lcom/duapps/ad/base/a/b;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 116
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/duapps/ad/offerwall/ui/k;->b:Ljava/util/List;

    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/duapps/ad/entity/a/a;

    invoke-interface {v2}, Lcom/duapps/ad/entity/a/a;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/duapps/ad/offerwall/ui/k;->b:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/duapps/ad/entity/a/a;

    invoke-interface {v2}, Lcom/duapps/ad/entity/a/a;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/duapps/ad/offerwall/ui/k;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_3

    .line 120
    const/4 v2, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 121
    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/duapps/ad/offerwall/ui/k;->a(Landroid/widget/ImageView;)V

    .line 123
    invoke-static {}, Lcom/duapps/ad/base/a/b;->a()Lcom/duapps/ad/base/a/b;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/duapps/ad/offerwall/ui/k;->b:Ljava/util/List;

    const/4 v4, 0x1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/duapps/ad/entity/a/a;

    invoke-interface {v2}, Lcom/duapps/ad/entity/a/a;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2, v5}, Lcom/duapps/ad/base/a/b;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 124
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/duapps/ad/offerwall/ui/k;->b:Ljava/util/List;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/duapps/ad/entity/a/a;

    invoke-interface {v2}, Lcom/duapps/ad/entity/a/a;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/duapps/ad/offerwall/ui/k;->b:Ljava/util/List;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/duapps/ad/entity/a/a;

    invoke-interface {v2}, Lcom/duapps/ad/entity/a/a;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/duapps/ad/offerwall/ui/k;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x3

    if-lt v2, v3, :cond_4

    .line 128
    const/4 v2, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 129
    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/duapps/ad/offerwall/ui/k;->a(Landroid/widget/ImageView;)V

    .line 131
    invoke-static {}, Lcom/duapps/ad/base/a/b;->a()Lcom/duapps/ad/base/a/b;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/duapps/ad/offerwall/ui/k;->b:Ljava/util/List;

    const/4 v4, 0x2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/duapps/ad/entity/a/a;

    invoke-interface {v2}, Lcom/duapps/ad/entity/a/a;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2, v8}, Lcom/duapps/ad/base/a/b;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 132
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/duapps/ad/offerwall/ui/k;->b:Ljava/util/List;

    const/4 v3, 0x2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/duapps/ad/entity/a/a;

    invoke-interface {v2}, Lcom/duapps/ad/entity/a/a;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/duapps/ad/offerwall/ui/k;->b:Ljava/util/List;

    const/4 v3, 0x2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/duapps/ad/entity/a/a;

    invoke-interface {v2}, Lcom/duapps/ad/entity/a/a;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/duapps/ad/offerwall/ui/k;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x4

    if-lt v2, v3, :cond_5

    .line 136
    const/4 v2, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 137
    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/duapps/ad/offerwall/ui/k;->a(Landroid/widget/ImageView;)V

    .line 139
    invoke-static {}, Lcom/duapps/ad/base/a/b;->a()Lcom/duapps/ad/base/a/b;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/duapps/ad/offerwall/ui/k;->b:Ljava/util/List;

    const/4 v4, 0x3

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/duapps/ad/entity/a/a;

    invoke-interface {v2}, Lcom/duapps/ad/entity/a/a;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2, v11}, Lcom/duapps/ad/base/a/b;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 140
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/duapps/ad/offerwall/ui/k;->b:Ljava/util/List;

    const/4 v3, 0x3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/duapps/ad/entity/a/a;

    invoke-interface {v2}, Lcom/duapps/ad/entity/a/a;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/duapps/ad/offerwall/ui/k;->b:Ljava/util/List;

    const/4 v3, 0x3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/duapps/ad/entity/a/a;

    invoke-interface {v2}, Lcom/duapps/ad/entity/a/a;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/duapps/ad/offerwall/ui/k;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x5

    if-lt v2, v3, :cond_6

    .line 144
    const/4 v2, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 145
    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/duapps/ad/offerwall/ui/k;->a(Landroid/widget/ImageView;)V

    .line 147
    invoke-static {}, Lcom/duapps/ad/base/a/b;->a()Lcom/duapps/ad/base/a/b;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/duapps/ad/offerwall/ui/k;->b:Ljava/util/List;

    const/4 v4, 0x4

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/duapps/ad/entity/a/a;

    invoke-interface {v2}, Lcom/duapps/ad/entity/a/a;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2, v14}, Lcom/duapps/ad/base/a/b;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 148
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/duapps/ad/offerwall/ui/k;->b:Ljava/util/List;

    const/4 v3, 0x4

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/duapps/ad/entity/a/a;

    invoke-interface {v2}, Lcom/duapps/ad/entity/a/a;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/duapps/ad/offerwall/ui/k;->b:Ljava/util/List;

    const/4 v3, 0x4

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/duapps/ad/entity/a/a;

    invoke-interface {v2}, Lcom/duapps/ad/entity/a/a;->f()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/duapps/ad/offerwall/ui/k;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x6

    if-lt v2, v3, :cond_0

    .line 152
    const/4 v2, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 153
    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/duapps/ad/offerwall/ui/k;->a(Landroid/widget/ImageView;)V

    .line 155
    invoke-static {}, Lcom/duapps/ad/base/a/b;->a()Lcom/duapps/ad/base/a/b;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/duapps/ad/offerwall/ui/k;->b:Ljava/util/List;

    const/4 v4, 0x5

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/duapps/ad/entity/a/a;

    invoke-interface {v2}, Lcom/duapps/ad/entity/a/a;->e()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v3, v2, v0}, Lcom/duapps/ad/base/a/b;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 156
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/duapps/ad/offerwall/ui/k;->b:Ljava/util/List;

    const/4 v3, 0x5

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/duapps/ad/entity/a/a;

    invoke-interface {v2}, Lcom/duapps/ad/entity/a/a;->h()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/duapps/ad/offerwall/ui/k;->b:Ljava/util/List;

    const/4 v3, 0x5

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/duapps/ad/entity/a/a;

    invoke-interface {v2}, Lcom/duapps/ad/entity/a/a;->f()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method public c()Z
    .locals 2

    .prologue
    .line 199
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/duapps/ad/offerwall/ui/k;->b:Ljava/util/List;

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
    .line 204
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/duapps/ad/R$id;->item1:I

    if-ne v0, v1, :cond_1

    .line 205
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/k;->b:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duapps/ad/entity/a/a;

    invoke-virtual {p0, v0}, Lcom/duapps/ad/offerwall/ui/k;->a(Lcom/duapps/ad/entity/a/a;)V

    .line 217
    :cond_0
    :goto_0
    return-void

    .line 206
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/duapps/ad/R$id;->item2:I

    if-ne v0, v1, :cond_2

    .line 207
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/k;->b:Ljava/util/List;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duapps/ad/entity/a/a;

    invoke-virtual {p0, v0}, Lcom/duapps/ad/offerwall/ui/k;->a(Lcom/duapps/ad/entity/a/a;)V

    goto :goto_0

    .line 208
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/duapps/ad/R$id;->item3:I

    if-ne v0, v1, :cond_3

    .line 209
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/k;->b:Ljava/util/List;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duapps/ad/entity/a/a;

    invoke-virtual {p0, v0}, Lcom/duapps/ad/offerwall/ui/k;->a(Lcom/duapps/ad/entity/a/a;)V

    goto :goto_0

    .line 210
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/duapps/ad/R$id;->item4:I

    if-ne v0, v1, :cond_4

    .line 211
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/k;->b:Ljava/util/List;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duapps/ad/entity/a/a;

    invoke-virtual {p0, v0}, Lcom/duapps/ad/offerwall/ui/k;->a(Lcom/duapps/ad/entity/a/a;)V

    goto :goto_0

    .line 212
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/duapps/ad/R$id;->item5:I

    if-ne v0, v1, :cond_5

    .line 213
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/k;->b:Ljava/util/List;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duapps/ad/entity/a/a;

    invoke-virtual {p0, v0}, Lcom/duapps/ad/offerwall/ui/k;->a(Lcom/duapps/ad/entity/a/a;)V

    goto :goto_0

    .line 214
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/duapps/ad/R$id;->item6:I

    if-ne v0, v1, :cond_0

    .line 215
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/k;->b:Ljava/util/List;

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duapps/ad/entity/a/a;

    invoke-virtual {p0, v0}, Lcom/duapps/ad/offerwall/ui/k;->a(Lcom/duapps/ad/entity/a/a;)V

    goto :goto_0
.end method
