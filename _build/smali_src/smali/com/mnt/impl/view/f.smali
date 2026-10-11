.class final Lcom/mnt/impl/view/f;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field private synthetic a:Lcom/mnt/impl/view/RectangleBannerView;


# direct methods
.method constructor <init>(Lcom/mnt/impl/view/RectangleBannerView;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/mnt/impl/view/f;->a:Lcom/mnt/impl/view/RectangleBannerView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 64
    iget v0, p1, Landroid/os/Message;->arg1:I

    packed-switch v0, :pswitch_data_0

    .line 79
    :cond_0
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 80
    return-void

    .line 66
    :pswitch_1
    iget-object v1, p0, Lcom/mnt/impl/view/f;->a:Lcom/mnt/impl/view/RectangleBannerView;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/mnt/Ad;

    invoke-static {v1, v0}, Lcom/mnt/impl/view/RectangleBannerView;->a(Lcom/mnt/impl/view/RectangleBannerView;Lcom/mnt/Ad;)Lcom/mnt/Ad;

    .line 67
    iget-object v0, p0, Lcom/mnt/impl/view/f;->a:Lcom/mnt/impl/view/RectangleBannerView;

    iget-object v1, p0, Lcom/mnt/impl/view/f;->a:Lcom/mnt/impl/view/RectangleBannerView;

    invoke-static {v1}, Lcom/mnt/impl/view/RectangleBannerView;->a(Lcom/mnt/impl/view/RectangleBannerView;)Lcom/mnt/Ad;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mnt/impl/view/RectangleBannerView;->b(Lcom/mnt/impl/view/RectangleBannerView;Lcom/mnt/Ad;)V

    goto :goto_0

    .line 70
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/mnt/AdError;

    .line 71
    iget-object v1, p0, Lcom/mnt/impl/view/f;->a:Lcom/mnt/impl/view/RectangleBannerView;

    invoke-static {v1}, Lcom/mnt/impl/view/RectangleBannerView;->b(Lcom/mnt/impl/view/RectangleBannerView;)Lcom/mnt/IAdListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 72
    iget-object v1, p0, Lcom/mnt/impl/view/f;->a:Lcom/mnt/impl/view/RectangleBannerView;

    invoke-static {v1}, Lcom/mnt/impl/view/RectangleBannerView;->b(Lcom/mnt/impl/view/RectangleBannerView;)Lcom/mnt/IAdListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/mnt/IAdListener;->onAdError(Lcom/mnt/AdError;)V

    goto :goto_0

    .line 64
    :pswitch_data_0
    .packed-switch 0x1000
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
