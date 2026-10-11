.class Lcom/cmplay/h/a/b$a;
.super Ljava/lang/Object;
.source "FaceBookPlatform.java"

# interfaces
.implements Lcom/facebook/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmplay/h/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<RESU",
        "LT:Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/facebook/g",
        "<TRESU",
        "LT;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/cmplay/h/a/b;


# direct methods
.method private constructor <init>(Lcom/cmplay/h/a/b;)V
    .locals 0

    .prologue
    .line 338
    iput-object p1, p0, Lcom/cmplay/h/a/b$a;->a:Lcom/cmplay/h/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/cmplay/h/a/b;Lcom/cmplay/h/a/b$1;)V
    .locals 0

    .prologue
    .line 338
    invoke-direct {p0, p1}, Lcom/cmplay/h/a/b$a;-><init>(Lcom/cmplay/h/a/b;)V

    return-void
.end method

.method private a(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 408
    packed-switch p1, :pswitch_data_0

    .line 446
    :goto_0
    const-string v0, "unknow"

    :goto_1
    return-object v0

    .line 410
    :pswitch_0
    iget-object v0, p0, Lcom/cmplay/h/a/b$a;->a:Lcom/cmplay/h/a/b;

    invoke-static {v0}, Lcom/cmplay/h/a/b;->h(Lcom/cmplay/h/a/b;)I

    move-result v0

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 416
    :pswitch_1
    const-string v0, "at_fb_invite_success"

    goto :goto_1

    .line 412
    :pswitch_2
    const-string v0, "at_fb_timeline_success"

    goto :goto_1

    .line 414
    :pswitch_3
    const-string v0, "at_fb_messenger_success"

    goto :goto_1

    .line 418
    :pswitch_4
    const-string v0, "at_fb_game_req_success"

    goto :goto_1

    .line 422
    :pswitch_5
    iget-object v0, p0, Lcom/cmplay/h/a/b$a;->a:Lcom/cmplay/h/a/b;

    invoke-static {v0}, Lcom/cmplay/h/a/b;->h(Lcom/cmplay/h/a/b;)I

    move-result v0

    packed-switch v0, :pswitch_data_2

    goto :goto_0

    .line 428
    :pswitch_6
    const-string v0, "at_fb_invite_cancel"

    goto :goto_1

    .line 424
    :pswitch_7
    const-string v0, "at_fb_timeline_cancel"

    goto :goto_1

    .line 426
    :pswitch_8
    const-string v0, "at_fb_messenger_cancel"

    goto :goto_1

    .line 430
    :pswitch_9
    const-string v0, "at_fb_game_req_cancel"

    goto :goto_1

    .line 434
    :pswitch_a
    iget-object v0, p0, Lcom/cmplay/h/a/b$a;->a:Lcom/cmplay/h/a/b;

    invoke-static {v0}, Lcom/cmplay/h/a/b;->h(Lcom/cmplay/h/a/b;)I

    move-result v0

    packed-switch v0, :pswitch_data_3

    goto :goto_0

    .line 440
    :pswitch_b
    const-string v0, "at_fb_invite_faild"

    goto :goto_1

    .line 436
    :pswitch_c
    const-string v0, "at_fb_timeline_faild"

    goto :goto_1

    .line 438
    :pswitch_d
    const-string v0, "at_fb_messenger_faild"

    goto :goto_1

    .line 442
    :pswitch_e
    const-string v0, "at_fb_game_req_faild"

    goto :goto_1

    .line 408
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_5
        :pswitch_a
    .end packed-switch

    .line 410
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 422
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch

    .line 434
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method

.method private b()I
    .locals 1

    .prologue
    .line 450
    iget-object v0, p0, Lcom/cmplay/h/a/b$a;->a:Lcom/cmplay/h/a/b;

    invoke-static {v0}, Lcom/cmplay/h/a/b;->h(Lcom/cmplay/h/a/b;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 460
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 452
    :pswitch_0
    const/4 v0, 0x3

    goto :goto_0

    .line 454
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 456
    :pswitch_2
    const/4 v0, 0x1

    goto :goto_0

    .line 458
    :pswitch_3
    const/16 v0, 0x9

    goto :goto_0

    .line 450
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public a()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    .line 360
    const-string v0, "deep_link"

    const-string v1, "FBCallback   onCancel"

    invoke-static {v0, v1}, Lcom/cmplay/util/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    invoke-static {}, Lcom/cmplay/h/b;->a()Lcom/cmplay/h/b;

    move-result-object v0

    invoke-direct {p0, v5}, Lcom/cmplay/h/a/b$a;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cmplay/h/b;->a(Ljava/lang/String;)V

    .line 362
    invoke-static {}, Lcom/cmplay/h/b;->a()Lcom/cmplay/h/b;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v5}, Lcom/cmplay/h/a/b$a;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/cmplay/h/a/b$a;->a:Lcom/cmplay/h/a/b;

    invoke-static {v2}, Lcom/cmplay/h/a/b;->a(Lcom/cmplay/h/a/b;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cmplay/h/b;->a(Ljava/lang/String;)V

    .line 363
    const/16 v0, 0x9

    iget-object v1, p0, Lcom/cmplay/h/a/b$a;->a:Lcom/cmplay/h/a/b;

    invoke-static {v1}, Lcom/cmplay/h/a/b;->b(Lcom/cmplay/h/a/b;)Lcom/cmplay/h/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cmplay/h/e;->f()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 365
    invoke-direct {p0}, Lcom/cmplay/h/a/b$a;->b()I

    move-result v0

    invoke-static {v0, v5}, Lcom/cmplay/util/NativeUtil;->gameRequestCallbackOnGLThread(II)V

    .line 371
    :goto_0
    invoke-static {}, Lcom/cmplay/h/f;->b()Lcom/cmplay/h/f;

    move-result-object v0

    iget-object v1, p0, Lcom/cmplay/h/a/b$a;->a:Lcom/cmplay/h/a/b;

    invoke-virtual {v0, v1}, Lcom/cmplay/h/f;->b(Lcom/cmplay/h/c;)V

    .line 372
    sget-object v0, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/cmplay/webview/broadcast/WebBroadcast;->a(Landroid/content/Context;I)V

    .line 373
    iget-object v0, p0, Lcom/cmplay/h/a/b$a;->a:Lcom/cmplay/h/a/b;

    invoke-virtual {v0}, Lcom/cmplay/h/a/b;->b()V

    .line 374
    return-void

    .line 368
    :cond_0
    invoke-static {}, Lcom/cmplay/h/f;->b()Lcom/cmplay/h/f;

    move-result-object v0

    iget-object v1, p0, Lcom/cmplay/h/a/b$a;->a:Lcom/cmplay/h/a/b;

    invoke-static {v1}, Lcom/cmplay/h/a/b;->c(Lcom/cmplay/h/a/b;)I

    move-result v1

    iget-object v2, p0, Lcom/cmplay/h/a/b$a;->a:Lcom/cmplay/h/a/b;

    invoke-static {v2}, Lcom/cmplay/h/a/b;->d(Lcom/cmplay/h/a/b;)I

    move-result v2

    iget-object v3, p0, Lcom/cmplay/h/a/b$a;->a:Lcom/cmplay/h/a/b;

    invoke-static {v3}, Lcom/cmplay/h/a/b;->e(Lcom/cmplay/h/a/b;)I

    move-result v3

    const/4 v4, 0x5

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/cmplay/h/f;->a(IIII)V

    .line 369
    iget-object v0, p0, Lcom/cmplay/h/a/b$a;->a:Lcom/cmplay/h/a/b;

    invoke-direct {p0}, Lcom/cmplay/h/a/b$a;->b()I

    move-result v1

    invoke-virtual {v0, v1, v5}, Lcom/cmplay/h/a/b;->a(II)V

    goto :goto_0
.end method

.method public a(Lcom/facebook/i;)V
    .locals 6

    .prologue
    const/4 v3, 0x3

    const/4 v5, 0x0

    .line 379
    const-string v0, "deep_link"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FBCallback   onError"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/facebook/i;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmplay/util/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    iget-object v0, p0, Lcom/cmplay/h/a/b$a;->a:Lcom/cmplay/h/a/b;

    invoke-static {v0}, Lcom/cmplay/h/a/b;->f(Lcom/cmplay/h/a/b;)I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 383
    iget-object v0, p0, Lcom/cmplay/h/a/b$a;->a:Lcom/cmplay/h/a/b;

    iget-object v1, p0, Lcom/cmplay/h/a/b$a;->a:Lcom/cmplay/h/a/b;

    invoke-static {v1}, Lcom/cmplay/h/a/b;->b(Lcom/cmplay/h/a/b;)Lcom/cmplay/h/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cmplay/h/a/b;->a(Lcom/cmplay/h/e;)V

    .line 384
    iget-object v0, p0, Lcom/cmplay/h/a/b$a;->a:Lcom/cmplay/h/a/b;

    invoke-static {v0}, Lcom/cmplay/h/a/b;->g(Lcom/cmplay/h/a/b;)I

    .line 400
    :goto_0
    return-void

    .line 386
    :cond_0
    invoke-static {}, Lcom/cmplay/h/b;->a()Lcom/cmplay/h/b;

    move-result-object v0

    invoke-direct {p0, v3}, Lcom/cmplay/h/a/b$a;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cmplay/h/b;->a(Ljava/lang/String;)V

    .line 387
    invoke-static {}, Lcom/cmplay/h/b;->a()Lcom/cmplay/h/b;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v3}, Lcom/cmplay/h/a/b$a;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/cmplay/h/a/b$a;->a:Lcom/cmplay/h/a/b;

    invoke-static {v2}, Lcom/cmplay/h/a/b;->a(Lcom/cmplay/h/a/b;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cmplay/h/b;->a(Ljava/lang/String;)V

    .line 388
    const/16 v0, 0x9

    iget-object v1, p0, Lcom/cmplay/h/a/b$a;->a:Lcom/cmplay/h/a/b;

    invoke-static {v1}, Lcom/cmplay/h/a/b;->b(Lcom/cmplay/h/a/b;)Lcom/cmplay/h/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cmplay/h/e;->f()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 390
    invoke-direct {p0}, Lcom/cmplay/h/a/b$a;->b()I

    move-result v0

    invoke-static {v0, v5}, Lcom/cmplay/util/NativeUtil;->gameRequestCallbackOnGLThread(II)V

    .line 396
    :goto_1
    invoke-static {}, Lcom/cmplay/h/f;->b()Lcom/cmplay/h/f;

    move-result-object v0

    iget-object v1, p0, Lcom/cmplay/h/a/b$a;->a:Lcom/cmplay/h/a/b;

    invoke-virtual {v0, v1}, Lcom/cmplay/h/f;->b(Lcom/cmplay/h/c;)V

    .line 397
    sget-object v0, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    const/4 v1, -0x2

    invoke-static {v0, v1}, Lcom/cmplay/webview/broadcast/WebBroadcast;->a(Landroid/content/Context;I)V

    .line 398
    iget-object v0, p0, Lcom/cmplay/h/a/b$a;->a:Lcom/cmplay/h/a/b;

    invoke-virtual {v0}, Lcom/cmplay/h/a/b;->b()V

    goto :goto_0

    .line 393
    :cond_1
    invoke-static {}, Lcom/cmplay/h/f;->b()Lcom/cmplay/h/f;

    move-result-object v0

    iget-object v1, p0, Lcom/cmplay/h/a/b$a;->a:Lcom/cmplay/h/a/b;

    invoke-static {v1}, Lcom/cmplay/h/a/b;->c(Lcom/cmplay/h/a/b;)I

    move-result v1

    iget-object v2, p0, Lcom/cmplay/h/a/b$a;->a:Lcom/cmplay/h/a/b;

    invoke-static {v2}, Lcom/cmplay/h/a/b;->d(Lcom/cmplay/h/a/b;)I

    move-result v2

    iget-object v3, p0, Lcom/cmplay/h/a/b$a;->a:Lcom/cmplay/h/a/b;

    invoke-static {v3}, Lcom/cmplay/h/a/b;->e(Lcom/cmplay/h/a/b;)I

    move-result v3

    const/4 v4, 0x4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/cmplay/h/f;->a(IIII)V

    .line 394
    iget-object v0, p0, Lcom/cmplay/h/a/b$a;->a:Lcom/cmplay/h/a/b;

    invoke-direct {p0}, Lcom/cmplay/h/a/b$a;->b()I

    move-result v1

    invoke-virtual {v0, v1, v5}, Lcom/cmplay/h/a/b;->a(II)V

    goto :goto_1
.end method

.method public a(Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TRESU",
            "LT;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 342
    const-string v0, "deep_link"

    const-string v1, "FBCallback   onSuccess"

    invoke-static {v0, v1}, Lcom/cmplay/util/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    invoke-static {}, Lcom/cmplay/h/b;->a()Lcom/cmplay/h/b;

    move-result-object v0

    invoke-direct {p0, v5}, Lcom/cmplay/h/a/b$a;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cmplay/h/b;->a(Ljava/lang/String;)V

    .line 344
    invoke-static {}, Lcom/cmplay/h/b;->a()Lcom/cmplay/h/b;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v5}, Lcom/cmplay/h/a/b$a;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/cmplay/h/a/b$a;->a:Lcom/cmplay/h/a/b;

    invoke-static {v2}, Lcom/cmplay/h/a/b;->a(Lcom/cmplay/h/a/b;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cmplay/h/b;->a(Ljava/lang/String;)V

    .line 345
    const/16 v0, 0x9

    iget-object v1, p0, Lcom/cmplay/h/a/b$a;->a:Lcom/cmplay/h/a/b;

    invoke-static {v1}, Lcom/cmplay/h/a/b;->b(Lcom/cmplay/h/a/b;)Lcom/cmplay/h/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cmplay/h/e;->f()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 347
    invoke-direct {p0}, Lcom/cmplay/h/a/b$a;->b()I

    move-result v0

    invoke-static {v0, v5}, Lcom/cmplay/util/NativeUtil;->gameRequestCallbackOnGLThread(II)V

    .line 353
    :goto_0
    invoke-static {}, Lcom/cmplay/h/f;->b()Lcom/cmplay/h/f;

    move-result-object v0

    iget-object v1, p0, Lcom/cmplay/h/a/b$a;->a:Lcom/cmplay/h/a/b;

    invoke-virtual {v0, v1}, Lcom/cmplay/h/f;->b(Lcom/cmplay/h/c;)V

    .line 354
    sget-object v0, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    invoke-static {v0, v5}, Lcom/cmplay/webview/broadcast/WebBroadcast;->a(Landroid/content/Context;I)V

    .line 355
    iget-object v0, p0, Lcom/cmplay/h/a/b$a;->a:Lcom/cmplay/h/a/b;

    invoke-virtual {v0}, Lcom/cmplay/h/a/b;->b()V

    .line 356
    return-void

    .line 350
    :cond_0
    invoke-static {}, Lcom/cmplay/h/f;->b()Lcom/cmplay/h/f;

    move-result-object v0

    iget-object v1, p0, Lcom/cmplay/h/a/b$a;->a:Lcom/cmplay/h/a/b;

    invoke-static {v1}, Lcom/cmplay/h/a/b;->c(Lcom/cmplay/h/a/b;)I

    move-result v1

    iget-object v2, p0, Lcom/cmplay/h/a/b$a;->a:Lcom/cmplay/h/a/b;

    invoke-static {v2}, Lcom/cmplay/h/a/b;->d(Lcom/cmplay/h/a/b;)I

    move-result v2

    iget-object v3, p0, Lcom/cmplay/h/a/b$a;->a:Lcom/cmplay/h/a/b;

    invoke-static {v3}, Lcom/cmplay/h/a/b;->e(Lcom/cmplay/h/a/b;)I

    move-result v3

    const/4 v4, 0x3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/cmplay/h/f;->a(IIII)V

    .line 351
    iget-object v0, p0, Lcom/cmplay/h/a/b$a;->a:Lcom/cmplay/h/a/b;

    invoke-direct {p0}, Lcom/cmplay/h/a/b$a;->b()I

    move-result v1

    invoke-virtual {v0, v1, v5}, Lcom/cmplay/h/a/b;->a(II)V

    goto :goto_0
.end method
