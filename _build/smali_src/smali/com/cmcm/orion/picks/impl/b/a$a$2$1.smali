.class final Lcom/cmcm/orion/picks/impl/b/a$a$2$1;
.super Ljava/lang/Object;
.source "FileFetcher.java"

# interfaces
.implements Lcom/cmcm/orion/picks/impl/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmcm/orion/picks/impl/b/a$a$2;->a(ILjava/io/InputStream;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cmcm/orion/picks/impl/b/a$a$2;


# direct methods
.method constructor <init>(Lcom/cmcm/orion/picks/impl/b/a$a$2;)V
    .locals 0

    .prologue
    .line 201
    iput-object p1, p0, Lcom/cmcm/orion/picks/impl/b/a$a$2$1;->a:Lcom/cmcm/orion/picks/impl/b/a$a$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 204
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 205
    invoke-static {}, Lcom/cmcm/orion/picks/impl/b/a;->a()Lcom/cmcm/orion/picks/impl/a/a;

    invoke-static {p1}, Lcom/cmcm/orion/picks/impl/a/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 206
    invoke-static {}, Lcom/cmcm/orion/picks/impl/b/a;->b()Ljava/lang/String;

    .line 207
    iget-object v1, p0, Lcom/cmcm/orion/picks/impl/b/a$a$2$1;->a:Lcom/cmcm/orion/picks/impl/b/a$a$2;

    iget-object v1, v1, Lcom/cmcm/orion/picks/impl/b/a$a$2;->a:Lcom/cmcm/orion/picks/impl/b/a$a;

    invoke-static {v1, v0}, Lcom/cmcm/orion/picks/impl/b/a$a;->a(Lcom/cmcm/orion/picks/impl/b/a$a;Ljava/lang/String;)V

    .line 213
    :goto_0
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/b/a$a$2$1;->a:Lcom/cmcm/orion/picks/impl/b/a$a$2;

    iget-object v0, v0, Lcom/cmcm/orion/picks/impl/b/a$a$2;->a:Lcom/cmcm/orion/picks/impl/b/a$a;

    invoke-static {v0}, Lcom/cmcm/orion/picks/impl/b/a$a;->b(Lcom/cmcm/orion/picks/impl/b/a$a;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 214
    return-void

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/b/a$a$2$1;->a:Lcom/cmcm/orion/picks/impl/b/a$a$2;

    iget-object v0, v0, Lcom/cmcm/orion/picks/impl/b/a$a$2;->a:Lcom/cmcm/orion/picks/impl/b/a$a;

    sget-object v1, Lcom/cmcm/orion/adsdk/d;->q:Lcom/cmcm/orion/adsdk/d;

    invoke-static {v0, v1}, Lcom/cmcm/orion/picks/impl/b/a$a;->a(Lcom/cmcm/orion/picks/impl/b/a$a;Lcom/cmcm/orion/adsdk/d;)V

    goto :goto_0
.end method
