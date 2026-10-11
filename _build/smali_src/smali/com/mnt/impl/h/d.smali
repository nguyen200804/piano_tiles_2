.class final Lcom/mnt/impl/h/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mnt/IAdListener;


# instance fields
.field private synthetic a:Lcom/mnt/IAdListener;

.field private synthetic b:Lcom/mnt/MntBanner;


# direct methods
.method constructor <init>(Lcom/mnt/IAdListener;Lcom/mnt/MntBanner;)V
    .locals 0

    .prologue
    .line 275
    iput-object p1, p0, Lcom/mnt/impl/h/d;->a:Lcom/mnt/IAdListener;

    iput-object p2, p0, Lcom/mnt/impl/h/d;->b:Lcom/mnt/MntBanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdClicked()V
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/mnt/impl/h/d;->a:Lcom/mnt/IAdListener;

    invoke-interface {v0}, Lcom/mnt/IAdListener;->onAdClicked()V

    .line 299
    return-void
.end method

.method public final onAdClosed()V
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/mnt/impl/h/d;->a:Lcom/mnt/IAdListener;

    invoke-interface {v0}, Lcom/mnt/IAdListener;->onAdClosed()V

    .line 294
    return-void
.end method

.method public final onAdError(Lcom/mnt/AdError;)V
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/mnt/impl/h/d;->a:Lcom/mnt/IAdListener;

    invoke-interface {v0, p1}, Lcom/mnt/IAdListener;->onAdError(Lcom/mnt/AdError;)V

    .line 284
    return-void
.end method

.method public final onAdLoadFinish(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 278
    iget-object v0, p0, Lcom/mnt/impl/h/d;->a:Lcom/mnt/IAdListener;

    iget-object v1, p0, Lcom/mnt/impl/h/d;->b:Lcom/mnt/MntBanner;

    invoke-interface {v0, v1}, Lcom/mnt/IAdListener;->onAdLoadFinish(Ljava/lang/Object;)V

    .line 279
    return-void
.end method

.method public final onAdShowed()V
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/mnt/impl/h/d;->a:Lcom/mnt/IAdListener;

    invoke-interface {v0}, Lcom/mnt/IAdListener;->onAdShowed()V

    .line 289
    return-void
.end method
