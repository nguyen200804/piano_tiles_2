.class final Lcom/mnt/impl/h/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mnt/IAdListener;


# instance fields
.field private synthetic a:Lcom/mnt/IAdListener;

.field private synthetic b:Lcom/mnt/MntRectangleBanner;


# direct methods
.method constructor <init>(Lcom/mnt/IAdListener;Lcom/mnt/MntRectangleBanner;)V
    .locals 0

    .prologue
    .line 308
    iput-object p1, p0, Lcom/mnt/impl/h/e;->a:Lcom/mnt/IAdListener;

    iput-object p2, p0, Lcom/mnt/impl/h/e;->b:Lcom/mnt/MntRectangleBanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdClicked()V
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lcom/mnt/impl/h/e;->a:Lcom/mnt/IAdListener;

    invoke-interface {v0}, Lcom/mnt/IAdListener;->onAdClicked()V

    .line 332
    return-void
.end method

.method public final onAdClosed()V
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Lcom/mnt/impl/h/e;->a:Lcom/mnt/IAdListener;

    invoke-interface {v0}, Lcom/mnt/IAdListener;->onAdClosed()V

    .line 327
    return-void
.end method

.method public final onAdError(Lcom/mnt/AdError;)V
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lcom/mnt/impl/h/e;->a:Lcom/mnt/IAdListener;

    invoke-interface {v0, p1}, Lcom/mnt/IAdListener;->onAdError(Lcom/mnt/AdError;)V

    .line 317
    return-void
.end method

.method public final onAdLoadFinish(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 311
    iget-object v0, p0, Lcom/mnt/impl/h/e;->a:Lcom/mnt/IAdListener;

    iget-object v1, p0, Lcom/mnt/impl/h/e;->b:Lcom/mnt/MntRectangleBanner;

    invoke-interface {v0, v1}, Lcom/mnt/IAdListener;->onAdLoadFinish(Ljava/lang/Object;)V

    .line 312
    return-void
.end method

.method public final onAdShowed()V
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lcom/mnt/impl/h/e;->a:Lcom/mnt/IAdListener;

    invoke-interface {v0}, Lcom/mnt/IAdListener;->onAdShowed()V

    .line 322
    return-void
.end method
