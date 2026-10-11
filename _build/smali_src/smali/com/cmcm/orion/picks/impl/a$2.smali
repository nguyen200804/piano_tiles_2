.class final Lcom/cmcm/orion/picks/impl/a$2;
.super Ljava/lang/Object;
.source "BrandVCAdMaterialLoader.java"

# interfaces
.implements Lcom/cmcm/orion/picks/impl/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmcm/orion/picks/impl/a;->b(Landroid/content/Context;Ljava/util/ArrayList;Lcom/cmcm/orion/picks/impl/a$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:Lcom/cmcm/orion/picks/impl/a$a;

.field final synthetic c:Landroid/content/Context;


# direct methods
.method constructor <init>(Ljava/util/ArrayList;Lcom/cmcm/orion/picks/impl/a$a;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 156
    iput-object p1, p0, Lcom/cmcm/orion/picks/impl/a$2;->a:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/cmcm/orion/picks/impl/a$2;->b:Lcom/cmcm/orion/picks/impl/a$a;

    iput-object p3, p0, Lcom/cmcm/orion/picks/impl/a$2;->c:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private g()V
    .locals 3

    .prologue
    .line 168
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/a$2;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/a$2;->b:Lcom/cmcm/orion/picks/impl/a$a;

    invoke-static {v0}, Lcom/cmcm/orion/picks/impl/a;->a(Lcom/cmcm/orion/picks/impl/a$a;)V

    .line 173
    :goto_0
    return-void

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/a$2;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/cmcm/orion/picks/impl/a$2;->a:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/cmcm/orion/picks/impl/a$2;->b:Lcom/cmcm/orion/picks/impl/a$a;

    invoke-static {v0, v1, v2}, Lcom/cmcm/orion/picks/impl/a;->a(Landroid/content/Context;Ljava/util/ArrayList;Lcom/cmcm/orion/picks/impl/a$a;)V

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/cmcm/orion/adsdk/d;)V
    .locals 0

    .prologue
    .line 164
    invoke-direct {p0}, Lcom/cmcm/orion/picks/impl/a$2;->g()V

    .line 165
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 159
    invoke-direct {p0}, Lcom/cmcm/orion/picks/impl/a$2;->g()V

    .line 160
    return-void
.end method
