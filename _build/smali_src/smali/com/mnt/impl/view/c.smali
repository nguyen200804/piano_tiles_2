.class public final Lcom/mnt/impl/view/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mnt/impl/dsp/d$a;


# instance fields
.field final synthetic a:Lcom/mnt/impl/view/BannerView;


# direct methods
.method public constructor <init>(Lcom/mnt/impl/view/BannerView;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/mnt/impl/view/c;->a:Lcom/mnt/impl/view/BannerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/mnt/impl/view/c;->a:Lcom/mnt/impl/view/BannerView;

    invoke-static {v0}, Lcom/mnt/impl/view/BannerView;->b(Lcom/mnt/impl/view/BannerView;)Lcom/mnt/IAdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/mnt/impl/view/c;->a:Lcom/mnt/impl/view/BannerView;

    invoke-static {v0}, Lcom/mnt/impl/view/BannerView;->b(Lcom/mnt/impl/view/BannerView;)Lcom/mnt/IAdListener;

    move-result-object v0

    sget-object v1, Lcom/mnt/AdError;->NO_OFFERS:Lcom/mnt/AdError;

    invoke-interface {v0, v1}, Lcom/mnt/IAdListener;->onAdError(Lcom/mnt/AdError;)V

    .line 134
    :cond_0
    return-void
.end method

.method public final a(Lcom/mnt/impl/dsp/c;)V
    .locals 4

    .prologue
    .line 102
    iget-object v0, p0, Lcom/mnt/impl/view/c;->a:Lcom/mnt/impl/view/BannerView;

    invoke-static {v0, p1}, Lcom/mnt/impl/view/BannerView;->a(Lcom/mnt/impl/view/BannerView;Lcom/mnt/impl/dsp/c;)Lcom/mnt/impl/dsp/c;

    .line 103
    iget-object v0, p0, Lcom/mnt/impl/view/c;->a:Lcom/mnt/impl/view/BannerView;

    iget-object v1, p0, Lcom/mnt/impl/view/c;->a:Lcom/mnt/impl/view/BannerView;

    invoke-static {v1}, Lcom/mnt/impl/view/BannerView;->c(Lcom/mnt/impl/view/BannerView;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/mnt/impl/view/c;->a:Lcom/mnt/impl/view/BannerView;

    invoke-static {v2}, Lcom/mnt/impl/view/BannerView;->d(Lcom/mnt/impl/view/BannerView;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/mnt/impl/view/d;

    invoke-direct {v3, p0, p1}, Lcom/mnt/impl/view/d;-><init>(Lcom/mnt/impl/view/c;Lcom/mnt/impl/dsp/c;)V

    invoke-static {v1, p1, v2, v3}, Lcom/mnt/impl/d;->a(Landroid/content/Context;Lcom/mnt/impl/dsp/c;Ljava/lang/String;Lcom/mnt/impl/dsp/b;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mnt/impl/view/BannerView;->a(Lcom/mnt/impl/view/BannerView;Landroid/webkit/WebView;)V

    .line 123
    iget-object v0, p0, Lcom/mnt/impl/view/c;->a:Lcom/mnt/impl/view/BannerView;

    invoke-static {v0}, Lcom/mnt/impl/view/BannerView;->b(Lcom/mnt/impl/view/BannerView;)Lcom/mnt/IAdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/mnt/impl/view/c;->a:Lcom/mnt/impl/view/BannerView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/mnt/impl/view/BannerView;->a(Lcom/mnt/impl/view/BannerView;Z)Z

    .line 125
    iget-object v0, p0, Lcom/mnt/impl/view/c;->a:Lcom/mnt/impl/view/BannerView;

    invoke-static {v0}, Lcom/mnt/impl/view/BannerView;->b(Lcom/mnt/impl/view/BannerView;)Lcom/mnt/IAdListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/mnt/IAdListener;->onAdLoadFinish(Ljava/lang/Object;)V

    .line 127
    :cond_0
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/mnt/impl/view/c;->a:Lcom/mnt/impl/view/BannerView;

    invoke-static {v0}, Lcom/mnt/impl/view/BannerView;->f(Lcom/mnt/impl/view/BannerView;)V

    .line 139
    return-void
.end method
