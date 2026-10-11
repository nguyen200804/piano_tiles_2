.class final Lcom/mnt/impl/a/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mnt/impl/f/a;


# instance fields
.field private synthetic a:Lcom/mnt/impl/a/h;


# direct methods
.method constructor <init>(Lcom/mnt/impl/a/h;)V
    .locals 0

    .prologue
    .line 256
    iput-object p1, p0, Lcom/mnt/impl/a/j;->a:Lcom/mnt/impl/a/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 275
    iget-object v0, p0, Lcom/mnt/impl/a/j;->a:Lcom/mnt/impl/a/h;

    iget v1, v0, Lcom/mnt/impl/a/h;->o:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/mnt/impl/a/h;->o:I

    .line 276
    iget-object v0, p0, Lcom/mnt/impl/a/j;->a:Lcom/mnt/impl/a/h;

    iget v1, v0, Lcom/mnt/impl/a/h;->p:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/mnt/impl/a/h;->p:I

    .line 277
    iget-object v0, p0, Lcom/mnt/impl/a/j;->a:Lcom/mnt/impl/a/h;

    invoke-static {v0}, Lcom/mnt/impl/a/h;->c(Lcom/mnt/impl/a/h;)Lcom/mnt/IAdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/mnt/impl/a/j;->a:Lcom/mnt/impl/a/h;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mnt/impl/a/h;->a(Lcom/mnt/impl/a/h;Z)Z

    .line 279
    iget-object v0, p0, Lcom/mnt/impl/a/j;->a:Lcom/mnt/impl/a/h;

    iget v0, v0, Lcom/mnt/impl/a/h;->o:I

    iget-object v1, p0, Lcom/mnt/impl/a/j;->a:Lcom/mnt/impl/a/h;

    invoke-static {v1}, Lcom/mnt/impl/a/h;->e(Lcom/mnt/impl/a/h;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 280
    iget-object v0, p0, Lcom/mnt/impl/a/j;->a:Lcom/mnt/impl/a/h;

    invoke-static {v0}, Lcom/mnt/impl/a/h;->c(Lcom/mnt/impl/a/h;)Lcom/mnt/IAdListener;

    move-result-object v0

    sget-object v1, Lcom/mnt/AdError;->NO_OFFERS:Lcom/mnt/AdError;

    invoke-interface {v0, v1}, Lcom/mnt/IAdListener;->onAdError(Lcom/mnt/AdError;)V

    .line 283
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 260
    iget-object v0, p0, Lcom/mnt/impl/a/j;->a:Lcom/mnt/impl/a/h;

    iget v1, v0, Lcom/mnt/impl/a/h;->o:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/mnt/impl/a/h;->o:I

    .line 261
    iget-object v0, p0, Lcom/mnt/impl/a/j;->a:Lcom/mnt/impl/a/h;

    iget v0, v0, Lcom/mnt/impl/a/h;->o:I

    iget-object v1, p0, Lcom/mnt/impl/a/j;->a:Lcom/mnt/impl/a/h;

    invoke-static {v1}, Lcom/mnt/impl/a/h;->e(Lcom/mnt/impl/a/h;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 262
    iget-object v0, p0, Lcom/mnt/impl/a/j;->a:Lcom/mnt/impl/a/h;

    iget v0, v0, Lcom/mnt/impl/a/h;->p:I

    if-nez v0, :cond_1

    .line 263
    iget-object v0, p0, Lcom/mnt/impl/a/j;->a:Lcom/mnt/impl/a/h;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/mnt/impl/a/h;->a(Lcom/mnt/impl/a/h;Z)Z

    .line 264
    iget-object v0, p0, Lcom/mnt/impl/a/j;->a:Lcom/mnt/impl/a/h;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/mnt/impl/a/h;->a(Lcom/mnt/impl/a/h;I)I

    .line 265
    iget-object v0, p0, Lcom/mnt/impl/a/j;->a:Lcom/mnt/impl/a/h;

    invoke-static {v0}, Lcom/mnt/impl/a/h;->c(Lcom/mnt/impl/a/h;)Lcom/mnt/IAdListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/mnt/IAdListener;->onAdLoadFinish(Ljava/lang/Object;)V

    .line 271
    :cond_0
    :goto_0
    return-void

    .line 266
    :cond_1
    iget-object v0, p0, Lcom/mnt/impl/a/j;->a:Lcom/mnt/impl/a/h;

    iget v0, v0, Lcom/mnt/impl/a/h;->p:I

    if-lez v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/mnt/impl/a/j;->a:Lcom/mnt/impl/a/h;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mnt/impl/a/h;->a(Lcom/mnt/impl/a/h;Z)Z

    .line 268
    iget-object v0, p0, Lcom/mnt/impl/a/j;->a:Lcom/mnt/impl/a/h;

    invoke-static {v0}, Lcom/mnt/impl/a/h;->c(Lcom/mnt/impl/a/h;)Lcom/mnt/IAdListener;

    move-result-object v0

    sget-object v1, Lcom/mnt/AdError;->NO_OFFERS:Lcom/mnt/AdError;

    invoke-interface {v0, v1}, Lcom/mnt/IAdListener;->onAdError(Lcom/mnt/AdError;)V

    goto :goto_0
.end method
