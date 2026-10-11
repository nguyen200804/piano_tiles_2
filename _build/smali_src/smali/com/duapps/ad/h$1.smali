.class Lcom/duapps/ad/h$1;
.super Ljava/lang/Object;
.source "InterstitialAd.java"

# interfaces
.implements Lcom/duapps/ad/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duapps/ad/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/duapps/ad/h;


# direct methods
.method constructor <init>(Lcom/duapps/ad/h;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/duapps/ad/h$1;->a:Lcom/duapps/ad/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/duapps/ad/f;)V
    .locals 3

    .prologue
    .line 119
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/duapps/ad/f;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 120
    :cond_0
    invoke-static {}, Lcom/duapps/ad/h;->e()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "load ad failed, errorcode(1001), ad.getImageUrl() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/duapps/ad/f;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duapps/ad/base/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lcom/duapps/ad/h$1;->a:Lcom/duapps/ad/h;

    invoke-static {v0}, Lcom/duapps/ad/h;->a(Lcom/duapps/ad/h;)Lcom/duapps/ad/i;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 122
    iget-object v0, p0, Lcom/duapps/ad/h$1;->a:Lcom/duapps/ad/h;

    invoke-static {v0}, Lcom/duapps/ad/h;->a(Lcom/duapps/ad/h;)Lcom/duapps/ad/i;

    move-result-object v0

    const/16 v1, 0x3e9

    invoke-interface {v0, v1}, Lcom/duapps/ad/i;->onAdFail(I)V

    .line 131
    :cond_1
    :goto_0
    return-void

    .line 127
    :cond_2
    iget-object v0, p0, Lcom/duapps/ad/h$1;->a:Lcom/duapps/ad/h;

    invoke-static {v0, p1}, Lcom/duapps/ad/h;->a(Lcom/duapps/ad/h;Lcom/duapps/ad/f;)Lcom/duapps/ad/f;

    .line 128
    iget-object v0, p0, Lcom/duapps/ad/h$1;->a:Lcom/duapps/ad/h;

    invoke-static {v0}, Lcom/duapps/ad/h;->a(Lcom/duapps/ad/h;)Lcom/duapps/ad/i;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 129
    iget-object v0, p0, Lcom/duapps/ad/h$1;->a:Lcom/duapps/ad/h;

    invoke-static {v0}, Lcom/duapps/ad/h;->a(Lcom/duapps/ad/h;)Lcom/duapps/ad/i;

    move-result-object v0

    invoke-interface {v0}, Lcom/duapps/ad/i;->onAdReceive()V

    goto :goto_0
.end method

.method public a(Lcom/duapps/ad/f;Lcom/duapps/ad/a;)V
    .locals 3

    .prologue
    .line 111
    invoke-static {}, Lcom/duapps/ad/h;->e()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "load ad failed, errorcode("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/duapps/ad/a;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duapps/ad/base/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/duapps/ad/h$1;->a:Lcom/duapps/ad/h;

    invoke-static {v0}, Lcom/duapps/ad/h;->a(Lcom/duapps/ad/h;)Lcom/duapps/ad/i;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/duapps/ad/h$1;->a:Lcom/duapps/ad/h;

    invoke-static {v0}, Lcom/duapps/ad/h;->a(Lcom/duapps/ad/h;)Lcom/duapps/ad/i;

    move-result-object v0

    invoke-virtual {p2}, Lcom/duapps/ad/a;->a()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/duapps/ad/i;->onAdFail(I)V

    .line 115
    :cond_0
    return-void
.end method

.method public b(Lcom/duapps/ad/f;)V
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/duapps/ad/h$1;->a:Lcom/duapps/ad/h;

    invoke-static {v0}, Lcom/duapps/ad/h;->a(Lcom/duapps/ad/h;)Lcom/duapps/ad/i;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/duapps/ad/h$1;->a:Lcom/duapps/ad/h;

    invoke-static {v0}, Lcom/duapps/ad/h;->a(Lcom/duapps/ad/h;)Lcom/duapps/ad/i;

    move-result-object v0

    invoke-interface {v0}, Lcom/duapps/ad/i;->onAdClicked()V

    .line 138
    :cond_0
    return-void
.end method
