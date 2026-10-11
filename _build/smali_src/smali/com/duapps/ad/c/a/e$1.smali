.class Lcom/duapps/ad/c/a/e$1;
.super Ljava/lang/Object;
.source "TimerPuller.java"

# interfaces
.implements Lcom/duapps/ad/base/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duapps/ad/c/a/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/duapps/ad/base/s",
        "<",
        "Lcom/duapps/ad/entity/AdModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/duapps/ad/c/a/e;


# direct methods
.method constructor <init>(Lcom/duapps/ad/c/a/e;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lcom/duapps/ad/c/a/e$1;->a:Lcom/duapps/ad/c/a/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 113
    return-void
.end method

.method public a(ILcom/duapps/ad/entity/AdModel;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 117
    if-eqz p2, :cond_1

    .line 118
    iget-object v2, p2, Lcom/duapps/ad/entity/AdModel;->h:Ljava/util/List;

    .line 119
    if-eqz v2, :cond_1

    .line 120
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 121
    if-lez v3, :cond_1

    .line 122
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    .line 123
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duapps/ad/entity/AdData;

    .line 124
    iget-object v4, v0, Lcom/duapps/ad/entity/AdData;->d:Ljava/lang/String;

    .line 125
    if-eqz v4, :cond_0

    iget-object v5, p0, Lcom/duapps/ad/c/a/e$1;->a:Lcom/duapps/ad/c/a/e;

    invoke-static {v5}, Lcom/duapps/ad/c/a/e;->a(Lcom/duapps/ad/c/a/e;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget v4, v0, Lcom/duapps/ad/entity/AdData;->H:I

    if-ne v4, v6, :cond_0

    .line 126
    new-instance v4, Lcom/duapps/ad/stats/f;

    invoke-direct {v4, v0}, Lcom/duapps/ad/stats/f;-><init>(Lcom/duapps/ad/entity/AdData;)V

    .line 127
    invoke-virtual {v4, v6}, Lcom/duapps/ad/stats/f;->a(Z)V

    .line 128
    iget-object v5, p0, Lcom/duapps/ad/c/a/e$1;->a:Lcom/duapps/ad/c/a/e;

    invoke-static {v5}, Lcom/duapps/ad/c/a/e;->b(Lcom/duapps/ad/c/a/e;)Lcom/duapps/ad/stats/d;

    move-result-object v5

    iget-object v0, v0, Lcom/duapps/ad/entity/AdData;->i:Ljava/lang/String;

    invoke-virtual {v5, v4, v0}, Lcom/duapps/ad/stats/d;->e(Lcom/duapps/ad/stats/f;Ljava/lang/String;)V

    .line 122
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 134
    :cond_1
    return-void
.end method

.method public bridge synthetic a(ILjava/lang/Object;)V
    .locals 0

    .prologue
    .line 110
    check-cast p2, Lcom/duapps/ad/entity/AdModel;

    invoke-virtual {p0, p1, p2}, Lcom/duapps/ad/c/a/e$1;->a(ILcom/duapps/ad/entity/AdModel;)V

    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 138
    return-void
.end method
