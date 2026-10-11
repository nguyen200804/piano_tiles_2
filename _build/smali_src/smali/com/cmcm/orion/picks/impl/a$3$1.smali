.class final Lcom/cmcm/orion/picks/impl/a$3$1;
.super Ljava/lang/Object;
.source "BrandVCAdMaterialLoader.java"

# interfaces
.implements Lcom/cmcm/orion/picks/impl/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmcm/orion/picks/impl/a$3;->a(Ljava/lang/String;Ljava/io/InputStream;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cmcm/orion/picks/impl/a$3;


# direct methods
.method constructor <init>(Lcom/cmcm/orion/picks/impl/a$3;)V
    .locals 0

    .prologue
    .line 226
    iput-object p1, p0, Lcom/cmcm/orion/picks/impl/a$3$1;->a:Lcom/cmcm/orion/picks/impl/a$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/cmcm/orion/picks/impl/h;Lcom/cmcm/orion/adsdk/d;I)V
    .locals 9

    .prologue
    .line 246
    const/4 v8, 0x0

    .line 247
    if-eqz p1, :cond_0

    .line 248
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/a$3$1;->a:Lcom/cmcm/orion/picks/impl/a$3;

    iget-object v0, v0, Lcom/cmcm/orion/picks/impl/a$3;->d:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/cmcm/orion/picks/impl/h;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    .line 251
    :cond_0
    if-eqz p1, :cond_1

    .line 252
    invoke-static {p1, p3}, Lcom/cmcm/orion/picks/impl/g;->a(Lcom/cmcm/orion/picks/impl/h;I)V

    .line 255
    :cond_1
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/a$3$1;->a:Lcom/cmcm/orion/picks/impl/a$3;

    iget-object v1, v0, Lcom/cmcm/orion/picks/impl/a$3;->a:Lcom/cmcm/orion/picks/b/a;

    sget-object v2, Lcom/cmcm/orion/adsdk/b$a;->m:Lcom/cmcm/orion/adsdk/b$a;

    invoke-virtual {p2}, Lcom/cmcm/orion/adsdk/d;->a()I

    move-result v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {}, Lcom/cmcm/orion/picks/impl/a;->c()J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x0

    invoke-virtual/range {v1 .. v8}, Lcom/cmcm/orion/picks/b/a;->a(Lcom/cmcm/orion/adsdk/b$a;IJJLjava/lang/String;)V

    .line 256
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/a$3$1;->a:Lcom/cmcm/orion/picks/impl/a$3;

    iget-object v0, v0, Lcom/cmcm/orion/picks/impl/a$3;->c:Lcom/cmcm/orion/picks/impl/a$a;

    invoke-interface {v0, p2}, Lcom/cmcm/orion/picks/impl/a$a;->a(Lcom/cmcm/orion/adsdk/d;)V

    .line 257
    return-void
.end method

.method public final b(Lcom/cmcm/orion/picks/impl/h;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 228
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/a$3$1;->a:Lcom/cmcm/orion/picks/impl/a$3;

    iget-object v0, v0, Lcom/cmcm/orion/picks/impl/a$3;->a:Lcom/cmcm/orion/picks/b/a;

    sget-object v1, Lcom/cmcm/orion/adsdk/b$a;->l:Lcom/cmcm/orion/adsdk/b$a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {}, Lcom/cmcm/orion/picks/impl/a;->c()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v0, v1, v6, v2, v3}, Lcom/cmcm/orion/picks/b/a;->a(Lcom/cmcm/orion/adsdk/b$a;IJ)V

    .line 229
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/a$3$1;->a:Lcom/cmcm/orion/picks/impl/a$3;

    iget-object v0, v0, Lcom/cmcm/orion/picks/impl/a$3;->b:Lcom/cmcm/orion/picks/a/a/a;

    invoke-virtual {p1, v0}, Lcom/cmcm/orion/picks/impl/h;->a(Lcom/cmcm/orion/picks/a/a/a;)V

    .line 230
    invoke-virtual {p1, v6}, Lcom/cmcm/orion/picks/impl/h;->g(Z)V

    .line 232
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/a$3$1;->a:Lcom/cmcm/orion/picks/impl/a$3;

    iget-object v0, v0, Lcom/cmcm/orion/picks/impl/a$3;->f:Ljava/lang/String;

    new-instance v1, Lcom/cmcm/orion/picks/impl/a$3$1$1;

    invoke-direct {v1, p0}, Lcom/cmcm/orion/picks/impl/a$3$1$1;-><init>(Lcom/cmcm/orion/picks/impl/a$3$1;)V

    invoke-static {v0, p1, v1}, Lcom/cmcm/orion/picks/impl/a/a;->a(Ljava/lang/String;Ljava/io/Serializable;Lcom/cmcm/orion/picks/impl/a$a;)V

    .line 242
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/a$3$1;->a:Lcom/cmcm/orion/picks/impl/a$3;

    iget-object v0, v0, Lcom/cmcm/orion/picks/impl/a$3;->c:Lcom/cmcm/orion/picks/impl/a$a;

    invoke-interface {v0, p1}, Lcom/cmcm/orion/picks/impl/a$a;->a(Lcom/cmcm/orion/picks/impl/h;)V

    .line 243
    return-void
.end method
