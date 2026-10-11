.class Lcom/cmplay/ad/h/a$1;
.super Ljava/lang/Object;
.source "ApplovinVideoADS.java"

# interfaces
.implements Lcom/applovin/sdk/AppLovinAdLoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmplay/ad/h/a;->onCreate(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cmplay/ad/h/a;


# direct methods
.method constructor <init>(Lcom/cmplay/ad/h/a;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/cmplay/ad/h/a$1;->a:Lcom/cmplay/ad/h/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public adReceived(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 6
    .param p1, "appLovinAd"    # Lcom/applovin/sdk/AppLovinAd;

    .prologue
    .line 60
    const-string v0, "ApplovinVideoADS"

    const-string v1, "----applovin video  ok"

    invoke-static {v0, v1}, Lcom/cmplay/util/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    new-instance v0, Lcom/cmplay/util/c/a/e;

    invoke-direct {v0}, Lcom/cmplay/util/c/a/e;-><init>()V

    const/4 v1, 0x2

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/cmplay/ad/h/a$1;->a:Lcom/cmplay/ad/h/a;

    invoke-static {v3}, Lcom/cmplay/ad/h/a;->a(Lcom/cmplay/ad/h/a;)I

    move-result v3

    const/4 v4, 0x4

    sget v5, Lcom/cmplay/ad/a;->f:I

    invoke-virtual/range {v0 .. v5}, Lcom/cmplay/util/c/a/e;->a(IIIII)V

    .line 62
    return-void
.end method

.method public failedToReceiveAd(I)V
    .locals 6
    .param p1, "i"    # I

    .prologue
    .line 66
    const-string v0, "ApplovinVideoADS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "----applovin video  failed---"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmplay/util/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    new-instance v0, Lcom/cmplay/util/c/a/e;

    invoke-direct {v0}, Lcom/cmplay/util/c/a/e;-><init>()V

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/cmplay/ad/h/a$1;->a:Lcom/cmplay/ad/h/a;

    invoke-static {v2}, Lcom/cmplay/ad/h/a;->a(Lcom/cmplay/ad/h/a;)I

    move-result v3

    const/4 v4, 0x4

    sget v5, Lcom/cmplay/ad/a;->f:I

    move v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/cmplay/util/c/a/e;->a(IIIII)V

    .line 68
    return-void
.end method
