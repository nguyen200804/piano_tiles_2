.class final Lcom/mnt/impl/view/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mnt/impl/f/a;


# instance fields
.field private synthetic a:Lcom/mnt/impl/view/BannerView;


# direct methods
.method constructor <init>(Lcom/mnt/impl/view/BannerView;)V
    .locals 0

    .prologue
    .line 323
    iput-object p1, p0, Lcom/mnt/impl/view/e;->a:Lcom/mnt/impl/view/BannerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 340
    iget-object v0, p0, Lcom/mnt/impl/view/e;->a:Lcom/mnt/impl/view/BannerView;

    invoke-static {v0}, Lcom/mnt/impl/view/BannerView;->b(Lcom/mnt/impl/view/BannerView;)Lcom/mnt/IAdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/mnt/impl/view/e;->a:Lcom/mnt/impl/view/BannerView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mnt/impl/view/BannerView;->a(Lcom/mnt/impl/view/BannerView;Z)Z

    .line 342
    iget-object v0, p0, Lcom/mnt/impl/view/e;->a:Lcom/mnt/impl/view/BannerView;

    invoke-static {v0}, Lcom/mnt/impl/view/BannerView;->b(Lcom/mnt/impl/view/BannerView;)Lcom/mnt/IAdListener;

    move-result-object v0

    sget-object v1, Lcom/mnt/AdError;->NO_OFFERS:Lcom/mnt/AdError;

    invoke-interface {v0, v1}, Lcom/mnt/IAdListener;->onAdError(Lcom/mnt/AdError;)V

    .line 344
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 327
    iget-object v0, p0, Lcom/mnt/impl/view/e;->a:Lcom/mnt/impl/view/BannerView;

    iget v1, v0, Lcom/mnt/impl/view/BannerView;->n:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/mnt/impl/view/BannerView;->n:I

    .line 328
    iget-object v0, p0, Lcom/mnt/impl/view/e;->a:Lcom/mnt/impl/view/BannerView;

    invoke-static {v0}, Lcom/mnt/impl/view/BannerView;->g(Lcom/mnt/impl/view/BannerView;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mnt/impl/view/e;->a:Lcom/mnt/impl/view/BannerView;

    iget v0, v0, Lcom/mnt/impl/view/BannerView;->n:I

    iget-object v1, p0, Lcom/mnt/impl/view/e;->a:Lcom/mnt/impl/view/BannerView;

    invoke-static {v1}, Lcom/mnt/impl/view/BannerView;->g(Lcom/mnt/impl/view/BannerView;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 329
    iget-object v0, p0, Lcom/mnt/impl/view/e;->a:Lcom/mnt/impl/view/BannerView;

    invoke-static {v0}, Lcom/mnt/impl/view/BannerView;->b(Lcom/mnt/impl/view/BannerView;)Lcom/mnt/IAdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/mnt/impl/view/e;->a:Lcom/mnt/impl/view/BannerView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/mnt/impl/view/BannerView;->a(Lcom/mnt/impl/view/BannerView;Z)Z

    .line 331
    iget-object v0, p0, Lcom/mnt/impl/view/e;->a:Lcom/mnt/impl/view/BannerView;

    invoke-static {v0}, Lcom/mnt/impl/view/BannerView;->b(Lcom/mnt/impl/view/BannerView;)Lcom/mnt/IAdListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/mnt/IAdListener;->onAdLoadFinish(Ljava/lang/Object;)V

    .line 333
    :cond_0
    iget-object v0, p0, Lcom/mnt/impl/view/e;->a:Lcom/mnt/impl/view/BannerView;

    invoke-static {v0}, Lcom/mnt/impl/view/BannerView;->h(Lcom/mnt/impl/view/BannerView;)V

    .line 334
    iget-object v0, p0, Lcom/mnt/impl/view/e;->a:Lcom/mnt/impl/view/BannerView;

    invoke-static {v0}, Lcom/mnt/impl/view/BannerView;->i(Lcom/mnt/impl/view/BannerView;)V

    .line 336
    :cond_1
    return-void
.end method
