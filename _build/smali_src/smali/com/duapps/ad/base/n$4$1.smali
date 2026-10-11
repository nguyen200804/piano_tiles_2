.class Lcom/duapps/ad/base/n$4$1;
.super Lcom/duapps/ad/base/r$b;
.source "ToolCacheManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duapps/ad/base/n$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/duapps/ad/base/n$4;


# direct methods
.method constructor <init>(Lcom/duapps/ad/base/n$4;J)V
    .locals 0

    .prologue
    .line 688
    iput-object p1, p0, Lcom/duapps/ad/base/n$4$1;->b:Lcom/duapps/ad/base/n$4;

    iput-wide p2, p0, Lcom/duapps/ad/base/n$4$1;->a:J

    invoke-direct {p0}, Lcom/duapps/ad/base/r$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/duapps/ad/base/r$a;)V
    .locals 8

    .prologue
    .line 692
    const/16 v0, 0xc8

    if-ne p1, v0, :cond_0

    if-eqz p2, :cond_0

    .line 693
    :try_start_0
    iget-object v0, p2, Lcom/duapps/ad/base/r$a;->a:Lorg/json/JSONObject;

    .line 694
    const-string v1, "datas"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 695
    const-string v1, "ToolboxCacheManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getInmobiNativeAds sType :native, response ->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 696
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 695
    invoke-static {v1, v0}, Lcom/duapps/ad/base/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 698
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 699
    new-instance v1, Lcom/duapps/ad/inmobi/IMDataModel;

    iget-object v0, p0, Lcom/duapps/ad/base/n$4$1;->b:Lcom/duapps/ad/base/n$4;

    iget-object v2, v0, Lcom/duapps/ad/base/n$4;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/duapps/ad/base/n$4$1;->b:Lcom/duapps/ad/base/n$4;

    iget v3, v0, Lcom/duapps/ad/base/n$4;->b:I

    const-string v4, "native"

    invoke-direct/range {v1 .. v7}, Lcom/duapps/ad/inmobi/IMDataModel;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/json/JSONObject;J)V

    .line 702
    iget-object v0, p0, Lcom/duapps/ad/base/n$4$1;->b:Lcom/duapps/ad/base/n$4;

    iget-object v0, v0, Lcom/duapps/ad/base/n$4;->e:Lcom/duapps/ad/base/s;

    invoke-interface {v0, p1, v1}, Lcom/duapps/ad/base/s;->a(ILjava/lang/Object;)V

    .line 705
    :cond_0
    iget-object v0, p0, Lcom/duapps/ad/base/n$4$1;->b:Lcom/duapps/ad/base/n$4;

    iget-object v0, v0, Lcom/duapps/ad/base/n$4;->f:Lcom/duapps/ad/base/n;

    invoke-static {v0}, Lcom/duapps/ad/base/n;->a(Lcom/duapps/ad/base/n;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/duapps/ad/base/n$4$1;->b:Lcom/duapps/ad/base/n$4;

    iget v1, v1, Lcom/duapps/ad/base/n$4;->b:I

    .line 706
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/duapps/ad/base/n$4$1;->a:J

    sub-long/2addr v2, v4

    .line 705
    invoke-static {v0, v1, p1, v2, v3}, Lcom/duapps/ad/stats/c;->c(Landroid/content/Context;IIJ)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 715
    :goto_0
    return-void

    .line 707
    :catch_0
    move-exception v0

    .line 708
    const-string v1, "ToolboxCacheManager"

    const-string v2, "getInmobiNativeAds sType :native,parse JsonException :"

    invoke-static {v1, v2, v0}, Lcom/duapps/ad/base/h;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 710
    iget-object v0, p0, Lcom/duapps/ad/base/n$4$1;->b:Lcom/duapps/ad/base/n$4;

    iget-object v0, v0, Lcom/duapps/ad/base/n$4;->e:Lcom/duapps/ad/base/s;

    const/16 v1, 0x7d0

    sget-object v2, Lcom/duapps/ad/a;->d:Lcom/duapps/ad/a;

    .line 711
    invoke-virtual {v2}, Lcom/duapps/ad/a;->b()Ljava/lang/String;

    move-result-object v2

    .line 710
    invoke-interface {v0, v1, v2}, Lcom/duapps/ad/base/s;->a(ILjava/lang/String;)V

    .line 712
    iget-object v0, p0, Lcom/duapps/ad/base/n$4$1;->b:Lcom/duapps/ad/base/n$4;

    iget-object v0, v0, Lcom/duapps/ad/base/n$4;->f:Lcom/duapps/ad/base/n;

    invoke-static {v0}, Lcom/duapps/ad/base/n;->a(Lcom/duapps/ad/base/n;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/duapps/ad/base/n$4$1;->b:Lcom/duapps/ad/base/n$4;

    iget v1, v1, Lcom/duapps/ad/base/n$4;->b:I

    const/16 v2, -0x65

    .line 713
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/duapps/ad/base/n$4$1;->a:J

    sub-long/2addr v4, v6

    .line 712
    invoke-static {v0, v1, v2, v4, v5}, Lcom/duapps/ad/stats/c;->c(Landroid/content/Context;IIJ)V

    goto :goto_0
.end method

.method public bridge synthetic a(ILjava/lang/Object;)V
    .locals 0

    .prologue
    .line 688
    check-cast p2, Lcom/duapps/ad/base/r$a;

    invoke-virtual {p0, p1, p2}, Lcom/duapps/ad/base/n$4$1;->a(ILcom/duapps/ad/base/r$a;)V

    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 6

    .prologue
    .line 719
    const-string v0, "ToolboxCacheManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getInmobiNativeAds sType :native, parse failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duapps/ad/base/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 721
    iget-object v0, p0, Lcom/duapps/ad/base/n$4$1;->b:Lcom/duapps/ad/base/n$4;

    iget-object v0, v0, Lcom/duapps/ad/base/n$4;->e:Lcom/duapps/ad/base/s;

    const/16 v1, 0x7d1

    sget-object v2, Lcom/duapps/ad/a;->e:Lcom/duapps/ad/a;

    .line 722
    invoke-virtual {v2}, Lcom/duapps/ad/a;->b()Ljava/lang/String;

    move-result-object v2

    .line 721
    invoke-interface {v0, v1, v2}, Lcom/duapps/ad/base/s;->a(ILjava/lang/String;)V

    .line 723
    iget-object v0, p0, Lcom/duapps/ad/base/n$4$1;->b:Lcom/duapps/ad/base/n$4;

    iget-object v0, v0, Lcom/duapps/ad/base/n$4;->f:Lcom/duapps/ad/base/n;

    invoke-static {v0}, Lcom/duapps/ad/base/n;->a(Lcom/duapps/ad/base/n;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/duapps/ad/base/n$4$1;->b:Lcom/duapps/ad/base/n$4;

    iget v1, v1, Lcom/duapps/ad/base/n$4;->b:I

    .line 724
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/duapps/ad/base/n$4$1;->a:J

    sub-long/2addr v2, v4

    .line 723
    invoke-static {v0, v1, p1, v2, v3}, Lcom/duapps/ad/stats/c;->c(Landroid/content/Context;IIJ)V

    .line 725
    return-void
.end method
