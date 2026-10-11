.class Lcom/mopub/mraid/MraidController$b;
.super Ljava/lang/Object;
.source "MraidController.java"


# annotations
.annotation build Lcom/mopub/common/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/mraid/MraidController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/mraid/MraidController$b$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/os/Handler;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private b:Lcom/mopub/mraid/MraidController$b$a;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 367
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 424
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/mopub/mraid/MraidController$b;->a:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method varargs a([Landroid/view/View;)Lcom/mopub/mraid/MraidController$b$a;
    .locals 3
    .param p1    # [Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 428
    new-instance v0, Lcom/mopub/mraid/MraidController$b$a;

    iget-object v1, p0, Lcom/mopub/mraid/MraidController$b;->a:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lcom/mopub/mraid/MraidController$b$a;-><init>(Landroid/os/Handler;[Landroid/view/View;Lcom/mopub/mraid/MraidController$1;)V

    iput-object v0, p0, Lcom/mopub/mraid/MraidController$b;->b:Lcom/mopub/mraid/MraidController$b$a;

    .line 429
    iget-object v0, p0, Lcom/mopub/mraid/MraidController$b;->b:Lcom/mopub/mraid/MraidController$b$a;

    return-object v0
.end method

.method a()V
    .locals 1

    .prologue
    .line 433
    iget-object v0, p0, Lcom/mopub/mraid/MraidController$b;->b:Lcom/mopub/mraid/MraidController$b$a;

    if-eqz v0, :cond_0

    .line 434
    iget-object v0, p0, Lcom/mopub/mraid/MraidController$b;->b:Lcom/mopub/mraid/MraidController$b$a;

    invoke-virtual {v0}, Lcom/mopub/mraid/MraidController$b$a;->a()V

    .line 435
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mopub/mraid/MraidController$b;->b:Lcom/mopub/mraid/MraidController$b$a;

    .line 437
    :cond_0
    return-void
.end method
