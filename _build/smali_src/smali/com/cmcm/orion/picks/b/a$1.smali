.class Lcom/cmcm/orion/picks/b/a$1;
.super Ljava/lang/Object;
.source "BrandVideoCardAd.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmcm/orion/picks/b/a;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/cmcm/orion/picks/b/a$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cmcm/orion/picks/b/a;


# direct methods
.method constructor <init>(Lcom/cmcm/orion/picks/b/a;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lcom/cmcm/orion/picks/b/a$1;->a:Lcom/cmcm/orion/picks/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/cmcm/orion/picks/b/a$1;->a:Lcom/cmcm/orion/picks/b/a;

    invoke-static {v0}, Lcom/cmcm/orion/picks/b/a;->a(Lcom/cmcm/orion/picks/b/a;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/cmcm/orion/picks/impl/a/a;->a(Landroid/content/Context;)Z

    .line 120
    return-void
.end method
