.class public Lcom/duapps/ad/offerwall/ui/g;
.super Landroid/support/v4/app/FragmentPagerAdapter;
.source "SlidePageFragmentAdapter.java"


# instance fields
.field private a:Landroid/content/Context;

.field private final b:Landroid/support/v4/app/FragmentManager;

.field private c:Landroid/support/v4/app/FragmentTransaction;

.field private d:Landroid/support/v4/app/Fragment;

.field private e:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;I)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 27
    invoke-direct {p0, p2}, Landroid/support/v4/app/FragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 21
    iput-object v0, p0, Lcom/duapps/ad/offerwall/ui/g;->c:Landroid/support/v4/app/FragmentTransaction;

    .line 22
    iput-object v0, p0, Lcom/duapps/ad/offerwall/ui/g;->d:Landroid/support/v4/app/Fragment;

    .line 28
    iput-object p1, p0, Lcom/duapps/ad/offerwall/ui/g;->a:Landroid/content/Context;

    .line 29
    iput-object p2, p0, Lcom/duapps/ad/offerwall/ui/g;->b:Landroid/support/v4/app/FragmentManager;

    .line 30
    iput p3, p0, Lcom/duapps/ad/offerwall/ui/g;->e:I

    .line 31
    return-void
.end method

.method private static b(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android:switcher:dianxin:long"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(I)Lcom/duapps/ad/offerwall/ui/h;
    .locals 2

    .prologue
    .line 135
    invoke-static {p1}, Lcom/duapps/ad/offerwall/ui/g;->b(I)Ljava/lang/String;

    move-result-object v0

    .line 136
    iget-object v1, p0, Lcom/duapps/ad/offerwall/ui/g;->b:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/duapps/ad/offerwall/ui/h;

    return-object v0
.end method

.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/g;->c:Landroid/support/v4/app/FragmentTransaction;

    if-nez v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/g;->b:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    iput-object v0, p0, Lcom/duapps/ad/offerwall/ui/g;->c:Landroid/support/v4/app/FragmentTransaction;

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/g;->c:Landroid/support/v4/app/FragmentTransaction;

    check-cast p3, Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, p3}, Landroid/support/v4/app/FragmentTransaction;->detach(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 105
    return-void
.end method

.method public finishUpdate(Landroid/view/ViewGroup;)V
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/g;->c:Landroid/support/v4/app/FragmentTransaction;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/g;->c:Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 125
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/duapps/ad/offerwall/ui/g;->c:Landroid/support/v4/app/FragmentTransaction;

    .line 126
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/g;->b:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->executePendingTransactions()Z

    .line 128
    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x3

    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 4

    .prologue
    .line 36
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 37
    packed-switch p1, :pswitch_data_0

    .line 48
    new-instance v0, Lcom/duapps/ad/offerwall/ui/a;

    invoke-direct {v0}, Lcom/duapps/ad/offerwall/ui/a;-><init>()V

    .line 49
    const-string v2, "pos"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 51
    :goto_0
    const-string v2, "pid"

    iget v3, p0, Lcom/duapps/ad/offerwall/ui/g;->e:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 52
    invoke-virtual {v0, v1}, Lcom/duapps/ad/offerwall/ui/h;->setArguments(Landroid/os/Bundle;)V

    .line 54
    return-object v0

    .line 39
    :pswitch_0
    new-instance v0, Lcom/duapps/ad/offerwall/ui/f;

    invoke-direct {v0}, Lcom/duapps/ad/offerwall/ui/f;-><init>()V

    .line 40
    const-string v2, "pos"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 43
    :pswitch_1
    new-instance v0, Lcom/duapps/ad/offerwall/ui/b;

    invoke-direct {v0}, Lcom/duapps/ad/offerwall/ui/b;-><init>()V

    .line 44
    const-string v2, "pos"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 37
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 64
    packed-switch p1, :pswitch_data_0

    .line 71
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/g;->a:Landroid/content/Context;

    sget v1, Lcom/duapps/ad/R$string;->duapps_ad_offer_wall_tab_apps:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 66
    :pswitch_0
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/g;->a:Landroid/content/Context;

    sget v1, Lcom/duapps/ad/R$string;->duapps_ad_offer_wall_tab_recommend:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 68
    :pswitch_1
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/g;->a:Landroid/content/Context;

    sget v1, Lcom/duapps/ad/R$string;->duapps_ad_offer_wall_tab_games:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 64
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 77
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/g;->c:Landroid/support/v4/app/FragmentTransaction;

    if-nez v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/g;->b:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    iput-object v0, p0, Lcom/duapps/ad/offerwall/ui/g;->c:Landroid/support/v4/app/FragmentTransaction;

    .line 81
    :cond_0
    invoke-static {p2}, Lcom/duapps/ad/offerwall/ui/g;->b(I)Ljava/lang/String;

    move-result-object v0

    .line 82
    iget-object v1, p0, Lcom/duapps/ad/offerwall/ui/g;->b:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 83
    if-eqz v0, :cond_2

    .line 84
    iget-object v1, p0, Lcom/duapps/ad/offerwall/ui/g;->c:Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentTransaction;->attach(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 91
    :goto_0
    iget-object v1, p0, Lcom/duapps/ad/offerwall/ui/g;->d:Landroid/support/v4/app/Fragment;

    if-eq v0, v1, :cond_1

    .line 92
    invoke-virtual {v0, v4}, Landroid/support/v4/app/Fragment;->setMenuVisibility(Z)V

    .line 93
    invoke-virtual {v0, v4}, Landroid/support/v4/app/Fragment;->setUserVisibleHint(Z)V

    .line 96
    :cond_1
    return-object v0

    .line 86
    :cond_2
    invoke-virtual {p0, p2}, Lcom/duapps/ad/offerwall/ui/g;->getItem(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 87
    iget-object v1, p0, Lcom/duapps/ad/offerwall/ui/g;->c:Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result v2

    .line 88
    invoke-static {p2}, Lcom/duapps/ad/offerwall/ui/g;->b(I)Ljava/lang/String;

    move-result-object v3

    .line 87
    invoke-virtual {v1, v2, v0, v3}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 131
    check-cast p2, Landroid/support/v4/app/Fragment;

    invoke-virtual {p2}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 108
    check-cast p3, Landroid/support/v4/app/Fragment;

    .line 109
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/g;->d:Landroid/support/v4/app/Fragment;

    if-eq p3, v0, :cond_2

    .line 110
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/g;->d:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/g;->d:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->setMenuVisibility(Z)V

    .line 112
    iget-object v0, p0, Lcom/duapps/ad/offerwall/ui/g;->d:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->setUserVisibleHint(Z)V

    .line 114
    :cond_0
    if-eqz p3, :cond_1

    .line 115
    invoke-virtual {p3, v2}, Landroid/support/v4/app/Fragment;->setMenuVisibility(Z)V

    .line 116
    invoke-virtual {p3, v2}, Landroid/support/v4/app/Fragment;->setUserVisibleHint(Z)V

    .line 118
    :cond_1
    iput-object p3, p0, Lcom/duapps/ad/offerwall/ui/g;->d:Landroid/support/v4/app/Fragment;

    .line 120
    :cond_2
    return-void
.end method
