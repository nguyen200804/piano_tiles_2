.class Lcom/ijinshan/cloudconfig/a$b;
.super Ljava/lang/Object;
.source "CloudHelper.java"

# interfaces
.implements Lcom/ijinshan/cloudconfig/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ijinshan/cloudconfig/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 261
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 262
    iput-object p1, p0, Lcom/ijinshan/cloudconfig/a$b;->a:Landroid/content/Context;

    .line 263
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 267
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/ijinshan/cloudconfig/a$b;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/ijinshan/cloudconfig/d/d;->j(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 305
    sget-object v0, Lcom/ijinshan/cloudconfig/a;->a:Lcom/ijinshan/cloudconfig/a$a;

    if-eqz v0, :cond_0

    .line 306
    sget-object v0, Lcom/ijinshan/cloudconfig/a;->a:Lcom/ijinshan/cloudconfig/a$a;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/ijinshan/cloudconfig/a$a;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 308
    :cond_0
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 272
    sget-object v0, Lcom/ijinshan/cloudconfig/a;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 273
    sget-object v0, Lcom/ijinshan/cloudconfig/a;->b:Ljava/lang/String;

    .line 275
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ijinshan/cloudconfig/a$b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/ijinshan/cloudconfig/d/d;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 280
    invoke-static {}, Lcom/ijinshan/cloudconfig/a;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 285
    invoke-static {}, Lcom/ijinshan/cloudconfig/a;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 290
    const/4 v0, 0x0

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 295
    const/4 v0, 0x0

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 300
    const/4 v0, 0x0

    return-object v0
.end method
