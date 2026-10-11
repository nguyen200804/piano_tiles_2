.class final Lcom/mnt/impl/h/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mnt/a/f;


# instance fields
.field private synthetic a:Lcom/mnt/IAdListener;

.field private synthetic b:Lcom/mnt/MntNative;


# direct methods
.method constructor <init>(Lcom/mnt/IAdListener;Lcom/mnt/MntNative;)V
    .locals 0

    .prologue
    .line 372
    iput-object p1, p0, Lcom/mnt/impl/h/g;->a:Lcom/mnt/IAdListener;

    iput-object p2, p0, Lcom/mnt/impl/h/g;->b:Lcom/mnt/MntNative;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 385
    iget-object v0, p0, Lcom/mnt/impl/h/g;->a:Lcom/mnt/IAdListener;

    invoke-interface {v0}, Lcom/mnt/IAdListener;->onAdClicked()V

    .line 386
    return-void
.end method

.method public final a(Lcom/mnt/AdError;)V
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lcom/mnt/impl/h/g;->a:Lcom/mnt/IAdListener;

    invoke-interface {v0, p1}, Lcom/mnt/IAdListener;->onAdError(Lcom/mnt/AdError;)V

    .line 376
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mnt/Ad;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 380
    iget-object v0, p0, Lcom/mnt/impl/h/g;->a:Lcom/mnt/IAdListener;

    iget-object v1, p0, Lcom/mnt/impl/h/g;->b:Lcom/mnt/MntNative;

    invoke-interface {v0, v1}, Lcom/mnt/IAdListener;->onAdLoadFinish(Ljava/lang/Object;)V

    .line 381
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Lcom/mnt/impl/h/g;->a:Lcom/mnt/IAdListener;

    invoke-interface {v0}, Lcom/mnt/IAdListener;->onAdShowed()V

    .line 391
    return-void
.end method
