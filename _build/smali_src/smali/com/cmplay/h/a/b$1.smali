.class Lcom/cmplay/h/a/b$1;
.super Ljava/lang/Object;
.source "FaceBookPlatform.java"

# interfaces
.implements Lcom/facebook/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmplay/h/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/g",
        "<",
        "Lcom/facebook/login/f;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/cmplay/h/a/b;


# virtual methods
.method public a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 501
    iget-object v0, p0, Lcom/cmplay/h/a/b$1;->a:Lcom/cmplay/h/a/b;

    invoke-static {v0}, Lcom/cmplay/h/a/b;->i(Lcom/cmplay/h/a/b;)Lcom/cmplay/h/a/b$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 502
    iget-object v0, p0, Lcom/cmplay/h/a/b$1;->a:Lcom/cmplay/h/a/b;

    invoke-static {v0}, Lcom/cmplay/h/a/b;->i(Lcom/cmplay/h/a/b;)Lcom/cmplay/h/a/b$b;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1, v2, v2}, Lcom/cmplay/h/a/b$b;->a(ZLjava/lang/String;Ljava/lang/String;)V

    .line 504
    :cond_0
    return-void
.end method

.method public a(Lcom/facebook/i;)V
    .locals 2

    .prologue
    .line 513
    iget-object v0, p0, Lcom/cmplay/h/a/b$1;->a:Lcom/cmplay/h/a/b;

    invoke-static {v0}, Lcom/cmplay/h/a/b;->i(Lcom/cmplay/h/a/b;)Lcom/cmplay/h/a/b$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 514
    iget-object v0, p0, Lcom/cmplay/h/a/b$1;->a:Lcom/cmplay/h/a/b;

    invoke-static {v0}, Lcom/cmplay/h/a/b;->i(Lcom/cmplay/h/a/b;)Lcom/cmplay/h/a/b$b;

    move-result-object v0

    invoke-virtual {p1}, Lcom/facebook/i;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/cmplay/h/a/b$b;->a(Ljava/lang/String;)V

    .line 516
    :cond_0
    return-void
.end method

.method public a(Lcom/facebook/login/f;)V
    .locals 3

    .prologue
    .line 472
    invoke-static {}, Lcom/facebook/AccessToken;->a()Lcom/facebook/AccessToken;

    move-result-object v0

    .line 476
    if-eqz v0, :cond_0

    .line 477
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://graph.facebook-com/me/picture?access_token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/facebook/AccessToken;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&type=large"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 478
    new-instance v2, Lcom/cmplay/h/a/b$1$1;

    invoke-direct {v2, p0, v1}, Lcom/cmplay/h/a/b$1$1;-><init>(Lcom/cmplay/h/a/b$1;Ljava/lang/String;)V

    invoke-static {v0, v2}, Lcom/facebook/GraphRequest;->a(Lcom/facebook/AccessToken;Lcom/facebook/GraphRequest$c;)Lcom/facebook/GraphRequest;

    move-result-object v0

    .line 491
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/facebook/GraphRequest;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {v1}, Lcom/facebook/GraphRequest;->b([Lcom/facebook/GraphRequest;)Lcom/facebook/o;

    .line 493
    :cond_0
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 468
    check-cast p1, Lcom/facebook/login/f;

    invoke-virtual {p0, p1}, Lcom/cmplay/h/a/b$1;->a(Lcom/facebook/login/f;)V

    return-void
.end method
