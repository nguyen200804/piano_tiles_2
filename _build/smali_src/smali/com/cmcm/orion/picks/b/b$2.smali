.class Lcom/cmcm/orion/picks/b/b$2;
.super Ljava/lang/Object;
.source "IncentiveVideoAd.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmcm/orion/picks/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lcom/cmcm/orion/picks/b/b;


# direct methods
.method constructor <init>(Lcom/cmcm/orion/picks/b/b;II)V
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lcom/cmcm/orion/picks/b/b$2;->c:Lcom/cmcm/orion/picks/b/b;

    iput p2, p0, Lcom/cmcm/orion/picks/b/b$2;->a:I

    iput p3, p0, Lcom/cmcm/orion/picks/b/b$2;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 148
    iget v0, p0, Lcom/cmcm/orion/picks/b/b$2;->a:I

    sparse-switch v0, :sswitch_data_0

    .line 172
    :cond_0
    :goto_0
    return-void

    .line 150
    :sswitch_0
    iget-object v0, p0, Lcom/cmcm/orion/picks/b/b$2;->c:Lcom/cmcm/orion/picks/b/b;

    invoke-static {v0}, Lcom/cmcm/orion/picks/b/b;->b(Lcom/cmcm/orion/picks/b/b;)Lcom/cmcm/orion/picks/b/b$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/cmcm/orion/picks/b/b$2;->c:Lcom/cmcm/orion/picks/b/b;

    invoke-static {v0}, Lcom/cmcm/orion/picks/b/b;->b(Lcom/cmcm/orion/picks/b/b;)Lcom/cmcm/orion/picks/b/b$a;

    move-result-object v0

    iget v1, p0, Lcom/cmcm/orion/picks/b/b$2;->b:I

    invoke-interface {v0, v1}, Lcom/cmcm/orion/picks/b/b$a;->a(I)V

    goto :goto_0

    .line 155
    :sswitch_1
    iget-object v0, p0, Lcom/cmcm/orion/picks/b/b$2;->c:Lcom/cmcm/orion/picks/b/b;

    invoke-static {v0}, Lcom/cmcm/orion/picks/b/b;->b(Lcom/cmcm/orion/picks/b/b;)Lcom/cmcm/orion/picks/b/b$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/cmcm/orion/picks/b/b$2;->c:Lcom/cmcm/orion/picks/b/b;

    invoke-static {v0}, Lcom/cmcm/orion/picks/b/b;->b(Lcom/cmcm/orion/picks/b/b;)Lcom/cmcm/orion/picks/b/b$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/cmcm/orion/picks/b/b$a;->c()V

    goto :goto_0

    .line 160
    :sswitch_2
    iget-object v0, p0, Lcom/cmcm/orion/picks/b/b$2;->c:Lcom/cmcm/orion/picks/b/b;

    invoke-static {v0}, Lcom/cmcm/orion/picks/b/b;->c(Lcom/cmcm/orion/picks/b/b;)Lcom/cmcm/orion/picks/b/b$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/cmcm/orion/picks/b/b$2;->c:Lcom/cmcm/orion/picks/b/b;

    invoke-static {v0}, Lcom/cmcm/orion/picks/b/b;->c(Lcom/cmcm/orion/picks/b/b;)Lcom/cmcm/orion/picks/b/b$b;

    move-result-object v0

    iget v1, p0, Lcom/cmcm/orion/picks/b/b$2;->b:I

    invoke-interface {v0, v1}, Lcom/cmcm/orion/picks/b/b$b;->a(I)V

    goto :goto_0

    .line 165
    :sswitch_3
    iget-object v0, p0, Lcom/cmcm/orion/picks/b/b$2;->c:Lcom/cmcm/orion/picks/b/b;

    invoke-static {v0}, Lcom/cmcm/orion/picks/b/b;->c(Lcom/cmcm/orion/picks/b/b;)Lcom/cmcm/orion/picks/b/b$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/cmcm/orion/picks/b/b$2;->c:Lcom/cmcm/orion/picks/b/b;

    invoke-static {v0}, Lcom/cmcm/orion/picks/b/b;->c(Lcom/cmcm/orion/picks/b/b;)Lcom/cmcm/orion/picks/b/b$b;

    move-result-object v0

    iget v1, p0, Lcom/cmcm/orion/picks/b/b$2;->b:I

    invoke-interface {v0, v1}, Lcom/cmcm/orion/picks/b/b$b;->b(I)V

    goto :goto_0

    .line 148
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0xb -> :sswitch_2
        0xc -> :sswitch_3
    .end sparse-switch
.end method
