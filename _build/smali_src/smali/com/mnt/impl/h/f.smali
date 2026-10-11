.class final Lcom/mnt/impl/h/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mnt/IAdListener;


# instance fields
.field private synthetic a:Lcom/mnt/IAdListener;

.field private synthetic b:Lcom/mnt/MntInterstitial;


# direct methods
.method constructor <init>(Lcom/mnt/IAdListener;Lcom/mnt/MntInterstitial;)V
    .locals 0

    .prologue
    .line 340
    iput-object p1, p0, Lcom/mnt/impl/h/f;->a:Lcom/mnt/IAdListener;

    iput-object p2, p0, Lcom/mnt/impl/h/f;->b:Lcom/mnt/MntInterstitial;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdClicked()V
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Lcom/mnt/impl/h/f;->a:Lcom/mnt/IAdListener;

    invoke-interface {v0}, Lcom/mnt/IAdListener;->onAdClicked()V

    .line 364
    return-void
.end method

.method public final onAdClosed()V
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lcom/mnt/impl/h/f;->a:Lcom/mnt/IAdListener;

    invoke-interface {v0}, Lcom/mnt/IAdListener;->onAdClosed()V

    .line 359
    return-void
.end method

.method public final onAdError(Lcom/mnt/AdError;)V
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lcom/mnt/impl/h/f;->a:Lcom/mnt/IAdListener;

    invoke-interface {v0, p1}, Lcom/mnt/IAdListener;->onAdError(Lcom/mnt/AdError;)V

    .line 349
    return-void
.end method

.method public final onAdLoadFinish(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 343
    iget-object v0, p0, Lcom/mnt/impl/h/f;->a:Lcom/mnt/IAdListener;

    iget-object v1, p0, Lcom/mnt/impl/h/f;->b:Lcom/mnt/MntInterstitial;

    invoke-interface {v0, v1}, Lcom/mnt/IAdListener;->onAdLoadFinish(Ljava/lang/Object;)V

    .line 344
    return-void
.end method

.method public final onAdShowed()V
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Lcom/mnt/impl/h/f;->a:Lcom/mnt/IAdListener;

    invoke-interface {v0}, Lcom/mnt/IAdListener;->onAdShowed()V

    .line 354
    return-void
.end method
