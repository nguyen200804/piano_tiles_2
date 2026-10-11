.class final Lcom/cmcm/orion/picks/impl/b/a$a$1;
.super Ljava/lang/Object;
.source "FileFetcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmcm/orion/picks/impl/b/a$a;->a(Lcom/cmcm/orion/picks/impl/a$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cmcm/orion/picks/impl/a$a;

.field final synthetic b:Lcom/cmcm/orion/picks/impl/b/a$a;


# direct methods
.method constructor <init>(Lcom/cmcm/orion/picks/impl/b/a$a;Lcom/cmcm/orion/picks/impl/a$a;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/cmcm/orion/picks/impl/b/a$a$1;->b:Lcom/cmcm/orion/picks/impl/b/a$a;

    iput-object p2, p0, Lcom/cmcm/orion/picks/impl/b/a$a$1;->a:Lcom/cmcm/orion/picks/impl/a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/b/a$a$1;->a:Lcom/cmcm/orion/picks/impl/a$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/b/a$a$1;->b:Lcom/cmcm/orion/picks/impl/b/a$a;

    invoke-static {v0}, Lcom/cmcm/orion/picks/impl/b/a$a;->a(Lcom/cmcm/orion/picks/impl/b/a$a;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/cmcm/orion/picks/impl/b/a$a$1;->a:Lcom/cmcm/orion/picks/impl/a$a;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 130
    :cond_0
    :goto_0
    return-void

    .line 129
    :cond_1
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/b/a$a$1;->b:Lcom/cmcm/orion/picks/impl/b/a$a;

    invoke-static {v0}, Lcom/cmcm/orion/picks/impl/b/a$a;->a(Lcom/cmcm/orion/picks/impl/b/a$a;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/cmcm/orion/picks/impl/b/a$a$1;->a:Lcom/cmcm/orion/picks/impl/a$a;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
