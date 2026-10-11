.class Lcom/cmplay/tile2/ui/ShareActivity$1;
.super Landroid/os/Handler;
.source "ShareActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmplay/tile2/ui/ShareActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cmplay/tile2/ui/ShareActivity;


# direct methods
.method constructor <init>(Lcom/cmplay/tile2/ui/ShareActivity;)V
    .locals 0

    .prologue
    .line 370
    iput-object p1, p0, Lcom/cmplay/tile2/ui/ShareActivity$1;->a:Lcom/cmplay/tile2/ui/ShareActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x4

    const/4 v6, 0x3

    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 374
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_1

    .line 409
    :cond_0
    :goto_0
    return-void

    .line 378
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v5, :cond_2

    .line 379
    iget-object v0, p0, Lcom/cmplay/tile2/ui/ShareActivity$1;->a:Lcom/cmplay/tile2/ui/ShareActivity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030063

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 380
    iget-object v1, p0, Lcom/cmplay/tile2/ui/ShareActivity$1;->a:Lcom/cmplay/tile2/ui/ShareActivity;

    const v2, 0x7f05004b

    invoke-virtual {v1, v2}, Lcom/cmplay/tile2/ui/ShareActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 381
    iget-object v2, p0, Lcom/cmplay/tile2/ui/ShareActivity$1;->a:Lcom/cmplay/tile2/ui/ShareActivity;

    invoke-static {v2, v0, v1}, Lcom/cmplay/tile2/ui/ShareActivity;->a(Lcom/cmplay/tile2/ui/ShareActivity;Landroid/view/View;Ljava/lang/String;)V

    .line 382
    iget-object v0, p0, Lcom/cmplay/tile2/ui/ShareActivity$1;->a:Lcom/cmplay/tile2/ui/ShareActivity;

    iget-object v1, p0, Lcom/cmplay/tile2/ui/ShareActivity$1;->a:Lcom/cmplay/tile2/ui/ShareActivity;

    invoke-static {v1}, Lcom/cmplay/tile2/ui/ShareActivity;->a(Lcom/cmplay/tile2/ui/ShareActivity;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmplay/tile2/ui/ShareActivity;->a(Lcom/cmplay/tile2/ui/ShareActivity;Landroid/view/View;)V

    .line 383
    new-array v0, v3, [I

    .line 384
    iget-object v1, p0, Lcom/cmplay/tile2/ui/ShareActivity$1;->a:Lcom/cmplay/tile2/ui/ShareActivity;

    invoke-static {v1}, Lcom/cmplay/tile2/ui/ShareActivity;->b(Lcom/cmplay/tile2/ui/ShareActivity;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->getLocationOnScreen([I)V

    .line 385
    iget-object v1, p0, Lcom/cmplay/tile2/ui/ShareActivity$1;->a:Lcom/cmplay/tile2/ui/ShareActivity;

    invoke-static {v1}, Lcom/cmplay/tile2/ui/ShareActivity;->c(Lcom/cmplay/tile2/ui/ShareActivity;)Landroid/widget/PopupWindow;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    .line 386
    const/4 v1, 0x0

    aget v1, v0, v1

    iget-object v2, p0, Lcom/cmplay/tile2/ui/ShareActivity$1;->a:Lcom/cmplay/tile2/ui/ShareActivity;

    invoke-static {v2}, Lcom/cmplay/tile2/ui/ShareActivity;->a(Lcom/cmplay/tile2/ui/ShareActivity;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    const/16 v2, 0xf

    invoke-static {v2}, Lcom/cmplay/util/e;->a(I)I

    move-result v2

    sub-int/2addr v1, v2

    .line 387
    aget v0, v0, v5

    const/16 v2, 0xa

    invoke-static {v2}, Lcom/cmplay/util/e;->a(I)I

    move-result v2

    sub-int/2addr v0, v2

    iget-object v2, p0, Lcom/cmplay/tile2/ui/ShareActivity$1;->a:Lcom/cmplay/tile2/ui/ShareActivity;

    invoke-static {v2}, Lcom/cmplay/tile2/ui/ShareActivity;->b(Lcom/cmplay/tile2/ui/ShareActivity;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView;->getHeight()I

    move-result v2

    sub-int/2addr v0, v2

    .line 388
    iget-object v2, p0, Lcom/cmplay/tile2/ui/ShareActivity$1;->a:Lcom/cmplay/tile2/ui/ShareActivity;

    invoke-static {v2}, Lcom/cmplay/tile2/ui/ShareActivity;->c(Lcom/cmplay/tile2/ui/ShareActivity;)Landroid/widget/PopupWindow;

    move-result-object v2

    iget-object v3, p0, Lcom/cmplay/tile2/ui/ShareActivity$1;->a:Lcom/cmplay/tile2/ui/ShareActivity;

    invoke-static {v3}, Lcom/cmplay/tile2/ui/ShareActivity;->a(Lcom/cmplay/tile2/ui/ShareActivity;)Landroid/widget/ImageView;

    move-result-object v3

    const/16 v4, 0x33

    invoke-virtual {v2, v3, v4, v1, v0}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 389
    iget-object v0, p0, Lcom/cmplay/tile2/ui/ShareActivity$1;->a:Lcom/cmplay/tile2/ui/ShareActivity;

    invoke-static {v0}, Lcom/cmplay/tile2/ui/ShareActivity;->d(Lcom/cmplay/tile2/ui/ShareActivity;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v6, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 390
    iget-object v0, p0, Lcom/cmplay/tile2/ui/ShareActivity$1;->a:Lcom/cmplay/tile2/ui/ShareActivity;

    invoke-static {v0, v5}, Lcom/cmplay/tile2/ui/ShareActivity;->a(Lcom/cmplay/tile2/ui/ShareActivity;Z)Z

    goto/16 :goto_0

    .line 391
    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v3, :cond_3

    .line 392
    iget-object v0, p0, Lcom/cmplay/tile2/ui/ShareActivity$1;->a:Lcom/cmplay/tile2/ui/ShareActivity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030063

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 393
    iget-object v1, p0, Lcom/cmplay/tile2/ui/ShareActivity$1;->a:Lcom/cmplay/tile2/ui/ShareActivity;

    const v2, 0x7f05004c

    invoke-virtual {v1, v2}, Lcom/cmplay/tile2/ui/ShareActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 394
    iget-object v2, p0, Lcom/cmplay/tile2/ui/ShareActivity$1;->a:Lcom/cmplay/tile2/ui/ShareActivity;

    invoke-static {v2, v0, v1}, Lcom/cmplay/tile2/ui/ShareActivity;->a(Lcom/cmplay/tile2/ui/ShareActivity;Landroid/view/View;Ljava/lang/String;)V

    .line 395
    const/16 v0, 0x14

    invoke-static {v0}, Lcom/cmplay/util/e;->a(I)I

    .line 396
    const/16 v0, 0x64

    invoke-static {v0}, Lcom/cmplay/util/e;->a(I)I

    .line 397
    iget-object v0, p0, Lcom/cmplay/tile2/ui/ShareActivity$1;->a:Lcom/cmplay/tile2/ui/ShareActivity;

    invoke-static {v0}, Lcom/cmplay/tile2/ui/ShareActivity;->d(Lcom/cmplay/tile2/ui/ShareActivity;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 398
    :cond_3
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v6, :cond_4

    .line 399
    iget-object v0, p0, Lcom/cmplay/tile2/ui/ShareActivity$1;->a:Lcom/cmplay/tile2/ui/ShareActivity;

    invoke-static {v0}, Lcom/cmplay/tile2/ui/ShareActivity;->c(Lcom/cmplay/tile2/ui/ShareActivity;)Landroid/widget/PopupWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmplay/tile2/ui/ShareActivity$1;->a:Lcom/cmplay/tile2/ui/ShareActivity;

    invoke-static {v0}, Lcom/cmplay/tile2/ui/ShareActivity;->c(Lcom/cmplay/tile2/ui/ShareActivity;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 400
    iget-object v0, p0, Lcom/cmplay/tile2/ui/ShareActivity$1;->a:Lcom/cmplay/tile2/ui/ShareActivity;

    invoke-static {v0}, Lcom/cmplay/tile2/ui/ShareActivity;->c(Lcom/cmplay/tile2/ui/ShareActivity;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 401
    iget-object v0, p0, Lcom/cmplay/tile2/ui/ShareActivity$1;->a:Lcom/cmplay/tile2/ui/ShareActivity;

    invoke-static {v0, v2}, Lcom/cmplay/tile2/ui/ShareActivity;->a(Lcom/cmplay/tile2/ui/ShareActivity;Landroid/widget/PopupWindow;)Landroid/widget/PopupWindow;

    goto/16 :goto_0

    .line 403
    :cond_4
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v4, :cond_0

    .line 404
    iget-object v0, p0, Lcom/cmplay/tile2/ui/ShareActivity$1;->a:Lcom/cmplay/tile2/ui/ShareActivity;

    invoke-static {v0}, Lcom/cmplay/tile2/ui/ShareActivity;->c(Lcom/cmplay/tile2/ui/ShareActivity;)Landroid/widget/PopupWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmplay/tile2/ui/ShareActivity$1;->a:Lcom/cmplay/tile2/ui/ShareActivity;

    invoke-static {v0}, Lcom/cmplay/tile2/ui/ShareActivity;->c(Lcom/cmplay/tile2/ui/ShareActivity;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 405
    iget-object v0, p0, Lcom/cmplay/tile2/ui/ShareActivity$1;->a:Lcom/cmplay/tile2/ui/ShareActivity;

    invoke-static {v0}, Lcom/cmplay/tile2/ui/ShareActivity;->c(Lcom/cmplay/tile2/ui/ShareActivity;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 406
    iget-object v0, p0, Lcom/cmplay/tile2/ui/ShareActivity$1;->a:Lcom/cmplay/tile2/ui/ShareActivity;

    invoke-static {v0, v2}, Lcom/cmplay/tile2/ui/ShareActivity;->a(Lcom/cmplay/tile2/ui/ShareActivity;Landroid/widget/PopupWindow;)Landroid/widget/PopupWindow;

    goto/16 :goto_0
.end method
