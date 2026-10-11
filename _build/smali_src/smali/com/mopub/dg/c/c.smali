.class final Lcom/mopub/dg/c/c;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/mopub/dg/c/k;

.field final synthetic b:Lcom/mopub/dg/c/a;


# direct methods
.method constructor <init>(Lcom/mopub/dg/c/a;Landroid/os/Looper;Lcom/mopub/dg/c/k;)V
    .locals 0

    iput-object p1, p0, Lcom/mopub/dg/c/c;->b:Lcom/mopub/dg/c/a;

    iput-object p3, p0, Lcom/mopub/dg/c/c;->a:Lcom/mopub/dg/c/k;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/mopub/dg/c/c;->a:Lcom/mopub/dg/c/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mopub/dg/c/c;->a:Lcom/mopub/dg/c/k;

    iget-object v1, p0, Lcom/mopub/dg/c/c;->b:Lcom/mopub/dg/c/a;

    invoke-static {v1}, Lcom/mopub/dg/c/a;->a(Lcom/mopub/dg/c/a;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/mopub/dg/c/k;->a(Ljava/util/List;)V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/mopub/dg/c/c;->a:Lcom/mopub/dg/c/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mopub/dg/c/c;->a:Lcom/mopub/dg/c/k;

    invoke-interface {v0}, Lcom/mopub/dg/c/k;->a()V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0x1e -> :sswitch_1
    .end sparse-switch
.end method
