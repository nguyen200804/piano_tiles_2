.class public Lcom/mnt/MntBanner;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/mnt/MntBuild;

.field private c:Lcom/mnt/impl/view/BannerView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/mnt/MntBuild;)V
    .locals 2

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    :try_start_0
    iput-object p1, p0, Lcom/mnt/MntBanner;->a:Landroid/content/Context;

    .line 22
    iput-object p2, p0, Lcom/mnt/MntBanner;->b:Lcom/mnt/MntBuild;

    .line 23
    new-instance v0, Lcom/mnt/impl/view/BannerView;

    invoke-direct {v0, p1}, Lcom/mnt/impl/view/BannerView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mnt/MntBanner;->c:Lcom/mnt/impl/view/BannerView;

    .line 24
    iget-object v0, p0, Lcom/mnt/MntBanner;->c:Lcom/mnt/impl/view/BannerView;

    iget-object v1, p2, Lcom/mnt/MntBuild;->mPlacementId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mnt/impl/view/BannerView;->setPlacementId(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    :goto_0
    return-void

    .line 26
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public clean()V
    .locals 2

    .prologue
    .line 57
    :try_start_0
    iget-object v0, p0, Lcom/mnt/MntBanner;->c:Lcom/mnt/impl/view/BannerView;

    .line 4270
    iget-object v1, v0, Lcom/mnt/impl/view/BannerView;->c:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 4271
    iget-object v1, v0, Lcom/mnt/impl/view/BannerView;->c:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->destroyDrawingCache()V

    .line 4272
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/mnt/impl/view/BannerView;->c:Landroid/widget/ImageView;

    .line 4274
    :cond_0
    iget-object v1, v0, Lcom/mnt/impl/view/BannerView;->d:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 4275
    iget-object v1, v0, Lcom/mnt/impl/view/BannerView;->d:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->destroyDrawingCache()V

    .line 4276
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/mnt/impl/view/BannerView;->d:Landroid/widget/TextView;

    .line 4278
    :cond_1
    iget-object v1, v0, Lcom/mnt/impl/view/BannerView;->e:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    .line 4279
    iget-object v1, v0, Lcom/mnt/impl/view/BannerView;->e:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->destroyDrawingCache()V

    .line 4280
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/mnt/impl/view/BannerView;->e:Landroid/widget/TextView;

    .line 4282
    :cond_2
    iget-object v1, v0, Lcom/mnt/impl/view/BannerView;->f:Lcom/mnt/Ad;

    if-eqz v1, :cond_3

    .line 4283
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/mnt/impl/view/BannerView;->f:Lcom/mnt/Ad;

    .line 4285
    :cond_3
    iget-object v1, v0, Lcom/mnt/impl/view/BannerView;->b:Lcom/mnt/IAdListener;

    if-eqz v1, :cond_4

    .line 4286
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/mnt/impl/view/BannerView;->b:Lcom/mnt/IAdListener;

    .line 4288
    :cond_4
    iget-object v1, v0, Lcom/mnt/impl/view/BannerView;->h:Ljava/util/List;

    if-eqz v1, :cond_5

    .line 4289
    iget-object v1, v0, Lcom/mnt/impl/view/BannerView;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 4290
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/mnt/impl/view/BannerView;->h:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :cond_5
    :goto_0
    return-void

    .line 59
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/mnt/MntBanner;->a:Landroid/content/Context;

    return-object v0
.end method

.method public getPlacementId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    :try_start_0
    iget-object v0, p0, Lcom/mnt/MntBanner;->b:Lcom/mnt/MntBuild;

    iget-object v0, v0, Lcom/mnt/MntBuild;->mPlacementId:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    :goto_0
    return-object v0

    .line 76
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 78
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getView()Landroid/view/View;
    .locals 3

    .prologue
    .line 40
    :try_start_0
    iget-object v0, p0, Lcom/mnt/MntBanner;->c:Lcom/mnt/impl/view/BannerView;

    .line 2300
    invoke-static {v0}, Lcom/mnt/a/a;->a(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2301
    iget-object v1, v0, Lcom/mnt/impl/view/BannerView;->b:Lcom/mnt/IAdListener;

    if-eqz v1, :cond_0

    .line 2302
    iget-object v1, v0, Lcom/mnt/impl/view/BannerView;->b:Lcom/mnt/IAdListener;

    invoke-interface {v1}, Lcom/mnt/IAdListener;->onAdShowed()V

    .line 2304
    :cond_0
    iget-object v1, v0, Lcom/mnt/impl/view/BannerView;->m:Lcom/mnt/impl/dsp/c;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/mnt/impl/view/BannerView;->m:Lcom/mnt/impl/dsp/c;

    .line 3123
    iget-object v1, v1, Lcom/mnt/impl/dsp/c;->e:Lcom/mnt/impl/dsp/c$b;

    .line 3218
    iget-object v1, v1, Lcom/mnt/impl/dsp/c$b;->b:Ljava/lang/String;

    .line 2304
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2305
    iget-object v1, v0, Lcom/mnt/impl/view/BannerView;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/mnt/impl/i/c;->a(Landroid/content/Context;)Lcom/mnt/impl/i/c;

    move-result-object v1

    iget-object v2, v0, Lcom/mnt/impl/view/BannerView;->m:Lcom/mnt/impl/dsp/c;

    .line 4123
    iget-object v2, v2, Lcom/mnt/impl/dsp/c;->e:Lcom/mnt/impl/dsp/c$b;

    .line 4218
    iget-object v2, v2, Lcom/mnt/impl/dsp/c$b;->b:Ljava/lang/String;

    .line 2305
    invoke-virtual {v1, v2}, Lcom/mnt/impl/i/c;->a(Ljava/lang/String;)V

    .line 2307
    :cond_1
    iget-boolean v1, v0, Lcom/mnt/impl/view/BannerView;->i:Z

    if-nez v1, :cond_2

    iget-object v1, v0, Lcom/mnt/impl/view/BannerView;->j:Lcom/mnt/impl/b;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/mnt/impl/view/BannerView;->f:Lcom/mnt/Ad;

    if-eqz v1, :cond_2

    .line 2308
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/mnt/impl/view/BannerView;->i:Z

    .line 2309
    iget-object v1, v0, Lcom/mnt/impl/view/BannerView;->j:Lcom/mnt/impl/b;

    iget-object v2, v0, Lcom/mnt/impl/view/BannerView;->f:Lcom/mnt/Ad;

    invoke-virtual {v1, v2}, Lcom/mnt/impl/b;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    :cond_2
    :goto_0
    return-object v0

    .line 42
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 44
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAdLoaded()Z
    .locals 1

    .prologue
    .line 65
    :try_start_0
    iget-object v0, p0, Lcom/mnt/MntBanner;->c:Lcom/mnt/impl/view/BannerView;

    .line 5266
    iget-boolean v0, v0, Lcom/mnt/impl/view/BannerView;->l:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    :goto_0
    return v0

    .line 67
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 69
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public load()V
    .locals 5

    .prologue
    .line 32
    :try_start_0
    iget-object v0, p0, Lcom/mnt/MntBanner;->c:Lcom/mnt/impl/view/BannerView;

    iget-object v1, p0, Lcom/mnt/MntBanner;->b:Lcom/mnt/MntBuild;

    .line 1295
    iput-object v1, v0, Lcom/mnt/impl/view/BannerView;->k:Lcom/mnt/MntBuild;

    .line 2098
    new-instance v1, Lcom/mnt/impl/dsp/d;

    iget-object v2, v0, Lcom/mnt/impl/view/BannerView;->a:Landroid/content/Context;

    iget-object v3, v0, Lcom/mnt/impl/view/BannerView;->g:Ljava/lang/String;

    new-instance v4, Lcom/mnt/impl/view/c;

    invoke-direct {v4, v0}, Lcom/mnt/impl/view/c;-><init>(Lcom/mnt/impl/view/BannerView;)V

    invoke-direct {v1, v2, v3, v4}, Lcom/mnt/impl/dsp/d;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/mnt/impl/dsp/d$a;)V

    .line 2141
    invoke-virtual {v1}, Lcom/mnt/impl/dsp/d;->c()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    :goto_0
    return-void

    .line 34
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public setAdListener(Lcom/mnt/IAdListener;)V
    .locals 1

    .prologue
    .line 49
    :try_start_0
    iget-object v0, p0, Lcom/mnt/MntBanner;->c:Lcom/mnt/impl/view/BannerView;

    invoke-virtual {v0, p1}, Lcom/mnt/impl/view/BannerView;->setAdListener(Lcom/mnt/IAdListener;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    :goto_0
    return-void

    .line 51
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
