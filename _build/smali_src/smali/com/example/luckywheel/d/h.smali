.class Lcom/example/luckywheel/d/h;
.super Ljava/util/TimerTask;


# instance fields
.field final synthetic a:Lcom/example/luckywheel/d/b;


# direct methods
.method constructor <init>(Lcom/example/luckywheel/d/b;)V
    .locals 0

    iput-object p1, p0, Lcom/example/luckywheel/d/h;->a:Lcom/example/luckywheel/d/b;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/example/luckywheel/d/h;->a:Lcom/example/luckywheel/d/b;

    invoke-static {v1}, Lcom/example/luckywheel/d/b;->a(Lcom/example/luckywheel/d/b;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
