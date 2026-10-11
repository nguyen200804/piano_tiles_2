.class final Lcom/cmcm/orion/picks/impl/b/a$a$4;
.super Ljava/lang/Object;
.source "FileFetcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmcm/orion/picks/impl/b/a$a;->a(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Z

.field final synthetic c:Lcom/cmcm/orion/picks/impl/b/a$a;


# direct methods
.method constructor <init>(Lcom/cmcm/orion/picks/impl/b/a$a;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 255
    iput-object p1, p0, Lcom/cmcm/orion/picks/impl/b/a$a$4;->c:Lcom/cmcm/orion/picks/impl/b/a$a;

    iput-object p2, p0, Lcom/cmcm/orion/picks/impl/b/a$a$4;->a:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/cmcm/orion/picks/impl/b/a$a$4;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 258
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/b/a$a$4;->c:Lcom/cmcm/orion/picks/impl/b/a$a;

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

    .line 259
    iget-object v2, p0, Lcom/cmcm/orion/picks/impl/b/a$a$4;->c:Lcom/cmcm/orion/picks/impl/b/a$a;

    invoke-static {v2}, Lcom/cmcm/orion/picks/impl/b/a$a;->c(Lcom/cmcm/orion/picks/impl/b/a$a;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/cmcm/orion/picks/impl/b/a$a$4;->a:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/cmcm/orion/picks/impl/b/a$a$4;->b:Z

    invoke-interface {v0, v2, v3, v4}, Lcom/cmcm/orion/picks/impl/a$a;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 261
    :cond_0
    return-void
.end method
