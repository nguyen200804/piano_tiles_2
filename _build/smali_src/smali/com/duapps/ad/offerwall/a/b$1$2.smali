.class Lcom/duapps/ad/offerwall/a/b$1$2;
.super Ljava/lang/Object;
.source "DownloadAdsManager2.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duapps/ad/offerwall/a/b$1;->a(ILcom/duapps/ad/entity/AdModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/duapps/ad/offerwall/a/b$1;


# direct methods
.method constructor <init>(Lcom/duapps/ad/offerwall/a/b$1;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcom/duapps/ad/offerwall/a/b$1$2;->a:Lcom/duapps/ad/offerwall/a/b$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 107
    iget-object v0, p0, Lcom/duapps/ad/offerwall/a/b$1$2;->a:Lcom/duapps/ad/offerwall/a/b$1;

    iget-object v0, v0, Lcom/duapps/ad/offerwall/a/b$1;->a:Lcom/duapps/ad/offerwall/a/b;

    invoke-static {v0}, Lcom/duapps/ad/offerwall/a/b;->d(Lcom/duapps/ad/offerwall/a/b;)Lcom/duapps/ad/offerwall/a/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 108
    const-string v0, "DownloadAdsManager2"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Download ads poll data... , size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/duapps/ad/offerwall/a/b$1$2;->a:Lcom/duapps/ad/offerwall/a/b$1;

    iget-object v2, v2, Lcom/duapps/ad/offerwall/a/b$1;->a:Lcom/duapps/ad/offerwall/a/b;

    invoke-virtual {v2}, Lcom/duapps/ad/offerwall/a/b;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duapps/ad/base/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/duapps/ad/offerwall/a/b$1$2;->a:Lcom/duapps/ad/offerwall/a/b$1;

    iget-object v0, v0, Lcom/duapps/ad/offerwall/a/b$1;->a:Lcom/duapps/ad/offerwall/a/b;

    invoke-static {v0}, Lcom/duapps/ad/offerwall/a/b;->d(Lcom/duapps/ad/offerwall/a/b;)Lcom/duapps/ad/offerwall/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/duapps/ad/offerwall/a/a;->b()V

    .line 111
    :cond_0
    return-void
.end method
