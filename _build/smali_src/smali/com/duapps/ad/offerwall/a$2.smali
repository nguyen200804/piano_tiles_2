.class Lcom/duapps/ad/offerwall/a$2;
.super Ljava/lang/Object;
.source "OfferWallPresenter2.java"

# interfaces
.implements Lcom/duapps/ad/offerwall/a/a;


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
    .line 111
    iput-object p1, p0, Lcom/duapps/ad/offerwall/a$2;->a:Lcom/duapps/ad/offerwall/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 115
    const-string v0, "OfferWallPresenter2"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "offerwall adlist onAdsError isNativeError : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/duapps/ad/offerwall/a$2;->a:Lcom/duapps/ad/offerwall/a;

    invoke-static {v2}, Lcom/duapps/ad/offerwall/a;->g(Lcom/duapps/ad/offerwall/a;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isNativeNeedFill : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/duapps/ad/offerwall/a$2;->a:Lcom/duapps/ad/offerwall/a;

    invoke-static {v2}, Lcom/duapps/ad/offerwall/a;->h(Lcom/duapps/ad/offerwall/a;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duapps/ad/base/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/duapps/ad/offerwall/a$2;->a:Lcom/duapps/ad/offerwall/a;

    invoke-static {v0, v3}, Lcom/duapps/ad/offerwall/a;->c(Lcom/duapps/ad/offerwall/a;Z)Z

    .line 117
    iget-object v0, p0, Lcom/duapps/ad/offerwall/a$2;->a:Lcom/duapps/ad/offerwall/a;

    invoke-static {v0}, Lcom/duapps/ad/offerwall/a;->g(Lcom/duapps/ad/offerwall/a;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/duapps/ad/offerwall/a$2;->a:Lcom/duapps/ad/offerwall/a;

    invoke-static {v0}, Lcom/duapps/ad/offerwall/a;->h(Lcom/duapps/ad/offerwall/a;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/duapps/ad/offerwall/a$2;->a:Lcom/duapps/ad/offerwall/a;

    invoke-static {v0}, Lcom/duapps/ad/offerwall/a;->b(Lcom/duapps/ad/offerwall/a;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 119
    iget-object v0, p0, Lcom/duapps/ad/offerwall/a$2;->a:Lcom/duapps/ad/offerwall/a;

    invoke-static {v0, v4}, Lcom/duapps/ad/offerwall/a;->b(Lcom/duapps/ad/offerwall/a;Z)Z

    .line 120
    iget-object v0, p0, Lcom/duapps/ad/offerwall/a$2;->a:Lcom/duapps/ad/offerwall/a;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/duapps/ad/offerwall/a;->a(Lcom/duapps/ad/offerwall/a;I)V

    .line 122
    :cond_1
    iget-object v0, p0, Lcom/duapps/ad/offerwall/a$2;->a:Lcom/duapps/ad/offerwall/a;

    invoke-static {v0}, Lcom/duapps/ad/offerwall/a;->h(Lcom/duapps/ad/offerwall/a;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/duapps/ad/offerwall/a$2;->a:Lcom/duapps/ad/offerwall/a;

    invoke-static {v0}, Lcom/duapps/ad/offerwall/a;->d(Lcom/duapps/ad/offerwall/a;)Lcom/duapps/ad/entity/a/a;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 123
    iget-object v0, p0, Lcom/duapps/ad/offerwall/a$2;->a:Lcom/duapps/ad/offerwall/a;

    invoke-static {v0}, Lcom/duapps/ad/offerwall/a;->b(Lcom/duapps/ad/offerwall/a;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 124
    iget-object v0, p0, Lcom/duapps/ad/offerwall/a$2;->a:Lcom/duapps/ad/offerwall/a;

    invoke-static {v0, v4}, Lcom/duapps/ad/offerwall/a;->b(Lcom/duapps/ad/offerwall/a;Z)Z

    .line 125
    iget-object v0, p0, Lcom/duapps/ad/offerwall/a$2;->a:Lcom/duapps/ad/offerwall/a;

    iget-object v1, p0, Lcom/duapps/ad/offerwall/a$2;->a:Lcom/duapps/ad/offerwall/a;

    invoke-static {v1}, Lcom/duapps/ad/offerwall/a;->d(Lcom/duapps/ad/offerwall/a;)Lcom/duapps/ad/entity/a/a;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duapps/ad/offerwall/a;->b(Lcom/duapps/ad/offerwall/a;Lcom/duapps/ad/entity/a/a;)V

    .line 127
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/duapps/ad/offerwall/a$2;->a:Lcom/duapps/ad/offerwall/a;

    invoke-static {v2}, Lcom/duapps/ad/offerwall/a;->e(Lcom/duapps/ad/offerwall/a;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 128
    iget-object v2, p0, Lcom/duapps/ad/offerwall/a$2;->a:Lcom/duapps/ad/offerwall/a;

    invoke-static {v2}, Lcom/duapps/ad/offerwall/a;->f(Lcom/duapps/ad/offerwall/a;)Lcom/duapps/ad/offerwall/ui/c;

    move-result-object v2

    const/4 v3, 0x6

    invoke-interface {v2, v3, v0, v1}, Lcom/duapps/ad/offerwall/ui/c;->a(IJ)V

    .line 130
    :cond_2
    return-void
.end method

.method public b()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 134
    const-string v0, "OfferWallPresenter2"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "offerwall adlist onAdsArrival mDLAdsManager.getValidCount() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/duapps/ad/offerwall/a$2;->a:Lcom/duapps/ad/offerwall/a;

    invoke-static {v2}, Lcom/duapps/ad/offerwall/a;->i(Lcom/duapps/ad/offerwall/a;)Lcom/duapps/ad/offerwall/a/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/duapps/ad/offerwall/a/b;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duapps/ad/base/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Lcom/duapps/ad/offerwall/a$2;->a:Lcom/duapps/ad/offerwall/a;

    invoke-static {v0}, Lcom/duapps/ad/offerwall/a;->b(Lcom/duapps/ad/offerwall/a;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 136
    iget-object v0, p0, Lcom/duapps/ad/offerwall/a$2;->a:Lcom/duapps/ad/offerwall/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/duapps/ad/offerwall/a;->b(Lcom/duapps/ad/offerwall/a;Z)Z

    .line 138
    iget-object v0, p0, Lcom/duapps/ad/offerwall/a$2;->a:Lcom/duapps/ad/offerwall/a;

    invoke-static {v0}, Lcom/duapps/ad/offerwall/a;->i(Lcom/duapps/ad/offerwall/a;)Lcom/duapps/ad/offerwall/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duapps/ad/offerwall/a/b;->a()I

    move-result v0

    if-lez v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/duapps/ad/offerwall/a$2;->a:Lcom/duapps/ad/offerwall/a;

    invoke-static {v0, v3}, Lcom/duapps/ad/offerwall/a;->d(Lcom/duapps/ad/offerwall/a;Z)Z

    .line 140
    iget-object v0, p0, Lcom/duapps/ad/offerwall/a$2;->a:Lcom/duapps/ad/offerwall/a;

    invoke-static {v0}, Lcom/duapps/ad/offerwall/a;->i(Lcom/duapps/ad/offerwall/a;)Lcom/duapps/ad/offerwall/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duapps/ad/offerwall/a/b;->c()Ljava/util/List;

    move-result-object v0

    .line 141
    iget-object v1, p0, Lcom/duapps/ad/offerwall/a$2;->a:Lcom/duapps/ad/offerwall/a;

    invoke-static {v1, v0}, Lcom/duapps/ad/offerwall/a;->a(Lcom/duapps/ad/offerwall/a;Ljava/util/List;)V

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/duapps/ad/offerwall/a$2;->a:Lcom/duapps/ad/offerwall/a;

    iget-object v1, p0, Lcom/duapps/ad/offerwall/a$2;->a:Lcom/duapps/ad/offerwall/a;

    invoke-static {v1}, Lcom/duapps/ad/offerwall/a;->d(Lcom/duapps/ad/offerwall/a;)Lcom/duapps/ad/entity/a/a;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duapps/ad/offerwall/a;->b(Lcom/duapps/ad/offerwall/a;Lcom/duapps/ad/entity/a/a;)V

    .line 144
    iget-object v0, p0, Lcom/duapps/ad/offerwall/a$2;->a:Lcom/duapps/ad/offerwall/a;

    invoke-static {v0}, Lcom/duapps/ad/offerwall/a;->j(Lcom/duapps/ad/offerwall/a;)V

    .line 145
    return-void
.end method
