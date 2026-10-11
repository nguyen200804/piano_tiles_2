.class Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity$1;
.super Ljava/lang/Object;
.source "OpenScreenVideoActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;


# direct methods
.method constructor <init>(Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity$1;->a:Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 88
    iget-object v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity$1;->a:Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;

    invoke-static {v0}, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->a(Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;)Lcom/cmplay/internalpush/video/c;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity$1;->a:Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;

    invoke-static {v0}, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->b(Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity$1;->a:Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;

    iget-object v1, p0, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity$1;->a:Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;

    invoke-static {v1}, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->a(Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;)Lcom/cmplay/internalpush/video/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cmplay/internalpush/video/c;->getCurrentPosition()I

    move-result v1

    invoke-static {v0, v1}, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->a(Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;I)I

    .line 90
    iget-object v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity$1;->a:Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;

    invoke-static {v0}, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->b(Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    iget-object v1, p0, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity$1;->a:Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;

    invoke-static {v1}, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->c(Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 91
    iget-object v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity$1;->a:Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;

    invoke-static {v0}, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->b(Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    iget-object v1, p0, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity$1;->a:Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;

    invoke-static {v1}, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->d(Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ProgressBar;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 93
    :cond_0
    return-void
.end method
