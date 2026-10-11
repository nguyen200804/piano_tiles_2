.class final Lcom/cmcm/orion/utils/internal/a$8;
.super Ljava/lang/Object;
.source "AppInstallationTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmcm/orion/utils/internal/a;->a(Ljava/lang/String;Lcom/cmcm/orion/picks/a/a/a;ZLjava/util/Map;Lcom/cmcm/orion/picks/impl/a$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cmcm/orion/picks/impl/a$a;


# direct methods
.method constructor <init>(Lcom/cmcm/orion/picks/impl/a$a;)V
    .locals 0

    .prologue
    .line 893
    iput-object p1, p0, Lcom/cmcm/orion/utils/internal/a$8;->a:Lcom/cmcm/orion/picks/impl/a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 896
    iget-object v0, p0, Lcom/cmcm/orion/utils/internal/a$8;->a:Lcom/cmcm/orion/picks/impl/a$a;

    if-eqz v0, :cond_0

    .line 897
    iget-object v0, p0, Lcom/cmcm/orion/utils/internal/a$8;->a:Lcom/cmcm/orion/picks/impl/a$a;

    const/16 v1, 0xc8

    const/4 v2, 0x0

    invoke-interface {v0, v1, v3, v3, v2}, Lcom/cmcm/orion/picks/impl/a$a;->a(ILjava/io/InputStream;Ljava/lang/String;I)V

    .line 899
    :cond_0
    return-void
.end method
