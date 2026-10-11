.class Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity$5;
.super Ljava/util/TimerTask;
.source "OpenScreenVideoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->h()V
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
    .line 555
    iput-object p1, p0, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity$5;->a:Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 558
    const-string v0, "internal_push_open_Video"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TimerTask    mIsCompletion:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity$5;->a:Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;

    invoke-static {v2}, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->i(Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    iget-object v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity$5;->a:Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;

    invoke-static {v0}, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->i(Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 560
    iget-object v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity$5;->a:Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->a(Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;Z)Z

    .line 561
    const-string v0, "internal_push_open_Video"

    const-string v1, "TimerTask    finish()"

    invoke-static {v0, v1}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    :cond_0
    return-void
.end method
