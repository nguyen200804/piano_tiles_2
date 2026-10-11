.class Lcom/duapps/ad/offerwall/a$1;
.super Ljava/lang/Object;
.source "OfferWallPresenter2.java"

# interfaces
.implements Lcom/duapps/ad/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duapps/ad/offerwall/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/duapps/ad/offerwall/a;


# direct methods
.method constructor <init>(Lcom/duapps/ad/offerwall/a;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/duapps/ad/offerwall/a$1;->a:Lcom/duapps/ad/offerwall/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/duapps/ad/f;)V
    .locals 4

    .prologue
    .line 91
    iget-object v0, p0, Lcom/duapps/ad/offerwall/a$1;->a:Lcom/duapps/ad/offerwall/a;

    invoke-virtual {p1}, Lcom/duapps/ad/f;->m()Lcom/duapps/ad/entity/a/a;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duapps/ad/offerwall/a;->a(Lcom/duapps/ad/offerwall/a;Lcom/duapps/ad/entity/a/a;)Lcom/duapps/ad/entity/a/a;

    .line 92
    const-string v0, "OfferWallPresenter2"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "offerwall native ad onAdLoaded isLoading : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/duapps/ad/offerwall/a$1;->a:Lcom/duapps/ad/offerwall/a;

    invoke-static {v2}, Lcom/duapps/ad/offerwall/a;->c(Lcom/duapps/ad/offerwall/a;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isDLError : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/duapps/ad/offerwall/a$1;->a:Lcom/duapps/ad/offerwall/a;

    invoke-static {v2}, Lcom/duapps/ad/offerwall/a;->a(Lcom/duapps/ad/offerwall/a;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", getAdSource : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/duapps/ad/offerwall/a$1;->a:Lcom/duapps/ad/offerwall/a;

    invoke-static {v2}, Lcom/duapps/ad/offerwall/a;->d(Lcom/duapps/ad/offerwall/a;)Lcom/duapps/ad/entity/a/a;

    move-result-object v2

    invoke-interface {v2}, Lcom/duapps/ad/entity/a/a;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duapps/ad/base/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/duapps/ad/offerwall/a$1;->a:Lcom/duapps/ad/offerwall/a;

    invoke-static {v0}, Lcom/duapps/ad/offerwall/a;->c(Lcom/duapps/ad/offerwall/a;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 94
    iget-object v0, p0, Lcom/duapps/ad/offerwall/a$1;->a:Lcom/duapps/ad/offerwall/a;

    iget-object v1, p0, Lcom/duapps/ad/offerwall/a$1;->a:Lcom/duapps/ad/offerwall/a;

    invoke-static {v1}, Lcom/duapps/ad/offerwall/a;->d(Lcom/duapps/ad/offerwall/a;)Lcom/duapps/ad/entity/a/a;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duapps/ad/offerwall/a;->b(Lcom/duapps/ad/offerwall/a;Lcom/duapps/ad/entity/a/a;)V

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 95
    :cond_1
    iget-object v0, p0, Lcom/duapps/ad/offerwall/a$1;->a:Lcom/duapps/ad/offerwall/a;

    invoke-static {v0}, Lcom/duapps/ad/offerwall/a;->a(Lcom/duapps/ad/offerwall/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/duapps/ad/offerwall/a$1;->a:Lcom/duapps/ad/offerwall/a;

    invoke-static {v0}, Lcom/duapps/ad/offerwall/a;->b(Lcom/duapps/ad/offerwall/a;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 97
    iget-object v0, p0, Lcom/duapps/ad/offerwall/a$1;->a:Lcom/duapps/ad/offerwall/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/duapps/ad/offerwall/a;->b(Lcom/duapps/ad/offerwall/a;Z)Z

    .line 98
    iget-object v0, p0, Lcom/duapps/ad/offerwall/a$1;->a:Lcom/duapps/ad/offerwall/a;

    iget-object v1, p0, Lcom/duapps/ad/offerwall/a$1;->a:Lcom/duapps/ad/offerwall/a;

    invoke-static {v1}, Lcom/duapps/ad/offerwall/a;->d(Lcom/duapps/ad/offerwall/a;)Lcom/duapps/ad/entity/a/a;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duapps/ad/offerwall/a;->b(Lcom/duapps/ad/offerwall/a;Lcom/duapps/ad/entity/a/a;)V

    .line 100
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/duapps/ad/offerwall/a$1;->a:Lcom/duapps/ad/offerwall/a;

    invoke-static {v2}, Lcom/duapps/ad/offerwall/a;->e(Lcom/duapps/ad/offerwall/a;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 101
    iget-object v2, p0, Lcom/duapps/ad/offerwall/a$1;->a:Lcom/duapps/ad/offerwall/a;

    invoke-static {v2}, Lcom/duapps/ad/offerwall/a;->f(Lcom/duapps/ad/offerwall/a;)Lcom/duapps/ad/offerwall/ui/c;

    move-result-object v2

    const/4 v3, 0x5

    invoke-interface {v2, v3, v0, v1}, Lcom/duapps/ad/offerwall/ui/c;->a(IJ)V

    goto :goto_0
.end method

.method public a(Lcom/duapps/ad/f;Lcom/duapps/ad/a;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 80
    const-string v0, "OfferWallPresenter2"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "offerwall native ad onError ErrorCode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/duapps/ad/a;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ErrorMessage : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/duapps/ad/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duapps/ad/base/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/duapps/ad/offerwall/a$1;->a:Lcom/duapps/ad/offerwall/a;

    invoke-static {v0, v3}, Lcom/duapps/ad/offerwall/a;->a(Lcom/duapps/ad/offerwall/a;Z)Z

    .line 82
    iget-object v0, p0, Lcom/duapps/ad/offerwall/a$1;->a:Lcom/duapps/ad/offerwall/a;

    invoke-static {v0}, Lcom/duapps/ad/offerwall/a;->a(Lcom/duapps/ad/offerwall/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/duapps/ad/offerwall/a$1;->a:Lcom/duapps/ad/offerwall/a;

    invoke-static {v0}, Lcom/duapps/ad/offerwall/a;->b(Lcom/duapps/ad/offerwall/a;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 84
    iget-object v0, p0, Lcom/duapps/ad/offerwall/a$1;->a:Lcom/duapps/ad/offerwall/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/duapps/ad/offerwall/a;->b(Lcom/duapps/ad/offerwall/a;Z)Z

    .line 85
    iget-object v0, p0, Lcom/duapps/ad/offerwall/a$1;->a:Lcom/duapps/ad/offerwall/a;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/duapps/ad/offerwall/a;->a(Lcom/duapps/ad/offerwall/a;I)V

    .line 87
    :cond_0
    return-void
.end method

.method public b(Lcom/duapps/ad/f;)V
    .locals 2

    .prologue
    .line 107
    const-string v0, "OfferWallPresenter2"

    const-string v1, "offerwall native ad onClick."

    invoke-static {v0, v1}, Lcom/duapps/ad/base/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    return-void
.end method
