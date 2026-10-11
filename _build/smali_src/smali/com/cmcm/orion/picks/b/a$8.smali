.class Lcom/cmcm/orion/picks/b/a$8;
.super Ljava/lang/Object;
.source "BrandVideoCardAd.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmcm/orion/picks/b/a;->b(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cmcm/orion/picks/b/a$d;

.field final synthetic b:I

.field final synthetic c:Lcom/cmcm/orion/picks/b/a;


# direct methods
.method constructor <init>(Lcom/cmcm/orion/picks/b/a;Lcom/cmcm/orion/picks/b/a$d;I)V
    .locals 0

    .prologue
    .line 743
    iput-object p1, p0, Lcom/cmcm/orion/picks/b/a$8;->c:Lcom/cmcm/orion/picks/b/a;

    iput-object p2, p0, Lcom/cmcm/orion/picks/b/a$8;->a:Lcom/cmcm/orion/picks/b/a$d;

    iput p3, p0, Lcom/cmcm/orion/picks/b/a$8;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 746
    iget-object v0, p0, Lcom/cmcm/orion/picks/b/a$8;->a:Lcom/cmcm/orion/picks/b/a$d;

    if-eqz v0, :cond_0

    .line 747
    iget-object v0, p0, Lcom/cmcm/orion/picks/b/a$8;->a:Lcom/cmcm/orion/picks/b/a$d;

    iget v1, p0, Lcom/cmcm/orion/picks/b/a$8;->b:I

    invoke-interface {v0, v1}, Lcom/cmcm/orion/picks/b/a$d;->b(I)V

    .line 749
    :cond_0
    return-void
.end method
