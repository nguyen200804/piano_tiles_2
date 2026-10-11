.class final Lcom/cmcm/orion/picks/impl/a$5;
.super Ljava/lang/Object;
.source "BrandVCAdMaterialLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmcm/orion/picks/impl/a;->b(Lcom/cmcm/orion/picks/impl/a$a;Lcom/cmcm/orion/adsdk/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cmcm/orion/picks/impl/a$a;

.field final synthetic b:Lcom/cmcm/orion/adsdk/d;


# direct methods
.method constructor <init>(Lcom/cmcm/orion/picks/impl/a$a;Lcom/cmcm/orion/adsdk/d;)V
    .locals 0

    .prologue
    .line 294
    iput-object p1, p0, Lcom/cmcm/orion/picks/impl/a$5;->a:Lcom/cmcm/orion/picks/impl/a$a;

    iput-object p2, p0, Lcom/cmcm/orion/picks/impl/a$5;->b:Lcom/cmcm/orion/adsdk/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 296
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/a$5;->a:Lcom/cmcm/orion/picks/impl/a$a;

    iget-object v1, p0, Lcom/cmcm/orion/picks/impl/a$5;->b:Lcom/cmcm/orion/adsdk/d;

    invoke-interface {v0, v1}, Lcom/cmcm/orion/picks/impl/a$a;->a(Lcom/cmcm/orion/adsdk/d;)V

    .line 297
    return-void
.end method
