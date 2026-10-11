.class public Lcom/mnt/MntRectangleBanner;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/mnt/MntBuild;

.field private c:Lcom/mnt/impl/view/RectangleBannerView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/mnt/MntBuild;)V
    .locals 2

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    :try_start_0
    iput-object p1, p0, Lcom/mnt/MntRectangleBanner;->a:Landroid/content/Context;

    .line 23
    iput-object p2, p0, Lcom/mnt/MntRectangleBanner;->b:Lcom/mnt/MntBuild;

    .line 24
    new-instance v0, Lcom/mnt/impl/view/RectangleBannerView;

    invoke-direct {v0, p1}, Lcom/mnt/impl/view/RectangleBannerView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mnt/MntRectangleBanner;->c:Lcom/mnt/impl/view/RectangleBannerView;

    .line 25
    iget-object v0, p0, Lcom/mnt/MntRectangleBanner;->c:Lcom/mnt/impl/view/RectangleBannerView;

    iget-object v1, p2, Lcom/mnt/MntBuild;->mPlacementId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mnt/impl/view/RectangleBannerView;->setPlacementId(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    :goto_0
    return-void

    .line 27
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public clean()V
    .locals 2

    .prologue
    .line 58
    :try_start_0
    iget-object v0, p0, Lcom/mnt/MntRectangleBanner;->c:Lcom/mnt/impl/view/RectangleBannerView;

    .line 4280
    iget-object v1, v0, Lcom/mnt/impl/view/RectangleBannerView;->i:Lcom/mnt/MntBuild;

    if-eqz v1, :cond_0

    .line 4281
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/mnt/impl/view/RectangleBannerView;->i:Lcom/mnt/MntBuild;

    .line 4283
    :cond_0
    iget-object v1, v0, Lcom/mnt/impl/view/RectangleBannerView;->b:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    .line 4284
    iget-object v1, v0, Lcom/mnt/impl/view/RectangleBannerView;->b:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->destroyDrawingCache()V

    .line 4285
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/mnt/impl/view/RectangleBannerView;->b:Landroid/widget/ImageView;

    .line 4287
    :cond_1
    iget-object v1, v0, Lcom/mnt/impl/view/RectangleBannerView;->e:Lcom/mnt/impl/b;

    if-eqz v1, :cond_2

    .line 4288
    iget-object v1, v0, Lcom/mnt/impl/view/RectangleBannerView;->e:Lcom/mnt/impl/b;

    invoke-virtual {v1}, Lcom/mnt/impl/b;->a()V

    .line 4289
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/mnt/impl/view/RectangleBannerView;->e:Lcom/mnt/impl/b;

    .line 4291
    :cond_2
    iget-object v1, v0, Lcom/mnt/impl/view/RectangleBannerView;->c:Lcom/mnt/IAdListener;

    if-eqz v1, :cond_3

    .line 4292
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/mnt/impl/view/RectangleBannerView;->c:Lcom/mnt/IAdListener;

    .line 4294
    :cond_3
    iget-object v1, v0, Lcom/mnt/impl/view/RectangleBannerView;->g:Ljava/util/List;

    if-eqz v1, :cond_4

    .line 4295
    iget-object v1, v0, Lcom/mnt/impl/view/RectangleBannerView;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 4296
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/mnt/impl/view/RectangleBannerView;->g:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    :cond_4
    :goto_0
    return-void

    .line 60
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/mnt/MntRectangleBanner;->a:Landroid/content/Context;

    return-object v0
.end method

.method public getPlacementId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    :try_start_0
    iget-object v0, p0, Lcom/mnt/MntRectangleBanner;->b:Lcom/mnt/MntBuild;

    iget-object v0, v0, Lcom/mnt/MntBuild;->mPlacementId:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    :goto_0
    return-object v0

    .line 77
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 79
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getView()Landroid/view/View;
    .locals 3

    .prologue
    .line 41
    :try_start_0
    iget-object v0, p0, Lcom/mnt/MntRectangleBanner;->c:Lcom/mnt/impl/view/RectangleBannerView;

    .line 2306
    invoke-static {v0}, Lcom/mnt/a/a;->a(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2307
    iget-object v1, v0, Lcom/mnt/impl/view/RectangleBannerView;->c:Lcom/mnt/IAdListener;

    if-eqz v1, :cond_0

    .line 2308
    iget-object v1, v0, Lcom/mnt/impl/view/RectangleBannerView;->c:Lcom/mnt/IAdListener;

    invoke-interface {v1}, Lcom/mnt/IAdListener;->onAdShowed()V

    .line 2310
    :cond_0
    iget-object v1, v0, Lcom/mnt/impl/view/RectangleBannerView;->k:Lcom/mnt/impl/dsp/c;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/mnt/impl/view/RectangleBannerView;->k:Lcom/mnt/impl/dsp/c;

    .line 3123
    iget-object v1, v1, Lcom/mnt/impl/dsp/c;->e:Lcom/mnt/impl/dsp/c$b;

    .line 3218
    iget-object v1, v1, Lcom/mnt/impl/dsp/c$b;->b:Ljava/lang/String;

    .line 2310
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2311
    iget-object v1, v0, Lcom/mnt/impl/view/RectangleBannerView;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/mnt/impl/i/c;->a(Landroid/content/Context;)Lcom/mnt/impl/i/c;

    move-result-object v1

    iget-object v2, v0, Lcom/mnt/impl/view/RectangleBannerView;->k:Lcom/mnt/impl/dsp/c;

    .line 4123
    iget-object v2, v2, Lcom/mnt/impl/dsp/c;->e:Lcom/mnt/impl/dsp/c$b;

    .line 4218
    iget-object v2, v2, Lcom/mnt/impl/dsp/c$b;->b:Ljava/lang/String;

    .line 2311
    invoke-virtual {v1, v2}, Lcom/mnt/impl/i/c;->a(Ljava/lang/String;)V

    .line 2313
    :cond_1
    iget-boolean v1, v0, Lcom/mnt/impl/view/RectangleBannerView;->h:Z

    if-nez v1, :cond_2

    iget-object v1, v0, Lcom/mnt/impl/view/RectangleBannerView;->d:Lcom/mnt/Ad;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/mnt/impl/view/RectangleBannerView;->e:Lcom/mnt/impl/b;

    if-eqz v1, :cond_2

    .line 2314
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/mnt/impl/view/RectangleBannerView;->h:Z

    .line 2315
    iget-object v1, v0, Lcom/mnt/impl/view/RectangleBannerView;->e:Lcom/mnt/impl/b;

    iget-object v2, v0, Lcom/mnt/impl/view/RectangleBannerView;->d:Lcom/mnt/Ad;

    invoke-virtual {v1, v2}, Lcom/mnt/impl/b;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    :cond_2
    :goto_0
    return-object v0

    .line 43
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 45
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAdLoaded()Z
    .locals 1

    .prologue
    .line 66
    :try_start_0
    iget-object v0, p0, Lcom/mnt/MntRectangleBanner;->c:Lcom/mnt/impl/view/RectangleBannerView;

    .line 5276
    iget-boolean v0, v0, Lcom/mnt/impl/view/RectangleBannerView;->j:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :goto_0
    return v0

    .line 68
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 70
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public load()V
    .locals 5

    .prologue
    .line 33
    :try_start_0
    iget-object v0, p0, Lcom/mnt/MntRectangleBanner;->c:Lcom/mnt/impl/view/RectangleBannerView;

    iget-object v1, p0, Lcom/mnt/MntRectangleBanner;->b:Lcom/mnt/MntBuild;

    .line 1301
    iput-object v1, v0, Lcom/mnt/impl/view/RectangleBannerView;->i:Lcom/mnt/MntBuild;

    .line 2097
    new-instance v1, Lcom/mnt/impl/dsp/d;

    iget-object v2, v0, Lcom/mnt/impl/view/RectangleBannerView;->a:Landroid/content/Context;

    iget-object v3, v0, Lcom/mnt/impl/view/RectangleBannerView;->f:Ljava/lang/String;

    new-instance v4, Lcom/mnt/impl/view/g;

    invoke-direct {v4, v0}, Lcom/mnt/impl/view/g;-><init>(Lcom/mnt/impl/view/RectangleBannerView;)V

    invoke-direct {v1, v2, v3, v4}, Lcom/mnt/impl/dsp/d;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/mnt/impl/dsp/d$a;)V

    .line 2140
    invoke-virtual {v1}, Lcom/mnt/impl/dsp/d;->c()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    :goto_0
    return-void

    .line 35
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public setAdListener(Lcom/mnt/IAdListener;)V
    .locals 1

    .prologue
    .line 50
    :try_start_0
    iget-object v0, p0, Lcom/mnt/MntRectangleBanner;->c:Lcom/mnt/impl/view/RectangleBannerView;

    invoke-virtual {v0, p1}, Lcom/mnt/impl/view/RectangleBannerView;->setAdListener(Lcom/mnt/IAdListener;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    :goto_0
    return-void

    .line 52
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
