.class Lcom/example/luckywheel/d/i;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/example/luckywheel/d/b;


# direct methods
.method constructor <init>(Lcom/example/luckywheel/d/b;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/example/luckywheel/d/i;->a:Lcom/example/luckywheel/d/b;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/example/luckywheel/d/i;->a:Lcom/example/luckywheel/d/b;

    invoke-static {v0}, Lcom/example/luckywheel/d/b;->b(Lcom/example/luckywheel/d/b;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
