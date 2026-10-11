.class Lcom/cmcm/orion/picks/b/a$6;
.super Ljava/lang/Object;
.source "BrandVideoCardAd.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmcm/orion/picks/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:I

.field final synthetic c:Lcom/cmcm/orion/picks/b/a;


# direct methods
.method constructor <init>(Lcom/cmcm/orion/picks/b/a;Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 699
    iput-object p1, p0, Lcom/cmcm/orion/picks/b/a$6;->c:Lcom/cmcm/orion/picks/b/a;

    iput-object p2, p0, Lcom/cmcm/orion/picks/b/a$6;->a:Landroid/view/View;

    iput p3, p0, Lcom/cmcm/orion/picks/b/a$6;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 702
    iget-object v0, p0, Lcom/cmcm/orion/picks/b/a$6;->c:Lcom/cmcm/orion/picks/b/a;

    invoke-static {v0}, Lcom/cmcm/orion/picks/b/a;->m(Lcom/cmcm/orion/picks/b/a;)Lcom/cmcm/orion/picks/b/a$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 703
    iget-object v0, p0, Lcom/cmcm/orion/picks/b/a$6;->c:Lcom/cmcm/orion/picks/b/a;

    invoke-static {v0}, Lcom/cmcm/orion/picks/b/a;->m(Lcom/cmcm/orion/picks/b/a;)Lcom/cmcm/orion/picks/b/a$b;

    move-result-object v0

    iget-object v1, p0, Lcom/cmcm/orion/picks/b/a$6;->a:Landroid/view/View;

    iget v2, p0, Lcom/cmcm/orion/picks/b/a$6;->b:I

    invoke-interface {v0, v1, v2}, Lcom/cmcm/orion/picks/b/a$b;->a(Landroid/view/View;I)V

    .line 705
    :cond_0
    return-void
.end method
