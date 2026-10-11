.class final Lcom/mnt/impl/view/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mnt/impl/f/a;


# instance fields
.field private synthetic a:Lcom/mnt/impl/view/RectangleBannerView;


# direct methods
.method constructor <init>(Lcom/mnt/impl/view/RectangleBannerView;)V
    .locals 0

    .prologue
    .line 329
    iput-object p1, p0, Lcom/mnt/impl/view/i;->a:Lcom/mnt/impl/view/RectangleBannerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 346
    iget-object v0, p0, Lcom/mnt/impl/view/i;->a:Lcom/mnt/impl/view/RectangleBannerView;

    invoke-static {v0}, Lcom/mnt/impl/view/RectangleBannerView;->b(Lcom/mnt/impl/view/RectangleBannerView;)Lcom/mnt/IAdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 347
    iget-object v0, p0, Lcom/mnt/impl/view/i;->a:Lcom/mnt/impl/view/RectangleBannerView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mnt/impl/view/RectangleBannerView;->a(Lcom/mnt/impl/view/RectangleBannerView;Z)Z

    .line 348
    iget-object v0, p0, Lcom/mnt/impl/view/i;->a:Lcom/mnt/impl/view/RectangleBannerView;

    invoke-static {v0}, Lcom/mnt/impl/view/RectangleBannerView;->b(Lcom/mnt/impl/view/RectangleBannerView;)Lcom/mnt/IAdListener;

    move-result-object v0

    sget-object v1, Lcom/mnt/AdError;->NO_OFFERS:Lcom/mnt/AdError;

    invoke-interface {v0, v1}, Lcom/mnt/IAdListener;->onAdError(Lcom/mnt/AdError;)V

    .line 350
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 333
    iget-object v0, p0, Lcom/mnt/impl/view/i;->a:Lcom/mnt/impl/view/RectangleBannerView;

    iget v1, v0, Lcom/mnt/impl/view/RectangleBannerView;->l:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/mnt/impl/view/RectangleBannerView;->l:I

    .line 334
    iget-object v0, p0, Lcom/mnt/impl/view/i;->a:Lcom/mnt/impl/view/RectangleBannerView;

    invoke-static {v0}, Lcom/mnt/impl/view/RectangleBannerView;->g(Lcom/mnt/impl/view/RectangleBannerView;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mnt/impl/view/i;->a:Lcom/mnt/impl/view/RectangleBannerView;

    iget v0, v0, Lcom/mnt/impl/view/RectangleBannerView;->l:I

    iget-object v1, p0, Lcom/mnt/impl/view/i;->a:Lcom/mnt/impl/view/RectangleBannerView;

    invoke-static {v1}, Lcom/mnt/impl/view/RectangleBannerView;->g(Lcom/mnt/impl/view/RectangleBannerView;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 335
    iget-object v0, p0, Lcom/mnt/impl/view/i;->a:Lcom/mnt/impl/view/RectangleBannerView;

    invoke-static {v0}, Lcom/mnt/impl/view/RectangleBannerView;->b(Lcom/mnt/impl/view/RectangleBannerView;)Lcom/mnt/IAdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 336
    iget-object v0, p0, Lcom/mnt/impl/view/i;->a:Lcom/mnt/impl/view/RectangleBannerView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/mnt/impl/view/RectangleBannerView;->a(Lcom/mnt/impl/view/RectangleBannerView;Z)Z

    .line 337
    iget-object v0, p0, Lcom/mnt/impl/view/i;->a:Lcom/mnt/impl/view/RectangleBannerView;

    invoke-static {v0}, Lcom/mnt/impl/view/RectangleBannerView;->b(Lcom/mnt/impl/view/RectangleBannerView;)Lcom/mnt/IAdListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/mnt/IAdListener;->onAdLoadFinish(Ljava/lang/Object;)V

    .line 339
    :cond_0
    iget-object v0, p0, Lcom/mnt/impl/view/i;->a:Lcom/mnt/impl/view/RectangleBannerView;

    invoke-static {v0}, Lcom/mnt/impl/view/RectangleBannerView;->h(Lcom/mnt/impl/view/RectangleBannerView;)V

    .line 340
    iget-object v0, p0, Lcom/mnt/impl/view/i;->a:Lcom/mnt/impl/view/RectangleBannerView;

    invoke-static {v0}, Lcom/mnt/impl/view/RectangleBannerView;->i(Lcom/mnt/impl/view/RectangleBannerView;)V

    .line 342
    :cond_1
    return-void
.end method
