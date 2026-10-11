.class Lcom/duapps/ad/c/a/d$a$1;
.super Lcom/duapps/ad/base/r$b;
.source "StrategyPuller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duapps/ad/c/a/d$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/duapps/ad/c/a/d$a;


# direct methods
.method constructor <init>(Lcom/duapps/ad/c/a/d$a;J)V
    .locals 0

    .prologue
    .line 274
    iput-object p1, p0, Lcom/duapps/ad/c/a/d$a$1;->b:Lcom/duapps/ad/c/a/d$a;

    iput-wide p2, p0, Lcom/duapps/ad/c/a/d$a$1;->a:J

    invoke-direct {p0}, Lcom/duapps/ad/base/r$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/duapps/ad/base/r$a;)V
    .locals 6

    .prologue
    .line 278
    iget-object v0, p0, Lcom/duapps/ad/c/a/d$a$1;->b:Lcom/duapps/ad/c/a/d$a;

    invoke-static {v0}, Lcom/duapps/ad/c/a/d$a;->a(Lcom/duapps/ad/c/a/d$a;)Landroid/content/Context;

    move-result-object v0

    iget-wide v2, p2, Lcom/duapps/ad/base/r$a;->c:J

    invoke-static {v0, v2, v3}, Lcom/duapps/ad/base/m;->a(Landroid/content/Context;J)V

    .line 280
    iget-object v0, p2, Lcom/duapps/ad/base/r$a;->a:Lorg/json/JSONObject;

    .line 281
    if-nez v0, :cond_0

    .line 282
    invoke-static {}, Lcom/duapps/ad/c/a/d;->c()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSrc code :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,\n responseJson is null!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duapps/ad/base/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    :goto_0
    return-void

    .line 285
    :cond_0
    invoke-static {}, Lcom/duapps/ad/c/a/d;->c()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSrc code :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,\n response: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 286
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 285
    invoke-static {v1, v2}, Lcom/duapps/ad/base/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    const/16 v1, 0xc8

    if-ne v1, p1, :cond_2

    if-eqz v0, :cond_2

    .line 289
    :try_start_0
    iget-object v1, p0, Lcom/duapps/ad/c/a/d$a$1;->b:Lcom/duapps/ad/c/a/d$a;

    invoke-static {v1, v0}, Lcom/duapps/ad/c/a/d$a;->a(Lcom/duapps/ad/c/a/d$a;Lorg/json/JSONObject;)V

    .line 293
    :cond_1
    iget-object v0, p0, Lcom/duapps/ad/c/a/d$a$1;->b:Lcom/duapps/ad/c/a/d$a;

    invoke-static {v0}, Lcom/duapps/ad/c/a/d$a;->a(Lcom/duapps/ad/c/a/d$a;)Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/duapps/ad/c/a/d$a$1;->a:J

    sub-long/2addr v2, v4

    invoke-static {v0, p1, v2, v3}, Lcom/duapps/ad/stats/c;->a(Landroid/content/Context;IJ)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 294
    :catch_0
    move-exception v0

    .line 295
    iget-object v0, p0, Lcom/duapps/ad/c/a/d$a$1;->b:Lcom/duapps/ad/c/a/d$a;

    invoke-static {v0}, Lcom/duapps/ad/c/a/d$a;->a(Lcom/duapps/ad/c/a/d$a;)Landroid/content/Context;

    move-result-object v0

    const/16 v1, -0x65

    .line 297
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/duapps/ad/c/a/d$a$1;->a:J

    sub-long/2addr v2, v4

    .line 295
    invoke-static {v0, v1, v2, v3}, Lcom/duapps/ad/stats/c;->a(Landroid/content/Context;IJ)V

    goto :goto_0

    .line 290
    :cond_2
    const/16 v0, 0x130

    if-ne v0, p1, :cond_1

    goto :goto_0
.end method

.method public bridge synthetic a(ILjava/lang/Object;)V
    .locals 0

    .prologue
    .line 274
    check-cast p2, Lcom/duapps/ad/base/r$a;

    invoke-virtual {p0, p1, p2}, Lcom/duapps/ad/c/a/d$a$1;->a(ILcom/duapps/ad/base/r$a;)V

    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 6

    .prologue
    .line 304
    iget-object v0, p0, Lcom/duapps/ad/c/a/d$a$1;->b:Lcom/duapps/ad/c/a/d$a;

    invoke-static {v0}, Lcom/duapps/ad/c/a/d$a;->a(Lcom/duapps/ad/c/a/d$a;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/duapps/ad/base/m;->d(Landroid/content/Context;)V

    .line 305
    iget-object v0, p0, Lcom/duapps/ad/c/a/d$a$1;->b:Lcom/duapps/ad/c/a/d$a;

    invoke-static {v0}, Lcom/duapps/ad/c/a/d$a;->a(Lcom/duapps/ad/c/a/d$a;)Landroid/content/Context;

    move-result-object v0

    .line 306
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/duapps/ad/c/a/d$a$1;->a:J

    sub-long/2addr v2, v4

    .line 305
    invoke-static {v0, p1, v2, v3}, Lcom/duapps/ad/stats/c;->a(Landroid/content/Context;IJ)V

    .line 307
    return-void
.end method
