.class final Lcom/cmcm/orion/picks/impl/b/a$a$3;
.super Ljava/lang/Object;
.source "FileFetcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmcm/orion/picks/impl/b/a$a;->a(Lcom/cmcm/orion/adsdk/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cmcm/orion/adsdk/d;

.field final synthetic b:Lcom/cmcm/orion/picks/impl/b/a$a;


# direct methods
.method constructor <init>(Lcom/cmcm/orion/picks/impl/b/a$a;Lcom/cmcm/orion/adsdk/d;)V
    .locals 0

    .prologue
    .line 243
    iput-object p1, p0, Lcom/cmcm/orion/picks/impl/b/a$a$3;->b:Lcom/cmcm/orion/picks/impl/b/a$a;

    iput-object p2, p0, Lcom/cmcm/orion/picks/impl/b/a$a$3;->a:Lcom/cmcm/orion/adsdk/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 246
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/b/a$a$3;->b:Lcom/cmcm/orion/picks/impl/b/a$a;

    invoke-static {v0}, Lcom/cmcm/orion/picks/impl/b/a$a;->a(Lcom/cmcm/orion/picks/impl/b/a$a;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmcm/orion/picks/impl/a$a;

    .line 247
    iget-object v2, p0, Lcom/cmcm/orion/picks/impl/b/a$a$3;->b:Lcom/cmcm/orion/picks/impl/b/a$a;

    invoke-static {v2}, Lcom/cmcm/orion/picks/impl/b/a$a;->c(Lcom/cmcm/orion/picks/impl/b/a$a;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/cmcm/orion/picks/impl/b/a$a$3;->a:Lcom/cmcm/orion/adsdk/d;

    invoke-interface {v0, v2, v3}, Lcom/cmcm/orion/picks/impl/a$a;->a(Ljava/lang/String;Lcom/cmcm/orion/adsdk/d;)V

    goto :goto_0

    .line 249
    :cond_0
    return-void
.end method
