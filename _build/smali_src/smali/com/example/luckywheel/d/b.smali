.class public Lcom/example/luckywheel/d/b;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:I

.field private c:Lcom/example/luckywheel/d/c;

.field private final d:Ljava/util/Timer;

.field private volatile e:Z

.field private f:Ljava/util/TimerTask;

.field private g:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/example/luckywheel/d/b;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/example/luckywheel/d/b;->d:Ljava/util/Timer;

    new-instance v0, Lcom/example/luckywheel/d/h;

    invoke-direct {v0, p0}, Lcom/example/luckywheel/d/h;-><init>(Lcom/example/luckywheel/d/b;)V

    iput-object v0, p0, Lcom/example/luckywheel/d/b;->f:Ljava/util/TimerTask;

    new-instance v0, Lcom/example/luckywheel/d/i;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/example/luckywheel/d/i;-><init>(Lcom/example/luckywheel/d/b;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/example/luckywheel/d/b;->g:Landroid/os/Handler;

    iput p1, p0, Lcom/example/luckywheel/d/b;->a:I

    iput p2, p0, Lcom/example/luckywheel/d/b;->b:I

    return-void
.end method

.method static synthetic a(Lcom/example/luckywheel/d/b;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/example/luckywheel/d/b;->g:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic b(Lcom/example/luckywheel/d/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/example/luckywheel/d/b;->c()V

    return-void
.end method

.method private c()V
    .locals 2

    iget v0, p0, Lcom/example/luckywheel/d/b;->a:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget v0, p0, Lcom/example/luckywheel/d/b;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/example/luckywheel/d/b;->b:I

    iget v0, p0, Lcom/example/luckywheel/d/b;->b:I

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcom/example/luckywheel/d/b;->c:Lcom/example/luckywheel/d/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/example/luckywheel/d/b;->c:Lcom/example/luckywheel/d/c;

    iget v1, p0, Lcom/example/luckywheel/d/b;->b:I

    invoke-interface {v0, v1}, Lcom/example/luckywheel/d/c;->a(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/example/luckywheel/d/b;->b()V

    goto :goto_0

    :pswitch_1
    iget v0, p0, Lcom/example/luckywheel/d/b;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/example/luckywheel/d/b;->b:I

    iget-object v0, p0, Lcom/example/luckywheel/d/b;->c:Lcom/example/luckywheel/d/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/example/luckywheel/d/b;->c:Lcom/example/luckywheel/d/c;

    iget v1, p0, Lcom/example/luckywheel/d/b;->b:I

    invoke-interface {v0, v1}, Lcom/example/luckywheel/d/c;->a(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public a()V
    .locals 6

    const-wide/16 v2, 0x3e8

    iget-boolean v0, p0, Lcom/example/luckywheel/d/b;->e:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/example/luckywheel/d/b;->e:Z

    iget-object v0, p0, Lcom/example/luckywheel/d/b;->d:Ljava/util/Timer;

    iget-object v1, p0, Lcom/example/luckywheel/d/b;->f:Ljava/util/TimerTask;

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    iget-object v0, p0, Lcom/example/luckywheel/d/b;->c:Lcom/example/luckywheel/d/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/example/luckywheel/d/b;->c:Lcom/example/luckywheel/d/c;

    invoke-interface {v0}, Lcom/example/luckywheel/d/c;->a()V

    goto :goto_0
.end method

.method public a(Lcom/example/luckywheel/d/c;)V
    .locals 0

    iput-object p1, p0, Lcom/example/luckywheel/d/b;->c:Lcom/example/luckywheel/d/c;

    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/example/luckywheel/d/b;->d:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iget-object v0, p0, Lcom/example/luckywheel/d/b;->f:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/example/luckywheel/d/b;->e:Z

    iget-object v0, p0, Lcom/example/luckywheel/d/b;->c:Lcom/example/luckywheel/d/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/example/luckywheel/d/b;->c:Lcom/example/luckywheel/d/c;

    invoke-interface {v0}, Lcom/example/luckywheel/d/c;->b()V

    :cond_0
    return-void
.end method
