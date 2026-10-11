.class public Lcom/duapps/ad/offerwall/ui/b;
.super Lcom/duapps/ad/offerwall/ui/h;
.source "GamesFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/duapps/ad/offerwall/ui/c;


# instance fields
.field private f:Lcom/duapps/ad/offerwall/a;

.field private g:Landroid/widget/ListView;

.field private h:Lcom/duapps/ad/offerwall/ui/LoadingView;

.field private i:Lcom/duapps/ad/offerwall/ui/PullUpForMore;

.field private j:Lcom/duapps/ad/offerwall/ui/HeaderLayout;

.field private k:Lcom/duapps/ad/offerwall/ui/e;

.field private l:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/duapps/ad/entity/a/a;",
            ">;"
        }
    .end annotation
.end field

.field private m:I

.field private n:I

.field private o:Lcom/duapps/ad/stats/d;

.field private p:Z

.field private q:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 29
    invoke-direct {p0}, Lcom/duapps/ad/offerwall/ui/h;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/duapps/ad/offerwall/ui/b;->l:Ljava/util/ArrayList;

    .line 40
    iput v1, p0, Lcom/duapps/ad/offerwall/ui/b;->m:I

    .line 41
    iput v1, p0, Lcom/duapps/ad/offerwall/ui/b;->n:I

    .line 43
    iput-boolean v2, p0, Lcom/duapps/ad/offerwall/ui/b;->p:Z

    .line 44
    iput-boolean v2, p0, Lcom/duapps/ad/offerwall/ui/b;->q:Z

    return-void
.end method

.method private a(I)I
    .locals 1

    .prologue
    .line 66
    mul-int/lit16 v0, p1, 0x3e8

    add-int/lit8 v0, v0, 0x2

    return v0
.end method

.method static synthetic a(Lcom/duapps/ad/offerwall/ui/b;I)I
    .locals 0

    .prologue
    .line 29
    iput p1, p0, Lcom/duapps/ad/offerwall/ui/b;->m:I

    return p1
.end method

