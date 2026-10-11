.class final Lcom/cmcm/orion/picks/a/a$1$1;
.super Lcom/cmcm/orion/picks/a/a/c;
.source "AdRequestController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmcm/orion/picks/a/a$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cmcm/orion/picks/a/a$1;


# direct methods
.method constructor <init>(Lcom/cmcm/orion/picks/a/a$1;IILjava/lang/String;ZILjava/util/Map;)V
    .locals 7

    .prologue
    .line 139
    iput-object p1, p0, Lcom/cmcm/orion/picks/a/a$1$1;->a:Lcom/cmcm/orion/picks/a/a$1;

    move-object v0, p0

    move v1, p2

    move v2, p3

    move-object v3, p4

    move v4, p5

    move v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/cmcm/orion/picks/a/a/c;-><init>(IILjava/lang/String;ZILjava/util/Map;)V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 6

    .prologue
    .line 144
    iget-object v0, p0, Lcom/cmcm/orion/picks/a/a$1$1;->a:Lcom/cmcm/orion/picks/a/a$1;

    iget-object v1, v0, Lcom/cmcm/orion/picks/a/a$1;->a:Lcom/cmcm/orion/picks/a/a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/cmcm/orion/picks/a/a$1$1;->f:J

    sub-long/2addr v2, v4

    iget-boolean v0, p0, Lcom/cmcm/orion/picks/a/a$1$1;->g:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {v1, p1, v2, v3, v0}, Lcom/cmcm/orion/picks/a/a;->a(Lcom/cmcm/orion/picks/a/a;IJI)V

    .line 146
    return-void

    .line 144
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final a(Lcom/cmcm/orion/picks/a/a/i;)V
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 150
    invoke-super {p0, p1}, Lcom/cmcm/orion/picks/a/a/c;->a(Lcom/cmcm/orion/picks/a/a/i;)V

    .line 152
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/cmcm/orion/picks/a/a/i;->b()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/cmcm/orion/picks/a/a/i;->b()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_2

    .line 153
    :cond_0
    iget-object v2, p0, Lcom/cmcm/orion/picks/a/a$1$1;->a:Lcom/cmcm/orion/picks/a/a$1;

    iget-object v2, v2, Lcom/cmcm/orion/picks/a/a$1;->a:Lcom/cmcm/orion/picks/a/a;

    const/16 v3, 0x72

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/cmcm/orion/picks/a/a$1$1;->f:J

    sub-long/2addr v4, v6

    iget-boolean v6, p0, Lcom/cmcm/orion/picks/a/a$1$1;->g:Z

    if-eqz v6, :cond_1

    :goto_0
    invoke-static {v2, v3, v4, v5, v0}, Lcom/cmcm/orion/picks/a/a;->a(Lcom/cmcm/orion/picks/a/a;IJI)V

    .line 161
    :goto_1
    return-void

    :cond_1
    move v0, v1

    .line 153
    goto :goto_0

    .line 156
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 157
    invoke-virtual {p1}, Lcom/cmcm/orion/picks/a/a/i;->b()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 158
    iget-object v3, p0, Lcom/cmcm/orion/picks/a/a$1$1;->a:Lcom/cmcm/orion/picks/a/a$1;

    iget-object v3, v3, Lcom/cmcm/orion/picks/a/a$1;->a:Lcom/cmcm/orion/picks/a/a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/cmcm/orion/picks/a/a$1$1;->f:J

    sub-long/2addr v4, v6

    iget-boolean v6, p0, Lcom/cmcm/orion/picks/a/a$1$1;->g:Z

    if-eqz v6, :cond_3

    :goto_2
    invoke-static {v3, v2, v4, v5, v0}, Lcom/cmcm/orion/picks/a/a;->a(Lcom/cmcm/orion/picks/a/a;Ljava/util/List;JI)V

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2
.end method
