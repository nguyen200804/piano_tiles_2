.class final Lcom/cmcm/orion/utils/internal/a$13;
.super Ljava/lang/Object;
.source "AppInstallationTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmcm/orion/utils/internal/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/cmcm/orion/utils/internal/a;


# direct methods
.method constructor <init>(Lcom/cmcm/orion/utils/internal/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 264
    iput-object p1, p0, Lcom/cmcm/orion/utils/internal/a$13;->d:Lcom/cmcm/orion/utils/internal/a;

    iput-object p2, p0, Lcom/cmcm/orion/utils/internal/a$13;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/cmcm/orion/utils/internal/a$13;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/cmcm/orion/utils/internal/a$13;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 267
    iget-object v0, p0, Lcom/cmcm/orion/utils/internal/a$13;->d:Lcom/cmcm/orion/utils/internal/a;

    iget-object v1, p0, Lcom/cmcm/orion/utils/internal/a$13;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/cmcm/orion/utils/internal/a;->a(Lcom/cmcm/orion/utils/internal/a;Ljava/lang/String;)Z

    move-result v0

    .line 269
    invoke-static {}, Lcom/cmcm/orion/picks/a/a/h;->o()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/cmcm/orion/picks/a/a/h;->l()Z

    .line 273
    iget-object v1, p0, Lcom/cmcm/orion/utils/internal/a$13;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 274
    iget-object v1, p0, Lcom/cmcm/orion/utils/internal/a$13;->d:Lcom/cmcm/orion/utils/internal/a;

    invoke-static {v1}, Lcom/cmcm/orion/utils/internal/a;->d(Lcom/cmcm/orion/utils/internal/a;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/cmcm/orion/utils/internal/a$13;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/cmcm/orion/utils/internal/a$13;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    :goto_0
    if-nez v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/cmcm/orion/utils/internal/a$13;->d:Lcom/cmcm/orion/utils/internal/a;

    iget-object v1, p0, Lcom/cmcm/orion/utils/internal/a$13;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmcm/orion/utils/internal/a$13;->c:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/cmcm/orion/utils/internal/a;->a(Lcom/cmcm/orion/utils/internal/a;Ljava/lang/String;Ljava/lang/String;I)V

    .line 290
    :cond_0
    return-void

    .line 277
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/cmcm/orion/utils/internal/a$13;->d:Lcom/cmcm/orion/utils/internal/a;

    invoke-static {v1}, Lcom/cmcm/orion/utils/internal/a;->d(Lcom/cmcm/orion/utils/internal/a;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/cmcm/orion/utils/internal/a$13;->c:Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/cmcm/orion/utils/internal/a$13;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method
