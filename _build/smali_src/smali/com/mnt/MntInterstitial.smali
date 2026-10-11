.class public Lcom/mnt/MntInterstitial;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/mnt/MntBuild;

.field private c:Lcom/mnt/impl/a/h;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/mnt/MntBuild;)V
    .locals 3

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/mnt/MntInterstitial;->a:Landroid/content/Context;

    .line 20
    iput-object p2, p0, Lcom/mnt/MntInterstitial;->b:Lcom/mnt/MntBuild;

    .line 21
    new-instance v0, Lcom/mnt/impl/a/h;

    invoke-direct {v0, p1}, Lcom/mnt/impl/a/h;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mnt/MntInterstitial;->c:Lcom/mnt/impl/a/h;

    .line 22
    iget-object v0, p0, Lcom/mnt/MntInterstitial;->c:Lcom/mnt/impl/a/h;

    iget-object v1, p2, Lcom/mnt/MntBuild;->mPlacementId:Ljava/lang/String;

    .line 1220
    iput-object v1, v0, Lcom/mnt/impl/a/h;->d:Ljava/lang/String;

    .line 1221
    new-instance v1, Lcom/mnt/impl/b;

    iget-object v2, v0, Lcom/mnt/impl/a/h;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/mnt/impl/b;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/mnt/impl/a/h;->c:Lcom/mnt/impl/b;

    .line 1222
    iget-object v1, v0, Lcom/mnt/impl/a/h;->c:Lcom/mnt/impl/b;

    .line 1397
    iput-object v0, v1, Lcom/mnt/impl/b;->b:Lcom/mnt/a/f;

    .line 23
    return-void
.end method


# virtual methods
.method public getAdConfig()Lcom/mnt/MntAdConfig;
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/mnt/MntInterstitial;->a:Landroid/content/Context;

    return-object v0
.end method

.method public isAdLoaded()Z
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/mnt/MntInterstitial;->c:Lcom/mnt/impl/a/h;

    .line 8231
    iget-boolean v0, v0, Lcom/mnt/impl/a/h;->f:Z

    .line 48
    return v0
.end method

