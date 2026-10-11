.class Lcom/duapps/ad/entity/c$a;
.super Ljava/lang/Object;
.source "NativeAdDLWrapper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duapps/ad/entity/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/duapps/ad/entity/c;

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:F

.field private g:F

.field private h:I

.field private i:I

.field private j:Z


# direct methods
.method constructor <init>(Lcom/duapps/ad/entity/c;)V
    .locals 0

    .prologue
    .line 207
    iput-object p1, p0, Lcom/duapps/ad/entity/c$a;->a:Lcom/duapps/ad/entity/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 220
    iget-object v0, p0, Lcom/duapps/ad/entity/c$a;->a:Lcom/duapps/ad/entity/c;

    invoke-static {v0}, Lcom/duapps/ad/entity/c;->c(Lcom/duapps/ad/entity/c;)Lcom/duapps/ad/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/duapps/ad/entity/c$a;->a:Lcom/duapps/ad/entity/c;

    invoke-static {v0}, Lcom/duapps/ad/entity/c;->c(Lcom/duapps/ad/entity/c;)Lcom/duapps/ad/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/duapps/ad/b;->a()V

    .line 223
    :cond_0
    iget-boolean v0, p0, Lcom/duapps/ad/entity/c$a;->j:Z

    if-eqz v0, :cond_1

    .line 225
    invoke-static {}, Lcom/duapps/ad/entity/c;->o()Ljava/lang/String;

    move-result-object v0

    const-string v1, "No touch data recorded,please ensure touch events reach the ad View by returing false if you intercept the event."

    invoke-static {v0, v1}, Lcom/duapps/ad/base/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    :cond_1
    iget-object v0, p0, Lcom/duapps/ad/entity/c$a;->a:Lcom/duapps/ad/entity/c;

    invoke-static {v0}, Lcom/duapps/ad/entity/c;->d(Lcom/duapps/ad/entity/c;)Lcom/duapps/ad/stats/d;

    move-result-object v0

    if-nez v0, :cond_2

    .line 230
    iget-object v0, p0, Lcom/duapps/ad/entity/c$a;->a:Lcom/duapps/ad/entity/c;

    new-instance v1, Lcom/duapps/ad/stats/d;

    iget-object v2, p0, Lcom/duapps/ad/entity/c$a;->a:Lcom/duapps/ad/entity/c;

    invoke-static {v2}, Lcom/duapps/ad/entity/c;->b(Lcom/duapps/ad/entity/c;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/duapps/ad/stats/d;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/duapps/ad/entity/c;->a(Lcom/duapps/ad/entity/c;Lcom/duapps/ad/stats/d;)Lcom/duapps/ad/stats/d;

    .line 231
    iget-object v0, p0, Lcom/duapps/ad/entity/c$a;->a:Lcom/duapps/ad/entity/c;

    invoke-static {v0}, Lcom/duapps/ad/entity/c;->d(Lcom/duapps/ad/entity/c;)Lcom/duapps/ad/stats/d;

    move-result-object v0

    iget-object v1, p0, Lcom/duapps/ad/entity/c$a;->a:Lcom/duapps/ad/entity/c;

    invoke-static {v1}, Lcom/duapps/ad/entity/c;->e(Lcom/duapps/ad/entity/c;)Lcom/duapps/ad/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duapps/ad/stats/d;->a(Lcom/duapps/ad/e;)V

    .line 233
    :cond_2
    iget-object v0, p0, Lcom/duapps/ad/entity/c$a;->a:Lcom/duapps/ad/entity/c;

    invoke-static {v0}, Lcom/duapps/ad/entity/c;->f(Lcom/duapps/ad/entity/c;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/duapps/ad/entity/c$a;->a:Lcom/duapps/ad/entity/c;

    invoke-static {v0}, Lcom/duapps/ad/entity/c;->d(Lcom/duapps/ad/entity/c;)Lcom/duapps/ad/stats/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duapps/ad/stats/d;->e()Z

    move-result v0

    if-nez v0, :cond_6

    .line 234
    invoke-static {}, Lcom/duapps/ad/entity/c;->o()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mClickHandler handleClick"

    invoke-static {v0, v1}, Lcom/duapps/ad/base/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    iget-object v0, p0, Lcom/duapps/ad/entity/c$a;->a:Lcom/duapps/ad/entity/c;

    invoke-static {v0}, Lcom/duapps/ad/entity/c;->a(Lcom/duapps/ad/entity/c;)Lcom/duapps/ad/entity/AdData;

    move-result-object v0

    invoke-static {v0}, Lcom/duapps/ad/entity/AdData;->b(Lcom/duapps/ad/entity/AdData;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/duapps/ad/entity/c$a;->a:Lcom/duapps/ad/entity/c;

    invoke-static {v0}, Lcom/duapps/ad/entity/c;->b(Lcom/duapps/ad/entity/c;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/duapps/ad/base/l;->a(Landroid/content/Context;)Lcom/duapps/ad/base/l;

    move-result-object v0

    iget-object v1, p0, Lcom/duapps/ad/entity/c$a;->a:Lcom/duapps/ad/entity/c;

    invoke-static {v1}, Lcom/duapps/ad/entity/c;->a(Lcom/duapps/ad/entity/c;)Lcom/duapps/ad/entity/AdData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duapps/ad/base/l;->b(Lcom/duapps/ad/entity/AdData;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 236
    :cond_3
    iget-object v0, p0, Lcom/duapps/ad/entity/c$a;->a:Lcom/duapps/ad/entity/c;

    invoke-static {v0}, Lcom/duapps/ad/entity/c;->g(Lcom/duapps/ad/entity/c;)V

    .line 245
    :cond_4
    :goto_0
    return-void

    .line 237
    :cond_5
    iget-object v0, p0, Lcom/duapps/ad/entity/c$a;->a:Lcom/duapps/ad/entity/c;

    invoke-static {v0}, Lcom/duapps/ad/entity/c;->h(Lcom/duapps/ad/entity/c;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 238
    iget-object v0, p0, Lcom/duapps/ad/entity/c$a;->a:Lcom/duapps/ad/entity/c;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/duapps/ad/entity/c;->a(Lcom/duapps/ad/entity/c;Z)Z

    .line 239
    iget-object v0, p0, Lcom/duapps/ad/entity/c$a;->a:Lcom/duapps/ad/entity/c;

    invoke-static {v0}, Lcom/duapps/ad/entity/c;->i(Lcom/duapps/ad/entity/c;)V

    .line 240
    invoke-static {}, Lcom/duapps/ad/entity/c;->p()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/duapps/ad/entity/c$a;->a:Lcom/duapps/ad/entity/c;

    invoke-static {v1}, Lcom/duapps/ad/entity/c;->j(Lcom/duapps/ad/entity/c;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 243
    :cond_6
    invoke-static {}, Lcom/duapps/ad/entity/c;->o()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mClickHandler isWorking"

    invoke-static {v0, v1}, Lcom/duapps/ad/base/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 249
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/duapps/ad/entity/c$a;->a:Lcom/duapps/ad/entity/c;

    invoke-static {v2}, Lcom/duapps/ad/entity/c;->k(Lcom/duapps/ad/entity/c;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 250
    iget-object v2, p0, Lcom/duapps/ad/entity/c$a;->a:Lcom/duapps/ad/entity/c;

    invoke-static {v2}, Lcom/duapps/ad/entity/c;->k(Lcom/duapps/ad/entity/c;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    iput v2, p0, Lcom/duapps/ad/entity/c$a;->d:I

    .line 251
    iget-object v2, p0, Lcom/duapps/ad/entity/c$a;->a:Lcom/duapps/ad/entity/c;

    invoke-static {v2}, Lcom/duapps/ad/entity/c;->k(Lcom/duapps/ad/entity/c;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    iput v2, p0, Lcom/duapps/ad/entity/c$a;->e:I

    .line 252
    new-array v2, v5, [I

    .line 253
    iget-object v3, p0, Lcom/duapps/ad/entity/c$a;->a:Lcom/duapps/ad/entity/c;

    invoke-static {v3}, Lcom/duapps/ad/entity/c;->k(Lcom/duapps/ad/entity/c;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 254
    aget v3, v2, v1

    int-to-float v3, v3

    iput v3, p0, Lcom/duapps/ad/entity/c$a;->f:F

    .line 255
    aget v3, v2, v0

    int-to-float v3, v3

    iput v3, p0, Lcom/duapps/ad/entity/c$a;->g:F

    .line 256
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 257
    iget-object v4, p0, Lcom/duapps/ad/entity/c$a;->a:Lcom/duapps/ad/entity/c;

    invoke-static {v4}, Lcom/duapps/ad/entity/c;->k(Lcom/duapps/ad/entity/c;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 258
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v4

    iput v4, p0, Lcom/duapps/ad/entity/c$a;->i:I

    .line 259
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    iput v3, p0, Lcom/duapps/ad/entity/c$a;->h:I

    .line 260
    new-array v3, v5, [I

    .line 261
    invoke-virtual {p1, v3}, Landroid/view/View;->getLocationInWindow([I)V

    .line 262
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    aget v5, v3, v1

    add-int/2addr v4, v5

    aget v5, v2, v1

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/duapps/ad/entity/c$a;->b:I

    .line 263
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    aget v3, v3, v0

    add-int/2addr v3, v4

    aget v2, v2, v0

    sub-int v2, v3, v2

    iput v2, p0, Lcom/duapps/ad/entity/c$a;->c:I

    .line 264
    iput-boolean v0, p0, Lcom/duapps/ad/entity/c$a;->j:Z

    .line 267
    :cond_0
    iget-object v2, p0, Lcom/duapps/ad/entity/c$a;->a:Lcom/duapps/ad/entity/c;

    invoke-static {v2}, Lcom/duapps/ad/entity/c;->l(Lcom/duapps/ad/entity/c;)Landroid/view/View$OnTouchListener;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/duapps/ad/entity/c$a;->a:Lcom/duapps/ad/entity/c;

    invoke-static {v2}, Lcom/duapps/ad/entity/c;->l(Lcom/duapps/ad/entity/c;)Landroid/view/View$OnTouchListener;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method
