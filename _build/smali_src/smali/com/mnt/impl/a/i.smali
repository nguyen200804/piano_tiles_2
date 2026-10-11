.class public final Lcom/mnt/impl/a/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mnt/impl/dsp/d$a;


# instance fields
.field private synthetic a:Lcom/mnt/impl/a/h;


# direct methods
.method public constructor <init>(Lcom/mnt/impl/a/h;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/mnt/impl/a/i;->a:Lcom/mnt/impl/a/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/mnt/impl/a/i;->a:Lcom/mnt/impl/a/h;

    invoke-static {v0}, Lcom/mnt/impl/a/h;->c(Lcom/mnt/impl/a/h;)Lcom/mnt/IAdListener;

    move-result-object v0

    sget-object v1, Lcom/mnt/AdError;->NO_OFFERS:Lcom/mnt/AdError;

    invoke-interface {v0, v1}, Lcom/mnt/IAdListener;->onAdError(Lcom/mnt/AdError;)V

    .line 94
    return-void
.end method

.method public final a(Lcom/mnt/impl/dsp/c;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 84
    iget-object v0, p0, Lcom/mnt/impl/a/i;->a:Lcom/mnt/impl/a/h;

    invoke-static {v0, p1}, Lcom/mnt/impl/a/h;->a(Lcom/mnt/impl/a/h;Lcom/mnt/impl/dsp/c;)Lcom/mnt/impl/dsp/c;

    .line 85
    iget-object v0, p0, Lcom/mnt/impl/a/i;->a:Lcom/mnt/impl/a/h;

    invoke-static {v0, v3}, Lcom/mnt/impl/a/h;->a(Lcom/mnt/impl/a/h;I)I

    .line 86
    invoke-static {}, Lcom/mnt/impl/a/g;->a()Lcom/mnt/impl/a/g;

    move-result-object v0

    iget-object v1, p0, Lcom/mnt/impl/a/i;->a:Lcom/mnt/impl/a/h;

    invoke-static {v1}, Lcom/mnt/impl/a/h;->a(Lcom/mnt/impl/a/h;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/mnt/impl/a/i;->a:Lcom/mnt/impl/a/h;

    invoke-static {v2}, Lcom/mnt/impl/a/h;->b(Lcom/mnt/impl/a/h;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p1, v2, v4}, Lcom/mnt/impl/d;->a(Landroid/content/Context;Lcom/mnt/impl/dsp/c;Ljava/lang/String;Lcom/mnt/impl/dsp/b;)Landroid/webkit/WebView;

    move-result-object v1

    .line 1068
    iput-object v1, v0, Lcom/mnt/impl/a/g;->c:Landroid/view/View;

    .line 87
    iget-object v0, p0, Lcom/mnt/impl/a/i;->a:Lcom/mnt/impl/a/h;

    invoke-static {v0, v3}, Lcom/mnt/impl/a/h;->a(Lcom/mnt/impl/a/h;Z)Z

    .line 88
    iget-object v0, p0, Lcom/mnt/impl/a/i;->a:Lcom/mnt/impl/a/h;

    invoke-static {v0}, Lcom/mnt/impl/a/h;->c(Lcom/mnt/impl/a/h;)Lcom/mnt/IAdListener;

    move-result-object v0

    invoke-interface {v0, v4}, Lcom/mnt/IAdListener;->onAdLoadFinish(Ljava/lang/Object;)V

    .line 89
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/mnt/impl/a/i;->a:Lcom/mnt/impl/a/h;

    invoke-static {v0}, Lcom/mnt/impl/a/h;->d(Lcom/mnt/impl/a/h;)V

    .line 99
    return-void
.end method
