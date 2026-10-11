.class Lcom/cmplay/base/util/c$b;
.super Landroid/os/Handler;
.source "AsyncTaskEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmplay/base/util/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 606
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 607
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 611
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/cmplay/base/util/c$a;

    .line 612
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 621
    :goto_0
    return-void

    .line 615
    :pswitch_0
    iget-object v1, v0, Lcom/cmplay/base/util/c$a;->a:Lcom/cmplay/base/util/c;

    iget-object v0, v0, Lcom/cmplay/base/util/c$a;->b:[Ljava/lang/Object;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-static {v1, v0}, Lcom/cmplay/base/util/c;->c(Lcom/cmplay/base/util/c;Ljava/lang/Object;)V

    goto :goto_0

    .line 618
    :pswitch_1
    iget-object v1, v0, Lcom/cmplay/base/util/c$a;->a:Lcom/cmplay/base/util/c;

    iget-object v0, v0, Lcom/cmplay/base/util/c$a;->b:[Ljava/lang/Object;

    invoke-virtual {v1, v0}, Lcom/cmplay/base/util/c;->b([Ljava/lang/Object;)V

    goto :goto_0

    .line 612
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
