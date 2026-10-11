.class Lcom/mopub/mraid/MraidController$b$a;
.super Ljava/lang/Object;
.source "MraidController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/mraid/MraidController$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:I

.field private final b:[Landroid/view/View;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final c:Landroid/os/Handler;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private d:Ljava/lang/Runnable;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final e:Ljava/lang/Runnable;


# direct methods
.method private constructor <init>(Landroid/os/Handler;[Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/os/Handler;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 374
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 387
    new-instance v0, Lcom/mopub/mraid/MraidController$b$a$1;

    invoke-direct {v0, p0}, Lcom/mopub/mraid/MraidController$b$a$1;-><init>(Lcom/mopub/mraid/MraidController$b$a;)V

    iput-object v0, p0, Lcom/mopub/mraid/MraidController$b$a;->e:Ljava/lang/Runnable;

    .line 375
    iput-object p1, p0, Lcom/mopub/mraid/MraidController$b$a;->c:Landroid/os/Handler;

    .line 376
    iput-object p2, p0, Lcom/mopub/mraid/MraidController$b$a;->b:[Landroid/view/View;

    .line 377
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Handler;[Landroid/view/View;Lcom/mopub/mraid/MraidController$1;)V
    .locals 0

    .prologue
    .line 368
    invoke-direct {p0, p1, p2}, Lcom/mopub/mraid/MraidController$b$a;-><init>(Landroid/os/Handler;[Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lcom/mopub/mraid/MraidController$b$a;)[Landroid/view/View;
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Lcom/mopub/mraid/MraidController$b$a;->b:[Landroid/view/View;

    return-object v0
.end method

.method private b()V
    .locals 1

    .prologue
    .line 380
    iget v0, p0, Lcom/mopub/mraid/MraidController$b$a;->a:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/mopub/mraid/MraidController$b$a;->a:I

    .line 381
    iget v0, p0, Lcom/mopub/mraid/MraidController$b$a;->a:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mopub/mraid/MraidController$b$a;->d:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 382
    iget-object v0, p0, Lcom/mopub/mraid/MraidController$b$a;->d:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 383
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mopub/mraid/MraidController$b$a;->d:Ljava/lang/Runnable;

    .line 385
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/mopub/mraid/MraidController$b$a;)V
    .locals 0

    .prologue
    .line 368
    invoke-direct {p0}, Lcom/mopub/mraid/MraidController$b$a;->b()V

    return-void
.end method


# virtual methods
.method a()V
    .locals 2

    .prologue
    .line 419
    iget-object v0, p0, Lcom/mopub/mraid/MraidController$b$a;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mopub/mraid/MraidController$b$a;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 420
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mopub/mraid/MraidController$b$a;->d:Ljava/lang/Runnable;

    .line 421
    return-void
.end method

.method a(Ljava/lang/Runnable;)V
    .locals 2
    .param p1    # Ljava/lang/Runnable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 413
    iput-object p1, p0, Lcom/mopub/mraid/MraidController$b$a;->d:Ljava/lang/Runnable;

    .line 414
    iget-object v0, p0, Lcom/mopub/mraid/MraidController$b$a;->b:[Landroid/view/View;

    array-length v0, v0

    iput v0, p0, Lcom/mopub/mraid/MraidController$b$a;->a:I

    .line 415
    iget-object v0, p0, Lcom/mopub/mraid/MraidController$b$a;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mopub/mraid/MraidController$b$a;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 416
    return-void
.end method
