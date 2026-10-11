.class public Lcom/duapps/ad/offerwall/ui/HeaderLayout;
.super Landroid/widget/LinearLayout;
.source "HeaderLayout.java"


# instance fields
.field private a:I

.field private b:I

.field private c:Z

.field private d:Z

.field private e:Landroid/content/Context;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/duapps/ad/offerwall/ui/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 36
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 26
    iput v0, p0, Lcom/duapps/ad/offerwall/ui/HeaderLayout;->a:I

    .line 28
    iput v1, p0, Lcom/duapps/ad/offerwall/ui/HeaderLayout;->b:I

    .line 29
    iput-boolean v1, p0, Lcom/duapps/ad/offerwall/ui/HeaderLayout;->c:Z

    .line 30
    iput-boolean v0, p0, Lcom/duapps/ad/offerwall/ui/HeaderLayout;->d:Z

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/duapps/ad/offerwall/ui/HeaderLayout;->f:Ljava/util/List;

    .line 37
    iput-object p1, p0, Lcom/duapps/ad/offerwall/ui/HeaderLayout;->e:Landroid/content/Context;

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 41
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    iput v0, p0, Lcom/duapps/ad/offerwall/ui/HeaderLayout;->a:I

    .line 28
    iput v1, p0, Lcom/duapps/ad/offerwall/ui/HeaderLayout;->b:I

    .line 29
    iput-boolean v1, p0, Lcom/duapps/ad/offerwall/ui/HeaderLayout;->c:Z

    .line 30
    iput-boolean v0, p0, Lcom/duapps/ad/offerwall/ui/HeaderLayout;->d:Z

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/duapps/ad/offerwall/ui/HeaderLayout;->f:Ljava/util/List;

    .line 42
    iput-object p1, p0, Lcom/duapps/ad/offerwall/ui/HeaderLayout;->e:Landroid/content/Context;

    .line 43
    return-void
.end method


