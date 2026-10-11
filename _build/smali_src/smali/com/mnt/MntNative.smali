.class public Lcom/mnt/MntNative;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:Lcom/mnt/DownloadType;

.field private g:Ljava/lang/String;

.field private h:Lcom/mnt/impl/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/mnt/MntNative;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/mnt/MntNative;->a:Landroid/content/Context;

    .line 33
    iput-object p2, p0, Lcom/mnt/MntNative;->d:Ljava/lang/String;

    .line 34
    new-instance v0, Lcom/mnt/impl/b;

    invoke-direct {v0, p1}, Lcom/mnt/impl/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mnt/MntNative;->h:Lcom/mnt/impl/b;

    .line 35
    return-void
.end method


# virtual methods
.method public clean()V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/mnt/MntNative;->h:Lcom/mnt/impl/b;

    invoke-virtual {v0}, Lcom/mnt/impl/b;->a()V

    .line 59
    return-void
.end method

.method public clickAd(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/mnt/MntNative;->h:Lcom/mnt/impl/b;

    invoke-virtual {v0, p1}, Lcom/mnt/impl/b;->a(Ljava/lang/Object;)V

    .line 51
    return-void
.end method

.method public getAds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mnt/Ad;",
            ">;"
        }
    .end annotation

    .prologue
    .line 122
    iget-object v0, p0, Lcom/mnt/MntNative;->h:Lcom/mnt/impl/b;

    .line 3393
    iget-object v0, v0, Lcom/mnt/impl/b;->c:Ljava/util/List;

    .line 122
    return-object v0
.end method

.method public getAdsNum()I
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lcom/mnt/MntNative;->e:I

    return v0
.end method

.method public getAppKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/mnt/MntNative;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getChannel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/mnt/MntNative;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/mnt/MntNative;->a:Landroid/content/Context;

    return-object v0
.end method

.method public getCreatives()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/mnt/MntNative;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadType()Lcom/mnt/DownloadType;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/mnt/MntNative;->f:Lcom/mnt/DownloadType;

    return-object v0
.end method

.method public getPlacementId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/mnt/MntNative;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getSDKName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    sget-object v0, Lcom/mnt/impl/b/j;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getSDKVersion()I
    .locals 1

    .prologue
    .line 82
    const/16 v0, 0x80

    return v0
.end method

.method public initNativeAd()V
    .locals 5

    .prologue
    .line 42
    iget-object v0, p0, Lcom/mnt/MntNative;->h:Lcom/mnt/impl/b;

    .line 1073
    new-instance v1, Lcom/mnt/MntAdConfig;

    invoke-direct {v1}, Lcom/mnt/MntAdConfig;-><init>()V

    .line 1074
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, v0, Lcom/mnt/impl/b;->a:Lcom/mnt/MntNative;

    invoke-virtual {v4}, Lcom/mnt/MntNative;->getCreatives()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/mnt/MntAdConfig;->setCreatives([Ljava/lang/String;)V

    .line 1075
    iget-object v2, v0, Lcom/mnt/impl/b;->a:Lcom/mnt/MntNative;

    invoke-virtual {v2}, Lcom/mnt/MntNative;->getAdsNum()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/mnt/MntAdConfig;->setAdsNum(I)V

    .line 1076
    iget-object v2, v0, Lcom/mnt/impl/b;->a:Lcom/mnt/MntNative;

    invoke-virtual {v2}, Lcom/mnt/MntNative;->getChannel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mnt/MntAdConfig;->setChannel(Ljava/lang/String;)V

    .line 1077
    iget-object v2, v0, Lcom/mnt/impl/b;->a:Lcom/mnt/MntNative;

    invoke-virtual {v2}, Lcom/mnt/MntNative;->getDownloadType()Lcom/mnt/DownloadType;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mnt/MntAdConfig;->setDownloadType(Lcom/mnt/DownloadType;)V

    .line 1078
    iget-object v2, v0, Lcom/mnt/impl/b;->a:Lcom/mnt/MntNative;

    invoke-virtual {v2}, Lcom/mnt/MntNative;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v0, v0, Lcom/mnt/impl/b;->a:Lcom/mnt/MntNative;

    invoke-virtual {v0}, Lcom/mnt/MntNative;->getAppKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v1}, Lcom/mnt/impl/h/a;->a(Landroid/content/Context;Ljava/lang/String;Lcom/mnt/MntAdConfig;)V

    .line 43
    return-void
