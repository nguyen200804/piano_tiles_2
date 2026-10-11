.class public final Lcom/mnt/impl/view/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mnt/impl/dsp/d$a;


# instance fields
.field final synthetic a:Lcom/mnt/impl/view/RectangleBannerView;


# direct methods
.method public constructor <init>(Lcom/mnt/impl/view/RectangleBannerView;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/mnt/impl/view/g;->a:Lcom/mnt/impl/view/RectangleBannerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/mnt/impl/view/g;->a:Lcom/mnt/impl/view/RectangleBannerView;

    invoke-static {v0}, Lcom/mnt/impl/view/RectangleBannerView;->b(Lcom/mnt/impl/view/RectangleBannerView;)Lcom/mnt/IAdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/mnt/impl/view/g;->a:Lcom/mnt/impl/view/RectangleBannerView;

    invoke-static {v0}, Lcom/mnt/impl/view/RectangleBannerView;->b(Lcom/mnt/impl/view/RectangleBannerView;)Lcom/mnt/IAdListener;

    move-result-object v0

    sget-object v1, Lcom/mnt/AdError;->NO_OFFERS:Lcom/mnt/AdError;

    invoke-interface {v0, v1}, Lcom/mnt/IAdListener;->onAdError(Lcom/mnt/AdError;)V

    .line 133
    :cond_0
    return-void
.end method

.method public final a(Lcom/mnt/impl/dsp/c;)V
    .locals 4

    .prologue
    .line 101
    iget-object v0, p0, Lcom/mnt/impl/view/g;->a:Lcom/mnt/impl/view/RectangleBannerView;

    invoke-static {v0, p1}, Lcom/mnt/impl/view/RectangleBannerView;->a(Lcom/mnt/impl/view/RectangleBannerView;Lcom/mnt/impl/dsp/c;)Lcom/mnt/impl/dsp/c;

    .line 102
    iget-object v0, p0, Lcom/mnt/impl/view/g;->a:Lcom/mnt/impl/view/RectangleBannerView;

    iget-object v1, p0, Lcom/mnt/impl/view/g;->a:Lcom/mnt/impl/view/RectangleBannerView;

    invoke-static {v1}, Lcom/mnt/impl/view/RectangleBannerView;->c(Lcom/mnt/impl/view/RectangleBannerView;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/mnt/impl/view/g;->a:Lcom/mnt/impl/view/RectangleBannerView;

    invoke-static {v2}, Lcom/mnt/impl/view/RectangleBannerView;->d(Lcom/mnt/impl/view/RectangleBannerView;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/mnt/impl/view/h;

    invoke-direct {v3, p0, p1}, Lcom/mnt/impl/view/h;-><init>(Lcom/mnt/impl/view/g;Lcom/mnt/impl/dsp/c;)V

    invoke-static {v1, p1, v2, v3}, Lcom/mnt/impl/d;->a(Landroid/content/Context;Lcom/mnt/impl/dsp/c;Ljava/lang/String;Lcom/mnt/impl/dsp/b;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mnt/impl/view/RectangleBannerView;->a(Lcom/mnt/impl/view/RectangleBannerView;Landroid/webkit/WebView;)V

    .line 122
    iget-object v0, p0, Lcom/mnt/impl/view/g;->a:Lcom/mnt/impl/view/RectangleBannerView;

    invoke-static {v0}, Lcom/mnt/impl/view/RectangleBannerView;->b(Lcom/mnt/impl/view/RectangleBannerView;)Lcom/mnt/IAdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/mnt/impl/view/g;->a:Lcom/mnt/impl/view/RectangleBannerView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/mnt/impl/view/RectangleBannerView;->a(Lcom/mnt/impl/view/RectangleBannerView;Z)Z

    .line 124
    iget-object v0, p0, Lcom/mnt/impl/view/g;->a:Lcom/mnt/impl/view/RectangleBannerView;

    invoke-static {v0}, Lcom/mnt/impl/view/RectangleBannerView;->b(Lcom/mnt/impl/view/RectangleBannerView;)Lcom/mnt/IAdListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/mnt/IAdListener;->onAdLoadFinish(Ljava/lang/Object;)V

    .line 126
    :cond_0
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/mnt/impl/view/g;->a:Lcom/mnt/impl/view/RectangleBannerView;

    invoke-static {v0}, Lcom/mnt/impl/view/RectangleBannerView;->f(Lcom/mnt/impl/view/RectangleBannerView;)V

    .line 138
    return-void
.end method
