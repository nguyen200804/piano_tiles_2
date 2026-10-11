.class final Lcom/cmcm/orion/picks/impl/a$1$1;
.super Ljava/lang/Object;
.source "BrandVCAdMaterialLoader.java"

# interfaces
.implements Lcom/cmcm/orion/picks/impl/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmcm/orion/picks/impl/a$1;->a(Lcom/cmcm/orion/picks/impl/h;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cmcm/orion/picks/impl/h;

.field final synthetic b:Lcom/cmcm/orion/picks/impl/a$1;


# direct methods
.method constructor <init>(Lcom/cmcm/orion/picks/impl/a$1;Lcom/cmcm/orion/picks/impl/h;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/cmcm/orion/picks/impl/a$1$1;->b:Lcom/cmcm/orion/picks/impl/a$1;

    iput-object p2, p0, Lcom/cmcm/orion/picks/impl/a$1$1;->a:Lcom/cmcm/orion/picks/impl/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/cmcm/orion/adsdk/d;)V
    .locals 9

    .prologue
    .line 105
    invoke-static {}, Lcom/cmcm/orion/picks/impl/a;->a()Ljava/lang/String;

    .line 106
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/a$1$1;->b:Lcom/cmcm/orion/picks/impl/a$1;

    iget-object v0, v0, Lcom/cmcm/orion/picks/impl/a$1;->c:Lcom/cmcm/orion/picks/impl/a$a;

    invoke-static {v0, p2}, Lcom/cmcm/orion/picks/impl/a;->a(Lcom/cmcm/orion/picks/impl/a$a;Lcom/cmcm/orion/adsdk/d;)V

    .line 108
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/a$1$1;->b:Lcom/cmcm/orion/picks/impl/a$1;

    iget-object v1, v0, Lcom/cmcm/orion/picks/impl/a$1;->d:Lcom/cmcm/orion/picks/b/a;

    sget-object v2, Lcom/cmcm/orion/adsdk/b$a;->aa:Lcom/cmcm/orion/adsdk/b$a;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/cmcm/orion/adsdk/d;->a()I

    move-result v3

    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {}, Lcom/cmcm/orion/picks/impl/a;->b()J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x0

    move-object v8, p1

    invoke-virtual/range {v1 .. v8}, Lcom/cmcm/orion/picks/b/a;->a(Lcom/cmcm/orion/adsdk/b$a;IJJLjava/lang/String;)V

    .line 110
    return-void

    .line 108
    :cond_0
    const/4 v3, -0x1

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 9

    .prologue
    const-wide/16 v4, 0x0

    .line 85
    invoke-static {}, Lcom/cmcm/orion/picks/impl/a;->a()Ljava/lang/String;

    .line 86
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/a$1$1;->b:Lcom/cmcm/orion/picks/impl/a$1;

    iget-object v0, v0, Lcom/cmcm/orion/picks/impl/a$1;->e:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/cmcm/orion/picks/impl/a$1$1;->b:Lcom/cmcm/orion/picks/impl/a$1;

    iget-object v1, v1, Lcom/cmcm/orion/picks/impl/a$1;->b:Lcom/cmcm/orion/picks/a/a/a;

    invoke-virtual {v1}, Lcom/cmcm/orion/picks/a/a/a;->E()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 90
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 91
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v6

    .line 93
    :goto_0
    if-eqz p3, :cond_0

    .line 94
    :goto_1
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/a$1$1;->b:Lcom/cmcm/orion/picks/impl/a$1;

    iget-object v1, v0, Lcom/cmcm/orion/picks/impl/a$1;->d:Lcom/cmcm/orion/picks/b/a;

    sget-object v2, Lcom/cmcm/orion/adsdk/b$a;->Z:Lcom/cmcm/orion/adsdk/b$a;

    const/4 v3, 0x0

    move-object v8, p1

    invoke-virtual/range {v1 .. v8}, Lcom/cmcm/orion/picks/b/a;->a(Lcom/cmcm/orion/adsdk/b$a;IJJLjava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/a$1$1;->b:Lcom/cmcm/orion/picks/impl/a$1;

    iget-object v0, v0, Lcom/cmcm/orion/picks/impl/a$1;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/cmcm/orion/picks/impl/a$1$1;->a:Lcom/cmcm/orion/picks/impl/h;

    new-instance v2, Lcom/cmcm/orion/picks/impl/a$1$1$1;

    invoke-direct {v2, p0}, Lcom/cmcm/orion/picks/impl/a$1$1$1;-><init>(Lcom/cmcm/orion/picks/impl/a$1$1;)V

    invoke-static {v0, v1, v2}, Lcom/cmcm/orion/picks/impl/a;->a(Landroid/content/Context;Lcom/cmcm/orion/picks/impl/h;Lcom/cmcm/orion/picks/impl/a$a;)V

    .line 102
    return-void

    .line 93
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lcom/cmcm/orion/picks/impl/a;->b()J

    move-result-wide v2

    sub-long v4, v0, v2

    goto :goto_1

    :cond_1
    move-wide v6, v4

    goto :goto_0
.end method
