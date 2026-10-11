.class final Lcom/cmcm/orion/utils/internal/a$12;
.super Ljava/lang/Object;
.source "AppInstallationTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmcm/orion/utils/internal/a;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/cmcm/orion/utils/internal/a;


# direct methods
.method constructor <init>(Lcom/cmcm/orion/utils/internal/a;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 212
    iput-object p1, p0, Lcom/cmcm/orion/utils/internal/a$12;->b:Lcom/cmcm/orion/utils/internal/a;

    iput-object p2, p0, Lcom/cmcm/orion/utils/internal/a$12;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v0, 0x0

    .line 215
    iget-object v1, p0, Lcom/cmcm/orion/utils/internal/a$12;->b:Lcom/cmcm/orion/utils/internal/a;

    invoke-static {v1}, Lcom/cmcm/orion/utils/internal/a;->c(Lcom/cmcm/orion/utils/internal/a;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/cmcm/orion/utils/internal/a$12;->b:Lcom/cmcm/orion/utils/internal/a;

    invoke-static {v1}, Lcom/cmcm/orion/utils/internal/a;->c(Lcom/cmcm/orion/utils/internal/a;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/cmcm/orion/utils/internal/a$12;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 216
    iget-object v0, p0, Lcom/cmcm/orion/utils/internal/a$12;->b:Lcom/cmcm/orion/utils/internal/a;

    invoke-static {v0}, Lcom/cmcm/orion/utils/internal/a;->c(Lcom/cmcm/orion/utils/internal/a;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 259
    :cond_0
    :goto_0
    return-void

    .line 221
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 222
    new-instance v2, Lcom/cmcm/orion/utils/internal/a$c;

    iget-object v3, p0, Lcom/cmcm/orion/utils/internal/a$12;->a:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v2, v6, v3, v4, v5}, Lcom/cmcm/orion/utils/internal/a$c;-><init>(Lcom/cmcm/orion/utils/internal/a$b;Ljava/lang/String;J)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 223
    iget-object v2, p0, Lcom/cmcm/orion/utils/internal/a$12;->b:Lcom/cmcm/orion/utils/internal/a;

    invoke-static {v2, v1}, Lcom/cmcm/orion/utils/internal/a;->b(Lcom/cmcm/orion/utils/internal/a;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    .line 224
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v0, 0x1

    .line 232
    :cond_2
    iget-object v1, p0, Lcom/cmcm/orion/utils/internal/a$12;->b:Lcom/cmcm/orion/utils/internal/a;

    invoke-static {v1}, Lcom/cmcm/orion/utils/internal/a;->d(Lcom/cmcm/orion/utils/internal/a;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 233
    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/cmcm/orion/utils/internal/a$12;->a:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 234
    iget-object v0, p0, Lcom/cmcm/orion/utils/internal/a$12;->b:Lcom/cmcm/orion/utils/internal/a;

    invoke-static {v0}, Lcom/cmcm/orion/utils/internal/a;->d(Lcom/cmcm/orion/utils/internal/a;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/cmcm/orion/utils/internal/a$12;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 235
    iget-object v1, p0, Lcom/cmcm/orion/utils/internal/a$12;->b:Lcom/cmcm/orion/utils/internal/a;

    invoke-static {v1}, Lcom/cmcm/orion/utils/internal/a;->e(Lcom/cmcm/orion/utils/internal/a;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 236
    iget-object v0, p0, Lcom/cmcm/orion/utils/internal/a$12;->b:Lcom/cmcm/orion/utils/internal/a;

    invoke-static {v0}, Lcom/cmcm/orion/utils/internal/a;->d(Lcom/cmcm/orion/utils/internal/a;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/cmcm/orion/utils/internal/a$12;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 242
    :cond_3
    invoke-static {}, Lcom/cmcm/orion/picks/a/a/h;->n()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/cmcm/orion/picks/a/a/h;->l()Z

    .line 254
    if-nez v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/cmcm/orion/utils/internal/a$12;->b:Lcom/cmcm/orion/utils/internal/a;

    iget-object v1, p0, Lcom/cmcm/orion/utils/internal/a$12;->a:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-static {v0, v1, v6, v2}, Lcom/cmcm/orion/utils/internal/a;->a(Lcom/cmcm/orion/utils/internal/a;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 243
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onAppInstalled: isReportInstalled = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/cmcm/orion/picks/a/a/h;->n()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " canReportByPriority:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/cmcm/orion/picks/a/a/h;->l()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    goto/16 :goto_0
.end method
