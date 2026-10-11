.class Lcom/duapps/ad/a/a$1;
.super Ljava/lang/Object;
.source "AdmobCacheManager.java"

# interfaces
.implements Lcom/duapps/ad/a/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duapps/ad/a/a;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/duapps/ad/a/a;


# direct methods
.method constructor <init>(Lcom/duapps/ad/a/a;I)V
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Lcom/duapps/ad/a/a$1;->b:Lcom/duapps/ad/a/a;

    iput p2, p0, Lcom/duapps/ad/a/a$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 167
    iget-object v0, p0, Lcom/duapps/ad/a/a$1;->b:Lcom/duapps/ad/a/a;

    invoke-static {v0}, Lcom/duapps/ad/a/a;->a(Lcom/duapps/ad/a/a;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/duapps/ad/a/a$1;->b:Lcom/duapps/ad/a/a;

    invoke-static {v1}, Lcom/duapps/ad/a/a;->b(Lcom/duapps/ad/a/a;)I

    move-result v1

    iget-object v2, p0, Lcom/duapps/ad/a/a$1;->b:Lcom/duapps/ad/a/a;

    iget-object v2, v2, Lcom/duapps/ad/a/a;->k:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/duapps/ad/stats/h;->b(Landroid/content/Context;ILjava/lang/String;)V

    .line 168
    iget-object v0, p0, Lcom/duapps/ad/a/a$1;->b:Lcom/duapps/ad/a/a;

    invoke-static {v0}, Lcom/duapps/ad/a/a;->c(Lcom/duapps/ad/a/a;)Lcom/duapps/ad/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/duapps/ad/a/a$1;->b:Lcom/duapps/ad/a/a;

    invoke-static {v0}, Lcom/duapps/ad/a/a;->d(Lcom/duapps/ad/a/a;)Lcom/duapps/ad/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/duapps/ad/b;->a()V

    .line 171
    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 3

    .prologue
    .line 186
    iget-object v0, p0, Lcom/duapps/ad/a/a$1;->b:Lcom/duapps/ad/a/a;

    iget v1, p0, Lcom/duapps/ad/a/a$1;->a:I

    invoke-static {v0, v1, p1}, Lcom/duapps/ad/a/a;->a(Lcom/duapps/ad/a/a;II)V

    .line 187
    invoke-static {}, Lcom/duapps/ad/a/a;->e()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "load Admob ad fail errorCode=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duapps/ad/base/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    iget-object v0, p0, Lcom/duapps/ad/a/a$1;->b:Lcom/duapps/ad/a/a;

    iget-boolean v0, v0, Lcom/duapps/ad/a/a;->l:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/duapps/ad/a/a$1;->b:Lcom/duapps/ad/a/a;

    invoke-static {v0}, Lcom/duapps/ad/a/a;->e(Lcom/duapps/ad/a/a;)Lcom/duapps/ad/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/duapps/ad/a/a$1;->b:Lcom/duapps/ad/a/a;

    invoke-static {v0}, Lcom/duapps/ad/a/a;->f(Lcom/duapps/ad/a/a;)Lcom/duapps/ad/b;

    move-result-object v0

    new-instance v1, Lcom/duapps/ad/a;

    const-string v2, "No details msg from Admob"

    invoke-direct {v1, p1, v2}, Lcom/duapps/ad/a;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/duapps/ad/b;->a(Lcom/duapps/ad/a;)V

    .line 191
    :cond_0
    return-void
.end method

.method public b()V
    .locals 3

    .prologue
    .line 175
    iget-object v0, p0, Lcom/duapps/ad/a/a$1;->b:Lcom/duapps/ad/a/a;

    iget v1, p0, Lcom/duapps/ad/a/a$1;->a:I

    const/16 v2, 0xc8

    invoke-static {v0, v1, v2}, Lcom/duapps/ad/a/a;->a(Lcom/duapps/ad/a/a;II)V

    .line 176
    invoke-static {}, Lcom/duapps/ad/a/a;->e()Ljava/lang/String;

    move-result-object v0

    const-string v1, "load Admob ad success"

    invoke-static {v0, v1}, Lcom/duapps/ad/base/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    return-void
.end method

.method public c()V
    .locals 0

    .prologue
    .line 182
    return-void
.end method

.method public d()V
    .locals 0

    .prologue
    .line 196
    return-void
.end method
