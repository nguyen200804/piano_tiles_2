.class Lcom/duapps/ad/offerwall/a/b$1$1;
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
    .line 86
    iput-object p1, p0, Lcom/duapps/ad/offerwall/a/b$1$1;->a:Lcom/duapps/ad/offerwall/a/b$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/duapps/ad/offerwall/a/b$1$1;->a:Lcom/duapps/ad/offerwall/a/b$1;

    iget-object v0, v0, Lcom/duapps/ad/offerwall/a/b$1;->a:Lcom/duapps/ad/offerwall/a/b;

    invoke-static {v0}, Lcom/duapps/ad/offerwall/a/b;->d(Lcom/duapps/ad/offerwall/a/b;)Lcom/duapps/ad/offerwall/a/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/duapps/ad/offerwall/a/b$1$1;->a:Lcom/duapps/ad/offerwall/a/b$1;

    iget-object v0, v0, Lcom/duapps/ad/offerwall/a/b$1;->a:Lcom/duapps/ad/offerwall/a/b;

    invoke-static {v0}, Lcom/duapps/ad/offerwall/a/b;->d(Lcom/duapps/ad/offerwall/a/b;)Lcom/duapps/ad/offerwall/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/duapps/ad/offerwall/a/a;->a()V

    .line 92
    :cond_0
    return-void
.end method
