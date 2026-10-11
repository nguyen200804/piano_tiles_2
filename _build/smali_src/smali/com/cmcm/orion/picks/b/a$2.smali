.class Lcom/cmcm/orion/picks/b/a$2;
.super Ljava/lang/Object;
.source "BrandVideoCardAd.java"

# interfaces
.implements Lcom/cmcm/orion/picks/impl/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmcm/orion/picks/b/a;->q()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cmcm/orion/picks/b/a;


# direct methods
.method constructor <init>(Lcom/cmcm/orion/picks/b/a;)V
    .locals 0

    .prologue
    .line 368
    iput-object p1, p0, Lcom/cmcm/orion/picks/b/a$2;->a:Lcom/cmcm/orion/picks/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/cmcm/orion/picks/a/b;)V
    .locals 8

    .prologue
    .line 371
    invoke-static {}, Lcom/cmcm/orion/picks/b/a;->o()Ljava/lang/String;

    .line 372
    iget-object v0, p0, Lcom/cmcm/orion/picks/b/a$2;->a:Lcom/cmcm/orion/picks/b/a;

    sget-object v1, Lcom/cmcm/orion/picks/b/a$f;->c:Lcom/cmcm/orion/picks/b/a$f;

    invoke-static {v0, v1}, Lcom/cmcm/orion/picks/b/a;->a(Lcom/cmcm/orion/picks/b/a;Lcom/cmcm/orion/picks/b/a$f;)Lcom/cmcm/orion/picks/b/a$f;

    .line 374
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/cmcm/orion/picks/a/b;->a()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 375
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 376
    iget-object v0, p0, Lcom/cmcm/orion/picks/b/a$2;->a:Lcom/cmcm/orion/picks/b/a;

    const/16 v1, 0x7d

    invoke-static {v0, v1}, Lcom/cmcm/orion/picks/b/a;->a(Lcom/cmcm/orion/picks/b/a;I)V

    .line 393
    :goto_0
    return-void

    .line 378
    :cond_0
    iget-object v1, p0, Lcom/cmcm/orion/picks/b/a$2;->a:Lcom/cmcm/orion/picks/b/a;

    sget-object v2, Lcom/cmcm/orion/adsdk/b$a;->am:Lcom/cmcm/orion/adsdk/b$a;

    const/4 v3, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v6, p0, Lcom/cmcm/orion/picks/b/a$2;->a:Lcom/cmcm/orion/picks/b/a;

    invoke-static {v6}, Lcom/cmcm/orion/picks/b/a;->b(Lcom/cmcm/orion/picks/b/a;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/cmcm/orion/picks/b/a;->a(Lcom/cmcm/orion/adsdk/b$a;IJ)V

    .line 379
    invoke-static {}, Lcom/cmcm/orion/picks/b/a;->o()Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onAdLoaded: loaded ad count = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 380
    iget-object v1, p0, Lcom/cmcm/orion/picks/b/a$2;->a:Lcom/cmcm/orion/picks/b/a;

    invoke-static {v1, v0}, Lcom/cmcm/orion/picks/b/a;->a(Lcom/cmcm/orion/picks/b/a;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    .line 382
    iget-object v1, p0, Lcom/cmcm/orion/picks/b/a$2;->a:Lcom/cmcm/orion/picks/b/a;

    invoke-static {v1}, Lcom/cmcm/orion/picks/b/a;->c(Lcom/cmcm/orion/picks/b/a;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/cmcm/orion/picks/b/a$2;->a:Lcom/cmcm/orion/picks/b/a;

    invoke-static {v1}, Lcom/cmcm/orion/picks/b/a;->c(Lcom/cmcm/orion/picks/b/a;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 383
    iget-object v1, p0, Lcom/cmcm/orion/picks/b/a$2;->a:Lcom/cmcm/orion/picks/b/a;

    invoke-static {v1, v0}, Lcom/cmcm/orion/picks/b/a;->b(Lcom/cmcm/orion/picks/b/a;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    .line 385
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 386
    iget-object v0, p0, Lcom/cmcm/orion/picks/b/a$2;->a:Lcom/cmcm/orion/picks/b/a;

    sget-object v1, Lcom/cmcm/orion/adsdk/b$a;->an:Lcom/cmcm/orion/adsdk/b$a;

    const/16 v2, 0x92

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v3, p0, Lcom/cmcm/orion/picks/b/a$2;->a:Lcom/cmcm/orion/picks/b/a;

    invoke-static {v3}, Lcom/cmcm/orion/picks/b/a;->b(Lcom/cmcm/orion/picks/b/a;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/cmcm/orion/picks/b/a;->a(Lcom/cmcm/orion/adsdk/b$a;IJ)V

    .line 387
    invoke-static {}, Lcom/cmcm/orion/picks/b/a;->o()Ljava/lang/String;

    .line 388
    iget-object v0, p0, Lcom/cmcm/orion/picks/b/a$2;->a:Lcom/cmcm/orion/picks/b/a;

    const/16 v1, 0x79

    invoke-static {v0, v1}, Lcom/cmcm/orion/picks/b/a;->a(Lcom/cmcm/orion/picks/b/a;I)V

    goto :goto_0

    .line 390
    :cond_2
    iget-object v1, p0, Lcom/cmcm/orion/picks/b/a$2;->a:Lcom/cmcm/orion/picks/b/a;

    invoke-static {v1, v0}, Lcom/cmcm/orion/picks/b/a;->a(Lcom/cmcm/orion/picks/b/a;Ljava/util/List;)V

    goto :goto_0
.end method

.method public b(Lcom/cmcm/orion/picks/a/b;)V
    .locals 8

    .prologue
    .line 397
    invoke-static {}, Lcom/cmcm/orion/picks/b/a;->o()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onFailed: loadAdList error = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/cmcm/orion/picks/a/b;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 398
    iget-object v0, p0, Lcom/cmcm/orion/picks/b/a$2;->a:Lcom/cmcm/orion/picks/b/a;

    sget-object v1, Lcom/cmcm/orion/picks/b/a$f;->g:Lcom/cmcm/orion/picks/b/a$f;

    invoke-static {v0, v1}, Lcom/cmcm/orion/picks/b/a;->a(Lcom/cmcm/orion/picks/b/a;Lcom/cmcm/orion/picks/b/a$f;)Lcom/cmcm/orion/picks/b/a$f;

    .line 399
    iget-object v0, p0, Lcom/cmcm/orion/picks/b/a$2;->a:Lcom/cmcm/orion/picks/b/a;

    sget-object v1, Lcom/cmcm/orion/adsdk/b$a;->an:Lcom/cmcm/orion/adsdk/b$a;

    invoke-virtual {p1}, Lcom/cmcm/orion/picks/a/b;->b()I

    move-result v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v3, p0, Lcom/cmcm/orion/picks/b/a$2;->a:Lcom/cmcm/orion/picks/b/a;

    invoke-static {v3}, Lcom/cmcm/orion/picks/b/a;->b(Lcom/cmcm/orion/picks/b/a;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/cmcm/orion/picks/b/a;->a(Lcom/cmcm/orion/adsdk/b$a;IJ)V

    .line 400
    iget-object v0, p0, Lcom/cmcm/orion/picks/b/a$2;->a:Lcom/cmcm/orion/picks/b/a;

    invoke-virtual {p1}, Lcom/cmcm/orion/picks/a/b;->b()I

    move-result v1

    invoke-static {v0, v1}, Lcom/cmcm/orion/picks/b/a;->a(Lcom/cmcm/orion/picks/b/a;I)V

    .line 401
    return-void
.end method