.method static synthetic a(Lcom/duapps/ad/offerwall/ui/b;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/b;->g:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic a(Lcom/duapps/ad/offerwall/ui/b;Lcom/duapps/ad/stats/d;)Lcom/duapps/ad/stats/d;
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/duapps/ad/offerwall/ui/b;->o:Lcom/duapps/ad/stats/d;

    return-object p1
.end method

.method private a(Landroid/view/View;Landroid/view/LayoutInflater;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 70
    sget v0, Lcom/duapps/ad/R$id;->duapps_ad_offer_wall_lv:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/duapps/ad/offerwall/ui/b;->g:Landroid/widget/ListView;

    .line 71
    sget v0, Lcom/duapps/ad/R$id;->duapps_ad_offer_wall_loading:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/duapps/ad/offerwall/ui/LoadingView;

    iput-object v0, p0, Lcom/duapps/ad/offerwall/ui/b;->h:Lcom/duapps/ad/offerwall/ui/LoadingView;

    .line 72
    sget v0, Lcom/duapps/ad/R$layout;->duapps_ad_offer_wall_fragment_header_container:I

    iget-object v1, p0, Lcom/duapps/ad/offerwall/ui/b;->g:Landroid/widget/ListView;

    .line 73
    invoke-virtual {p2, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/duapps/ad/offerwall/ui/HeaderLayout;

    iput-object v0, p0, Lcom/duapps/ad/offerwall/ui/b;->j:Lcom/duapps/ad/offerwall/ui/HeaderLayout;

    .line 74
    sget v0, Lcom/duapps/ad/R$layout;->duapps_ad_offer_wall_load_more_footer:I

    iget-object v1, p0, Lcom/duapps/ad/offerwall/ui/b;->g:Landroid/widget/ListView;

    .line 75
    invoke-virtual {p2, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/duapps/ad/offerwall/ui/PullUpForMore;

    iput-object v0, p0, Lcom/duapps/ad/offerwall/ui/b;->i:Lcom/duapps/ad/offerwall/ui/PullUpForMore;

    .line 76
    new-instance v0, Lcom/duapps/ad/offerwall/ui/e;

    iget-object v1, p0, Lcom/duapps/ad/offerwall/ui/b;->d:Landroid/content/Context;

    iget-object v2, p0, Lcom/duapps/ad/offerwall/ui/b;->l:Ljava/util/ArrayList;

    iget v3, p0, Lcom/duapps/ad/offerwall/ui/b;->a:I

    invoke-direct {v0, v1, v2, v3}, Lcom/duapps/ad/offerwall/ui/e;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    iput-object v0, p0, Lcom/duapps/ad/offerwall/ui/b;->k:Lcom/duapps/ad/offerwall/ui/e;

    .line 77
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/b;->k:Lcom/duapps/ad/offerwall/ui/e;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/duapps/ad/offerwall/ui/e;->a(I)V

    .line 78
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/b;->g:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/duapps/ad/offerwall/ui/b;->j:Lcom/duapps/ad/offerwall/ui/HeaderLayout;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 79
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/b;->g:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/duapps/ad/offerwall/ui/b;->i:Lcom/duapps/ad/offerwall/ui/PullUpForMore;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 80
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/b;->g:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/duapps/ad/offerwall/ui/b;->k:Lcom/duapps/ad/offerwall/ui/e;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 81
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/duapps/ad/offerwall/ui/b$1;

    invoke-direct {v1, p0}, Lcom/duapps/ad/offerwall/ui/b$1;-><init>(Lcom/duapps/ad/offerwall/ui/b;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 89
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/b;->g:Landroid/widget/ListView;

    new-instance v1, Lcom/duapps/ad/offerwall/ui/b$2;

    invoke-direct {v1, p0}, Lcom/duapps/ad/offerwall/ui/b$2;-><init>(Lcom/duapps/ad/offerwall/ui/b;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 111
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/b;->g:Landroid/widget/ListView;

    new-instance v1, Lcom/duapps/ad/offerwall/ui/b$3;

    invoke-direct {v1, p0}, Lcom/duapps/ad/offerwall/ui/b$3;-><init>(Lcom/duapps/ad/offerwall/ui/b;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 132
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/b;->h:Lcom/duapps/ad/offerwall/ui/LoadingView;

    invoke-virtual {v0, p0}, Lcom/duapps/ad/offerwall/ui/LoadingView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    return-void
.end method

.method static synthetic b(Lcom/duapps/ad/offerwall/ui/b;)Lcom/duapps/ad/offerwall/ui/e;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/b;->k:Lcom/duapps/ad/offerwall/ui/e;

    return-object v0
.end method

.method static synthetic c(Lcom/duapps/ad/offerwall/ui/b;)Lcom/duapps/ad/stats/d;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/b;->o:Lcom/duapps/ad/stats/d;

    return-object v0
.end method

.method static synthetic d(Lcom/duapps/ad/offerwall/ui/b;)I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcom/duapps/ad/offerwall/ui/b;->m:I

    return v0
.end method

.method static synthetic e(Lcom/duapps/ad/offerwall/ui/b;)I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcom/duapps/ad/offerwall/ui/b;->n:I

    return v0
.end method

.method static synthetic f(Lcom/duapps/ad/offerwall/ui/b;)Lcom/duapps/ad/offerwall/ui/PullUpForMore;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/b;->i:Lcom/duapps/ad/offerwall/ui/PullUpForMore;

    return-object v0
.end method

.method static synthetic g(Lcom/duapps/ad/offerwall/ui/b;)Lcom/duapps/ad/offerwall/a;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/b;->f:Lcom/duapps/ad/offerwall/a;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 160
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/b;->i:Lcom/duapps/ad/offerwall/ui/PullUpForMore;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/duapps/ad/offerwall/ui/PullUpForMore;->a(I)V

    .line 161
    return-void
.end method

.method public a(IJ)V
    .locals 0

    .prologue
    .line 180
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 2
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
    .line 184
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/b;->j:Lcom/duapps/ad/offerwall/ui/HeaderLayout;

    invoke-virtual {v0}, Lcom/duapps/ad/offerwall/ui/HeaderLayout;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/b;->j:Lcom/duapps/ad/offerwall/ui/HeaderLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/duapps/ad/offerwall/ui/HeaderLayout;->a(ILjava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 192
    :goto_0
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/b;->k:Lcom/duapps/ad/offerwall/ui/e;

    invoke-virtual {v0, p1}, Lcom/duapps/ad/offerwall/ui/e;->a(Ljava/util/List;)V

    .line 193
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/b;->k:Lcom/duapps/ad/offerwall/ui/e;

    invoke-virtual {v0}, Lcom/duapps/ad/offerwall/ui/e;->getCount()I

    move-result v0

    iput v0, p0, Lcom/duapps/ad/offerwall/ui/b;->n:I

    .line 194
    return-void

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/b;->j:Lcom/duapps/ad/offerwall/ui/HeaderLayout;

    invoke-virtual {v0}, Lcom/duapps/ad/offerwall/ui/HeaderLayout;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 187
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/b;->j:Lcom/duapps/ad/offerwall/ui/HeaderLayout;

    invoke-virtual {v0, p1}, Lcom/duapps/ad/offerwall/ui/HeaderLayout;->c(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 189
    :cond_1
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/b;->j:Lcom/duapps/ad/offerwall/ui/HeaderLayout;

    invoke-virtual {v0}, Lcom/duapps/ad/offerwall/ui/HeaderLayout;->a()V

    goto :goto_0
.end method

.method public a(Z)V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 137
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/b;->h:Lcom/duapps/ad/offerwall/ui/LoadingView;

    invoke-virtual {v0}, Lcom/duapps/ad/offerwall/ui/LoadingView;->a()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/b;->h:Lcom/duapps/ad/offerwall/ui/LoadingView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/duapps/ad/offerwall/ui/LoadingView;->a(I)V

    .line 142
    :goto_0
    return-void

    .line 140
    :cond_1
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/b;->i:Lcom/duapps/ad/offerwall/ui/PullUpForMore;

    invoke-virtual {v0, v1}, Lcom/duapps/ad/offerwall/ui/PullUpForMore;->a(I)V

    goto :goto_0
.end method

.method public a(ZIJ)V
    .locals 3

    .prologue
    .line 165
    if-eqz p1, :cond_1

    .line 166
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/b;->f:Lcom/duapps/ad/offerwall/a;

    invoke-virtual {v0}, Lcom/duapps/ad/offerwall/a;->b()V

    .line 167
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/b;->h:Lcom/duapps/ad/offerwall/ui/LoadingView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/duapps/ad/offerwall/ui/LoadingView;->a(I)V

    .line 168
    iget-boolean v0, p0, Lcom/duapps/ad/offerwall/ui/b;->q:Z

    if-eqz v0, :cond_0

    .line 169
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/duapps/ad/offerwall/ui/b;->q:Z

    .line 170
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/b;->d:Landroid/content/Context;

    iget v1, p0, Lcom/duapps/ad/offerwall/ui/b;->a:I

    invoke-direct {p0, v1}, Lcom/duapps/ad/offerwall/ui/b;->a(I)I

    move-result v1

    invoke-static {v0, v1, p3, p4, p2}, Lcom/duapps/ad/stats/c;->b(Landroid/content/Context;IJI)V

    .line 175
    :cond_0
    :goto_0
    return-void

    .line 173
    :cond_1
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/b;->i:Lcom/duapps/ad/offerwall/ui/PullUpForMore;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/duapps/ad/offerwall/ui/PullUpForMore;->a(I)V

    goto :goto_0
.end method

.method public a(ZJ)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 146
    if-eqz p1, :cond_0

    .line 147
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/b;->f:Lcom/duapps/ad/offerwall/a;

    invoke-virtual {v0}, Lcom/duapps/ad/offerwall/a;->b()V

    .line 148
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/b;->g:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 149
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/b;->h:Lcom/duapps/ad/offerwall/ui/LoadingView;

    invoke-virtual {v0, v2}, Lcom/duapps/ad/offerwall/ui/LoadingView;->a(I)V

    .line 150
    iget-boolean v0, p0, Lcom/duapps/ad/offerwall/ui/b;->q:Z

    if-eqz v0, :cond_0

    .line 151
    iput-boolean v2, p0, Lcom/duapps/ad/offerwall/ui/b;->q:Z

    .line 152
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/b;->d:Landroid/content/Context;

    iget v1, p0, Lcom/duapps/ad/offerwall/ui/b;->a:I

    invoke-direct {p0, v1}, Lcom/duapps/ad/offerwall/ui/b;->a(I)I

    move-result v1

    invoke-static {v0, v1, p2, p3}, Lcom/duapps/ad/stats/c;->d(Landroid/content/Context;IJ)V

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/b;->i:Lcom/duapps/ad/offerwall/ui/PullUpForMore;

    invoke-virtual {v0, v2}, Lcom/duapps/ad/offerwall/ui/PullUpForMore;->a(I)V

    .line 156
    return-void
.end method

.method public b(Ljava/util/List;)V
    .locals 0
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
    .line 199
    return-void
.end method

.method public b(Z)V
    .locals 1

    .prologue
    .line 202
    iget-boolean v0, p0, Lcom/duapps/ad/offerwall/ui/b;->b:Z

    if-ne v0, p1, :cond_0

    .line 217
    :goto_0
    return-void

    .line 205
    :cond_0
    iput-boolean p1, p0, Lcom/duapps/ad/offerwall/ui/b;->b:Z

    .line 207
    if-eqz p1, :cond_2

    .line 208
    iget-boolean v0, p0, Lcom/duapps/ad/offerwall/ui/b;->p:Z

    if-eqz v0, :cond_1

    .line 209
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/duapps/ad/offerwall/ui/b;->p:Z

    .line 210
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/b;->f:Lcom/duapps/ad/offerwall/a;

    invoke-virtual {v0}, Lcom/duapps/ad/offerwall/a;->a()V

    goto :goto_0

    .line 212
    :cond_1
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/b;->j:Lcom/duapps/ad/offerwall/ui/HeaderLayout;

    invoke-virtual {v0}, Lcom/duapps/ad/offerwall/ui/HeaderLayout;->d()V

    goto :goto_0

    .line 215
    :cond_2
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/b;->j:Lcom/duapps/ad/offerwall/ui/HeaderLayout;

    invoke-virtual {v0}, Lcom/duapps/ad/offerwall/ui/HeaderLayout;->e()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 230
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/b;->h:Lcom/duapps/ad/offerwall/ui/LoadingView;

    if-ne p1, v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/b;->h:Lcom/duapps/ad/offerwall/ui/LoadingView;

    invoke-virtual {v0}, Lcom/duapps/ad/offerwall/ui/LoadingView;->a()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 232
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/b;->f:Lcom/duapps/ad/offerwall/a;

    invoke-virtual {v0}, Lcom/duapps/ad/offerwall/a;->a()V

    .line 235
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 48
    invoke-super {p0, p1}, Lcom/duapps/ad/offerwall/ui/h;->onCreate(Landroid/os/Bundle;)V

    .line 49
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .prologue
    .line 53
    sget v0, Lcom/duapps/ad/R$layout;->duapps_ad_offer_wall_games_layout:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 54
    invoke-direct {p0, v0, p1}, Lcom/duapps/ad/offerwall/ui/b;->a(Landroid/view/View;Landroid/view/LayoutInflater;)V

    .line 55
    new-instance v1, Lcom/duapps/ad/offerwall/a;

    iget v2, p0, Lcom/duapps/ad/offerwall/ui/b;->a:I

    invoke-direct {p0, v2}, Lcom/duapps/ad/offerwall/ui/b;->a(I)I

    move-result v2

    iget-object v3, p0, Lcom/duapps/ad/offerwall/ui/b;->d:Landroid/content/Context;

    invoke-direct {v1, v2, p0, v3}, Lcom/duapps/ad/offerwall/a;-><init>(ILcom/duapps/ad/offerwall/ui/c;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/duapps/ad/offerwall/ui/b;->f:Lcom/duapps/ad/offerwall/a;

    .line 56
    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 221
    invoke-super {p0}, Lcom/duapps/ad/offerwall/ui/h;->onDestroyView()V

    .line 222
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/b;->f:Lcom/duapps/ad/offerwall/a;

    invoke-virtual {v0}, Lcom/duapps/ad/offerwall/a;->c()V

    .line 223
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/b;->k:Lcom/duapps/ad/offerwall/ui/e;

    invoke-virtual {v0}, Lcom/duapps/ad/offerwall/ui/e;->a()V

    .line 224
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/b;->j:Lcom/duapps/ad/offerwall/ui/HeaderLayout;

    invoke-virtual {v0}, Lcom/duapps/ad/offerwall/ui/HeaderLayout;->f()V

    .line 225
    invoke-virtual {p0}, Lcom/duapps/ad/offerwall/ui/b;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/duapps/ad/c/b/c;->a(Landroid/app/Activity;)V

    .line 226
    return-void
.end method
