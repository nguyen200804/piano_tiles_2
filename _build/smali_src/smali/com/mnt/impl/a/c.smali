.class final Lcom/mnt/impl/a/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mnt/impl/dsp/b;


# instance fields
.field private synthetic a:Lcom/mnt/impl/dsp/DspHelper$BannerWebView;

.field private synthetic b:Lcom/mnt/impl/a/b;


# direct methods
.method constructor <init>(Lcom/mnt/impl/a/b;Lcom/mnt/impl/dsp/DspHelper$BannerWebView;)V
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Lcom/mnt/impl/a/c;->b:Lcom/mnt/impl/a/b;

    iput-object p2, p0, Lcom/mnt/impl/a/c;->a:Lcom/mnt/impl/dsp/DspHelper$BannerWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 146
    invoke-static {}, Lcom/mnt/impl/a/g;->a()Lcom/mnt/impl/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mnt/impl/a/g;->b()Lcom/mnt/MntBuild;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 147
    invoke-static {}, Lcom/mnt/impl/a/g;->a()Lcom/mnt/impl/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mnt/impl/a/g;->b()Lcom/mnt/MntBuild;

    move-result-object v0

    iget-object v0, v0, Lcom/mnt/MntBuild;->mAdListener:Lcom/mnt/IAdListener;

    invoke-interface {v0}, Lcom/mnt/IAdListener;->onAdClicked()V

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/mnt/impl/a/c;->b:Lcom/mnt/impl/a/b;

    invoke-static {v0}, Lcom/mnt/impl/a/b;->a(Lcom/mnt/impl/a/b;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 150
    iget-object v0, p0, Lcom/mnt/impl/a/c;->b:Lcom/mnt/impl/a/b;

    invoke-static {v0}, Lcom/mnt/impl/a/b;->b(Lcom/mnt/impl/a/b;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mnt/impl/i/c;->a(Landroid/content/Context;)Lcom/mnt/impl/i/c;

    move-result-object v0

    iget-object v1, p0, Lcom/mnt/impl/a/c;->b:Lcom/mnt/impl/a/b;

    invoke-static {v1}, Lcom/mnt/impl/a/b;->a(Lcom/mnt/impl/a/b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mnt/impl/i/c;->a(Ljava/lang/String;)V

    .line 155
    :cond_1
    iget-object v0, p0, Lcom/mnt/impl/a/c;->a:Lcom/mnt/impl/dsp/DspHelper$BannerWebView;

    .line 1064
    iget-object v0, v0, Lcom/mnt/impl/dsp/DspHelper$BannerWebView;->a:Lcom/mnt/impl/dsp/c;

    .line 156
    if-eqz v0, :cond_2

    .line 1115
    iget-object v1, v0, Lcom/mnt/impl/dsp/c;->d:Lcom/mnt/impl/dsp/c$a;

    .line 1165
    iget v1, v1, Lcom/mnt/impl/dsp/c$a;->c:I

    .line 156
    const/4 v2, 0x5

    if-ne v1, v2, :cond_2

    .line 2115
    iget-object v1, v0, Lcom/mnt/impl/dsp/c;->d:Lcom/mnt/impl/dsp/c$a;

    .line 2157
    iget-object v1, v1, Lcom/mnt/impl/dsp/c$a;->d:Ljava/lang/String;

    .line 156
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 158
    iget-object v1, p0, Lcom/mnt/impl/a/c;->b:Lcom/mnt/impl/a/b;

    invoke-static {v1}, Lcom/mnt/impl/a/b;->b(Lcom/mnt/impl/a/b;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/mnt/impl/e;->pC:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3115
    iget-object v0, v0, Lcom/mnt/impl/dsp/c;->d:Lcom/mnt/impl/dsp/c$a;

    .line 3157
    iget-object v0, v0, Lcom/mnt/impl/dsp/c$a;->d:Ljava/lang/String;

    .line 158
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/mnt/impl/b/k;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    .line 162
    :goto_0
    iget-object v0, p0, Lcom/mnt/impl/a/c;->b:Lcom/mnt/impl/a/b;

    .line 4033
    iget-object v0, v0, Lcom/mnt/impl/a;->a:Landroid/app/Activity;

    .line 162
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 163
    return-void

    .line 160
    :cond_2
    iget-object v0, p0, Lcom/mnt/impl/a/c;->b:Lcom/mnt/impl/a/b;

    invoke-static {v0}, Lcom/mnt/impl/a/b;->b(Lcom/mnt/impl/a/b;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/mnt/impl/b/k;->b(Landroid/content/Context;Ljava/lang/String;)Z

    goto :goto_0
.end method
