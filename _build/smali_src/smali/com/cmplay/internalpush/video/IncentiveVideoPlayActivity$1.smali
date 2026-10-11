.class Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity$1;
.super Ljava/lang/Object;
.source "IncentiveVideoPlayActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;


# direct methods
.method constructor <init>(Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity$1;->a:Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 76
    iget-object v0, p0, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity$1;->a:Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;

    invoke-static {v0}, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->a(Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;)Lcom/cmplay/internalpush/video/c;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity$1;->a:Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;

    invoke-static {v0}, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->b(Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity$1;->a:Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;

    iget-object v1, p0, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity$1;->a:Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;

    invoke-static {v1}, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->a(Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;)Lcom/cmplay/internalpush/video/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cmplay/internalpush/video/c;->getCurrentPosition()I

    move-result v1

    invoke-static {v0, v1}, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->a(Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;I)I

    .line 78
    iget-object v0, p0, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity$1;->a:Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;

    invoke-static {v0}, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->b(Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    iget-object v1, p0, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity$1;->a:Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;

    invoke-static {v1}, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->c(Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 79
    iget-object v0, p0, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity$1;->a:Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;

    invoke-static {v0}, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->d(Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;)V

    .line 80
    iget-object v0, p0, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity$1;->a:Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;

    invoke-static {v0}, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->e(Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;)V

    .line 81
    iget-object v0, p0, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity$1;->a:Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;

    invoke-static {v0}, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->b(Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    iget-object v1, p0, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity$1;->a:Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;

    invoke-static {v1}, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->f(Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ProgressBar;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 83
    :cond_0
    return-void
.end method
