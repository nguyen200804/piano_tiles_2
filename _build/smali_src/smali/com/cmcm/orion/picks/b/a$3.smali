.class Lcom/cmcm/orion/picks/b/a$3;
.super Ljava/lang/Object;
.source "BrandVideoCardAd.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmcm/orion/picks/b/a;->a(Lcom/cmcm/orion/picks/a/a/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cmcm/orion/picks/a/a/a;

.field final synthetic b:Lcom/cmcm/orion/picks/b/a;


# direct methods
.method constructor <init>(Lcom/cmcm/orion/picks/b/a;Lcom/cmcm/orion/picks/a/a/a;)V
    .locals 0

    .prologue
    .line 434
    iput-object p1, p0, Lcom/cmcm/orion/picks/b/a$3;->b:Lcom/cmcm/orion/picks/b/a;

    iput-object p2, p0, Lcom/cmcm/orion/picks/b/a$3;->a:Lcom/cmcm/orion/picks/a/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 437
    iget-object v0, p0, Lcom/cmcm/orion/picks/b/a$3;->a:Lcom/cmcm/orion/picks/a/a/a;

    invoke-virtual {v0}, Lcom/cmcm/orion/picks/a/a/a;->d()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/cmcm/orion/picks/b/a$3;->a:Lcom/cmcm/orion/picks/a/a/a;

    sget-object v2, Lcom/cmcm/orion/adsdk/a;->b:Lcom/cmcm/orion/adsdk/a;

    invoke-static {v0, v1, v2}, Lcom/cmcm/orion/picks/a/b;->a(Ljava/lang/String;Lcom/cmcm/orion/picks/a/a/a;Lcom/cmcm/orion/adsdk/a;)V

    .line 438
    return-void
.end method
