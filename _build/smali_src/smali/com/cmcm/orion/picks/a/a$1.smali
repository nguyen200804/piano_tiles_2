.class final Lcom/cmcm/orion/picks/a/a$1;
.super Ljava/lang/Object;
.source "AdRequestController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmcm/orion/picks/a/a;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cmcm/orion/picks/a/a;


# direct methods
.method constructor <init>(Lcom/cmcm/orion/picks/a/a;)V
    .locals 0

    .prologue
    .line 136
    iput-object p1, p0, Lcom/cmcm/orion/picks/a/a$1;->a:Lcom/cmcm/orion/picks/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .prologue
    .line 139
    new-instance v0, Lcom/cmcm/orion/picks/a/a$1$1;

    iget-object v1, p0, Lcom/cmcm/orion/picks/a/a$1;->a:Lcom/cmcm/orion/picks/a/a;

    invoke-static {v1}, Lcom/cmcm/orion/picks/a/a;->a(Lcom/cmcm/orion/picks/a/a;)I

    move-result v2

    iget-object v1, p0, Lcom/cmcm/orion/picks/a/a$1;->a:Lcom/cmcm/orion/picks/a/a;

    invoke-static {v1}, Lcom/cmcm/orion/picks/a/a;->b(Lcom/cmcm/orion/picks/a/a;)I

    move-result v3

    iget-object v1, p0, Lcom/cmcm/orion/picks/a/a$1;->a:Lcom/cmcm/orion/picks/a/a;

    invoke-static {v1}, Lcom/cmcm/orion/picks/a/a;->c(Lcom/cmcm/orion/picks/a/a;)Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Lcom/cmcm/orion/picks/a/a$1;->a:Lcom/cmcm/orion/picks/a/a;

    invoke-static {v1}, Lcom/cmcm/orion/picks/a/a;->d(Lcom/cmcm/orion/picks/a/a;)Z

    move-result v5

    iget-object v1, p0, Lcom/cmcm/orion/picks/a/a$1;->a:Lcom/cmcm/orion/picks/a/a;

    invoke-static {v1}, Lcom/cmcm/orion/picks/a/a;->e(Lcom/cmcm/orion/picks/a/a;)I

    move-result v6

    iget-object v1, p0, Lcom/cmcm/orion/picks/a/a$1;->a:Lcom/cmcm/orion/picks/a/a;

    invoke-static {v1}, Lcom/cmcm/orion/picks/a/a;->f(Lcom/cmcm/orion/picks/a/a;)Ljava/util/Map;

    move-result-object v7

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/cmcm/orion/picks/a/a$1$1;-><init>(Lcom/cmcm/orion/picks/a/a$1;IILjava/lang/String;ZILjava/util/Map;)V

    .line 163
    iget-object v1, p0, Lcom/cmcm/orion/picks/a/a$1;->a:Lcom/cmcm/orion/picks/a/a;

    invoke-static {v1}, Lcom/cmcm/orion/picks/a/a;->g(Lcom/cmcm/orion/picks/a/a;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/cmcm/orion/picks/a/a/c;->a(J)V

    .line 164
    iget-object v1, p0, Lcom/cmcm/orion/picks/a/a$1;->a:Lcom/cmcm/orion/picks/a/a;

    invoke-static {v1}, Lcom/cmcm/orion/picks/a/a;->h(Lcom/cmcm/orion/picks/a/a;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cmcm/orion/picks/a/a/c;->a(Ljava/lang/String;)V

    .line 165
    iget-object v1, p0, Lcom/cmcm/orion/picks/a/a$1;->a:Lcom/cmcm/orion/picks/a/a;

    invoke-static {v1}, Lcom/cmcm/orion/picks/a/a;->i(Lcom/cmcm/orion/picks/a/a;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/cmcm/orion/picks/a/a/c;->d(I)V

    .line 166
    iget-object v1, p0, Lcom/cmcm/orion/picks/a/a$1;->a:Lcom/cmcm/orion/picks/a/a;

    invoke-static {v1}, Lcom/cmcm/orion/picks/a/a;->j(Lcom/cmcm/orion/picks/a/a;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/cmcm/orion/picks/a/a/c;->e(I)V

    .line 167
    iget-object v1, p0, Lcom/cmcm/orion/picks/a/a$1;->a:Lcom/cmcm/orion/picks/a/a;

    invoke-static {v1}, Lcom/cmcm/orion/picks/a/a;->k(Lcom/cmcm/orion/picks/a/a;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/cmcm/orion/picks/a/a/c;->b(I)V

    .line 168
    iget-object v1, p0, Lcom/cmcm/orion/picks/a/a$1;->a:Lcom/cmcm/orion/picks/a/a;

    invoke-static {v1}, Lcom/cmcm/orion/picks/a/a;->l(Lcom/cmcm/orion/picks/a/a;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/cmcm/orion/picks/a/a/c;->c(I)V

    .line 169
    iget-object v1, p0, Lcom/cmcm/orion/picks/a/a$1;->a:Lcom/cmcm/orion/picks/a/a;

    invoke-static {v1}, Lcom/cmcm/orion/picks/a/a;->c(Lcom/cmcm/orion/picks/a/a;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/cmcm/orion/picks/a/a;->a(Ljava/lang/String;Lcom/cmcm/orion/picks/a/a/c;)V

    .line 170
    return-void
.end method