# virtual methods
.method public a(ILjava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
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
    .line 46
    invoke-virtual {p0, p1}, Lcom/duapps/ad/offerwall/ui/HeaderLayout;->a(I)V

    .line 47
    invoke-virtual {p0, p2}, Lcom/duapps/ad/offerwall/ui/HeaderLayout;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 48
    iget-object v1, p0, Lcom/duapps/ad/offerwall/ui/HeaderLayout;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 50
    iget v1, p0, Lcom/duapps/ad/offerwall/ui/HeaderLayout;->b:I

    if-nez v1, :cond_4

    .line 51
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 52
    new-instance v1, Lcom/duapps/ad/offerwall/ui/i;

    iget-object v2, p0, Lcom/duapps/ad/offerwall/ui/HeaderLayout;->e:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/duapps/ad/offerwall/ui/i;-><init>(Landroid/content/Context;)V

    .line 53
    invoke-virtual {v1, v0}, Lcom/duapps/ad/offerwall/ui/d;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 54
    invoke-virtual {v1}, Lcom/duapps/ad/offerwall/ui/d;->a()Lcom/duapps/ad/offerwall/ui/d;

    .line 55
    iget-object v2, p0, Lcom/duapps/ad/offerwall/ui/HeaderLayout;->f:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    invoke-virtual {p0, v1}, Lcom/duapps/ad/offerwall/ui/HeaderLayout;->addView(Landroid/view/View;)V

    .line 64
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 65
    new-instance v1, Lcom/duapps/ad/offerwall/ui/k;

    iget-object v2, p0, Lcom/duapps/ad/offerwall/ui/HeaderLayout;->e:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/duapps/ad/offerwall/ui/k;-><init>(Landroid/content/Context;)V

    .line 66
    iget v2, p0, Lcom/duapps/ad/offerwall/ui/HeaderLayout;->a:I

    invoke-virtual {v1, v2}, Lcom/duapps/ad/offerwall/ui/d;->a(I)V

    .line 67
    invoke-virtual {v1, v0}, Lcom/duapps/ad/offerwall/ui/d;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 68
    invoke-virtual {v1}, Lcom/duapps/ad/offerwall/ui/d;->a()Lcom/duapps/ad/offerwall/ui/d;

    .line 69
    iget-object v2, p0, Lcom/duapps/ad/offerwall/ui/HeaderLayout;->f:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    invoke-virtual {p0, v1}, Lcom/duapps/ad/offerwall/ui/HeaderLayout;->addView(Landroid/view/View;)V

    .line 72
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 73
    new-instance v1, Lcom/duapps/ad/offerwall/ui/j;

    iget-object v2, p0, Lcom/duapps/ad/offerwall/ui/HeaderLayout;->e:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/duapps/ad/offerwall/ui/j;-><init>(Landroid/content/Context;)V

    .line 74
    iget v2, p0, Lcom/duapps/ad/offerwall/ui/HeaderLayout;->a:I

    add-int/lit8 v2, v2, 0x6

    invoke-virtual {v1, v2}, Lcom/duapps/ad/offerwall/ui/d;->a(I)V

    .line 75
    invoke-virtual {v1, v0}, Lcom/duapps/ad/offerwall/ui/d;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 76
    invoke-virtual {v1}, Lcom/duapps/ad/offerwall/ui/d;->a()Lcom/duapps/ad/offerwall/ui/d;

    .line 77
    iget-object v2, p0, Lcom/duapps/ad/offerwall/ui/HeaderLayout;->f:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    invoke-virtual {p0, v1}, Lcom/duapps/ad/offerwall/ui/HeaderLayout;->addView(Landroid/view/View;)V

    .line 81
    :cond_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/duapps/ad/offerwall/ui/HeaderLayout;->c:Z

    .line 83
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 84
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/duapps/ad/offerwall/ui/HeaderLayout;->d:Z

    .line 85
    iget-object v1, p0, Lcom/duapps/ad/offerwall/ui/HeaderLayout;->e:Landroid/content/Context;

    sget v2, Lcom/duapps/ad/R$layout;->duapps_ad_offer_wall_topic_list_title:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/duapps/ad/offerwall/ui/HeaderLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/duapps/ad/offerwall/ui/HeaderLayout;->addView(Landroid/view/View;)V

    .line 87
    :cond_3
    return-object v0

    .line 59
    :cond_4
    new-instance v1, Landroid/view/View;

    iget-object v2, p0, Lcom/duapps/ad/offerwall/ui/HeaderLayout;->e:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 60
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    iget-object v4, p0, Lcom/duapps/ad/offerwall/ui/HeaderLayout;->e:Landroid/content/Context;

    const/high16 v5, 0x41200000    # 10.0f

    invoke-static {v4, v5}, Lcom/duapps/ad/c/b/c;->a(Landroid/content/Context;F)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 61
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 62
    invoke-virtual {p0, v1}, Lcom/duapps/ad/offerwall/ui/HeaderLayout;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public a(Ljava/util/List;)Ljava/util/List;
    .locals 5
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
    .line 127
    iget v0, p0, Lcom/duapps/ad/offerwall/ui/HeaderLayout;->b:I

    if-nez v0, :cond_1

    .line 128
    const/4 v0, 0x1

    .line 129
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 130
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    .line 131
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    if-lez v1, :cond_0

    .line 132
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duapps/ad/entity/a/a;

    .line 133
    invoke-interface {v0}, Lcom/duapps/ad/entity/a/a;->d()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 134
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 135
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    add-int/lit8 v0, v1, -0x1

    :goto_1
    move v1, v0

    .line 138
    goto :goto_0

    .line 139
    :cond_0
    const/4 v0, 0x0

    invoke-interface {p1, v0, v2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 141
    :cond_1
    return-object p1

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public a()V
    .locals 3

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/duapps/ad/offerwall/ui/HeaderLayout;->d:Z

    if-nez v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/HeaderLayout;->e:Landroid/content/Context;

    sget v1, Lcom/duapps/ad/R$layout;->duapps_ad_offer_wall_topic_list_title:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/duapps/ad/offerwall/ui/HeaderLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/duapps/ad/offerwall/ui/HeaderLayout;->addView(Landroid/view/View;)V

    .line 94
    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 282
    packed-switch p1, :pswitch_data_0

    .line 289
    iput v0, p0, Lcom/duapps/ad/offerwall/ui/HeaderLayout;->a:I

    .line 290
    iput v1, p0, Lcom/duapps/ad/offerwall/ui/HeaderLayout;->b:I

    .line 292
    :goto_0
    return-void

    .line 284
    :pswitch_0
    iput v0, p0, Lcom/duapps/ad/offerwall/ui/HeaderLayout;->b:I

    .line 285
    iput v1, p0, Lcom/duapps/ad/offerwall/ui/HeaderLayout;->a:I

    goto :goto_0

    .line 282
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public b(ILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/duapps/ad/entity/a/a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 97
    if-eqz p1, :cond_0

    .line 98
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "view type must be HEADER_TYPE_0."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :cond_0
    invoke-virtual {p0, p1}, Lcom/duapps/ad/offerwall/ui/HeaderLayout;->a(I)V

    .line 102
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/HeaderLayout;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 104
    iget v0, p0, Lcom/duapps/ad/offerwall/ui/HeaderLayout;->b:I

    if-nez v0, :cond_1

    .line 105
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 106
    new-instance v0, Lcom/duapps/ad/offerwall/ui/i;

    iget-object v1, p0, Lcom/duapps/ad/offerwall/ui/HeaderLayout;->e:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/duapps/ad/offerwall/ui/i;-><init>(Landroid/content/Context;)V

    .line 107
    invoke-virtual {v0, p2}, Lcom/duapps/ad/offerwall/ui/i;->c(Ljava/util/List;)V

    .line 108
    invoke-virtual {v0}, Lcom/duapps/ad/offerwall/ui/i;->a()Lcom/duapps/ad/offerwall/ui/d;

    .line 109
    iget-object v1, p0, Lcom/duapps/ad/offerwall/ui/HeaderLayout;->f:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    invoke-virtual {p0, v0}, Lcom/duapps/ad/offerwall/ui/HeaderLayout;->addView(Landroid/view/View;)V

    .line 113
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/duapps/ad/offerwall/ui/HeaderLayout;->c:Z

    .line 114
    return-void
.end method

.method public b(Ljava/util/List;)V
    .locals 3
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
    const/4 v2, 0x0

    .line 150
    iget v0, p0, Lcom/duapps/ad/offerwall/ui/HeaderLayout;->b:I

    if-nez v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/HeaderLayout;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 152
    if-lez v0, :cond_2

    .line 153
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/HeaderLayout;->f:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duapps/ad/offerwall/ui/d;

    .line 154
    instance-of v1, v0, Lcom/duapps/ad/offerwall/ui/i;

    if-eqz v1, :cond_1

    move-object v1, v0

    .line 155
    check-cast v1, Lcom/duapps/ad/offerwall/ui/i;

    invoke-virtual {v1, p1}, Lcom/duapps/ad/offerwall/ui/i;->d(Ljava/util/List;)V

    .line 156
    invoke-virtual {v0}, Lcom/duapps/ad/offerwall/ui/d;->b()V

    .line 168
    :cond_0
    :goto_0
    return-void

    .line 158
    :cond_1
    new-instance v0, Lcom/duapps/ad/offerwall/ui/i;

    iget-object v1, p0, Lcom/duapps/ad/offerwall/ui/HeaderLayout;->e:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/duapps/ad/offerwall/ui/i;-><init>(Landroid/content/Context;)V

    .line 159
    invoke-virtual {v0, p1}, Lcom/duapps/ad/offerwall/ui/i;->c(Ljava/util/List;)V

    .line 160
    invoke-virtual {v0}, Lcom/duapps/ad/offerwall/ui/i;->a()Lcom/duapps/ad/offerwall/ui/d;

    .line 161
    iget-object v1, p0, Lcom/duapps/ad/offerwall/ui/HeaderLayout;->f:Ljava/util/List;

    invoke-interface {v1, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 162
    invoke-virtual {p0, v0, v2}, Lcom/duapps/ad/offerwall/ui/HeaderLayout;->addView(Landroid/view/View;I)V

    goto :goto_0

    .line 165
    :cond_2
    const-string v0, "HeaderLayout"

    const-string v1, "addNativeData currentSize error."

    invoke-static {v0, v1}, Lcom/duapps/ad/base/h;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 117
    iget-boolean v0, p0, Lcom/duapps/ad/offerwall/ui/HeaderLayout;->c:Z

    return v0
.end method

.method public c(Ljava/util/List;)Ljava/util/List;
    .locals 4
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
    .line 171
    invoke-virtual {p0, p1}, Lcom/duapps/ad/offerwall/ui/HeaderLayout;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 172
    iget v1, p0, Lcom/duapps/ad/offerwall/ui/HeaderLayout;->b:I

    packed-switch v1, :pswitch_data_0

    .line 178
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 179
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/duapps/ad/offerwall/ui/HeaderLayout;->d:Z

    .line 180
    iget-object v1, p0, Lcom/duapps/ad/offerwall/ui/HeaderLayout;->e:Landroid/content/Context;

    sget v2, Lcom/duapps/ad/R$layout;->duapps_ad_offer_wall_topic_list_title:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/duapps/ad/offerwall/ui/HeaderLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/duapps/ad/offerwall/ui/HeaderLayout;->addView(Landroid/view/View;)V

    .line 182
    :cond_0
    return-object v0

    .line 174
    :pswitch_0
    invoke-virtual {p0, v0}, Lcom/duapps/ad/offerwall/ui/HeaderLayout;->d(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 176
    :pswitch_1
    invoke-virtual {p0, v0}, Lcom/duapps/ad/offerwall/ui/HeaderLayout;->e(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 172
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public c()Z
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 261
    .line 262
    iget v0, p0, Lcom/duapps/ad/offerwall/ui/HeaderLayout;->b:I

    packed-switch v0, :pswitch_data_0

    .line 278
    :cond_0
    :goto_0
    return v2

    .line 264
    :pswitch_0
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/HeaderLayout;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_0

    .line 265
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/HeaderLayout;->f:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duapps/ad/offerwall/ui/d;

    invoke-virtual {v0}, Lcom/duapps/ad/offerwall/ui/d;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/HeaderLayout;->f:Ljava/util/List;

    .line 266
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duapps/ad/offerwall/ui/d;

    invoke-virtual {v0}, Lcom/duapps/ad/offerwall/ui/d;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/HeaderLayout;->f:Ljava/util/List;

    .line 267
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duapps/ad/offerwall/ui/d;

    invoke-virtual {v0}, Lcom/duapps/ad/offerwall/ui/d;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    move v2, v0

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    .line 271
    :pswitch_1
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/HeaderLayout;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v4, :cond_0

    .line 272
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/HeaderLayout;->f:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duapps/ad/offerwall/ui/d;

    invoke-virtual {v0}, Lcom/duapps/ad/offerwall/ui/d;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/HeaderLayout;->f:Ljava/util/List;

    .line 273
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duapps/ad/offerwall/ui/d;

    invoke-virtual {v0}, Lcom/duapps/ad/offerwall/ui/d;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_2
    move v2, v1

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_2

    .line 262
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public d(Ljava/util/List;)Ljava/util/List;
    .locals 5
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
    const/4 v2, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 186
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/HeaderLayout;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 188
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 189
    if-ge v1, v3, :cond_3

    .line 190
    new-instance v0, Lcom/duapps/ad/offerwall/ui/i;

    iget-object v2, p0, Lcom/duapps/ad/offerwall/ui/HeaderLayout;->e:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/duapps/ad/offerwall/ui/i;-><init>(Landroid/content/Context;)V

    .line 191
    invoke-virtual {v0, p1}, Lcom/duapps/ad/offerwall/ui/d;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 192
    invoke-virtual {v0}, Lcom/duapps/ad/offerwall/ui/d;->a()Lcom/duapps/ad/offerwall/ui/d;

    .line 193
    iget-object v2, p0, Lcom/duapps/ad/offerwall/ui/HeaderLayout;->f:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 194
    invoke-virtual {p0, v0}, Lcom/duapps/ad/offerwall/ui/HeaderLayout;->addView(Landroid/view/View;)V

    .line 200
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 201
    if-ge v1, v4, :cond_4

    .line 202
    new-instance v0, Lcom/duapps/ad/offerwall/ui/k;

    iget-object v2, p0, Lcom/duapps/ad/offerwall/ui/HeaderLayout;->e:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/duapps/ad/offerwall/ui/k;-><init>(Landroid/content/Context;)V

    .line 203
    iget v2, p0, Lcom/duapps/ad/offerwall/ui/HeaderLayout;->a:I

    invoke-virtual {v0, v2}, Lcom/duapps/ad/offerwall/ui/d;->a(I)V

    .line 204
    invoke-virtual {v0, p1}, Lcom/duapps/ad/offerwall/ui/d;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 205
    invoke-virtual {v0}, Lcom/duapps/ad/offerwall/ui/d;->a()Lcom/duapps/ad/offerwall/ui/d;

    .line 206
    iget-object v2, p0, Lcom/duapps/ad/offerwall/ui/HeaderLayout;->f:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    invoke-virtual {p0, v0}, Lcom/duapps/ad/offerwall/ui/HeaderLayout;->addView(Landroid/view/View;)V

    .line 213
    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 214
    const/4 v0, 0x3

    if-ge v1, v0, :cond_5

    .line 215
    new-instance v0, Lcom/duapps/ad/offerwall/ui/j;

    iget-object v1, p0, Lcom/duapps/ad/offerwall/ui/HeaderLayout;->e:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/duapps/ad/offerwall/ui/j;-><init>(Landroid/content/Context;)V

    .line 216
    iget v1, p0, Lcom/duapps/ad/offerwall/ui/HeaderLayout;->a:I

    add-int/lit8 v1, v1, 0x6

    invoke-virtual {v0, v1}, Lcom/duapps/ad/offerwall/ui/d;->a(I)V

    .line 217
    invoke-virtual {v0, p1}, Lcom/duapps/ad/offerwall/ui/d;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 218
    invoke-virtual {v0}, Lcom/duapps/ad/offerwall/ui/d;->a()Lcom/duapps/ad/offerwall/ui/d;

    .line 219
    iget-object v1, p0, Lcom/duapps/ad/offerwall/ui/HeaderLayout;->f:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    invoke-virtual {p0, v0}, Lcom/duapps/ad/offerwall/ui/HeaderLayout;->addView(Landroid/view/View;)V

    .line 226
    :cond_2
    :goto_2
    return-object p1

    .line 196
    :cond_3
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/HeaderLayout;->f:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duapps/ad/offerwall/ui/d;

    invoke-virtual {v0, p1}, Lcom/duapps/ad/offerwall/ui/d;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 197
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/HeaderLayout;->f:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duapps/ad/offerwall/ui/d;

    invoke-virtual {v0}, Lcom/duapps/ad/offerwall/ui/d;->b()V

    goto :goto_0

    .line 209
    :cond_4
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/HeaderLayout;->f:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duapps/ad/offerwall/ui/d;

    invoke-virtual {v0, p1}, Lcom/duapps/ad/offerwall/ui/d;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 210
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/HeaderLayout;->f:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duapps/ad/offerwall/ui/d;

    invoke-virtual {v0}, Lcom/duapps/ad/offerwall/ui/d;->b()V

    goto :goto_1

    .line 222
    :cond_5
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/HeaderLayout;->f:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duapps/ad/offerwall/ui/d;

    invoke-virtual {v0, p1}, Lcom/duapps/ad/offerwall/ui/d;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 223
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/HeaderLayout;->f:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duapps/ad/offerwall/ui/d;

    invoke-virtual {v0}, Lcom/duapps/ad/offerwall/ui/d;->b()V

    goto :goto_2
.end method

.method public d()V
    .locals 2

    .prologue
    .line 295
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/HeaderLayout;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duapps/ad/offerwall/ui/d;

    .line 296
    invoke-virtual {v0}, Lcom/duapps/ad/offerwall/ui/d;->d()V

    goto :goto_0

    .line 298
    :cond_0
    return-void
.end method

.method public e(Ljava/util/List;)Ljava/util/List;
    .locals 4
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
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 230
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/HeaderLayout;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 231
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 232
    if-ge v1, v3, :cond_2

    .line 233
    new-instance v0, Lcom/duapps/ad/offerwall/ui/k;

    iget-object v2, p0, Lcom/duapps/ad/offerwall/ui/HeaderLayout;->e:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/duapps/ad/offerwall/ui/k;-><init>(Landroid/content/Context;)V

    .line 234
    iget v2, p0, Lcom/duapps/ad/offerwall/ui/HeaderLayout;->a:I

    invoke-virtual {v0, v2}, Lcom/duapps/ad/offerwall/ui/d;->a(I)V

    .line 235
    invoke-virtual {v0, p1}, Lcom/duapps/ad/offerwall/ui/d;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 236
    invoke-virtual {v0}, Lcom/duapps/ad/offerwall/ui/d;->a()Lcom/duapps/ad/offerwall/ui/d;

    .line 237
    iget-object v2, p0, Lcom/duapps/ad/offerwall/ui/HeaderLayout;->f:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 238
    invoke-virtual {p0, v0}, Lcom/duapps/ad/offerwall/ui/HeaderLayout;->addView(Landroid/view/View;)V

    .line 244
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 245
    const/4 v0, 0x2

    if-ge v1, v0, :cond_3

    .line 246
    new-instance v0, Lcom/duapps/ad/offerwall/ui/j;

    iget-object v1, p0, Lcom/duapps/ad/offerwall/ui/HeaderLayout;->e:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/duapps/ad/offerwall/ui/j;-><init>(Landroid/content/Context;)V

    .line 247
    iget v1, p0, Lcom/duapps/ad/offerwall/ui/HeaderLayout;->a:I

    add-int/lit8 v1, v1, 0x6

    invoke-virtual {v0, v1}, Lcom/duapps/ad/offerwall/ui/d;->a(I)V

    .line 248
    invoke-virtual {v0, p1}, Lcom/duapps/ad/offerwall/ui/d;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 249
    invoke-virtual {v0}, Lcom/duapps/ad/offerwall/ui/d;->a()Lcom/duapps/ad/offerwall/ui/d;

    .line 250
    iget-object v1, p0, Lcom/duapps/ad/offerwall/ui/HeaderLayout;->f:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 251
    invoke-virtual {p0, v0}, Lcom/duapps/ad/offerwall/ui/HeaderLayout;->addView(Landroid/view/View;)V

    .line 257
    :cond_1
    :goto_1
    return-object p1

    .line 240
    :cond_2
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/HeaderLayout;->f:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duapps/ad/offerwall/ui/d;

    invoke-virtual {v0, p1}, Lcom/duapps/ad/offerwall/ui/d;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 241
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/HeaderLayout;->f:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duapps/ad/offerwall/ui/d;

    invoke-virtual {v0}, Lcom/duapps/ad/offerwall/ui/d;->b()V

    goto :goto_0

    .line 253
    :cond_3
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/HeaderLayout;->f:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duapps/ad/offerwall/ui/d;

    invoke-virtual {v0, p1}, Lcom/duapps/ad/offerwall/ui/d;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 254
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/HeaderLayout;->f:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duapps/ad/offerwall/ui/d;

    invoke-virtual {v0}, Lcom/duapps/ad/offerwall/ui/d;->b()V

    goto :goto_1
.end method

.method public e()V
    .locals 2

    .prologue
    .line 301
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/HeaderLayout;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duapps/ad/offerwall/ui/d;

    .line 302
    invoke-virtual {v0}, Lcom/duapps/ad/offerwall/ui/d;->e()V

    goto :goto_0

    .line 304
    :cond_0
    return-void
.end method

.method public f()V
    .locals 2

    .prologue
    .line 307
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/HeaderLayout;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duapps/ad/offerwall/ui/d;

    .line 308
    invoke-virtual {v0}, Lcom/duapps/ad/offerwall/ui/d;->f()V

    goto :goto_0

    .line 310
    :cond_0
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/HeaderLayout;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 311
    return-void
.end method
