.class final Lcom/cmcm/orion/picks/impl/a$4;
.super Ljava/lang/Object;
.source "BrandVCAdMaterialLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmcm/orion/picks/impl/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cmcm/orion/picks/impl/a$a;

.field final synthetic b:Ljava/util/HashMap;

.field final synthetic c:Lcom/cmcm/orion/picks/impl/h;


# direct methods
.method constructor <init>(Lcom/cmcm/orion/picks/impl/a$a;Ljava/util/HashMap;Lcom/cmcm/orion/picks/impl/h;)V
    .locals 0

    .prologue
    .line 286
    iput-object p1, p0, Lcom/cmcm/orion/picks/impl/a$4;->a:Lcom/cmcm/orion/picks/impl/a$a;

    iput-object p2, p0, Lcom/cmcm/orion/picks/impl/a$4;->b:Ljava/util/HashMap;

    iput-object p3, p0, Lcom/cmcm/orion/picks/impl/a$4;->c:Lcom/cmcm/orion/picks/impl/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 288
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/a$4;->a:Lcom/cmcm/orion/picks/impl/a$a;

    iget-object v1, p0, Lcom/cmcm/orion/picks/impl/a$4;->b:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/cmcm/orion/picks/impl/a$4;->c:Lcom/cmcm/orion/picks/impl/h;

    invoke-interface {v0, v1, v2}, Lcom/cmcm/orion/picks/impl/a$a;->a(Ljava/util/HashMap;Lcom/cmcm/orion/picks/impl/h;)V

    .line 289
    return-void
.end method
