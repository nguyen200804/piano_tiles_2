.class final Lcom/mopub/nativesdk/core/v;
.super Ljava/lang/Object;
.source "BTManager.java"

# interfaces
.implements Lcom/mopub/nativesdk/b/f;


# instance fields
.field private synthetic a:Lcom/mopub/nativesdk/Campaign;

.field private synthetic b:Lcom/mopub/nativesdk/core/j;


# direct methods
.method constructor <init>(Lcom/mopub/nativesdk/core/j;Lcom/mopub/nativesdk/Campaign;)V
    .locals 0

    .prologue
    .line 312
    iput-object p1, p0, Lcom/mopub/nativesdk/core/v;->b:Lcom/mopub/nativesdk/core/j;

    iput-object p2, p0, Lcom/mopub/nativesdk/core/v;->a:Lcom/mopub/nativesdk/Campaign;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/mopub/nativesdk/b/e;)V
    .locals 6

    .prologue
    .line 317
    if-eqz p1, :cond_2

    .line 319
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BTManager 7  bt result: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/mopub/nativesdk/b/e;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/mopub/nativesdk/b/e;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "   "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/mopub/nativesdk/b/e;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BTManager 7  bt camp: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mopub/nativesdk/core/v;->a:Lcom/mopub/nativesdk/Campaign;

    invoke-virtual {v1}, Lcom/mopub/nativesdk/Campaign;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/nativesdk/core/v;->a:Lcom/mopub/nativesdk/Campaign;

    invoke-virtual {v1}, Lcom/mopub/nativesdk/Campaign;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    invoke-virtual {p1}, Lcom/mopub/nativesdk/b/e;->d()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 324
    invoke-virtual {p1}, Lcom/mopub/nativesdk/b/e;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mopub/nativesdk/d/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 325
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "BTManager 7  referStr: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    if-eqz v0, :cond_0

    .line 327
    iget-object v1, p0, Lcom/mopub/nativesdk/core/v;->b:Lcom/mopub/nativesdk/core/j;

    invoke-static {v1}, Lcom/mopub/nativesdk/core/j;->b(Lcom/mopub/nativesdk/core/j;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mopub/nativesdk/a/d;->a(Landroid/content/Context;)Lcom/mopub/nativesdk/a/d;

    move-result-object v1

    invoke-static {v1}, Lcom/mopub/nativesdk/a/b;->a(Lcom/mopub/nativesdk/a/d;)Lcom/mopub/nativesdk/a/b;

    move-result-object v1

    .line 328
    new-instance v2, Lcom/mopub/nativesdk/core/x;

    invoke-direct {v2}, Lcom/mopub/nativesdk/core/x;-><init>()V

    .line 329
    iget-object v3, p0, Lcom/mopub/nativesdk/core/v;->a:Lcom/mopub/nativesdk/Campaign;

    invoke-virtual {v3}, Lcom/mopub/nativesdk/Campaign;->getId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/mopub/nativesdk/core/x;->b(J)V

    .line 330
    iget-object v3, p0, Lcom/mopub/nativesdk/core/v;->a:Lcom/mopub/nativesdk/Campaign;

    invoke-virtual {v3}, Lcom/mopub/nativesdk/Campaign;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mopub/nativesdk/core/x;->a(Ljava/lang/String;)V

    .line 331
    invoke-virtual {v2, v0}, Lcom/mopub/nativesdk/core/x;->b(Ljava/lang/String;)V

    .line 332
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/mopub/nativesdk/core/x;->a(J)V

    .line 333
    invoke-virtual {v1, v2}, Lcom/mopub/nativesdk/a/b;->a(Lcom/mopub/nativesdk/core/x;)Ljava/lang/String;

    .line 338
    :cond_0
    iget-object v0, p0, Lcom/mopub/nativesdk/core/v;->b:Lcom/mopub/nativesdk/core/j;

    iget-object v0, v0, Lcom/mopub/nativesdk/core/j;->b:Ljava/util/List;

    if-nez v0, :cond_1

    .line 339
    iget-object v0, p0, Lcom/mopub/nativesdk/core/v;->b:Lcom/mopub/nativesdk/core/j;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/mopub/nativesdk/core/j;->b:Ljava/util/List;

    .line 341
    :cond_1
    iget-object v0, p0, Lcom/mopub/nativesdk/core/v;->b:Lcom/mopub/nativesdk/core/j;

    iget-object v0, v0, Lcom/mopub/nativesdk/core/j;->b:Ljava/util/List;

    iget-object v1, p0, Lcom/mopub/nativesdk/core/v;->a:Lcom/mopub/nativesdk/Campaign;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 343
    :cond_2
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 348
    return-void
.end method