.end method

.method public isAdLoaded()Z
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/mnt/MntNative;->h:Lcom/mnt/impl/b;

    .line 1661
    iget-boolean v0, v0, Lcom/mnt/impl/b;->d:Z

    .line 62
    return v0
.end method

.method public load(Lcom/mnt/MntBuild;)V
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/mnt/MntNative;->h:Lcom/mnt/impl/b;

    invoke-virtual {v0, p1}, Lcom/mnt/impl/b;->a(Lcom/mnt/MntBuild;)V

    .line 47
    return-void
.end method

.method public registerView(Landroid/view/View;Lcom/mnt/Ad;)V
    .locals 7

    .prologue
    .line 126
    iget-object v1, p0, Lcom/mnt/MntNative;->h:Lcom/mnt/impl/b;

    .line 4107
    if-eqz p1, :cond_3

    iget-object v0, v1, Lcom/mnt/impl/b;->c:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 4108
    invoke-static {p1}, Lcom/mnt/a/a;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4109
    iget-object v0, v1, Lcom/mnt/impl/b;->b:Lcom/mnt/a/f;

    if-eqz v0, :cond_0

    .line 4110
    iget-object v0, v1, Lcom/mnt/impl/b;->b:Lcom/mnt/a/f;

    invoke-interface {v0}, Lcom/mnt/a/f;->b()V

    .line 4113
    :cond_0
    instance-of v0, p2, Lcom/mnt/impl/e/c;

    if-eqz v0, :cond_2

    move-object v0, p2

    .line 4114
    check-cast v0, Lcom/mnt/impl/e/c;

    .line 5040
    iget-object v2, v0, Lcom/mnt/impl/e/c;->b:Ljava/lang/String;

    .line 4116
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 4117
    iget-object v2, v1, Lcom/mnt/impl/b;->e:Landroid/content/Context;

    .line 6040
    iget-object v3, v0, Lcom/mnt/impl/e/c;->b:Ljava/lang/String;

    .line 6076
    iget-object v4, v0, Lcom/mnt/impl/e/c;->h:Ljava/lang/String;

    .line 7068
    iget-object v5, v0, Lcom/mnt/impl/e/c;->i:Ljava/lang/String;

    .line 4117
    invoke-virtual {v0}, Lcom/mnt/impl/e/c;->getCampId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v3, v4, v5, v6}, Lcom/mnt/impl/b/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4118
    iget-object v3, v1, Lcom/mnt/impl/b;->e:Landroid/content/Context;

    invoke-static {v3}, Lcom/mnt/impl/i/c;->a(Landroid/content/Context;)Lcom/mnt/impl/i/c;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/mnt/impl/i/c;->a(Ljava/lang/String;)V

    .line 4120
    :cond_1
    invoke-virtual {v1, v0}, Lcom/mnt/impl/b;->a(Lcom/mnt/impl/e/c;)V

    .line 4124
    :cond_2
    instance-of v0, p2, Lcom/mnt/impl/e/c;

    if-eqz v0, :cond_3

    .line 4125
    new-instance v0, Lcom/mnt/impl/c;

    invoke-direct {v0, v1, p2}, Lcom/mnt/impl/c;-><init>(Lcom/mnt/impl/b;Lcom/mnt/Ad;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    :cond_3
    return-void
.end method

.method public setAdListener(Lcom/mnt/a/f;)V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/mnt/MntNative;->h:Lcom/mnt/impl/b;

    .line 2397
    iput-object p1, v0, Lcom/mnt/impl/b;->b:Lcom/mnt/a/f;

    .line 67
    return-void
.end method

.method public setAdsNum(I)V
    .locals 0

    .prologue
    .line 98
    iput p1, p0, Lcom/mnt/MntNative;->e:I

    .line 99
    return-void
.end method

.method public setAppKey(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/mnt/MntNative;->b:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public setChannel(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/mnt/MntNative;->c:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public setCreatives(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/mnt/MntNative;->g:Ljava/lang/String;

    .line 115
    return-void
.end method

.method public setDownloadType(Lcom/mnt/DownloadType;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/mnt/MntNative;->f:Lcom/mnt/DownloadType;

    .line 107
    return-void
.end method

.method public show(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/mnt/MntNative;->h:Lcom/mnt/impl/b;

    invoke-virtual {v0, p1}, Lcom/mnt/impl/b;->b(Ljava/lang/Object;)V

    .line 55
    return-void
.end method
