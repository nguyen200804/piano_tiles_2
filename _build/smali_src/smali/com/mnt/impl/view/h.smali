.class final Lcom/mnt/impl/view/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mnt/impl/dsp/b;


# instance fields
.field private synthetic a:Lcom/mnt/impl/dsp/c;

.field private synthetic b:Lcom/mnt/impl/view/g;


# direct methods
.method constructor <init>(Lcom/mnt/impl/view/g;Lcom/mnt/impl/dsp/c;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lcom/mnt/impl/view/h;->b:Lcom/mnt/impl/view/g;

    iput-object p2, p0, Lcom/mnt/impl/view/h;->a:Lcom/mnt/impl/dsp/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 105
    iget-object v0, p0, Lcom/mnt/impl/view/h;->a:Lcom/mnt/impl/dsp/c;

    .line 1115
    iget-object v0, v0, Lcom/mnt/impl/dsp/c;->d:Lcom/mnt/impl/dsp/c$a;

    .line 1185
    iget-object v0, v0, Lcom/mnt/impl/dsp/c$a;->b:Ljava/lang/String;

    .line 105
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/mnt/impl/view/h;->b:Lcom/mnt/impl/view/g;

    iget-object v0, v0, Lcom/mnt/impl/view/g;->a:Lcom/mnt/impl/view/RectangleBannerView;

    invoke-static {v0}, Lcom/mnt/impl/view/RectangleBannerView;->c(Lcom/mnt/impl/view/RectangleBannerView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mnt/impl/i/c;->a(Landroid/content/Context;)Lcom/mnt/impl/i/c;

    move-result-object v0

    iget-object v1, p0, Lcom/mnt/impl/view/h;->a:Lcom/mnt/impl/dsp/c;

    .line 2115
    iget-object v1, v1, Lcom/mnt/impl/dsp/c;->d:Lcom/mnt/impl/dsp/c$a;

    .line 2185
    iget-object v1, v1, Lcom/mnt/impl/dsp/c$a;->b:Ljava/lang/String;

    .line 106
    invoke-virtual {v0, v1}, Lcom/mnt/impl/i/c;->a(Ljava/lang/String;)V

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/mnt/impl/view/h;->b:Lcom/mnt/impl/view/g;

    iget-object v0, v0, Lcom/mnt/impl/view/g;->a:Lcom/mnt/impl/view/RectangleBannerView;

    invoke-static {v0}, Lcom/mnt/impl/view/RectangleBannerView;->e(Lcom/mnt/impl/view/RectangleBannerView;)Lcom/mnt/impl/dsp/c;

    move-result-object v0

    .line 3115
    iget-object v0, v0, Lcom/mnt/impl/dsp/c;->d:Lcom/mnt/impl/dsp/c$a;

    .line 3165
    iget v0, v0, Lcom/mnt/impl/dsp/c$a;->c:I

    .line 111
    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/mnt/impl/view/h;->b:Lcom/mnt/impl/view/g;

    iget-object v0, v0, Lcom/mnt/impl/view/g;->a:Lcom/mnt/impl/view/RectangleBannerView;

    invoke-static {v0}, Lcom/mnt/impl/view/RectangleBannerView;->e(Lcom/mnt/impl/view/RectangleBannerView;)Lcom/mnt/impl/dsp/c;

    move-result-object v0

    .line 4115
    iget-object v0, v0, Lcom/mnt/impl/dsp/c;->d:Lcom/mnt/impl/dsp/c$a;

    .line 4157
    iget-object v0, v0, Lcom/mnt/impl/dsp/c$a;->d:Ljava/lang/String;

    .line 111
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 113
    iget-object v0, p0, Lcom/mnt/impl/view/h;->b:Lcom/mnt/impl/view/g;

    iget-object v0, v0, Lcom/mnt/impl/view/g;->a:Lcom/mnt/impl/view/RectangleBannerView;

    invoke-static {v0}, Lcom/mnt/impl/view/RectangleBannerView;->c(Lcom/mnt/impl/view/RectangleBannerView;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/mnt/impl/e;->jK:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mnt/impl/view/h;->b:Lcom/mnt/impl/view/g;

    iget-object v2, v2, Lcom/mnt/impl/view/g;->a:Lcom/mnt/impl/view/RectangleBannerView;

    invoke-static {v2}, Lcom/mnt/impl/view/RectangleBannerView;->e(Lcom/mnt/impl/view/RectangleBannerView;)Lcom/mnt/impl/dsp/c;

    move-result-object v2

    .line 5115
    iget-object v2, v2, Lcom/mnt/impl/dsp/c;->d:Lcom/mnt/impl/dsp/c$a;

    .line 5157
    iget-object v2, v2, Lcom/mnt/impl/dsp/c$a;->d:Ljava/lang/String;

    .line 113
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/mnt/impl/b/k;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    .line 117
    :goto_0
    iget-object v0, p0, Lcom/mnt/impl/view/h;->b:Lcom/mnt/impl/view/g;

    iget-object v0, v0, Lcom/mnt/impl/view/g;->a:Lcom/mnt/impl/view/RectangleBannerView;

    invoke-static {v0}, Lcom/mnt/impl/view/RectangleBannerView;->b(Lcom/mnt/impl/view/RectangleBannerView;)Lcom/mnt/IAdListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 118
    iget-object v0, p0, Lcom/mnt/impl/view/h;->b:Lcom/mnt/impl/view/g;

    iget-object v0, v0, Lcom/mnt/impl/view/g;->a:Lcom/mnt/impl/view/RectangleBannerView;

    invoke-static {v0}, Lcom/mnt/impl/view/RectangleBannerView;->b(Lcom/mnt/impl/view/RectangleBannerView;)Lcom/mnt/IAdListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/mnt/IAdListener;->onAdClicked()V

    .line 120
    :cond_1
    return-void

    .line 115
    :cond_2
    iget-object v0, p0, Lcom/mnt/impl/view/h;->b:Lcom/mnt/impl/view/g;

    iget-object v0, v0, Lcom/mnt/impl/view/g;->a:Lcom/mnt/impl/view/RectangleBannerView;

    invoke-static {v0}, Lcom/mnt/impl/view/RectangleBannerView;->c(Lcom/mnt/impl/view/RectangleBannerView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/mnt/impl/b/k;->b(Landroid/content/Context;Ljava/lang/String;)Z

    goto :goto_0
.end method
