.class Lcom/cmcm/orion/picks/b/b$1;
.super Ljava/lang/Object;
.source "IncentiveVideoAd.java"

# interfaces
.implements Lcom/cmcm/orion/picks/b/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmcm/orion/picks/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cmcm/orion/picks/b/b;


# direct methods
.method constructor <init>(Lcom/cmcm/orion/picks/b/b;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lcom/cmcm/orion/picks/b/b$1;->a:Lcom/cmcm/orion/picks/b/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;I)V
    .locals 3

    .prologue
    .line 133
    iget-object v0, p0, Lcom/cmcm/orion/picks/b/b$1;->a:Lcom/cmcm/orion/picks/b/b;

    invoke-static {v0}, Lcom/cmcm/orion/picks/b/b;->a(Lcom/cmcm/orion/picks/b/b;)Z

    .line 134
    iget-object v0, p0, Lcom/cmcm/orion/picks/b/b$1;->a:Lcom/cmcm/orion/picks/b/b;

    invoke-static {v0, p1}, Lcom/cmcm/orion/picks/b/b;->a(Lcom/cmcm/orion/picks/b/b;Landroid/view/View;)Landroid/view/View;

    .line 135
    iget-object v0, p0, Lcom/cmcm/orion/picks/b/b$1;->a:Lcom/cmcm/orion/picks/b/b;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/cmcm/orion/picks/b/b;->a(Lcom/cmcm/orion/picks/b/b;II)V

    .line 136
    return-void
.end method

.method public b(I)V
    .locals 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/cmcm/orion/picks/b/b$1;->a:Lcom/cmcm/orion/picks/b/b;

    invoke-static {v0}, Lcom/cmcm/orion/picks/b/b;->a(Lcom/cmcm/orion/picks/b/b;)Z

    .line 128
    iget-object v0, p0, Lcom/cmcm/orion/picks/b/b$1;->a:Lcom/cmcm/orion/picks/b/b;

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Lcom/cmcm/orion/picks/b/b;->a(Lcom/cmcm/orion/picks/b/b;II)V

    .line 129
    return-void
.end method
