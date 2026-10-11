.class final Lcom/mopub/nativesdk/c/c;
.super Landroid/os/Handler;
.source "AbsHttpLoader.java"


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/mopub/nativesdk/c/l;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/mopub/nativesdk/c/l;)V
    .locals 1

    .prologue
    .line 276
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 273
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mopub/nativesdk/c/c;->a:Ljava/lang/ref/WeakReference;

    .line 277
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/mopub/nativesdk/c/c;->a:Ljava/lang/ref/WeakReference;

    .line 278
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    .prologue
    .line 282
    iget-object v0, p0, Lcom/mopub/nativesdk/c/c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/nativesdk/c/l;

    .line 283
    if-eqz v0, :cond_0

    .line 284
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 325
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 327
    :cond_0
    return-void

    .line 288
    :pswitch_1
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/mopub/nativesdk/c/l;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 293
    :pswitch_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    goto :goto_0

    .line 299
    :pswitch_3
    iget v1, p1, Landroid/os/Message;->arg1:I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] Http status code."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/mopub/nativesdk/c/l;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 305
    :pswitch_4
    iget v1, p1, Landroid/os/Message;->arg1:I

    const-string v1, "Connect timeout."

    invoke-interface {v0, v1}, Lcom/mopub/nativesdk/c/l;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 311
    :pswitch_5
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 312
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/mopub/nativesdk/c/l;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 314
    :cond_1
    iget v1, p1, Landroid/os/Message;->arg1:I

    const-string v1, "http connect error (unknow)"

    invoke-interface {v0, v1}, Lcom/mopub/nativesdk/c/l;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 319
    :pswitch_6
    iget v1, p1, Landroid/os/Message;->arg1:I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]request api error ! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/mopub/nativesdk/c/l;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 322
    :pswitch_7
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0}, Lcom/mopub/nativesdk/c/l;->b()V

    goto :goto_0

    .line 284
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
