.class Lcom/facebook/notifications/internal/view/f$a;
.super Ljava/lang/Thread;
.source "GifView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/notifications/internal/view/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/notifications/internal/view/f;

.field private final b:Lcom/facebook/notifications/internal/utilities/b;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private c:Landroid/graphics/Bitmap;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/notifications/internal/view/f;Lcom/facebook/notifications/internal/utilities/b;)V
    .locals 0
    .param p2    # Lcom/facebook/notifications/internal/utilities/b;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 41
    iput-object p1, p0, Lcom/facebook/notifications/internal/view/f$a;->a:Lcom/facebook/notifications/internal/view/f;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 42
    iput-object p2, p0, Lcom/facebook/notifications/internal/view/f$a;->b:Lcom/facebook/notifications/internal/utilities/b;

    .line 43
    return-void
.end method

.method static synthetic a(Lcom/facebook/notifications/internal/view/f$a;)Lcom/facebook/notifications/internal/utilities/b;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/facebook/notifications/internal/view/f$a;->b:Lcom/facebook/notifications/internal/utilities/b;

    return-object v0
.end method

.method static synthetic b(Lcom/facebook/notifications/internal/view/f$a;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/facebook/notifications/internal/view/f$a;->c:Landroid/graphics/Bitmap;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 47
    iget-object v0, p0, Lcom/facebook/notifications/internal/view/f$a;->b:Lcom/facebook/notifications/internal/utilities/b;

    if-nez v0, :cond_0

    .line 83
    :goto_0
    return-void

    .line 52
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 54
    iget-object v2, p0, Lcom/facebook/notifications/internal/view/f$a;->b:Lcom/facebook/notifications/internal/utilities/b;

    invoke-virtual {v2}, Lcom/facebook/notifications/internal/utilities/b;->a()V

    .line 56
    iget-object v2, p0, Lcom/facebook/notifications/internal/view/f$a;->b:Lcom/facebook/notifications/internal/utilities/b;

    invoke-virtual {v2}, Lcom/facebook/notifications/internal/utilities/b;->b()I

    move-result v2

    .line 57
    const v3, 0xf4240

    mul-int/2addr v2, v3

    int-to-long v2, v2

    add-long/2addr v2, v0

    .line 59
    monitor-enter p0

    .line 60
    :try_start_0
    iget-object v4, p0, Lcom/facebook/notifications/internal/view/f$a;->b:Lcom/facebook/notifications/internal/utilities/b;

    invoke-virtual {v4}, Lcom/facebook/notifications/internal/utilities/b;->e()Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/facebook/notifications/internal/view/f$a;->c:Landroid/graphics/Bitmap;

    .line 61
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 62
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 66
    sub-long v0, v4, v0

    .line 68
    sub-long/2addr v2, v4

    sub-long v0, v2, v0

    .line 69
    const-wide/16 v2, 0x0

    const-wide/32 v4, 0xf4240

    div-long/2addr v0, v4

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 71
    iget-object v2, p0, Lcom/facebook/notifications/internal/view/f$a;->a:Lcom/facebook/notifications/internal/view/f;

    invoke-virtual {v2}, Lcom/facebook/notifications/internal/view/f;->postInvalidate()V

    .line 74
    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 75
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 62
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 78
    :catch_0
    move-exception v0

    goto :goto_0
.end method