.method public load()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 27
    iget-object v0, p0, Lcom/mnt/MntInterstitial;->c:Lcom/mnt/impl/a/h;

    iget-object v1, p0, Lcom/mnt/MntInterstitial;->b:Lcom/mnt/MntBuild;

    .line 2061
    new-instance v2, Lcom/mnt/MntBuild$Builder;

    iget-object v3, v0, Lcom/mnt/impl/a/h;->a:Landroid/content/Context;

    iget-object v4, v1, Lcom/mnt/MntBuild;->mPlacementId:Ljava/lang/String;

    sget-object v5, Lcom/mnt/MntAdType;->NATIVE:Lcom/mnt/MntAdType;

    invoke-virtual {v5}, Lcom/mnt/MntAdType;->getType()I

    move-result v5

    iget-object v1, v1, Lcom/mnt/MntBuild;->mAdListener:Lcom/mnt/IAdListener;

    invoke-direct {v2, v3, v4, v5, v1}, Lcom/mnt/MntBuild$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;ILcom/mnt/IAdListener;)V

    .line 2062
    new-array v1, v6, [Ljava/lang/String;

    const/4 v3, 0x0

    sget-object v4, Lcom/mnt/Ad;->AD_CREATIVE_SIZE_1200x627:Ljava/lang/String;

    aput-object v4, v1, v3

    invoke-virtual {v2, v1}, Lcom/mnt/MntBuild$Builder;->setCreatives([Ljava/lang/String;)Lcom/mnt/MntBuild$Builder;

    .line 2063
    invoke-virtual {v2, v6}, Lcom/mnt/MntBuild$Builder;->setAdsNum(I)Lcom/mnt/MntBuild$Builder;

    .line 2064
    invoke-virtual {v2}, Lcom/mnt/MntBuild$Builder;->build()Lcom/mnt/MntBuild;

    move-result-object v1

    iput-object v1, v0, Lcom/mnt/impl/a/h;->m:Lcom/mnt/MntBuild;

    .line 2065
    invoke-static {}, Lcom/mnt/impl/a/g;->a()Lcom/mnt/impl/a/g;

    move-result-object v1

    iget-object v2, v0, Lcom/mnt/impl/a/h;->m:Lcom/mnt/MntBuild;

    .line 3045
    new-instance v3, Ljava/lang/ref/SoftReference;

    invoke-direct {v3, v2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, v1, Lcom/mnt/impl/a/g;->a:Ljava/lang/ref/SoftReference;

    .line 3080
    new-instance v1, Lcom/mnt/impl/dsp/d;

    iget-object v2, v0, Lcom/mnt/impl/a/h;->a:Landroid/content/Context;

    iget-object v3, v0, Lcom/mnt/impl/a/h;->d:Ljava/lang/String;

    new-instance v4, Lcom/mnt/impl/a/i;

    invoke-direct {v4, v0}, Lcom/mnt/impl/a/i;-><init>(Lcom/mnt/impl/a/h;)V

    invoke-direct {v1, v2, v3, v4}, Lcom/mnt/impl/dsp/d;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/mnt/impl/dsp/d$a;)V

    .line 3101
    invoke-virtual {v1}, Lcom/mnt/impl/dsp/d;->c()V

    .line 28
    return-void
.end method

.method public onDestory()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 31
    iget-object v0, p0, Lcom/mnt/MntInterstitial;->c:Lcom/mnt/impl/a/h;

    .line 3235
    iget-object v1, v0, Lcom/mnt/impl/a/h;->l:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 3236
    iget-object v1, v0, Lcom/mnt/impl/a/h;->l:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 3237
    iput-object v2, v0, Lcom/mnt/impl/a/h;->l:Ljava/util/List;

    .line 3240
    :cond_0
    iget-object v1, v0, Lcom/mnt/impl/a/h;->m:Lcom/mnt/MntBuild;

    if-eqz v1, :cond_1

    .line 3241
    iput-object v2, v0, Lcom/mnt/impl/a/h;->m:Lcom/mnt/MntBuild;

    .line 3244
    :cond_1
    invoke-static {}, Lcom/mnt/impl/a/g;->a()Lcom/mnt/impl/a/g;

    move-result-object v0

    .line 4061
    iget-object v1, v0, Lcom/mnt/impl/a/g;->c:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 4062
    iput-object v2, v0, Lcom/mnt/impl/a/g;->c:Landroid/view/View;

    .line 32
    :cond_2
    return-void
.end method

.method public setAdListener(Lcom/mnt/IAdListener;)V
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/mnt/MntInterstitial;->c:Lcom/mnt/impl/a/h;

    .line 4216
    iput-object p1, v0, Lcom/mnt/impl/a/h;->e:Lcom/mnt/IAdListener;

    .line 36
    return-void
.end method

.method public setNativeAd()V
    .locals 3

    .prologue
    .line 39
    iget-object v0, p0, Lcom/mnt/MntInterstitial;->c:Lcom/mnt/impl/a/h;

    .line 4226
    new-instance v1, Lcom/mnt/impl/b;

    iget-object v2, v0, Lcom/mnt/impl/a/h;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/mnt/impl/b;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/mnt/impl/a/h;->c:Lcom/mnt/impl/b;

    .line 4227
    iget-object v1, v0, Lcom/mnt/impl/a/h;->c:Lcom/mnt/impl/b;

    .line 4397
    iput-object v0, v1, Lcom/mnt/impl/b;->b:Lcom/mnt/a/f;

    .line 40
    return-void
.end method

.method public show()V
    .locals 4

    .prologue
    .line 44
    iget-object v0, p0, Lcom/mnt/MntInterstitial;->c:Lcom/mnt/impl/a/h;

    .line 5109
    :try_start_0
    invoke-static {}, Lcom/mnt/impl/a/g;->a()Lcom/mnt/impl/a/g;

    move-result-object v1

    iget-object v2, v0, Lcom/mnt/impl/a/h;->c:Lcom/mnt/impl/b;

    .line 6056
    new-instance v3, Ljava/lang/ref/SoftReference;

    invoke-direct {v3, v2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, v1, Lcom/mnt/impl/a/g;->b:Ljava/lang/ref/SoftReference;

    .line 5110
    iget-object v1, v0, Lcom/mnt/impl/a/h;->m:Lcom/mnt/MntBuild;

    iget-object v1, v1, Lcom/mnt/MntBuild;->mContext:Landroid/content/Context;

    const-class v2, Lcom/mnt/impl/a/b;

    invoke-static {v1, v2}, Lcom/mnt/MntActivity;->getIntent(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v1

    .line 5111
    sget-object v2, Lcom/mnt/impl/a/h;->h:Ljava/lang/String;

    iget-object v3, v0, Lcom/mnt/impl/a/h;->b:Lcom/mnt/Ad;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 5112
    sget-object v2, Lcom/mnt/impl/a/h;->g:Ljava/lang/String;

    iget-object v3, v0, Lcom/mnt/impl/a/h;->d:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5113
    sget-object v2, Lcom/mnt/impl/a/h;->i:Ljava/lang/String;

    iget v3, v0, Lcom/mnt/impl/a/h;->k:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5114
    iget-object v2, v0, Lcom/mnt/impl/a/h;->n:Lcom/mnt/impl/dsp/c;

    if-eqz v2, :cond_0

    .line 5115
    sget-object v2, Lcom/mnt/impl/a/h;->j:Ljava/lang/String;

    iget-object v3, v0, Lcom/mnt/impl/a/h;->n:Lcom/mnt/impl/dsp/c;

    .line 6115
    iget-object v3, v3, Lcom/mnt/impl/dsp/c;->d:Lcom/mnt/impl/dsp/c$a;

    .line 6185
    iget-object v3, v3, Lcom/mnt/impl/dsp/c$a;->b:Ljava/lang/String;

    .line 5115
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5116
    iget-object v2, v0, Lcom/mnt/impl/a/h;->n:Lcom/mnt/impl/dsp/c;

    .line 7123
    iget-object v2, v2, Lcom/mnt/impl/dsp/c;->e:Lcom/mnt/impl/dsp/c$b;

    .line 7218
    iget-object v2, v2, Lcom/mnt/impl/dsp/c$b;->b:Ljava/lang/String;

    .line 5116
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5117
    iget-object v2, v0, Lcom/mnt/impl/a/h;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/mnt/impl/i/c;->a(Landroid/content/Context;)Lcom/mnt/impl/i/c;

    move-result-object v2

    iget-object v3, v0, Lcom/mnt/impl/a/h;->n:Lcom/mnt/impl/dsp/c;

    .line 8123
    iget-object v3, v3, Lcom/mnt/impl/dsp/c;->e:Lcom/mnt/impl/dsp/c$b;

    .line 8218
    iget-object v3, v3, Lcom/mnt/impl/dsp/c$b;->b:Ljava/lang/String;

    .line 5117
    invoke-virtual {v2, v3}, Lcom/mnt/impl/i/c;->a(Ljava/lang/String;)V

    .line 5120
    :cond_0
    iget-object v2, v0, Lcom/mnt/impl/a/h;->m:Lcom/mnt/MntBuild;

    iget-object v2, v2, Lcom/mnt/MntBuild;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 5121
    iget-object v0, v0, Lcom/mnt/impl/a/h;->e:Lcom/mnt/IAdListener;

    invoke-interface {v0}, Lcom/mnt/IAdListener;->onAdShowed()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 5124
    :goto_0
    return-void

    .line 5123
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
