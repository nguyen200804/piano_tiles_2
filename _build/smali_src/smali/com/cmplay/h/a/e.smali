.class public Lcom/cmplay/h/a/e;
.super Lcom/cmplay/h/a/c;
.source "WeChatMomentPlatform.java"

# interfaces
.implements Lcom/cmplay/sharebase/b/b;


# instance fields
.field private c:Lcom/cmplay/h/e;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/cmplay/h/a;->f:Lcom/cmplay/h/a;

    invoke-direct {p0, p1, v0}, Lcom/cmplay/h/a/c;-><init>(Landroid/content/Context;Lcom/cmplay/h/a;)V

    .line 26
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .prologue
    .line 95
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/cmplay/h/a/e;->a(IILandroid/content/Intent;)V

    .line 96
    return-void
.end method

.method public a(IILandroid/content/Intent;)V
    .locals 6

    .prologue
    const/4 v5, 0x7

    .line 58
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 90
    :goto_0
    return-void

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/cmplay/h/a/e;->c:Lcom/cmplay/h/e;

    invoke-virtual {v0}, Lcom/cmplay/h/e;->g()I

    move-result v0

    invoke-static {v0}, Lcom/cmplay/h/b;->b(I)I

    move-result v0

    .line 62
    invoke-static {}, Lcom/cmplay/h/b;->e()I

    move-result v1

    .line 63
    iget-object v2, p0, Lcom/cmplay/h/a/e;->c:Lcom/cmplay/h/e;

    invoke-virtual {v2}, Lcom/cmplay/h/e;->g()I

    move-result v2

    iget-object v3, p0, Lcom/cmplay/h/a/e;->c:Lcom/cmplay/h/e;

    invoke-virtual {v3}, Lcom/cmplay/h/e;->f()I

    move-result v3

    invoke-static {v2, v3}, Lcom/cmplay/h/b;->a(II)I

    move-result v2

    .line 64
    iget-object v3, p0, Lcom/cmplay/h/a/e;->c:Lcom/cmplay/h/e;

    invoke-virtual {v3}, Lcom/cmplay/h/e;->g()I

    move-result v3

    invoke-static {v3}, Lcom/cmplay/h/b;->a(I)Ljava/lang/String;

    move-result-object v3

    .line 65
    packed-switch p2, :pswitch_data_0

    .line 88
    :goto_1
    invoke-static {}, Lcom/cmplay/h/f;->b()Lcom/cmplay/h/f;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/cmplay/h/f;->b(Lcom/cmplay/h/c;)V

    .line 89
    invoke-virtual {p0}, Lcom/cmplay/h/a/e;->b()V

    goto :goto_0

    .line 67
    :pswitch_0
    const/4 v4, 0x1

    invoke-virtual {p0, v5, v4}, Lcom/cmplay/h/a/e;->a(II)V

    .line 69
    const-string v4, "at_wechat_timeline_success"

    invoke-virtual {p0, v4}, Lcom/cmplay/h/a/e;->a(Ljava/lang/String;)V

    .line 70
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "at_wechat_timeline_success"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/cmplay/h/a/e;->a(Ljava/lang/String;)V

    .line 71
    invoke-static {}, Lcom/cmplay/h/f;->b()Lcom/cmplay/h/f;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v3, v0, v1, v2, v4}, Lcom/cmplay/h/f;->a(IIII)V

    goto :goto_1

    .line 74
    :pswitch_1
    const/4 v4, 0x2

    invoke-virtual {p0, v5, v4}, Lcom/cmplay/h/a/e;->a(II)V

    .line 76
    const-string v4, "at_wechat_timeline_cancel"

    invoke-virtual {p0, v4}, Lcom/cmplay/h/a/e;->a(Ljava/lang/String;)V

    .line 77
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "at_wechat_timeline_cancel"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/cmplay/h/a/e;->a(Ljava/lang/String;)V

    .line 78
    invoke-static {}, Lcom/cmplay/h/f;->b()Lcom/cmplay/h/f;

    move-result-object v3

    const/4 v4, 0x5

    invoke-virtual {v3, v0, v1, v2, v4}, Lcom/cmplay/h/f;->a(IIII)V

    goto :goto_1

    .line 81
    :pswitch_2
    const/4 v4, 0x0

    invoke-virtual {p0, v5, v4}, Lcom/cmplay/h/a/e;->a(II)V

    .line 83
    const-string v4, "at_wechat_timeline_faild"

    invoke-virtual {p0, v4}, Lcom/cmplay/h/a/e;->a(Ljava/lang/String;)V

    .line 84
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "at_wechat_timeline_faild"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/cmplay/h/a/e;->a(Ljava/lang/String;)V

    .line 85
    invoke-static {}, Lcom/cmplay/h/f;->b()Lcom/cmplay/h/f;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v0, v1, v2, v4}, Lcom/cmplay/h/f;->a(IIII)V

    goto/16 :goto_1

    .line 65
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public a(Lcom/cmplay/h/e;)V
    .locals 5

    .prologue
    .line 30
    iput-object p1, p0, Lcom/cmplay/h/a/e;->c:Lcom/cmplay/h/e;

    .line 32
    new-instance v0, Lcom/cmplay/sharebase/g;

    invoke-direct {v0}, Lcom/cmplay/sharebase/g;-><init>()V

    .line 33
    const-string v1, "wx6be15490dde8144a"

    invoke-virtual {v0, v1}, Lcom/cmplay/sharebase/g;->e(Ljava/lang/String;)V

    .line 34
    invoke-virtual {p1}, Lcom/cmplay/h/e;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cmplay/sharebase/g;->c(Ljava/lang/String;)V

    .line 35
    invoke-virtual {p1}, Lcom/cmplay/h/e;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cmplay/sharebase/g;->a(Ljava/lang/String;)V

    .line 36
    iget-object v1, p0, Lcom/cmplay/h/a/e;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020009

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cmplay/sharebase/g;->a(Landroid/graphics/Bitmap;)V

    .line 37
    invoke-virtual {p1}, Lcom/cmplay/h/e;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cmplay/sharebase/g;->b(Ljava/lang/String;)V

    .line 38
    invoke-virtual {p1}, Lcom/cmplay/h/e;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cmplay/sharebase/g;->d(Ljava/lang/String;)V

    .line 40
    invoke-static {}, Lcom/cmplay/sharebase/e;->a()Lcom/cmplay/sharebase/e;

    move-result-object v1

    .line 41
    invoke-virtual {v1, p0}, Lcom/cmplay/sharebase/e;->a(Lcom/cmplay/sharebase/b/b;)V

    .line 42
    invoke-virtual {v1}, Lcom/cmplay/sharebase/e;->b()Lcom/cmplay/sharebase/b/d;

    move-result-object v1

    .line 43
    if-eqz v1, :cond_0

    .line 44
    iget-object v2, p0, Lcom/cmplay/h/a/e;->b:Landroid/content/Context;

    invoke-interface {v1, v2, v0}, Lcom/cmplay/sharebase/b/d;->onShareWechatTimeline(Landroid/content/Context;Lcom/cmplay/sharebase/g;)V

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/cmplay/h/a/e;->c:Lcom/cmplay/h/e;

    invoke-virtual {v0}, Lcom/cmplay/h/e;->g()I

    move-result v0

    invoke-static {v0}, Lcom/cmplay/h/b;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 48
    const-string v1, "clk_wechat_timeline"

    invoke-virtual {p0, v1}, Lcom/cmplay/h/a/e;->a(Ljava/lang/String;)V

    .line 49
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clk_wechat_timeline"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cmplay/h/a/e;->a(Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lcom/cmplay/h/a/e;->c:Lcom/cmplay/h/e;

    invoke-virtual {v0}, Lcom/cmplay/h/e;->g()I

    move-result v0

    invoke-static {v0}, Lcom/cmplay/h/b;->b(I)I

    move-result v0

    .line 51
    invoke-static {}, Lcom/cmplay/h/b;->e()I

    move-result v1

    .line 52
    iget-object v2, p0, Lcom/cmplay/h/a/e;->c:Lcom/cmplay/h/e;

    invoke-virtual {v2}, Lcom/cmplay/h/e;->g()I

    move-result v2

    iget-object v3, p0, Lcom/cmplay/h/a/e;->c:Lcom/cmplay/h/e;

    invoke-virtual {v3}, Lcom/cmplay/h/e;->f()I

    move-result v3

    invoke-static {v2, v3}, Lcom/cmplay/h/b;->a(II)I

    move-result v2

    .line 53
    invoke-static {}, Lcom/cmplay/h/f;->b()Lcom/cmplay/h/f;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v0, v1, v2, v4}, Lcom/cmplay/h/f;->a(IIII)V

    .line 54
    return-void
.end method
